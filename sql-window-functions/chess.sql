--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chess; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE chess (
    id integer NOT NULL,
    match_id integer,
    player_name text,
    player_ranking text,
    player_team text,
    checkmate integer
);


ALTER TABLE chess OWNER TO adamfields;

--
-- Name: chess_id_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE chess_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE chess_id_seq OWNER TO adamfields;

--
-- Name: chess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE chess_id_seq OWNED BY chess.id;


--
-- Name: chess id; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY chess ALTER COLUMN id SET DEFAULT nextval('chess_id_seq'::regclass);


--
-- Data for Name: chess; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY chess (id, match_id, player_name, player_ranking, player_team, checkmate) FROM stdin;
1	1	Casey	1737	Blue	1
2	1	Dale	957	Red	0
3	2	Bill	1354	Yellow	0
4	2	Robert	2209	Blue	1
5	3	Liam	1447	Blue	0
6	3	Patrick	1858	Red	1
7	4	Amy	1719	Red	1
8	4	Ned	1219	Yellow	0
9	5	Galina	2329	Red	0
10	5	Kate	2518	Yellow	1
11	6	Andrew	1748	Blue	0
12	6	Hank	1791	Yellow	1
13	7	Olivia	2130	Blue	1
14	7	Zane	2094	Yellow	0
15	8	Chuck	1977	Yellow	1
16	8	Ursula	1460	Blue	0
17	9	Iris	1420	Blue	0
18	9	Wanda	2048	Yellow	1
19	10	Jack	1380	Red	0
20	10	Xavier	2479	Blue	1
21	11	Emily	2250	Yellow	1
22	11	Yvonne	1795	Red	0
23	12	Beth	1534	Red	0
24	12	Fred	2099	Blue	1
25	13	Dianne	1389	Blue	1
26	13	Vinny	1624	Red	0
27	14	Sara	1302	Red	1
28	14	Theodore	1011	Yellow	0
29	15	Mona	1889	Red	1
30	15	Quinn	1393	Yellow	0
31	16	Dale	957	Red	0
32	16	Ursula	1460	Blue	1
33	17	Dianne	1389	Blue	0
34	17	Theodore	1011	Yellow	1
35	18	Andrew	1748	Blue	1
36	18	Ned	1219	Yellow	0
37	19	Casey	1737	Blue	1
38	19	Quinn	1393	Yellow	0
39	20	Olivia	2130	Blue	1
40	20	Yvonne	1795	Red	0
41	21	Jack	1380	Red	0
42	21	Robert	2209	Blue	1
43	22	Iris	1420	Blue	0
44	22	Kate	2518	Yellow	1
45	23	Galina	2329	Red	1
46	23	Hank	1791	Yellow	0
47	24	Chuck	1977	Yellow	1
48	24	Liam	1447	Blue	0
49	25	Fred	2099	Blue	1
50	25	Vinny	1624	Red	0
51	26	Sara	1302	Red	0
52	26	Zane	2094	Yellow	1
53	27	Beth	1534	Red	0
54	27	Emily	2250	Yellow	1
55	28	Bill	1354	Yellow	0
56	28	Patrick	1858	Red	1
57	29	Mona	1889	Red	1
58	29	Wanda	2048	Yellow	0
59	30	Amy	1719	Red	0
60	30	Xavier	2479	Blue	1
61	31	Sara	1302	Red	0
62	31	Ursula	1460	Blue	1
63	32	Dianne	1389	Blue	0
64	32	Mona	1889	Red	1
65	33	Galina	2329	Red	1
66	33	Liam	1447	Blue	0
67	34	Ned	1219	Yellow	0
68	34	Yvonne	1795	Red	1
69	35	Dale	957	Red	0
70	35	Kate	2518	Yellow	1
71	36	Iris	1420	Blue	0
72	36	Zane	2094	Yellow	1
73	37	Amy	1719	Red	0
74	37	Robert	2209	Blue	1
75	38	Andrew	1748	Blue	1
76	38	Jack	1380	Red	0
77	39	Theodore	1011	Yellow	0
78	39	Xavier	2479	Blue	1
79	40	Olivia	2130	Blue	1
80	40	Quinn	1393	Yellow	0
81	41	Casey	1737	Blue	0
82	41	Emily	2250	Yellow	1
83	42	Chuck	1977	Yellow	1
84	42	Vinny	1624	Red	0
85	43	Beth	1534	Red	1
86	43	Bill	1354	Yellow	0
87	44	Fred	2099	Blue	1
88	44	Wanda	2048	Yellow	0
89	45	Hank	1791	Yellow	0
90	45	Patrick	1858	Red	1
91	46	Fred	2099	Blue	1
92	46	Jack	1380	Red	0
93	47	Casey	1737	Blue	0
94	47	Chuck	1977	Yellow	1
95	48	Olivia	2130	Blue	1
96	48	Patrick	1858	Red	0
97	49	Iris	1420	Blue	1
98	49	Quinn	1393	Yellow	0
99	50	Dianne	1389	Blue	1
100	50	Sara	1302	Red	0
101	51	Bill	1354	Yellow	0
102	51	Xavier	2479	Blue	1
103	52	Andrew	1748	Blue	1
104	52	Beth	1534	Red	0
105	53	Galina	2329	Red	1
106	53	Theodore	1011	Yellow	0
107	54	Amy	1719	Red	1
108	54	Ursula	1460	Blue	0
109	55	Kate	2518	Yellow	1
110	55	Liam	1447	Blue	0
111	56	Ned	1219	Yellow	0
112	56	Vinny	1624	Red	1
113	57	Dale	957	Red	0
114	57	Emily	2250	Yellow	1
115	58	Yvonne	1795	Red	0
116	58	Zane	2094	Yellow	1
117	59	Hank	1791	Yellow	1
118	59	Mona	1889	Red	0
119	60	Robert	2209	Blue	1
120	60	Wanda	2048	Yellow	0
121	61	Amy	1719	Red	0
122	61	Wanda	2048	Yellow	1
123	62	Patrick	1858	Red	0
124	62	Xavier	2479	Blue	1
125	63	Ursula	1460	Blue	0
126	63	Zane	2094	Yellow	1
127	64	Dale	957	Red	0
128	64	Robert	2209	Blue	1
129	65	Theodore	1011	Yellow	0
130	65	Yvonne	1795	Red	1
131	66	Beth	1534	Red	1
132	66	Liam	1447	Blue	0
133	67	Iris	1420	Blue	1
134	67	Jack	1380	Red	0
135	68	Ned	1219	Yellow	0
136	68	Sara	1302	Red	1
137	69	Casey	1737	Blue	1
138	69	Vinny	1624	Red	0
139	70	Kate	2518	Yellow	1
140	70	Mona	1889	Red	0
141	71	Chuck	1977	Yellow	0
142	71	Fred	2099	Blue	1
143	72	Galina	2329	Red	0
144	72	Hank	1791	Yellow	1
145	73	Bill	1354	Yellow	0
146	73	Olivia	2130	Blue	1
147	74	Dianne	1389	Blue	1
148	74	Quinn	1393	Yellow	0
149	75	Andrew	1748	Blue	0
150	75	Emily	2250	Yellow	1
151	76	Kate	2518	Yellow	1
152	76	Yvonne	1795	Red	0
153	77	Emily	2250	Yellow	1
154	77	Iris	1420	Blue	0
155	78	Fred	2099	Blue	0
156	78	Ned	1219	Yellow	1
157	79	Mona	1889	Red	1
158	79	Zane	2094	Yellow	0
159	80	Bill	1354	Yellow	0
160	80	Vinny	1624	Red	1
161	81	Galina	2329	Red	1
162	81	Ursula	1460	Blue	0
163	82	Chuck	1977	Yellow	1
164	82	Dianne	1389	Blue	0
165	83	Dale	957	Red	0
166	83	Xavier	2479	Blue	1
167	84	Liam	1447	Blue	1
168	84	Sara	1302	Red	0
169	85	Beth	1534	Red	1
170	85	Theodore	1011	Yellow	0
171	86	Quinn	1393	Yellow	0
172	86	Robert	2209	Blue	1
173	87	Andrew	1748	Blue	0
174	87	Wanda	2048	Yellow	1
175	88	Amy	1719	Red	1
176	88	Olivia	2130	Blue	0
177	89	Casey	1737	Blue	1
178	89	Jack	1380	Red	0
179	90	Hank	1791	Yellow	0
180	90	Patrick	1858	Red	1
\.


--
-- Name: chess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('chess_id_seq', 180, true);


--
-- Name: chess chess_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY chess
    ADD CONSTRAINT chess_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

