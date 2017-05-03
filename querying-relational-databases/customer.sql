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
-- Name: customer; Type: TABLE; Schema: public; Owner: adamfields
--

CREATE TABLE customer (
    customerid integer NOT NULL,
    firstname text,
    lastname text,
    gender text,
    ssn text
);


ALTER TABLE customer OWNER TO adamfields;

--
-- Name: customer_customerid_seq; Type: SEQUENCE; Schema: public; Owner: adamfields
--

CREATE SEQUENCE customer_customerid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customer_customerid_seq OWNER TO adamfields;

--
-- Name: customer_customerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adamfields
--

ALTER SEQUENCE customer_customerid_seq OWNED BY customer.customerid;


--
-- Name: customer customerid; Type: DEFAULT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY customer ALTER COLUMN customerid SET DEFAULT nextval('customer_customerid_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY customer (customerid, firstname, lastname, gender, ssn) FROM stdin;
1	Vincent	Schwartz	M	888-99-7777
2	Shirley	Adams	F	111-99-1111
3	Tasha	Bell	F	444-33-7234
4	Adam	Turley	M	666-11-6455
5	Duane	McGee	M	654-77-2222
6	Marshawn	Jones	M	887-00-5544
7	Debbie	Miller	F	778-99-3322
8	Sai	Jajala	M	223-99-5557
9	Phoong	Ming	F	990-99-4477
10	Ablert	Matheny	M	545-44-5555
11	Nicole	Dunn	F	776-33-3377
12	Jasper	Olmer	M	232-11-7788
13	Eddie	Sandberg	M	443-11-8877
14	Sarah	Goldman	F	994-99-4444
15	Lebron	McMichaels	M	767-66-7777
16	Amanada	Peart	F	321-21-4321
17	Mohammed	Wasem	M	575-55-5577
18	Arif	Hadad	M	456-99-4567
19	George	Schubert	M	779-99-9777
20	Chris	Mortensen	M	888-99-8899
21	Julia	Molina	F	880-01-0008
22	Fred	Collier	M	809-99-5665
23	Gail	Dickens	F	498-09-9876
24	Hillary	Simpson	F	987-98-7987
25	Andrew	Lee	M	908-43-3434
26	Naomi	Naser	F	888-55-2211
27	Ben	Crosby	M	866-65-0909
28	Reggie	Smith	M	665-45-5454
\.


--
-- Name: customer_customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('customer_customerid_seq', 28, true);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: adamfields
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);


--
-- PostgreSQL database dump complete
--

