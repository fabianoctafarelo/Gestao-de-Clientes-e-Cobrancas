SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict lKeg3CUiAuPpJscOd8NybavTCB1RMYDkfBr74EybxLHxZujkSjWZVGJSF8jTDVR

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
00000000-0000-0000-0000-000000000000	f7d38056-25a0-4331-a232-a9f370d3718c	authenticated	authenticated	fabiano.c.tafarelo@gmail.com	$2a$10$FYd92VSaiK5lSjkXO2uEi.DcyIQTYJLw145FYHQ/bUab99QK0tYge	2026-10-31 13:08:02.323118+00	\N		\N		\N			\N	2026-11-01 15:59:00.814438+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-10-31 13:08:02.30995+00	2026-11-01 23:11:23.98413+00	\N	\N			\N		0	\N		\N	f	\N	f
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
7b79d0a7-0d5e-4f24-8434-0ab94e871825	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-01 11:46:22.153194+00	2026-11-01 15:40:19.378187+00	\N	aal1	\N	2026-11-01 15:40:19.378033	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Mobile Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
93ebca88-c172-4214-b35c-86e40e0dde35	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-01 11:48:29.462635+00	2026-11-01 22:43:21.923601+00	\N	aal1	\N	2026-11-01 22:43:21.923494	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Mobile Safari/537.36	187.43.138.252	\N	\N	\N	\N	\N
162a161b-7137-4f70-ad03-34f2a8736287	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-01 15:59:00.814544+00	2026-11-01 23:11:24.002844+00	\N	aal1	\N	2026-11-01 23:11:24.002728	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
7b79d0a7-0d5e-4f24-8434-0ab94e871825	2026-11-01 11:46:22.203517+00	2026-11-01 11:46:22.203517+00	password	37a3f8b8-7bc0-4edc-baac-f6f5fce5b13c
93ebca88-c172-4214-b35c-86e40e0dde35	2026-11-01 11:48:29.485017+00	2026-11-01 11:48:29.485017+00	password	60cb05c9-b2f5-415a-b1e3-352acac03226
162a161b-7137-4f70-ad03-34f2a8736287	2026-11-01 15:59:00.886423+00	2026-11-01 15:59:00.886423+00	password	50c4bd6e-83d8-4a55-8243-908ad5a7a1df
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
00000000-0000-0000-0000-000000000000	20	rj2quxqpvfaz	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 11:46:22.181725+00	2026-11-01 12:59:53.211139+00	\N	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	21	3ek6w6zr4qau	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 11:48:29.47806+00	2026-11-01 15:38:38.211241+00	\N	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	22	xdineosfaobw	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 12:59:53.228521+00	2026-11-01 15:40:19.359359+00	rj2quxqpvfaz	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	24	xbf7xvcad3i7	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-01 15:40:19.364705+00	2026-11-01 15:40:19.364705+00	xdineosfaobw	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	25	knlps6v2lvq5	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 15:59:00.857969+00	2026-11-01 17:18:54.39566+00	\N	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	26	dr3fbypz7syb	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 17:18:54.408297+00	2026-11-01 20:26:24.240691+00	knlps6v2lvq5	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	27	byod6e6smm7h	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 20:26:24.263151+00	2026-11-01 22:08:41.720819+00	dr3fbypz7syb	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	23	vwgdtscwx5kk	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 15:38:38.226753+00	2026-11-01 22:43:21.896398+00	3ek6w6zr4qau	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	29	thaugqryrbhz	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-01 22:43:21.906992+00	2026-11-01 22:43:21.906992+00	vwgdtscwx5kk	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	28	bnzsu47udzrd	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 22:08:41.733897+00	2026-11-01 23:11:23.967772+00	byod6e6smm7h	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	30	pcmi4xilol7d	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-01 23:11:23.9789+00	2026-11-01 23:11:23.9789+00	bnzsu47udzrd	162a161b-7137-4f70-ad03-34f2a8736287
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
f7d38056-25a0-4331-a232-a9f370d3718c	Olá, {responsavel}! Tudo bem? Seguem os dados para fins de pagamento referente ao atendimento fonoaudiológico do(a) {paciente}:\n\n- Data do atendimento: {data}\n- Valor: {valor}\n- Chave Pix: 294.126.868-54\n\nFavor enviar por aqui o comprovante de pagamento. Assim que recebê-lo eu encaminho o relatório de atendimento.\n\nObrigada!	2026-11-01 22:10:32.473+00
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."patients" ("id", "user_id", "data", "updated_at") FROM stdin;
e76zwmn	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "e76zwmn", "cpf": "403.152.988-04", "off": 0, "tel": "11 96572-0693", "nasc": "2026-07-13", "nome": "LAVINIA Pollice de Faveri", "resp": "Matheus Faveri", "sexo": "Feminino", "mesmo": false, "valor": 370}	2026-11-01 15:52:51.684+00
esmu6ya	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "esmu6ya", "cpf": "437.198.978-00", "off": 1, "tel": "11951001628", "nasc": "2026-10-10", "nome": "Heloisa Prado Santos", "resp": "Guilherme Emanoel da Silva Santos", "sexo": "Feminino", "mesmo": false, "valor": 250}	2026-11-01 15:57:49.029+00
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sessions" ("id", "user_id", "data", "updated_at") FROM stdin;
8mp9ptg	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "8mp9ptg", "cob": "2026-11-02", "pid": "esmu6ya", "rep": 1, "seq": 1, "data": "2026-10-31", "hora": "", "valor": 250}	2026-11-01 11:51:08.315+00
16yz1dc	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "16yz1dc", "cob": "2026-10-31", "env": "2026-11-01", "pid": "e76zwmn", "rep": 1, "seq": 1, "data": "2026-10-31", "hora": "", "valor": 370}	2026-11-01 15:53:57.218+00
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type", "versioning_status", "lifecycle_configuration", "lifecycle_configuration_generation") FROM stdin;
SUPABASE_FILE	SUPABASE_FILE	\N	2026-11-01 16:17:18.674245+00	2026-11-01 16:17:18.674245+00	f	f	\N	\N	\N	STANDARD	DISABLED	\N	\N
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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 30, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict lKeg3CUiAuPpJscOd8NybavTCB1RMYDkfBr74EybxLHxZujkSjWZVGJSF8jTDVR

RESET ALL;
