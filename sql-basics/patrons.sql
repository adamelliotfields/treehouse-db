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
-- Name: patrons; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE patrons (
    id integer NOT NULL,
    first_name text,
    last_name text,
    address text,
    email text,
    library_id text,
    zip_code integer
);


ALTER TABLE patrons OWNER TO adamfields;

--
-- Name: patrons_id_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE patrons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE patrons_id_seq OWNER TO adamfields;

--
-- Name: patrons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE patrons_id_seq OWNED BY patrons.id;


--
-- Name: patrons id; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY patrons ALTER COLUMN id SET DEFAULT nextval('patrons_id_seq'::regclass);


--
-- Data for Name: patrons; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY patrons (id, first_name, last_name, address, email, library_id, zip_code) FROM stdin;
1	Andrew	Chalkley	1234 NE 20st St	andrew.chalkley@teamtreehouse.com	MCL1001	90210
2	Dave	McFarland	5252 NW 2nd St	dave.mcfarland@teamtreehouse.com	MCL1010	90210
3	Alena	Holligan	1404 SW 101st St	alena.holligan@teamtreehouse.com	MCL1100	91210
4	Michael	Poley	7070 NE 10th Ave	michael.poley@teamtreehouse.com	MCL1011	91310
\.


--
-- Name: patrons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('patrons_id_seq', 4, true);


--
-- Name: patrons patrons_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY patrons
    ADD CONSTRAINT patrons_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

