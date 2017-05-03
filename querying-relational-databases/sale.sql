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
-- Name: sale; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE sale (
    saleid integer NOT NULL,
    carid integer,
    customerid integer,
    locationid integer,
    salesrepid integer,
    saleamount real,
    saledate date
);


ALTER TABLE sale OWNER TO adamfields;

--
-- Name: sale_saleid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE sale_saleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sale_saleid_seq OWNER TO adamfields;

--
-- Name: sale_saleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE sale_saleid_seq OWNED BY sale.saleid;


--
-- Name: sale saleid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY sale ALTER COLUMN saleid SET DEFAULT nextval('sale_saleid_seq'::regclass);


--
-- Data for Name: sale; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY sale (saleid, carid, customerid, locationid, salesrepid, saleamount, saledate) FROM stdin;
1	3	1	2	6	17500	2015-05-01
2	2	2	1	1	25000	2015-06-01
3	1	3	1	2	25000	2015-06-01
4	6	5	1	1	27300	2015-06-05
5	5	4	2	4	24000	2015-06-28
6	4	6	2	4	18900	2015-07-03
7	9	7	1	3	16250	2015-07-05
8	8	9	2	5	30999	2015-07-05
9	7	8	2	4	28000	2015-07-29
10	13	10	1	1	35000	2015-08-05
11	12	11	1	1	33750	2015-08-06
12	11	12	1	2	29900	2015-08-06
13	10	13	1	3	16750	2015-08-15
14	18	15	1	2	26900	2015-08-20
15	17	14	2	6	27300	2015-08-29
16	16	16	2	6	42250	2015-09-02
17	15	17	2	5	39900	2015-09-17
18	14	18	1	2	37750	2015-09-25
19	21	19	2	4	32500	2015-09-29
20	20	21	1	1	21500	2015-10-10
21	19	20	2	5	18800	2015-10-10
22	25	22	2	4	25000	2015-10-10
23	24	23	1	1	27800	2015-10-20
24	23	25	1	2	24500	2015-10-20
25	22	24	1	3	27400	2015-11-01
26	29	26	1	2	32000	2015-11-05
27	28	27	1	3	18400	2015-11-05
28	27	28	2	5	19000	2015-11-15
29	26	1	2	6	26350	2015-11-15
30	32	18	1	1	40850	2015-11-15
31	31	22	1	2	39300	2015-11-20
32	30	1	2	6	28000	2015-11-23
33	29	17	2	\N	31500	2015-12-20
\.


--
-- Name: sale_saleid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('sale_saleid_seq', 33, true);


--
-- Name: sale sale_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY sale
    ADD CONSTRAINT sale_pkey PRIMARY KEY (saleid);


--
-- PostgreSQL database dump complete
--

