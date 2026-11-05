SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict QmtWdu3wh5OmJdrwLL3QrQYv38CWj03FYRRfuQpYcm22R3EVn1eJJjf4dx4NNeD

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
00000000-0000-0000-0000-000000000000	f7d38056-25a0-4331-a232-a9f370d3718c	authenticated	authenticated	fabiano.c.tafarelo@gmail.com	$2a$10$FYd92VSaiK5lSjkXO2uEi.DcyIQTYJLw145FYHQ/bUab99QK0tYge	2026-10-31 13:08:02.323118+00	\N		\N		\N			\N	2026-11-05 02:17:34.092117+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-10-31 13:08:02.30995+00	2026-11-05 02:17:34.143205+00	\N	\N			\N		0	\N		\N	f	\N	f
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
93ebca88-c172-4214-b35c-86e40e0dde35	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-01 11:48:29.462635+00	2026-11-04 15:51:47.548918+00	\N	aal1	\N	2026-11-04 15:51:47.548793	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Mobile Safari/537.36	179.222.167.231	\N	\N	\N	\N	\N
29e97dd5-c007-43ae-a329-f786760a088f	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-04 23:12:11.069207+00	2026-11-04 23:12:11.069207+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0	149.102.233.195	\N	\N	\N	\N	\N
09441807-1b9d-498a-b5a8-4af846a24a77	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-04 23:13:12.473911+00	2026-11-04 23:13:12.473911+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36	149.102.233.195	\N	\N	\N	\N	\N
7b79d0a7-0d5e-4f24-8434-0ab94e871825	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-01 11:46:22.153194+00	2026-11-04 23:33:08.090495+00	\N	aal1	\N	2026-11-04 23:33:08.090369	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Mobile Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
162a161b-7137-4f70-ad03-34f2a8736287	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-01 15:59:00.814544+00	2026-11-05 01:27:10.420877+00	\N	aal1	\N	2026-11-05 01:27:10.420768	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
7fd3fb6e-031c-415f-8af4-9399fef0f6b7	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-05 02:17:34.09225+00	2026-11-05 02:17:34.09225+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0	149.102.234.91	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
7b79d0a7-0d5e-4f24-8434-0ab94e871825	2026-11-01 11:46:22.203517+00	2026-11-01 11:46:22.203517+00	password	37a3f8b8-7bc0-4edc-baac-f6f5fce5b13c
93ebca88-c172-4214-b35c-86e40e0dde35	2026-11-01 11:48:29.485017+00	2026-11-01 11:48:29.485017+00	password	60cb05c9-b2f5-415a-b1e3-352acac03226
162a161b-7137-4f70-ad03-34f2a8736287	2026-11-01 15:59:00.886423+00	2026-11-01 15:59:00.886423+00	password	50c4bd6e-83d8-4a55-8243-908ad5a7a1df
29e97dd5-c007-43ae-a329-f786760a088f	2026-11-04 23:12:11.115607+00	2026-11-04 23:12:11.115607+00	password	80259f7f-8e0b-4c37-9d34-9d1f8bc7d84e
09441807-1b9d-498a-b5a8-4af846a24a77	2026-11-04 23:13:12.496598+00	2026-11-04 23:13:12.496598+00	password	51e0090f-87f4-4d05-b19e-f9a055579f78
7fd3fb6e-031c-415f-8af4-9399fef0f6b7	2026-11-05 02:17:34.151197+00	2026-11-05 02:17:34.151197+00	password	6b1371be-86ca-408b-9ce6-2cb4752526d1
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
00000000-0000-0000-0000-000000000000	63	rim4dnqvccb7	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 12:19:52.625525+00	2026-11-04 17:07:54.998459+00	hgzbi4xpm7lp	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	66	vnyoc2zfmndg	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 17:07:55.009229+00	2026-11-04 18:13:17.661363+00	rim4dnqvccb7	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	64	jqffcm47evkj	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 13:05:00.365878+00	2026-11-04 18:16:59.530572+00	7crtzypaxv4h	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	67	ggvjc3ziec3s	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 18:13:17.673601+00	2026-11-04 22:07:56.497154+00	vnyoc2zfmndg	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	68	ttrhp62nubom	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 18:16:59.537518+00	2026-11-04 23:33:08.06506+00	jqffcm47evkj	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	20	rj2quxqpvfaz	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 11:46:22.181725+00	2026-11-01 12:59:53.211139+00	\N	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	21	3ek6w6zr4qau	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 11:48:29.47806+00	2026-11-01 15:38:38.211241+00	\N	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	22	xdineosfaobw	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 12:59:53.228521+00	2026-11-01 15:40:19.359359+00	rj2quxqpvfaz	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	25	knlps6v2lvq5	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 15:59:00.857969+00	2026-11-01 17:18:54.39566+00	\N	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	26	dr3fbypz7syb	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 17:18:54.408297+00	2026-11-01 20:26:24.240691+00	knlps6v2lvq5	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	27	byod6e6smm7h	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 20:26:24.263151+00	2026-11-01 22:08:41.720819+00	dr3fbypz7syb	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	23	vwgdtscwx5kk	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 15:38:38.226753+00	2026-11-01 22:43:21.896398+00	3ek6w6zr4qau	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	28	bnzsu47udzrd	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 22:08:41.733897+00	2026-11-01 23:11:23.967772+00	byod6e6smm7h	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	29	thaugqryrbhz	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 22:43:21.906992+00	2026-11-01 23:46:51.188103+00	vwgdtscwx5kk	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	30	pcmi4xilol7d	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 23:11:23.9789+00	2026-11-02 00:20:26.975554+00	bnzsu47udzrd	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	32	pxxlz2zsliv3	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 00:20:26.987741+00	2026-11-02 01:29:49.993647+00	pcmi4xilol7d	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	24	xbf7xvcad3i7	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 15:40:19.364705+00	2026-11-02 01:45:13.053441+00	xdineosfaobw	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	34	xvditxna3uqp	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 01:45:13.061432+00	2026-11-02 02:44:45.809565+00	xbf7xvcad3i7	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	33	vxdph34t5dj5	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 01:29:50.006443+00	2026-11-02 09:38:09.33351+00	pxxlz2zsliv3	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	31	6q6bjwcmevni	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-01 23:46:51.200038+00	2026-11-02 10:30:15.672085+00	thaugqryrbhz	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	37	sxu5t2pbohj3	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 10:30:15.687376+00	2026-11-02 11:42:37.381293+00	6q6bjwcmevni	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	36	ymjdecudyz7e	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 09:38:09.353688+00	2026-11-02 11:45:31.594283+00	vxdph34t5dj5	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	35	2ecj6hc2fldp	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 02:44:45.823582+00	2026-11-02 13:52:26.683603+00	xvditxna3uqp	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	39	3rayvheqcrtr	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 11:45:31.603219+00	2026-11-03 00:24:56.086538+00	ymjdecudyz7e	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	41	k4vgr27qyw7g	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 00:24:56.098428+00	2026-11-03 02:00:13.106608+00	3rayvheqcrtr	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	42	ty44hvg46an7	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 02:00:13.128018+00	2026-11-03 07:53:25.893082+00	k4vgr27qyw7g	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	38	b5ks4ae2rd6m	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 11:42:37.395592+00	2026-11-03 12:01:08.76025+00	sxu5t2pbohj3	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	40	ui6rrtur7yjx	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-02 13:52:26.694981+00	2026-11-03 12:27:22.834951+00	2ecj6hc2fldp	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	44	aobfolqr6fgw	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 12:01:08.783754+00	2026-11-03 13:20:54.954195+00	b5ks4ae2rd6m	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	45	e22xha2mhaqg	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 12:27:22.84865+00	2026-11-03 13:30:01.913888+00	ui6rrtur7yjx	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	43	dbexmgalu3tx	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 07:53:25.907779+00	2026-11-03 13:45:00.805774+00	ty44hvg46an7	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	47	7yx4geauqikn	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 13:30:01.921381+00	2026-11-03 14:31:27.84148+00	e22xha2mhaqg	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	46	p2w2wkfh7iau	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 13:20:54.967737+00	2026-11-03 14:34:58.142653+00	aobfolqr6fgw	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	48	eu2vfn5o2b7u	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 13:45:00.813917+00	2026-11-03 15:19:32.31436+00	dbexmgalu3tx	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	49	4zjxcjhw62ex	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 14:31:27.855661+00	2026-11-03 16:31:04.625689+00	7yx4geauqikn	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	52	72plh7jcphle	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 16:31:04.646377+00	2026-11-03 17:48:33.882344+00	4zjxcjhw62ex	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	51	qlxsczcxjiqd	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 15:19:32.334507+00	2026-11-03 21:18:21.611392+00	eu2vfn5o2b7u	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	50	hbek7sp75y4j	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 14:34:58.151289+00	2026-11-03 22:27:06.50987+00	p2w2wkfh7iau	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	53	cbn5zroplgvj	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 17:48:33.891823+00	2026-11-03 23:52:12.502557+00	72plh7jcphle	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	54	axhkdhjt4tq2	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 21:18:21.625524+00	2026-11-03 23:55:41.707734+00	qlxsczcxjiqd	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	55	nhqrtdoky24y	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 22:27:06.520549+00	2026-11-04 00:19:12.521812+00	hbek7sp75y4j	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	56	htwm7z6rnimr	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 23:52:12.521634+00	2026-11-04 01:01:00.24883+00	cbn5zroplgvj	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	57	elimyzkvwsy7	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-03 23:55:41.713834+00	2026-11-04 08:54:48.880516+00	axhkdhjt4tq2	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	59	lkrs65nohjei	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 01:01:00.266064+00	2026-11-04 09:05:01.942665+00	htwm7z6rnimr	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	61	c4fq4jiacwhy	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 09:05:01.947367+00	2026-11-04 10:22:45.945737+00	lkrs65nohjei	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	60	hgzbi4xpm7lp	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 08:54:48.907399+00	2026-11-04 12:19:52.605241+00	elimyzkvwsy7	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	62	7crtzypaxv4h	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 10:22:45.960791+00	2026-11-04 13:05:00.352177+00	c4fq4jiacwhy	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	58	y55oe4rn72ht	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 00:19:12.535307+00	2026-11-04 15:51:47.503975+00	nhqrtdoky24y	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	65	snfwvo5ojypy	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-04 15:51:47.518891+00	2026-11-04 15:51:47.518891+00	y55oe4rn72ht	93ebca88-c172-4214-b35c-86e40e0dde35
00000000-0000-0000-0000-000000000000	69	y4ts7mt56qpr	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 22:07:56.514783+00	2026-11-04 23:07:01.585539+00	ggvjc3ziec3s	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	71	zwnkp35mxvyw	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-04 23:12:11.100771+00	2026-11-04 23:12:11.100771+00	\N	29e97dd5-c007-43ae-a329-f786760a088f
00000000-0000-0000-0000-000000000000	72	t2kyepb5ubll	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-04 23:13:12.492293+00	2026-11-04 23:13:12.492293+00	\N	09441807-1b9d-498a-b5a8-4af846a24a77
00000000-0000-0000-0000-000000000000	73	l7ishhce52p3	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-04 23:33:08.070946+00	2026-11-04 23:33:08.070946+00	ttrhp62nubom	7b79d0a7-0d5e-4f24-8434-0ab94e871825
00000000-0000-0000-0000-000000000000	70	zjbagenew73c	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-04 23:07:01.594215+00	2026-11-05 01:27:10.381117+00	y4ts7mt56qpr	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	74	t2w7g64f6gqy	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-05 01:27:10.397677+00	2026-11-05 01:27:10.397677+00	zjbagenew73c	162a161b-7137-4f70-ad03-34f2a8736287
00000000-0000-0000-0000-000000000000	75	em7klijbpaag	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-05 02:17:34.124415+00	2026-11-05 02:17:34.124415+00	\N	7fd3fb6e-031c-415f-8af4-9399fef0f6b7
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
olu1fzl	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "olu1fzl", "cob": "2026-11-04", "pid": "josg46n", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 300}	2026-11-05 01:34:40.904+00
3bgfv0w	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "3bgfv0w", "cob": "2026-10-31", "env": "2026-11-03", "pid": "xsv2v6w", "rep": 1, "seq": 1, "data": "2026-10-31", "pago": "2026-11-03", "valor": 300}	2026-11-03 14:35:25.995+00
ocumzkt	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "ocumzkt", "cob": "2026-11-04", "pid": "m4yw6fg", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 300}	2026-11-05 01:44:22.396+00
a06sv7l	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "a06sv7l", "cob": "2026-11-03", "env": "2026-11-03", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 300}	2026-11-04 00:09:31.701+00
j129l7a	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "j129l7a", "cob": "2026-11-04", "pid": "6ds0y4l", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 290}	2026-11-05 01:50:46.737+00
xvnv8w0	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "xvnv8w0", "cob": "2026-10-28", "pid": "6ds0y4l", "rep": 1, "seq": 1, "data": "2026-10-28", "valor": 290}	2026-11-05 01:53:35.089+00
8yjbpgg	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "8yjbpgg", "cob": "2026-10-31", "env": "2026-11-03", "pid": "xsv2v6w", "rep": 1, "seq": 1, "data": "2026-10-31", "pago": "2026-11-04", "valor": 300}	2026-11-04 15:56:53.274+00
3ewaip4	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "3ewaip4", "cob": "2026-11-03", "pid": "3ykcjts", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 300}	2026-11-04 16:19:24.759+00
fv861g7	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "fv861g7", "cob": "2026-11-05", "pid": "h6rb35b", "rep": 1, "seq": 1, "data": "2026-11-05", "valor": 280}	2026-11-05 02:10:59.338+00
v34p6fb	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "v34p6fb", "cob": "2026-11-03", "env": "2026-11-04", "pid": "3ykcjts", "rep": 1, "seq": 1, "data": "2026-11-03", "valor": 300}	2026-11-04 16:23:46.625+00
ufesxwy	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "ufesxwy", "cob": "2026-11-04", "env": "2026-11-04", "pid": "vfstn7h", "rep": 1, "seq": 1, "data": "2026-11-04", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:43:21.692+00
irvlds0	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "irvlds0", "cob": "2026-10-26", "env": "2026-11-04", "pid": "3ykcjts", "rep": 1, "seq": 1, "data": "2026-10-26", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:50:01.031+00
7vlyg68	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "7vlyg68", "cob": "2026-11-04", "pid": "dqpkrd5", "rep": 1, "seq": 1, "data": "2026-11-04", "pago": "2026-11-04", "valor": 200}	2026-11-05 00:55:17.171+00
7m0ost8	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "7m0ost8", "cob": "2026-10-28", "env": "2026-11-03", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-10-28", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:59:22.643+00
9mm7smt	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "9mm7smt", "cob": "2026-10-31", "env": "2026-11-03", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-10-31", "pago": "2026-11-04", "valor": 300}	2026-11-05 00:59:28.205+00
p4ehyuk	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "p4ehyuk", "cob": "2026-11-04", "pid": "5frz0ge", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 300}	2026-11-05 01:06:28.435+00
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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 75, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict QmtWdu3wh5OmJdrwLL3QrQYv38CWj03FYRRfuQpYcm22R3EVn1eJJjf4dx4NNeD

RESET ALL;
