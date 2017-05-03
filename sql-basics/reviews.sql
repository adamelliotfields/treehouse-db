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
-- Name: reviews; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE reviews (
    id integer NOT NULL,
    movie_id integer,
    username text,
    review text,
    rating integer
);


ALTER TABLE reviews OWNER TO adamfields;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reviews_id_seq OWNER TO adamfields;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE reviews_id_seq OWNED BY reviews.id;


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY reviews ALTER COLUMN id SET DEFAULT nextval('reviews_id_seq'::regclass);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY reviews (id, movie_id, username, review, rating) FROM stdin;
1	6	__love__	Basically Aliens but with a better public relations manager.	3
2	2	__love__	Did we really need more than one Xenomorph? It feels so wasteful to just have all of these other creatures wandering around when one was scary and effective all by itself. I'm generally pretty liberal but I consider myself an alien conservative.	4
3	6	chalkers	OK from what I remember! It's been a while.	3
4	6	babyjim	A++ Better than Chalkley thinks!	4
5	3	chalkers	Baz Luhrmann at his best.	5
\.


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('reviews_id_seq', 5, true);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

