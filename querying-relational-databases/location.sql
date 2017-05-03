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
-- Name: location; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE location (
    locationid integer NOT NULL,
    locationname text,
    streetaddress text,
    city text,
    state text,
    zipcode integer
);


ALTER TABLE location OWNER TO adamfields;

--
-- Name: location_locationid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE location_locationid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE location_locationid_seq OWNER TO adamfields;

--
-- Name: location_locationid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE location_locationid_seq OWNED BY location.locationid;


--
-- Name: location locationid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY location ALTER COLUMN locationid SET DEFAULT nextval('location_locationid_seq'::regclass);


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY location (locationid, locationname, streetaddress, city, state, zipcode) FROM stdin;
1	Auto Sellers - St. Louis	9090 Dealer St.	Saint Louis	MO	63110
2	Auto Sellers - Columbia	3322 Main St.	Columbia	MO	65203
\.


--
-- Name: location_locationid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('location_locationid_seq', 2, true);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY location
    ADD CONSTRAINT location_pkey PRIMARY KEY (locationid);


--
-- PostgreSQL database dump complete
--

