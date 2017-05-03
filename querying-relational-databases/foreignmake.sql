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
-- Name: foreignmake; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE foreignmake (
    foreignmakeid integer NOT NULL,
    makename text
);


ALTER TABLE foreignmake OWNER TO adamfields;

--
-- Name: foreignmake_foreignmakeid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE foreignmake_foreignmakeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE foreignmake_foreignmakeid_seq OWNER TO adamfields;

--
-- Name: foreignmake_foreignmakeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE foreignmake_foreignmakeid_seq OWNED BY foreignmake.foreignmakeid;


--
-- Name: foreignmake foreignmakeid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY foreignmake ALTER COLUMN foreignmakeid SET DEFAULT nextval('foreignmake_foreignmakeid_seq'::regclass);


--
-- Data for Name: foreignmake; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY foreignmake (foreignmakeid, makename) FROM stdin;
1	BMW
2	Volkswagen
3	Audi
4	Honda
5	Hyundai
6	Acura
7	Subaru
8	Kia
9	Toyota
\.


--
-- Name: foreignmake_foreignmakeid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('foreignmake_foreignmakeid_seq', 9, true);


--
-- Name: foreignmake foreignmake_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY foreignmake
    ADD CONSTRAINT foreignmake_pkey PRIMARY KEY (foreignmakeid);


--
-- PostgreSQL database dump complete
--

