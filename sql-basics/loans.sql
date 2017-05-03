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
-- Name: loans; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE loans (
    id integer NOT NULL,
    book_id integer,
    patron_id integer,
    loaned_on date,
    return_by date,
    returned_on date
);


ALTER TABLE loans OWNER TO adamfields;

--
-- Name: loans_id_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE loans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE loans_id_seq OWNER TO adamfields;

--
-- Name: loans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE loans_id_seq OWNED BY loans.id;


--
-- Name: loans id; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY loans ALTER COLUMN id SET DEFAULT nextval('loans_id_seq'::regclass);


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY loans (id, book_id, patron_id, loaned_on, return_by, returned_on) FROM stdin;
1	15	2	2015-12-10	2015-12-17	\N
2	4	1	2015-12-11	2015-12-18	\N
3	8	1	2015-12-12	2015-12-19	\N
4	9	3	2015-12-13	2015-12-20	\N
5	11	4	2015-12-13	2015-12-20	2015-12-17
\.


--
-- Name: loans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('loans_id_seq', 5, true);


--
-- Name: loans loans_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

