-- Fono · Pacientes e Cobranças — estrutura do banco (Supabase / PostgreSQL)
-- Cole este script inteiro em: Supabase > SQL Editor > New query > Run.

-- 1) Tabelas ------------------------------------------------------------
create table if not exists public.patients (
  id          text primary key,
  user_id     uuid not null default auth.uid() references auth.users(id) on delete cascade,
  data        jsonb not null,
  updated_at  timestamptz not null default now()
);

create table if not exists public.sessions (
  id          text primary key,
  user_id     uuid not null default auth.uid() references auth.users(id) on delete cascade,
  data        jsonb not null,
  updated_at  timestamptz not null default now()
);

create table if not exists public.config (
  user_id     uuid primary key default auth.uid() references auth.users(id) on delete cascade,
  tpl         text,
  updated_at  timestamptz not null default now()
);

create index if not exists patients_user_idx on public.patients(user_id);
create index if not exists sessions_user_idx on public.sessions(user_id);

-- 2) Segurança: cada usuário só enxerga e altera os próprios dados -------
alter table public.patients enable row level security;
alter table public.sessions enable row level security;
alter table public.config   enable row level security;

drop policy if exists "dono_patients" on public.patients;
create policy "dono_patients" on public.patients for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());

drop policy if exists "dono_sessions" on public.sessions;
create policy "dono_sessions" on public.sessions for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());

drop policy if exists "dono_config" on public.config;
create policy "dono_config" on public.config for all to authenticated
  using (user_id = auth.uid()) with check (user_id = auth.uid());

-- 3) Atualização em tempo real entre aparelhos (opcional) ---------------
-- Se aparecer erro dizendo que a tabela já faz parte da publicação, ignore.
alter publication supabase_realtime add table public.patients;
alter publication supabase_realtime add table public.sessions;

-- 4) Visões legíveis (para consultar ou exportar em planilha) ------------
create or replace view public.v_pacientes with (security_invoker = true) as
select
  id,
  data->>'nome'                      as nome,
  data->>'nasc'                      as nascimento,
  data->>'sexo'                      as sexo,
  (data->>'mesmo')::boolean          as responsavel_e_o_paciente,
  data->>'resp'                      as responsavel_financeiro,
  data->>'cpf'                       as cpf_responsavel,
  data->>'tel'                       as whatsapp,
  (data->>'valor')::numeric          as valor_sessao,
  (data->>'off')::int                as dias_para_cobranca
from public.patients;

create or replace view public.v_atendimentos with (security_invoker = true) as
select
  s.id,
  p.data->>'nome'                    as paciente,
  s.data->>'data'                    as data_atendimento,
  s.data->>'hora'                    as hora,
  (s.data->>'valor')::numeric        as valor,
  s.data->>'cob'                     as data_cobranca,
  s.data->>'env'                     as cobranca_enviada_em,
  s.data->>'pago'                    as pago_em,
  s.data->>'transc'                  as transcricao,
  s.data->>'resumo'                  as resumo
from public.sessions s
left join public.patients p on p.id = s.data->>'pid';
