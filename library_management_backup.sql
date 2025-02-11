--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-11 20:38:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS "LibraryManagementSystem";
--
-- TOC entry 4292 (class 1262 OID 16411)
-- Name: LibraryManagementSystem; Type: DATABASE; Schema: -; Owner: postgree
--

CREATE DATABASE "LibraryManagementSystem" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE "LibraryManagementSystem" OWNER TO postgree;

\connect "LibraryManagementSystem"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16437)
-- Name: Books Allocation Table ; Type: TABLE; Schema: public; Owner: postgree
--

CREATE TABLE public."Books Allocation Table " (
    "Book_ID" integer NOT NULL,
    "Title" text,
    "Author " text,
    "Publication_year" numeric,
    "Language" text,
    "Available_copies" numeric,
    "ISBN" numeric
);


ALTER TABLE public."Books Allocation Table " OWNER TO postgree;

--
-- TOC entry 215 (class 1259 OID 16436)
-- Name: Books Allocation Table _Book_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgree
--

CREATE SEQUENCE public."Books Allocation Table _Book_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Books Allocation Table _Book_ID_seq" OWNER TO postgree;

--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 215
-- Name: Books Allocation Table _Book_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgree
--

ALTER SEQUENCE public."Books Allocation Table _Book_ID_seq" OWNED BY public."Books Allocation Table "."Book_ID";


--
-- TOC entry 4139 (class 2604 OID 16440)
-- Name: Books Allocation Table  Book_ID; Type: DEFAULT; Schema: public; Owner: postgree
--

ALTER TABLE ONLY public."Books Allocation Table " ALTER COLUMN "Book_ID" SET DEFAULT nextval('public."Books Allocation Table _Book_ID_seq"'::regclass);


--
-- TOC entry 4286 (class 0 OID 16437)
-- Dependencies: 216
-- Data for Name: Books Allocation Table ; Type: TABLE DATA; Schema: public; Owner: postgree
--

INSERT INTO public."Books Allocation Table " ("Book_ID", "Title", "Author ", "Publication_year", "Language", "Available_copies", "ISBN") VALUES (1, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'English', 9, 9780743273565);
INSERT INTO public."Books Allocation Table " ("Book_ID", "Title", "Author ", "Publication_year", "Language", "Available_copies", "ISBN") VALUES (2, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'English', 5, 9780061120084);


--
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 215
-- Name: Books Allocation Table _Book_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgree
--

SELECT pg_catalog.setval('public."Books Allocation Table _Book_ID_seq"', 2, true);


--
-- TOC entry 4141 (class 2606 OID 16444)
-- Name: Books Allocation Table  Book_ID; Type: CONSTRAINT; Schema: public; Owner: postgree
--

ALTER TABLE ONLY public."Books Allocation Table "
    ADD CONSTRAINT "Book_ID" PRIMARY KEY ("Book_ID");


-- Completed on 2025-02-11 20:38:36

--
-- PostgreSQL database dump complete
--

