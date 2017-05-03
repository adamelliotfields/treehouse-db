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
-- Name: movies; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE movies (
    id integer NOT NULL,
    title text,
    year_released integer,
    genre text
);


ALTER TABLE movies OWNER TO adamfields;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movies_id_seq OWNER TO adamfields;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE movies_id_seq OWNED BY movies.id;


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY movies ALTER COLUMN id SET DEFAULT nextval('movies_id_seq'::regclass);


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY movies (id, title, year_released, genre) FROM stdin;
1	Alien	1979	Sci Fi
2	Aliens	1986	Sci Fi
3	Moulin Rouge	2001	Musical
4	Guys and Dolls	1955	Musical
5	Mama Mia	2008	Musical
6	Starman	1984	Sci Fi
7	Tron	1982	Sci Fi
8	Die Hard	1988	Action
\.


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('movies_id_seq', 8, true);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

