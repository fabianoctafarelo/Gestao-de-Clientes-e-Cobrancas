SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict TpMijinqk9PENvUvERpLfnuubrJbnVALtUSLP5rdg5gqJrozUUQbaCNqTcah2Wb

-- Dumped from database version 17.11
-- Dumped by pg_dump version 17.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	f7d38056-25a0-4331-a232-a9f370d3718c	authenticated	authenticated	fabiano.c.tafarelo@gmail.com	$2a$10$FYd92VSaiK5lSjkXO2uEi.DcyIQTYJLw145FYHQ/bUab99QK0tYge	2026-10-31 13:08:02.323118+00	\N		\N		\N			\N	2026-11-05 22:30:39.389655+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-10-31 13:08:02.30995+00	2026-11-06 00:43:00.725296+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
f7d38056-25a0-4331-a232-a9f370d3718c	f7d38056-25a0-4331-a232-a9f370d3718c	{"sub": "f7d38056-25a0-4331-a232-a9f370d3718c", "email": "fabiano.c.tafarelo@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-10-31 13:08:02.319993+00	2026-10-31 13:08:02.320049+00	2026-10-31 13:08:02.320049+00	94daa146-befa-4215-bba9-b09decc6d3b3
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
ed058a17-77f8-493d-8f4a-86a45143fe89	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-05 22:30:39.389791+00	2026-11-06 00:43:00.741481+00	\N	aal1	\N	2026-11-06 00:43:00.741334	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
ed058a17-77f8-493d-8f4a-86a45143fe89	2026-11-05 22:30:39.425286+00	2026-11-05 22:30:39.425286+00	password	09bc0f61-9ea9-4d58-93f2-23c0a7d0f18f
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_code_sets; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_code_sets" ("id", "user_id", "mfa_factor_id", "failed_verification_count", "verification_locked_until", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_codes; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_codes" ("id", "mfa_recovery_code_set_id", "code_hash", "consumed_at", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	89	6e6xvcqzpiaz	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-05 22:30:39.414756+00	2026-11-05 23:28:43.877722+00	\N	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	91	k2bvhi7pokfq	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-06 00:43:00.718165+00	2026-11-06 00:43:00.718165+00	bvqmywj25mn5	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	90	bvqmywj25mn5	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-05 23:28:43.890818+00	2026-11-06 00:43:00.700416+00	6e6xvcqzpiaz	ed058a17-77f8-493d-8f4a-86a45143fe89
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: scim_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_tokens" ("id", "sso_provider_id", "token_hash", "prefix", "created_at", "expires_at", "revoked_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: scim_users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_users" ("id", "sso_provider_id", "user_id", "resource", "created_at", "updated_at", "deleted_at") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."config" ("user_id", "tpl", "updated_at") FROM stdin;
COLE_AQUI_O_UUID_DO_USUARIO	Olá, {responsavel}! Tudo bem? Segue a cobrança do atendimento de fonoaudiologia de {paciente}, realizado em {data}, no valor de {valor}. Obrigada!	2026-10-31 10:00:00+00
f7d38056-25a0-4331-a232-a9f370d3718c	Olá, {responsavel}! Tudo bem? Seguem os dados para fins de pagamento referente ao atendimento fonoaudiológico do(a) {paciente}:\n\n- Data do atendimento: {data}\n- Valor: {valor}\n- Chave Pix: 294.126.868-54\n\nFavor enviar por aqui o comprovante de pagamento. Assim que recebê-lo eu encaminho o recibo.\n\nObrigada!	2026-11-01 23:51:37.62+00
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."patients" ("id", "user_id", "data", "updated_at") FROM stdin;
vfstn7h	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "vfstn7h", "cpf": "412.144.348-94", "off": 0, "tel": "1194207-0973", "nasc": "2026-07-18", "nome": "Noemi Santos Nascimento", "resp": "Lenildo Nascimento da Silva", "sexo": "Feminino", "mesmo": false, "valor": 300, "cpfpac": "176.586.918-87"}	2026-11-04 15:55:03.143+00
e76zwmn	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "e76zwmn", "cpf": "403.152.988-04", "off": 0, "tel": "11 96572-0693", "nasc": "2026-07-13", "nome": "LAVINIA Pollice de Faveri", "resp": "Matheus Faveri", "sexo": "Feminino", "mesmo": false, "valor": 370}	2026-11-01 15:52:51.684+00
esmu6ya	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "esmu6ya", "cpf": "437.198.978-00", "off": 1, "tel": "11951001628", "nasc": "2026-10-10", "nome": "Heloisa Prado Santos", "resp": "Guilherme Emanoel da Silva Santos", "sexo": "Feminino", "mesmo": false, "valor": 250}	2026-11-01 15:57:49.029+00
iyd8qzm	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "iyd8qzm", "cpf": "224.337.098-06", "off": 0, "tel": "1199684-7166", "nasc": "2019-09-27", "nome": "LARA Tardini", "resp": "Fernando Tardini", "sexo": "Feminino", "mesmo": false, "valor": 280, "cpfpac": "577.562.228-65"}	2026-11-03 12:14:25.987+00
xsv2v6w	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "xsv2v6w", "cpf": "421.128.058-94", "off": 0, "tel": "11 96856-4363", "nasc": "2026-08-28", "nome": "AUGUSTO Mazolli Haddad Yovera", "resp": "Gustavo Henrique Haddad Yovera", "sexo": "Masculino", "mesmo": false, "valor": 300, "cpfpac": "178.900.288-57"}	2026-11-03 12:23:26.666+00
ad1tmlc	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "ad1tmlc", "cpf": "421.128.058-94", "off": 0, "tel": "1196856-4363", "nasc": "2026-08-28", "nome": "OTÁVIO Mazolli Haddad Yovera", "resp": "Gustavo Henrique Haddad Yovera", "sexo": "Masculino", "mesmo": false, "valor": 300, "cpfpac": "178.899.808-17"}	2026-11-03 12:23:51.531+00
3ykcjts	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "3ykcjts", "cpf": "390.963.268-81", "off": 0, "tel": "1199804-0206", "nasc": "2026-10-06", "nome": "Benício Omizollo Casoni Silva", "resp": "Amanda Omizollo Casoni", "sexo": "Masculino", "mesmo": false, "valor": 300, "cpfpac": "179.981.748-20"}	2026-11-03 12:49:49.669+00
jjp6qd5	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "jjp6qd5", "cpf": "412.144.348-94", "off": 0, "tel": "1194207-0973", "nasc": "2026-07-13", "nome": "Noemi Santos Nascimento", "resp": "Luciana dos Santos Ferreira Nascimento", "sexo": "Feminino", "mesmo": false, "valor": 300, "cpfpac": "176.586.918-87"}	2026-11-03 13:35:31.945+00
yy1x3m0	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "yy1x3m0", "cpf": "410.063.888-42", "off": 0, "tel": "1199383-7247", "nasc": "2026-04-14", "nome": "Cecília Vergnianini Rosolem", "resp": "Caio Vergnianini", "sexo": "Feminino", "mesmo": false, "valor": 370, "cpfpac": "166.823.608-78"}	2026-11-03 22:29:05.286+00
vfmznr2	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "vfmznr2", "cpf": "390.963.268-81", "off": 0, "tel": "1199804-0206", "nasc": "2026-10-06", "nome": "Benício Omizollo Casoni Silva", "resp": "Jonny Francisco Silva", "sexo": "Masculino", "mesmo": false, "valor": 300, "cpfpac": "179.981.748-20"}	2026-11-04 16:18:30.419+00
dqpkrd5	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "dqpkrd5", "cpf": "224.187.398-56", "off": 0, "tel": "11 97297-9566", "nasc": "2022-11-01", "nome": "Pedro Barbosa Juliatti", "resp": "Evandro César Juliatti", "sexo": "Masculino", "mesmo": false, "valor": 200, "cpfpac": "606.055.588-84"}	2026-11-05 00:54:30.549+00
5frz0ge	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "5frz0ge", "cpf": "053.111.021-44", "off": 0, "tel": "61 9671-4475", "nasc": "2022-03-20", "nome": "André Medeiros Accieri", "resp": "Pedro Antônio Medeiros", "sexo": "Masculino", "mesmo": false, "valor": 300, "cpfpac": "601.362.488-70"}	2026-11-05 01:31:42.545+00
josg46n	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "josg46n", "cpf": "373.292.838-19", "off": 0, "tel": "11 93754-4058", "nasc": "2026-04-08", "nome": "Helena Ramos taveres ferrão", "resp": "Lucas Tavares ferrão", "sexo": "Feminino", "mesmo": false, "valor": 300, "cpfpac": "166.351.068-71"}	2026-11-05 01:33:52.382+00
m4yw6fg	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "m4yw6fg", "cpf": "387.015.798-43", "off": 0, "tel": "11 94714-9469", "nasc": "2026-07-20", "nome": "Luca Gonçalves Lammers", "resp": "Fabian Lammers", "sexo": "Masculino", "mesmo": false, "valor": 300, "cpfpac": "176.648.378-04"}	2026-11-05 01:44:04.859+00
6ds0y4l	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "6ds0y4l", "cpf": "329.739.738-13", "off": 0, "tel": "11 99884-6615", "nasc": "2026-02-20", "nome": "Vinícius Palma Brandão", "resp": "Gabriel Brandão", "sexo": "Masculino", "mesmo": false, "valor": 290, "cpfpac": "023.861.018-78"}	2026-11-05 01:50:31.881+00
h6rb35b	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "h6rb35b", "cpf": "387.111.618-17", "off": 0, "tel": "11 98611-5209", "nasc": "2021-04-07", "nome": "Leonardo Vermillio de Rosa", "resp": "Camila Berganton Vermillio", "sexo": "Masculino", "mesmo": false, "valor": 280, "cpfpac": "592.735.108-50"}	2026-11-05 02:10:17.576+00
39w3r2b	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "39w3r2b", "cpf": "417.160.108-88", "off": 0, "tel": "1199669-0868", "nasc": "2026-04-13", "nome": "Paulo Santos de Almeida", "resp": "Carlos Henrique de Almeida", "sexo": "Masculino", "mesmo": false, "valor": 370, "cpfpac": "166.746.878-20"}	2026-11-05 17:42:09.783+00
le02ijn	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "le02ijn", "cpf": "437.047.698-43", "off": 0, "tel": "11975804968", "nasc": "2026-10-01", "nome": "Cecília Ferreira Bueno", "resp": "Vitor Gabriel Ferreira Bueno", "sexo": "Feminino", "mesmo": false, "valor": 370, "cpfpac": "179.845.808-04"}	2026-11-05 23:19:09.461+00
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sessions" ("id", "user_id", "data", "updated_at") FROM stdin;
16yz1dc	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "16yz1dc", "cob": "2026-10-31", "env": "2026-11-01", "pid": "e76zwmn", "rep": 1, "seq": 1, "data": "2026-10-31", "hora": "", "pago": "2026-11-03", "valor": 370}	2026-11-03 14:35:21.488+00
8mp9ptg	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "8mp9ptg", "cob": "2026-11-02", "env": "2026-11-03", "pid": "esmu6ya", "rep": 1, "seq": 1, "data": "2026-10-31", "hora": "", "pago": "2026-11-04", "valor": 250}	2026-11-05 01:17:56.537+00
1unqxa4	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "1unqxa4", "cob": "2026-11-11", "pid": "yy1x3m0", "rep": 1, "seq": 1, "data": "2026-11-11", "pago": "2026-11-04", "valor": 300}	2026-11-05 01:18:39.92+00
fo4garj	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "fo4garj", "cob": "2026-10-20", "pid": "iyd8qzm", "rep": 1, "seq": 1, "data": "2026-10-20", "valor": 280}	2026-11-04 00:09:52.662+00
5ao8uxi	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "5ao8uxi", "cob": "2026-11-03", "env": "2026-11-03", "pid": "iyd8qzm", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 280}	2026-11-03 12:43:54.59+00
n8nkz2x	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "n8nkz2x", "cob": "2026-11-03", "env": "2026-11-03", "pid": "yy1x3m0", "rep": 1, "seq": 1, "data": "2026-11-03", "pago": "2026-11-03", "valor": 370}	2026-11-04 00:19:39.203+00
4qoivyf	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "4qoivyf", "cob": "2026-11-03", "env": "2026-11-03", "pid": "iyd8qzm", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 280}	2026-11-03 13:26:15.398+00
e80voa2	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "e80voa2", "cob": "2026-11-04", "pid": "jjp6qd5", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 300}	2026-11-03 13:35:52.338+00
8ub1gy1	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "8ub1gy1", "cob": "2027-08-22", "pid": "3ykcjts", "rep": 1, "seq": 1, "data": "2026-10-26", "pago": "2026-11-04", "valor": 300}	2026-11-05 01:18:49.811+00
3bgfv0w	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "3bgfv0w", "cob": "2026-10-31", "env": "2026-11-03", "pid": "xsv2v6w", "rep": 1, "seq": 1, "data": "2026-10-31", "pago": "2026-11-03", "valor": 300}	2026-11-03 14:35:25.995+00
ocumzkt	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "ocumzkt", "cob": "2026-11-04", "pid": "m4yw6fg", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 300}	2026-11-05 01:44:22.396+00
a06sv7l	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "a06sv7l", "cob": "2026-11-03", "env": "2026-11-03", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 300}	2026-11-04 00:09:31.701+00
xvnv8w0	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "xvnv8w0", "cob": "2026-10-28", "pid": "6ds0y4l", "rep": 1, "seq": 1, "data": "2026-10-28", "valor": 290}	2026-11-05 01:53:35.089+00
8yjbpgg	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "8yjbpgg", "cob": "2026-10-31", "env": "2026-11-03", "pid": "xsv2v6w", "rep": 1, "seq": 1, "data": "2026-10-31", "pago": "2026-11-04", "valor": 300}	2026-11-04 15:56:53.274+00
3ewaip4	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "3ewaip4", "cob": "2026-11-03", "pid": "3ykcjts", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 300}	2026-11-04 16:19:24.759+00
v34p6fb	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "v34p6fb", "cob": "2026-11-03", "env": "2026-11-04", "pid": "3ykcjts", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 300}	2026-11-04 16:23:46.625+00
ufesxwy	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "ufesxwy", "cob": "2026-11-04", "env": "2026-11-04", "pid": "vfstn7h", "rep": 1, "seq": 1, "data": "2026-11-04", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:43:21.692+00
irvlds0	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "irvlds0", "cob": "2026-10-26", "env": "2026-11-04", "pid": "3ykcjts", "rep": 1, "seq": 1, "data": "2026-10-26", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:50:01.031+00
7vlyg68	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "7vlyg68", "cob": "2026-11-04", "pid": "dqpkrd5", "rep": 1, "seq": 1, "data": "2026-11-04", "pago": "2026-11-04", "valor": 200}	2026-11-05 00:55:17.171+00
7m0ost8	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "7m0ost8", "cob": "2026-10-28", "env": "2026-11-03", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-10-28", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:59:22.643+00
9mm7smt	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "9mm7smt", "cob": "2026-10-31", "env": "2026-11-03", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-10-31", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:59:28.205+00
p4ehyuk	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "p4ehyuk", "cob": "2026-11-04", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 300}	2026-11-05 01:06:28.435+00
j129l7a	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "j129l7a", "cob": "2026-11-04", "env": "2026-11-05", "pid": "6ds0y4l", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 290}	2026-11-05 12:46:40.784+00
fv861g7	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "fv861g7", "cob": "2026-11-05", "pid": "h6rb35b", "rep": 1, "seq": 1, "data": "2026-11-05", "valor": 280}	2026-11-05 22:51:53.42+00
twqeagp	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "twqeagp", "cob": "2026-11-05", "env": "2026-11-05", "pid": "39w3r2b", "rep": 1, "seq": 1, "data": "2026-11-05", "valor": 370}	2026-11-05 22:51:56.388+00
olu1fzl	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "olu1fzl", "cob": "2026-11-04", "env": "2026-11-05", "pid": "josg46n", "rep": 1, "seq": 1, "data": "2026-11-04", "pago": "2026-11-05", "valor": 300}	2026-11-05 19:13:26.891+00
oq2qhvo	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "oq2qhvo", "cob": "2026-11-06", "dur": 90, "pid": "le02ijn", "rep": 1, "seq": 1, "data": "2026-11-06", "hora": "08:30", "tipo": "primeira", "valor": 370}	2026-11-05 23:19:53.506+00
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type", "versioning_status", "lifecycle_configuration", "lifecycle_configuration_generation") FROM stdin;
SUPABASE_FILE	SUPABASE_FILE	\N	2026-11-01 16:17:18.674245+00	2026-11-01 16:17:18.674245+00	f	f	\N	\N	\N	STANDARD	DISABLED	\N	\N
\.


--
-- Data for Name: bucket_lifecycle_states; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."bucket_lifecycle_states" ("bucket_id", "generation", "next_run_at", "claim_id", "claim_until", "continuation", "last_started_at", "last_completed_at", "last_success_at", "last_result", "failure_count", "last_error", "updated_at") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: lifecycle_abandoned_artifacts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."lifecycle_abandoned_artifacts" ("bucket_id", "key", "name", "version", "attempted_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "archived_at", "is_delete_marker", "is_versioned") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 91, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict TpMijinqk9PENvUvERpLfnuubrJbnVALtUSLP5rdg5gqJrozUUQbaCNqTcah2Wb

RESET ALL;
