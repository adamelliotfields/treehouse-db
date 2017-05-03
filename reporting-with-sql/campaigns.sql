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
-- Data for Name: campaigns; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY campaigns (id, name, sales) FROM stdin;
1	e-mail	780
2	television	8027
3	banner ads	8462
4	google ads	5017
5	direct mail	3951
6	blog	4407
7	social media	3574
8	search	621
9	affiliate	7199
\.


--
-- Name: campaigns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('campaigns_id_seq', 9, true);


--
-- PostgreSQL database dump complete
--

