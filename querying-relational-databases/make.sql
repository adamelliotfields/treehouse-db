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
-- Name: make; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE make (
    makeid integer NOT NULL,
    makename text
);


ALTER TABLE make OWNER TO adamfields;

--
-- Name: make_makeid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE make_makeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE make_makeid_seq OWNER TO adamfields;

--
-- Name: make_makeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE make_makeid_seq OWNED BY make.makeid;


--
-- Name: make makeid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY make ALTER COLUMN makeid SET DEFAULT nextval('make_makeid_seq'::regclass);


--
-- Data for Name: make; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY make (makeid, makename) FROM stdin;
1	Ford
2	Chevy
3	Jeep
4	Dodge
5	Honda
6	Kia
7	Toyota
8	BMW
\.


--
-- Name: make_makeid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('make_makeid_seq', 8, true);


--
-- Name: make make_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY make
    ADD CONSTRAINT make_pkey PRIMARY KEY (makeid);


--
-- PostgreSQL database dump complete
--

