--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-18 21:35:26

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
-- TOC entry 4895 (class 0 OID 33197)
-- Dependencies: 229
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (id_persona, apellido, email, fecha_nacimiento, nombre, version) FROM stdin;
1	Gómez	laura.gomez@example.com	1980-03-15	Laura	\N
2	Rodríguez	juan.rodriguez@example.com	1975-06-20	Juan	\N
3	Martínez	sofia.martinez@example.com	1982-09-05	Sofía	\N
4	Pérez	carlos.perez@example.com	1995-07-22	Carlos	\N
5	López	ana.lopez@example.com	2000-01-10	Ana	\N
6	Fernández	lucas.fernandez@example.com	2001-02-18	Lucas	\N
7	Díaz	marina.diaz@example.com	2002-03-25	Marina	\N
8	Ruiz	julia.ruiz@example.com	1999-11-30	Julia	\N
9	Morales	tomas.morales@example.com	1998-08-16	Tomás	\N
10	Alvarez	valentina.alvarez@example.com	2003-05-12	Valentina	\N
11	Choque	ochoque@gmail.com	2024-02-09	Oscar	\N
12	Flores	f@gmail.com	2005-02-09	Joel	\N
13	Choque	ochoquef@gmail.com	2005-02-09	Oscar	\N
\.


--
-- TOC entry 4885 (class 0 OID 33161)
-- Dependencies: 219
-- Data for Name: docente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.docente (departamento, nro_empleado, id_persona) FROM stdin;
Ingeniería	D001	1
Matemática	D002	2
Física	D003	3
\.


--
-- TOC entry 4886 (class 0 OID 33168)
-- Dependencies: 220
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiante (estado, fecha_alta, fecha_baja, fecha_modificacion, motivo_baja, numero_inscripcion, usuario_alta, usuario_baja, usuario_modificacion, id_persona) FROM stdin;
Activo	2023-03-01	\N	\N	\N	E2023001	admin	\N	\N	4
Activo	2023-03-03	\N	\N	\N	E2023003	admin	\N	\N	6
Activo	2023-03-04	\N	\N	\N	E2023004	admin	\N	\N	7
Activo	2023-03-05	\N	\N	\N	E2023005	admin	\N	\N	8
Activo	2023-03-06	\N	\N	\N	E2023006	admin	\N	\N	9
Activo	2023-03-07	\N	\N	\N	E2023007	admin	\N	\N	10
inactivo	2023-03-02	2025-05-18	2025-05-18	desercion	E2023002	admin	admin	admin	5
activo	2025-05-18	2025-05-18	2025-05-18	renuncia	ES0809	admin	string	string	11
activo	2025-05-18	2025-05-18	2025-05-18	\N	esf897	admin	string	string	12
inactivo	2025-05-18	2025-05-18	2025-05-18	traslado	E2023111	admin	admin	admin	13
\.


--
-- TOC entry 4888 (class 0 OID 33176)
-- Dependencies: 222
-- Data for Name: evaluacion_docente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluacion_docente (id, comentario, fecha, puntuacion, docente_id) FROM stdin;
\.


--
-- TOC entry 4892 (class 0 OID 33188)
-- Dependencies: 226
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materia (id_materia, codigo_unico, creditos, nombre_materia, version, docente_id) FROM stdin;
2	MAT102	6	Matemáticas II	\N	2
3	FIS101	4	Física I	\N	3
4	FIS102	4	Física II	\N	3
5	ING101	3	Introducción a la Ingeniería	\N	1
6	ALG101	5	Álgebra Lineal	\N	2
7	CAL101	5	Cálculo Diferencial	\N	2
8	EST101	3	Estadística	\N	3
9	PROG101	4	Programación I	\N	1
10	PROG102	4	Programación II	\N	1
12	PROG103	10	Programacion III	4	1
1	MAT101	6	Matemáticas I	\N	1
\.


--
-- TOC entry 4890 (class 0 OID 33182)
-- Dependencies: 224
-- Data for Name: inscripcion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inscripcion (id, fecha_inscripcion, estudiante_id, materia_id) FROM stdin;
1	2024-03-10	4	1
2	2024-03-10	5	1
3	2024-03-11	6	3
4	2024-03-11	7	3
5	2024-03-12	8	5
6	2024-03-12	9	6
7	2024-03-13	10	7
8	2024-03-13	4	9
9	2024-03-14	5	2
10	2024-03-14	6	4
11	2025-05-18	4	12
12	2025-05-18	4	10
\.


--
-- TOC entry 4893 (class 0 OID 33193)
-- Dependencies: 227
-- Data for Name: materia_prerequisito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.materia_prerequisito (id_materia, id_prerequisito) FROM stdin;
2	1
4	3
6	1
7	1
10	9
\.


--
-- TOC entry 4897 (class 0 OID 33203)
-- Dependencies: 231
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, nombre) FROM stdin;
1	ROL_ADMIN
2	ROL_DOCENTE
3	ROL_ESTUDIANTE
\.


--
-- TOC entry 4883 (class 0 OID 33141)
-- Dependencies: 217
-- Data for Name: spring_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spring_session (primary_id, session_id, creation_time, last_access_time, max_inactive_interval, expiry_time, principal_name) FROM stdin;
\.


--
-- TOC entry 4884 (class 0 OID 33149)
-- Dependencies: 218
-- Data for Name: spring_session_attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spring_session_attributes (session_primary_id, attribute_name, attribute_bytes) FROM stdin;
\.


--
-- TOC entry 4900 (class 0 OID 33215)
-- Dependencies: 234
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, activo, apellido, email, nombre, password, username) FROM stdin;
1	t	Sistema	admin@universidad.com	Administrador	$2a$10$uNjkyjjvZyZ9qbClS9u/Be8E5WlLQcaGEJK.IUs40ybnrBrahZ6nS	admin
2	t	Choque	ochoque@gmail.com	Oscar	$2a$10$SS.Dvuyf8KAV4zVePRXpEeklDfA0Bp1Kcs3K57XpBQB1CFwS/mCc6	ochoque
\.


--
-- TOC entry 4898 (class 0 OID 33209)
-- Dependencies: 232
-- Data for Name: usuario_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario_roles (usuario_id, rol_id) FROM stdin;
1	1
2	3
\.


--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 221
-- Name: evaluacion_docente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluacion_docente_id_seq', 1, false);


--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 223
-- Name: inscripcion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inscripcion_id_seq', 14, true);


--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 225
-- Name: materia_id_materia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materia_id_materia_seq', 14, true);


--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 228
-- Name: persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_persona_seq', 13, true);


--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 230
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 233
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 2, true);


-- Completed on 2025-05-18 21:35:27

--
-- PostgreSQL database dump complete
--

