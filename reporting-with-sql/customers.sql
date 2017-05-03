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
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: adamfields
--

COPY customers (id, username, first_name, last_name, password, email, phone) FROM stdin;
1	lozzy	Lauren	Chalkley	$2a$10$ym4rN7Q9bi1evayogNd1deS1KBPZ26qiVjMUjCa2o7JBtnHKImbjG	Lauren.Chalkley@example.com	(601)-555-8510
2	sawmac	Dave	McFarland	$2a$10$Uuc32WcXKiQ7XdqXbUoqweOIUQ.6wJuUH2stw1d.qOXvr9wmm2NPy	Dave.McFarland@example.com	(675)-555-4108
5	pasanpr	Pasan	Premaratne	$2a$10$62UyMdce66RJiEeMjDFUB.y5wsKkh50RLaoI3YeUGW8HPVeE87g0K	pdawg@example.com	(898)-555-3719
10	chalkers	Andrew	Chalkley	$2a$10$sscRBI/UgjAGzsl5In/pgupzdfFUc2AiWTaQ5VAZl1FtefmDviBv6	Andrew@teamtreehouse.com	(798)-555-8112
11	rocky	Rachael	Hinkley	$2a$10$DwkYC.Vk.QsFHwCmcJ5N7u1ImdmDVzXOtcy5yK.kFqDOP6.Zruey2	Rachael.Hinkley@example.com	(645)-555-2397
12	wig_lady	Lola	Love	$2a$10$DOP8wdOdr/mkpdTokCNw5e0/MUGTyAZk0w5vTsnUbc9zNhoB152tq	Lola.Love@example.com	(582)-555-6954
13	2spooky4me	Nick	Pettit	$2a$10$OyntCZ148P2.0vWNskgNUOSorNZJOVo.8ZHq.a47lSH6qt6O0yTzK	Nick.Pettit@example.com	(784)-555-6107
14	racing_car	Cory	Tepper	$2a$10$7oZ/wvP1tygyzJIjSD37POgH5If.E/fL8VR9mZTXbhMllidP7pWpi	Cory.Tepper@example.com	(514)-555-7803
20	beard_man	Jim	Hoskins	$2a$10$ievDxprcJHq14.A5LedqTe4AT9rJrXujwyJJfSgfHZJgdIUF8r1Gm	Jim.Hoskins@example.com	(602)-555-4047
21	poley_hands	Michael	Poley	$2a$10$bNetPI81FeQQlbrE.kgv0OUasKYHwNjtDYWclPsvWZC0WYYL3gVVG	michael.poley@example.com	(748)-555-9464
\.


--
-- PostgreSQL database dump complete
--

