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

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY products (id, name, category, description, price, stock_count) FROM stdin;
1	Small Retro T-Shirt	Clothing	Retro T-Shirt is made from 100% cotton. It's available in the following sizes: Small, Medium, Large	10.9900000000000002	613
2	Medium Retro T-Shirt	Clothing	Retro T-Shirt is made from 100% cotton. It's available in the following sizes: Small, Medium, Large	8.99000000000000021	419
3	Large Retro T-Shirt	Clothing	Retro T-Shirt is made from 100% cotton. It's available in the following sizes: Small, Medium, Large	8.99000000000000021	97
4	Small Skinny Jeans	Clothing	Skinny Jeans is made from durable denim. It's available in the following sizes: Small, Large, Extra Large	9.99000000000000021	530
5	Large Skinny Jeans	Clothing	Skinny Jeans is made from durable denim. It's available in the following sizes: Small, Large, Extra Large	8.99000000000000021	25
6	Extra Large Skinny Jeans	Clothing	Skinny Jeans is made from durable denim. It's available in the following sizes: Small, Large, Extra Large	8.99000000000000021	59
7	Xbox One	Electronics	Xbox One is a games console manufactured by Microsoft. It has 500GB of storage.	299.990000000000009	45
8	Playstation 4	Electronics	Playstation 4 is a games console manufactured by Sony. It has 500GB of storage.	349.990000000000009	657
9	Apple TV 32GB	Electronics	Apple TV 32GB is a streaming device manufactured by Apple. It has 32GB of storage.	169.990000000000009	52
10	Harry Potter and the Philosopher's Stone	Books	Harry Potter and the Philosopher's Stone was authored by J.K. Rowling. It was first published in 1997. It's one of the best fantasy books of all time.	13.9900000000000002	872
11	Harry Potter and the Chamber of Secrets	Books	Harry Potter and the Chamber of Secrets was authored by J.K. Rowling. It was first published in 1998. It's one of the best fantasy books of all time.	12.9900000000000002	779
12	Harry Potter and the Prisoner of Azkaban	Books	Harry Potter and the Prisoner of Azkaban was authored by J.K. Rowling. It was first published in 1999. It's one of the best fantasy books of all time.	10.9900000000000002	314
13	Harry Potter and the Goblet of Fire	Books	Harry Potter and the Goblet of Fire was authored by J.K. Rowling. It was first published in 2000. It's one of the best fantasy books of all time.	13.9900000000000002	770
14	Harry Potter and the Order of the Phoenix	Books	Harry Potter and the Order of the Phoenix was authored by J.K. Rowling. It was first published in 2003. It's one of the best fantasy books of all time.	6.99000000000000021	508
15	Harry Potter and the Half-Blood Prince	Books	Harry Potter and the Half-Blood Prince was authored by J.K. Rowling. It was first published in 2005. It's one of the best fantasy books of all time.	6.99000000000000021	796
16	Harry Potter and the Deathly Hallows	Books	Harry Potter and the Deathly Hallows was authored by J.K. Rowling. It was first published in 2007. It's one of the best fantasy books of all time.	6.99000000000000021	389
17	A Brief History of Time	Books	A Brief History of Time was authored by Stephen Hawking. It was first published in 1988. It's one of the best non fiction books of all time.	7.99000000000000021	738
18	The Universe in a Nutshell	Books	The Universe in a Nutshell was authored by Stephen Hawking. It was first published in 2001. It's one of the best non fiction books of all time.	11.9900000000000002	790
19	Frankenstein	Books	Frankenstein was authored by Mary Shelley. It was first published in 1818. It's one of the best horror books of all time.	11.9900000000000002	720
20	The Martian	Books	The Martian was authored by Andy Weir. It was first published in 2014. It's one of the best science fiction books of all time.	14.9900000000000002	831
21	Ready Player One	Books	Ready Player One was authored by Ernest Cline. It was first published in 2014. It's one of the best science fiction books of all time.	12.9900000000000002	793
22	Armada	Books	Armada was authored by Ernest Cline. It was first published in 2015. It's one of the best science fiction books of all time.	13.9900000000000002	563
23	Pride and Prejudice	Books	Pride and Prejudice was authored by Jane Austen. It was first published in 1813. It's one of the best classic books of all time.	10.9900000000000002	221
24	Emma	Books	Emma was authored by Jane Austen. It was first published in 1815. It's one of the best classic books of all time.	12.9900000000000002	653
25	1984	Books	1984 was authored by George Orwell. It was first published in 1949. It's one of the best fiction books of all time.	10.9900000000000002	502
26	Dune	Books	Dune was authored by Frank Herbert. It was first published in 1965. It's one of the best science fiction books of all time.	14.9900000000000002	551
27	The Circle	Books	The Circle was authored by Dave Eggers. It was first published in 2013. It's one of the best science fiction books of all time.	12.9900000000000002	547
28	Contact	Books	Contact was authored by Carl Sagan. It was first published in 1985. It's one of the best science fiction books of all time.	7.99000000000000021	394
29	Animal Farm	Books	Animal Farm was authored by George Orwell. It was first published in 1945. It's one of the best fiction books of all time.	15.9900000000000002	644
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adamfields
--

SELECT pg_catalog.setval('products_id_seq', 29, true);


--
-- PostgreSQL database dump complete
--

