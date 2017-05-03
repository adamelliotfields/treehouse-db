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
-- Name: car; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE car (
    carid integer NOT NULL,
    modelid integer,
    vin text,
    modelyear integer,
    stickerprice real
);


ALTER TABLE car OWNER TO adamfields;

--
-- Name: car_carid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE car_carid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE car_carid_seq OWNER TO adamfields;

--
-- Name: car_carid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE car_carid_seq OWNED BY car.carid;


--
-- Name: car carid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY car ALTER COLUMN carid SET DEFAULT nextval('car_carid_seq'::regclass);


--
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY car (carid, modelid, vin, modelyear, stickerprice) FROM stdin;
1	1	1111111111111	2014	25000
2	1	222222222222	2015	26000
3	2	333333333333333	2015	18000
4	2	444444444	2016	18900
5	3	5555555555555	2014	24600
6	3	66666666666	2015	27300
7	4	777777777777	2016	28000
8	4	88888888888888	2014	32000
9	5	9999999999999	2015	16500
10	5	123123123123	2015	16950
11	6	234234234234	2016	29900
12	6	345345345345	2015	34000
13	7	456456456456	2016	35500
14	7	567567567567	2016	37900
15	8	678678678678	2014	39900
16	8	333444555666	2016	42500
17	9	5676756464546660	2016	27500
18	9	888999777555	2015	26900
19	10	987654321	2014	18900
20	10	7777777666666650	2016	22000
21	11	99999888887777	2016	32500
22	11	66677776667777	2015	27500
23	12	22222111111145500	2014	24500
24	12	45455554455555	2015	27900
25	13	6666666555533330	2016	25000
26	13	7777770000000000	2016	26500
27	14	90909090909	2016	19000
28	14	3147765432	2015	18500
29	15	6666666673333330	2016	32000
30	15	2223334445552110	2014	28000
31	16	445544334455	2016	41000
32	16	332211334455	2014	39500
33	2	778866445566	2016	21000
34	7	999888777666555	2016	36900
35	9	444443333322222	2014	29000
36	11	5432154321	2015	38500
\.


--
-- Name: car_carid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('car_carid_seq', 36, true);


--
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY car
    ADD CONSTRAINT car_pkey PRIMARY KEY (carid);


--
-- PostgreSQL database dump complete
--

