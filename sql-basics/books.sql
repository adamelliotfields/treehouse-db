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
-- Name: books; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE books (
    id integer NOT NULL,
    title text,
    author text,
    genre text,
    first_published integer
);


ALTER TABLE books OWNER TO adamfields;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO adamfields;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY books (id, title, author, genre, first_published) FROM stdin;
1	Harry Potter and the Philosopher's Stone	J.K. Rowling	Fantasy	1997
2	Harry Potter and the Chamber of Secrets	J.K. Rowling	Fantasy	1998
3	Harry Potter and the Prisoner of Azkaban	J.K. Rowling	Fantasy	1999
4	Harry Potter and the Goblet of Fire	J.K. Rowling	Fantasy	2000
5	Harry Potter and the Order of the Phoenix	J.K. Rowling	Fantasy	2003
6	Harry Potter and the Half-Blood Prince	J.K. Rowling	Fantasy	2005
7	Harry Potter and the Deathly Hallows	J.K. Rowling	Fantasy	2007
8	A Brief History of Time	Stephen Hawking	Non Fiction	1988
9	The Universe in a Nutshell	Stephen Hawking	Non Fiction	2001
10	Frankenstein	Mary Shelley	Horror	1818
11	The Martian	Andy Weir	Science Fiction	2014
12	Ready Player One	Ernest Cline	Science Fiction	2011
13	Armada	Ernest Cline	Science Fiction	2015
14	Pride and Prejudice	Jane Austen	Classic	1813
15	Emma	Jane Austen	Classic	1815
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('books_id_seq', 15, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
