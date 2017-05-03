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

--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY addresses (id, nickname, street, city, state, zip, country, user_id) FROM stdin;
1	Home	2532 2nd ST	San Diego	California	90222	USA	1
2	Work	2213 5th PL	Fresno	CA	90266	USA	1
3	Home	3521 24th AVE	Fresno	California	90263	USA	2
4	Work	3984 2nd AVE	San Diego	California	90246	USA	2
5	Home	1271 13th ST	Fresno	CA	90230	USA	5
6	Work	575 6th ST	Sacramento	CA	90292	USA	5
7	Home	656 1st PL	Sacramento	CA	90270	USA	10
8	Work	1190 1st ST	Fresno	CA	90213	USA	10
9	Home	1405 6th ST	Fresno	CA	90290	USA	11
10	Work	2493 4th ST	Los Angeles	CA	90223	USA	11
11	Home	43 Barnetby Road	Beverley	North Humberside	hu7 3yk	UK	12
12	Work	16 Chantlands Avenue	Hessle	East Yorkshire	hu1 2av	UK	12
13	Home	14 Richmond Avenue	Hessle	East Yorkshire	HU1 9DS	UK	13
14	Work	73 Chantlands Avenue	Hessle	East Yorkshire	hu1 9wo	UK	13
15	Home	13 Barnetby Street	Beverley	East Yorkshire	hu13 4lp	UK	14
16	Work	37 Barnetby Avenue	Beverley	North Humberside	HU5 3BR	UK	14
17	Home	64 Barnetby Road	Anlaby	North Humberside	HU1 4EG	UK	20
18	Work	36 Barnetby Street	Hessle	East Yorkshire	HU1 7HX	UK	20
19	Home	19 Chantlands Street	Anlaby	North Humberside	HU18 1CR	UK	21
20	Work	20 Chantlands Street	Beverley	North Humberside	HU14 6FD	UK	21
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('addresses_id_seq', 20, true);


--
-- PostgreSQL database dump complete
--

