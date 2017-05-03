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
-- Name: model; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE model (
    modelid integer NOT NULL,
    makeid integer,
    modelname text
);


ALTER TABLE model OWNER TO adamfields;

--
-- Name: model_modelid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE model_modelid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE model_modelid_seq OWNER TO adamfields;

--
-- Name: model_modelid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE model_modelid_seq OWNED BY model.modelid;


--
-- Name: model modelid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY model ALTER COLUMN modelid SET DEFAULT nextval('model_modelid_seq'::regclass);


--
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY model (modelid, makeid, modelname) FROM stdin;
1	1	Escape
2	1	Focus
3	1	Fusion
4	2	Impala
5	2	Cruze
6	2	Colorado
7	3	Cherokee
8	3	Grand Cherokee
9	4	Challenger
10	4	Dart
11	5	Accord
12	5	CRV
13	6	Soul
14	6	Rio
15	7	Camry
16	7	Sienna
17	5	Element
\.


--
-- Name: model_modelid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('model_modelid_seq', 17, true);


--
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY model
    ADD CONSTRAINT model_pkey PRIMARY KEY (modelid);


--
-- PostgreSQL database dump complete
--

