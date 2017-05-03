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
-- Name: salesrep; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE salesrep (
    salesrepid integer NOT NULL,
    firstname text,
    lastname text,
    ssn text,
    phonenumber text,
    streetaddress text,
    city text,
    state text,
    zipcode integer
);


ALTER TABLE salesrep OWNER TO adamfields;

--
-- Name: salesrep_salesrepid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE salesrep_salesrepid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE salesrep_salesrepid_seq OWNER TO adamfields;

--
-- Name: salesrep_salesrepid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE salesrep_salesrepid_seq OWNED BY salesrep.salesrepid;


--
-- Name: salesrep salesrepid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY salesrep ALTER COLUMN salesrepid SET DEFAULT nextval('salesrep_salesrepid_seq'::regclass);


--
-- Data for Name: salesrep; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY salesrep (salesrepid, firstname, lastname, ssn, phonenumber, streetaddress, city, state, zipcode) FROM stdin;
1	Mike	Jones	555-44-3333	314-555-9999	1233 ThisStreet	Saint Louis	MO	63119
2	Indira	Gupta	444-55-6666	314-555-8888	3344 StreetX	Saint Louis	MO	63126
3	Rebecca	Williams	666-22-3333	636-555-7777	543 MyStreet	Saint Louis	MO	63114
4	Jordan	Jackson	999-33-1111	573-555-6666	9876 Anywhere	Columbia	MO	65203
5	Luis	Santiago	333-44-5555	573-555-5555	8769 StreetY	Columbia	MO	65203
6	Vincent	Schwartz	888-99-7777	573-555-4444	7690 StreetZ	Columbia	MO	65203
7	Shelley	Washington	111-00-9999	555-000-4444	5050 Park St.	St. Louis	MO	63141
\.


--
-- Name: salesrep_salesrepid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('salesrep_salesrepid_seq', 7, true);


--
-- Name: salesrep salesrep_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY salesrep
    ADD CONSTRAINT salesrep_pkey PRIMARY KEY (salesrepid);


--
-- PostgreSQL database dump complete
--

