SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict 8IpSlnkbbcPHnb2y73kdZqp8aqZnQSPcbeLVUL1gfZhGNubGNbzRiWlByMkUwkm

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
00000000-0000-0000-0000-000000000000	f7d38056-25a0-4331-a232-a9f370d3718c	authenticated	authenticated	fabiano.c.tafarelo@gmail.com	$2a$10$FYd92VSaiK5lSjkXO2uEi.DcyIQTYJLw145FYHQ/bUab99QK0tYge	2026-10-31 13:08:02.323118+00	\N		\N		\N			\N	2026-11-06 23:28:47.181103+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-10-31 13:08:02.30995+00	2026-11-07 01:20:23.371094+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	3dd2613c-547a-4940-a12b-0365523214f8	authenticated	authenticated	primabdias@yahoo.com.br	$2a$10$dWeyGDLxVOWkx2Fbuvb0r.Z0BKZ1T2sLAt4.HriLHNIcWJnWV8G7q	2026-11-06 23:43:06.717753+00	\N		\N		\N			\N	2026-11-07 00:52:34.228442+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-11-06 23:43:06.689453+00	2026-11-07 01:52:59.983642+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
f7d38056-25a0-4331-a232-a9f370d3718c	f7d38056-25a0-4331-a232-a9f370d3718c	{"sub": "f7d38056-25a0-4331-a232-a9f370d3718c", "email": "fabiano.c.tafarelo@gmail.com", "email_verified": false, "phone_verified": false}	email	2026-10-31 13:08:02.319993+00	2026-10-31 13:08:02.320049+00	2026-10-31 13:08:02.320049+00	94daa146-befa-4215-bba9-b09decc6d3b3
3dd2613c-547a-4940-a12b-0365523214f8	3dd2613c-547a-4940-a12b-0365523214f8	{"sub": "3dd2613c-547a-4940-a12b-0365523214f8", "email": "primabdias@yahoo.com.br", "email_verified": false, "phone_verified": false}	email	2026-11-06 23:43:06.70901+00	2026-11-06 23:43:06.70907+00	2026-11-06 23:43:06.70907+00	9bce40c3-c18c-4f46-ad97-defa7134680b
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
e2210d4c-8f39-45be-97bd-fd89d16b206e	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-06 23:28:47.18119+00	2026-11-06 23:28:47.18119+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36 Edg/157.0.0.0	191.188.65.200	\N	\N	\N	\N	\N
026eff69-26e6-4580-846e-f6e60d79c903	3dd2613c-547a-4940-a12b-0365523214f8	2026-11-06 23:43:49.79851+00	2026-11-06 23:43:49.79851+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36 Edg/157.0.0.0	191.188.65.200	\N	\N	\N	\N	\N
ed058a17-77f8-493d-8f4a-86a45143fe89	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-05 22:30:39.389791+00	2026-11-06 23:50:49.997343+00	\N	aal1	\N	2026-11-06 23:50:49.997202	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
ea380b2e-3489-45bd-a55b-993f4aaf4940	3dd2613c-547a-4940-a12b-0365523214f8	2026-11-06 23:51:34.868411+00	2026-11-06 23:51:34.868411+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36 Edg/157.0.0.0	191.188.65.200	\N	\N	\N	\N	\N
a42a1e72-dc63-4259-8794-0d304452b0ba	f7d38056-25a0-4331-a232-a9f370d3718c	2026-11-06 08:21:47.167906+00	2026-11-07 01:20:23.386706+00	\N	aal1	\N	2026-11-07 01:20:23.386563	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Mobile Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
4d1e8f2f-779f-4805-adfa-a489344ce671	3dd2613c-547a-4940-a12b-0365523214f8	2026-11-07 00:52:34.22858+00	2026-11-07 01:52:59.998553+00	\N	aal1	\N	2026-11-07 01:52:59.99844	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Mobile Safari/537.36	191.188.65.200	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
ed058a17-77f8-493d-8f4a-86a45143fe89	2026-11-05 22:30:39.425286+00	2026-11-05 22:30:39.425286+00	password	09bc0f61-9ea9-4d58-93f2-23c0a7d0f18f
a42a1e72-dc63-4259-8794-0d304452b0ba	2026-11-06 08:21:47.26558+00	2026-11-06 08:21:47.26558+00	password	e6534428-9b86-43e3-94f2-d6443a7be3d6
e2210d4c-8f39-45be-97bd-fd89d16b206e	2026-11-06 23:28:47.223945+00	2026-11-06 23:28:47.223945+00	password	807a1e3c-6fd0-47cc-b40e-3dfb0f0829a0
026eff69-26e6-4580-846e-f6e60d79c903	2026-11-06 23:43:49.863027+00	2026-11-06 23:43:49.863027+00	password	5fa03455-e2b2-4e37-abf0-b82a942aff16
ea380b2e-3489-45bd-a55b-993f4aaf4940	2026-11-06 23:51:34.893009+00	2026-11-06 23:51:34.893009+00	password	f975253b-9126-401f-8f97-cc5845ec8bcf
4d1e8f2f-779f-4805-adfa-a489344ce671	2026-11-07 00:52:34.318893+00	2026-11-07 00:52:34.318893+00	password	44fb6875-39b9-4614-8b16-9ef583fe6bec
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
00000000-0000-0000-0000-000000000000	91	k2bvhi7pokfq	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 00:43:00.718165+00	2026-11-06 08:49:43.492208+00	bvqmywj25mn5	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	93	jtknxl7zwtut	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 08:49:43.497238+00	2026-11-06 10:14:09.995588+00	k2bvhi7pokfq	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	95	qvwdvx5igyk6	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 11:16:31.898917+00	2026-11-06 12:30:57.418729+00	vaex3qnxgba4	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	97	zsyz377icjnk	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 12:30:57.433109+00	2026-11-06 13:53:08.605775+00	qvwdvx5igyk6	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	99	xv25xsdbzspy	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 14:56:30.230077+00	2026-11-06 16:13:09.965594+00	i6x4jzuzmsxm	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	101	6z73twjo3p46	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 17:17:55.891029+00	2026-11-06 19:47:29.113774+00	5ivmfjdlrnta	a42a1e72-dc63-4259-8794-0d304452b0ba
00000000-0000-0000-0000-000000000000	103	sxfruitl4fzw	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 18:33:28.6889+00	2026-11-06 20:07:43.639699+00	aosv5rfhraa2	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	105	3tbdewfpphip	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 20:07:43.644075+00	2026-11-06 21:11:15.393835+00	sxfruitl4fzw	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	109	6bdzexuvmllf	3dd2613c-547a-4940-a12b-0365523214f8	f	2026-11-06 23:43:49.838446+00	2026-11-06 23:43:49.838446+00	\N	026eff69-26e6-4580-846e-f6e60d79c903
00000000-0000-0000-0000-000000000000	107	2zrcamwymdnv	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 22:50:22.450646+00	2026-11-06 23:50:49.972487+00	k3cheecpfnbd	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	112	7xjzk4kf2pcp	3dd2613c-547a-4940-a12b-0365523214f8	t	2026-11-07 00:52:34.276463+00	2026-11-07 01:52:59.960492+00	\N	4d1e8f2f-779f-4805-adfa-a489344ce671
00000000-0000-0000-0000-000000000000	114	7snvcjj2ucik	3dd2613c-547a-4940-a12b-0365523214f8	f	2026-11-07 01:52:59.974039+00	2026-11-07 01:52:59.974039+00	7xjzk4kf2pcp	4d1e8f2f-779f-4805-adfa-a489344ce671
00000000-0000-0000-0000-000000000000	90	bvqmywj25mn5	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-05 23:28:43.890818+00	2026-11-06 00:43:00.700416+00	6e6xvcqzpiaz	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	94	vaex3qnxgba4	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 10:14:10.012122+00	2026-11-06 11:16:31.886399+00	jtknxl7zwtut	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	92	27tktxrd542p	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 08:21:47.21424+00	2026-11-06 11:36:18.999212+00	\N	a42a1e72-dc63-4259-8794-0d304452b0ba
00000000-0000-0000-0000-000000000000	98	i6x4jzuzmsxm	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 13:53:08.630208+00	2026-11-06 14:56:30.215703+00	zsyz377icjnk	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	96	5ivmfjdlrnta	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 11:36:19.013756+00	2026-11-06 17:17:55.870027+00	27tktxrd542p	a42a1e72-dc63-4259-8794-0d304452b0ba
00000000-0000-0000-0000-000000000000	100	qo6uhse7x7xq	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 16:13:09.981866+00	2026-11-06 17:21:36.92768+00	xv25xsdbzspy	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	102	aosv5rfhraa2	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 17:21:36.933178+00	2026-11-06 18:33:28.674927+00	qo6uhse7x7xq	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	106	k3cheecpfnbd	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 21:11:15.407524+00	2026-11-06 22:50:22.428894+00	3tbdewfpphip	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	108	xq7n5or4pcci	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-06 23:28:47.208615+00	2026-11-06 23:28:47.208615+00	\N	e2210d4c-8f39-45be-97bd-fd89d16b206e
00000000-0000-0000-0000-000000000000	110	nd6xn6lsd5ak	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-06 23:50:49.979784+00	2026-11-06 23:50:49.979784+00	2zrcamwymdnv	ed058a17-77f8-493d-8f4a-86a45143fe89
00000000-0000-0000-0000-000000000000	111	u4jnriz547wf	3dd2613c-547a-4940-a12b-0365523214f8	f	2026-11-06 23:51:34.887985+00	2026-11-06 23:51:34.887985+00	\N	ea380b2e-3489-45bd-a55b-993f4aaf4940
00000000-0000-0000-0000-000000000000	104	zgw7nv65srdx	f7d38056-25a0-4331-a232-a9f370d3718c	t	2026-11-06 19:47:29.136742+00	2026-11-07 01:20:23.33996+00	6z73twjo3p46	a42a1e72-dc63-4259-8794-0d304452b0ba
00000000-0000-0000-0000-000000000000	113	wntratl6bk5q	f7d38056-25a0-4331-a232-a9f370d3718c	f	2026-11-07 01:20:23.359773+00	2026-11-07 01:20:23.359773+00	zgw7nv65srdx	a42a1e72-dc63-4259-8794-0d304452b0ba
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
f7d38056-25a0-4331-a232-a9f370d3718c	Olá, {responsavel}! Tudo bem? Seguem os dados para fins de pagamento referente ao atendimento fonoaudiológico do(a) {paciente}:\n\n- Data do atendimento: {data}\n- Valor: {valor}\n- Chave Pix: 294.126.868-54\n\nFavor enviar por aqui o comprovante de pagamento. Assim que recebê-lo eu encaminho o recibo.\n\nObrigada!	2026-11-01 23:51:37.62+00
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."patients" ("id", "user_id", "data", "updated_at") FROM stdin;
3ykcjts	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "3ykcjts", "cpf": "390.963.268-81", "off": 0, "tel": "1199804-0206", "nasc": "2026-10-06", "nome": "Benício Omizollo Casoni Silva", "resp": "Amanda Omizollo Casoni", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "179.981.748-20", "nome_mae": "Amanda Omizollo Casoni", "nome_pai": "Jonny Francisco Silva"}	2026-11-06 21:20:08.95+00
ad1tmlc	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "ad1tmlc", "cpf": "421.128.058-94", "off": 0, "tel": "1196856-4363", "nasc": "2026-08-28", "nome": "Otávio Mazolli Haddad Yovera", "resp": "Gustavo Henrique Haddad Yovera", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "178.899.808-17", "nome_mae": "Lívia Rodrigues Mazolli", "nome_pai": "Gustavo Henrique Haddad Yovera"}	2026-11-06 21:44:34.109+00
dqpkrd5	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "dqpkrd5", "cpf": "224.187.398-56", "off": 0, "tel": "11 97297-9566", "nasc": "2022-11-01", "nome": "Pedro Barbosa Juliatti", "resp": "Evandro César Juliatti", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 200, "cpfpac": "606.055.588-84"}	2026-11-06 09:01:30.073+00
le02ijn	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "le02ijn", "cpf": "437.047.698-43", "off": 0, "tel": "11975804968", "nasc": "2026-10-01", "nome": "Cecília Ferreira Bueno", "resp": "Vitor Gabriel Ferreira Bueno", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 370, "cpfpac": "179.845.808-04"}	2026-11-06 09:00:20.673+00
5frz0ge	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "5frz0ge", "cpf": "053.111.021-44", "off": 0, "tel": "61 9671-4475", "nasc": "2022-03-20", "nome": "André Medeiros Accieri", "resp": "Pedro Antônio Medeiros", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "601.362.488-70"}	2026-11-06 09:00:02.382+00
iyd8qzm	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "iyd8qzm", "cpf": "224.337.098-06", "off": 0, "tel": "1199684-7166", "nasc": "2019-09-27", "nome": "Lara Tardini", "resp": "Fernando Tardini", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 280, "cpfpac": "577.562.228-65"}	2026-11-06 10:39:58.662+00
h6rb35b	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "h6rb35b", "cpf": "387.111.618-17", "off": 0, "tel": "11 98611-5209", "nasc": "2021-04-07", "nome": "Leonardo Vermillio de Rosa", "resp": "Gabriel Lopes Silva de Rosa", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 280, "cpfpac": "592.735.108-50", "nome_mae": "Camila Berganton Vermillio", "nome_pai": "Gabriel Lopes Silva de Rosa"}	2026-11-06 21:21:18.346+00
josg46n	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "josg46n", "cpf": "373.292.838-19", "off": 0, "tel": "11 93754-4058", "nasc": "2026-04-08", "nome": "Helena Ramos taveres ferrão", "resp": "Lucas Tavares ferrão", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "166.351.068-71"}	2026-11-06 09:00:30.305+00
39w3r2b	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "39w3r2b", "cpf": "417.160.108-88", "off": 0, "tel": "1199669-0868", "nasc": "2026-04-13", "nome": "Paulo Santos de Almeida", "resp": "Carlos Henrique de Almeida", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 370, "cpfpac": "166.746.878-20", "nome_mae": "Nayara Fernanda Santos de Almeid", "nome_pai": "Carlos Henrique de Almeida"}	2026-11-06 21:25:59.629+00
m4yw6fg	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "m4yw6fg", "cpf": "387.015.798-43", "off": 0, "tel": "11 94714-9469", "nasc": "2026-07-20", "nome": "Luca Gonçalves Lammers", "resp": "Fabian Lammers", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "176.648.378-04"}	2026-11-06 09:01:05.24+00
esmu6ya	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "esmu6ya", "cpf": "437.198.978-00", "off": 1, "tel": "11951001628", "nasc": "2026-10-10", "nome": "Heloisa Prado Santos", "resp": "Guilherme Emanoel da Silva Santos", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 250, "cpfpac": "180.154.048-94", "nome_mae": "Sarah de Melo Prado", "nome_pai": "Guilherme Emanoel da Silva Santos"}	2026-11-06 21:43:09.466+00
6ds0y4l	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "6ds0y4l", "cpf": "329.739.738-13", "off": 0, "tel": "11 99884-6615", "nasc": "2026-02-20", "nome": "Vinícius Palma Brandão", "resp": "Gabriel Brandão", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 290, "cpfpac": "023.861.018-78"}	2026-11-06 09:01:36.691+00
vcrzfbn	3dd2613c-547a-4940-a12b-0365523214f8	{"id": "vcrzfbn", "cpf": "412.501.528-79", "off": 0, "tel": "11 97192-6589", "nasc": "2024-12-10", "nome": "Rafael Rebucci Alva", "resp": "Rafael Alva Neto", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 370, "cpfpac": "068.765.878-00", "nome_mae": "Beatriz Rebucci Ferro", "nome_pai": "Rafael Alva Neto"}	2026-11-07 00:53:28.767+00
xsv2v6w	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "xsv2v6w", "cpf": "421.128.058-94", "off": 0, "tel": "11 96856-4363", "nasc": "2026-08-28", "nome": "Augusto Mazolli Haddad Yovera", "resp": "Gustavo Henrique Haddad Yovera", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "178.900.288-57", "nome_mae": "Lívia Rodrigues Mazolli", "nome_pai": "Gustavo Henrique Haddad Yovera"}	2026-11-06 21:45:00.819+00
5hvyvt4	3dd2613c-547a-4940-a12b-0365523214f8	{"id": "5hvyvt4", "cpf": "409.710.728-33", "off": 0, "tel": "+55 11 97124-1530", "nasc": "2026-09-12", "nome": "Laura Antunes Lins", "resp": "Victor Fayad Lins", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "179.422.048-80", "nome_mae": "Thaís Christ Antunes", "nome_pai": "Victor Fayad Lins"}	2026-11-07 01:00:15.897+00
vfstn7h	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "vfstn7h", "cpf": "412.144.348-94", "off": 0, "tel": "1194207-0973", "nasc": "2026-07-18", "nome": "Noemi Santos Nascimento", "resp": "Lenildo Nascimento da Silva", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 300, "cpfpac": "176.586.918-87"}	2026-11-06 10:45:58.194+00
yy1x3m0	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "yy1x3m0", "cpf": "410.063.888-42", "off": 0, "tel": "1199383-7247", "nasc": "2026-04-14", "nome": "Cecília Vergnianini Rosolem", "resp": "Caio Vergnianini Rosolem", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 370, "cpfpac": "166.823.608-78", "nome_mae": "Fernanda Vergnianini Rosolem", "nome_pai": "Caio Vergnianini Rosolem"}	2026-11-06 21:18:24.931+00
e76zwmn	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "e76zwmn", "cpf": "403.152.988-04", "off": 0, "tel": "11 96572-0693", "nasc": "2026-07-13", "nome": "LAVINIA Pollice de Faveri", "resp": "Matheus Faveri", "sexo": "Feminino", "forma": "Pix", "mesmo": false, "valor": 370, "cpfpac": "175.922.918-00", "nome_mae": "Carolina Faveri", "nome_pai": "Matheus Faveri"}	2026-11-06 21:19:28.956+00
jwqw6gh	3dd2613c-547a-4940-a12b-0365523214f8	{"id": "jwqw6gh", "cpf": "079.735.939-77", "off": 0, "tel": "+55 43 9103-1822", "nasc": "2025-11-25", "nome": "Davi Fernandes Ferreira", "resp": "Tuane Consalter Fernandes Ferreira", "sexo": "Masculino", "forma": "Pix", "mesmo": false, "valor": 370, "cpfpac": "144.174.238-73", "nome_mae": "Tuane Consalter Fernandes Ferreira", "nome_pai": "Pedro Henrique Martins Ferreira"}	2026-11-07 00:57:37+00
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
e80voa2	f7d38056-25a0-4331-a232-a9f370d3718c	{"id": "e80voa2", "cob": "2026-11-04", "pid": "vfstn7h", "rep": 1, "seq": 1, "data": "2026-11-04", "valor": 300}	2026-11-06 10:38:11.377656+00
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

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 114, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict 8IpSlnkbbcPHnb2y73kdZqp8aqZnQSPcbeLVUL1gfZhGNubGNbzRiWlByMkUwkm

RESET ALL;
