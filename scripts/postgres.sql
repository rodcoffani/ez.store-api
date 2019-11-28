--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg80+1)
-- Dumped by pg_dump version 12.1 (Debian 12.1-1.pgdg80+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: ez_coins_api_dev; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE ez_coins_api_dev WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE ez_coins_api_dev OWNER TO postgres;

\connect ez_coins_api_dev

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: donations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.donations (
    id bigint NOT NULL,
    quantity integer,
    reason character varying(255),
    sender_user_id bigint,
    receiver_user_id bigint,
    donate_at timestamp(0) without time zone,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.donations OWNER TO postgres;

--
-- Name: donations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.donations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donations_id_seq OWNER TO postgres;

--
-- Name: donations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.donations_id_seq OWNED BY public.donations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255),
    email character varying(255),
    password_hash character varying(255),
    avatar character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: wallets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wallets (
    id bigint NOT NULL,
    to_offer integer,
    received integer,
    balance integer,
    owner_user_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.wallets OWNER TO postgres;

--
-- Name: wallets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wallets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wallets_id_seq OWNER TO postgres;

--
-- Name: wallets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wallets_id_seq OWNED BY public.wallets.id;


--
-- Name: donations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donations ALTER COLUMN id SET DEFAULT nextval('public.donations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: wallets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets ALTER COLUMN id SET DEFAULT nextval('public.wallets_id_seq'::regclass);


--
-- Data for Name: donations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (1, 5, 'Motivo não salvo', 16, 6, '2019-07-01 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (2, 5, 'Motivo não salvo', 16, 24, '2019-07-01 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (3, 2, 'Motivo não salvo', 2, 17, '2019-07-02 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (4, 5, 'Motivo não salvo', 21, 10, '2019-07-02 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (5, 5, 'Motivo não salvo', 21, 2, '2019-07-02 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (6, 10, 'Motivo não salvo', 13, 2, '2019-07-02 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (7, 1, 'Motivo não salvo', 2, 16, '2019-07-02 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (8, 2, 'Motivo não salvo', 2, 17, '2019-07-03 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (9, 2, 'Motivo não salvo', 28, 11, '2019-07-03 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (10, 5, 'Motivo não salvo', 28, 2, '2019-07-03 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (11, 10, 'Motivo não salvo', 13, 19, '2019-07-03 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (12, 5, 'Motivo não salvo', 16, 21, '2019-07-03 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (13, 3, 'Motivo não salvo', 28, 11, '2019-07-05 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (14, 5, 'Motivo não salvo', 28, 19, '2019-07-05 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (15, 1, 'Motivo não salvo', 2, 16, '2019-07-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (16, 3, 'Motivo não salvo', 2, 16, '2019-07-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (17, 5, 'Motivo não salvo', 16, 28, '2019-07-10 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (18, 5, 'Motivo não salvo', 6, 11, '2019-07-11 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (19, 2, 'Motivo não salvo', 2, 11, '2019-07-11 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (20, 2, 'Motivo não salvo', 6, 19, '2019-07-11 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (21, 10, 'Motivo não salvo', 6, 16, '2019-07-11 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (22, 2, 'Motivo não salvo', 6, 24, '2019-07-11 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (23, 5, 'Motivo não salvo', 13, 10, '2019-07-12 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (24, 5, 'Motivo não salvo', 6, 10, '2019-07-12 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (25, 5, 'Motivo não salvo', 16, 19, '2019-07-12 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (26, 5, 'Motivo não salvo', 19, 18, '2019-07-12 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (27, 3, 'Motivo não salvo', 2, 17, '2019-07-15 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (28, 2, 'Motivo não salvo', 28, 10, '2019-07-15 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (29, 3, 'Motivo não salvo', 17, 2, '2019-07-15 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (30, 1, 'Motivo não salvo', 28, 19, '2019-07-15 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (31, 4, 'Motivo não salvo', 28, 13, '2019-07-15 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (32, 2, 'Motivo não salvo', 2, 21, '2019-07-15 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (33, 3, 'Motivo não salvo', 28, 24, '2019-07-15 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (34, 10, 'Motivo não salvo', 17, 11, '2019-07-16 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (35, 10, 'Motivo não salvo', 17, 28, '2019-07-16 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (36, 1, 'Motivo não salvo', 2, 17, '2019-07-17 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (37, 10, 'Motivo não salvo', 28, 6, '2019-07-17 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (38, 5, 'Motivo não salvo', 13, 6, '2019-07-17 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (39, 6, 'Motivo não salvo', 2, 21, '2019-07-17 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (40, 5, 'Motivo não salvo', 19, 21, '2019-07-17 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (41, 2, 'Motivo não salvo', 2, 21, '2019-07-18 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (42, 7, 'Motivo não salvo', 2, 16, '2019-07-18 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (43, 10, 'Motivo não salvo', 28, 24, '2019-07-19 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (44, 5, 'Motivo não salvo', 19, 28, '2019-07-19 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (45, 3, 'Motivo não salvo', 28, 24, '2019-07-19 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (46, 10, 'Motivo não salvo', 6, 14, '2019-07-22 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (47, 5, 'Motivo não salvo', 21, 14, '2019-07-22 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (48, 10, 'Motivo não salvo', 21, 11, '2019-07-22 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (49, 15, 'Motivo não salvo', 21, 24, '2019-07-22 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (50, 5, 'Motivo não salvo', 2, 17, '2019-07-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (51, 10, 'Motivo não salvo', 14, 6, '2019-07-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (52, 15, 'Motivo não salvo', 10, 2, '2019-07-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (53, 15, 'Motivo não salvo', 11, 19, '2019-07-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (54, 15, 'Motivo não salvo', 11, 28, '2019-07-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (55, 15, 'Motivo não salvo', 10, 28, '2019-07-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (56, 10, 'Motivo não salvo', 14, 18, '2019-07-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (57, 5, 'Motivo não salvo', 2, 17, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (58, 10, 'Motivo não salvo', 16, 6, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (59, 10, 'Motivo não salvo', 2, 6, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (60, 7, 'Motivo não salvo', 17, 10, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (61, 2, 'Motivo não salvo', 21, 13, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (62, 2, 'Motivo não salvo', 21, 28, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (63, 5, 'Motivo não salvo', 13, 16, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (64, 5, 'Motivo não salvo', 6, 20, '2019-07-25 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (65, 5, 'Motivo não salvo', 6, 28, '2019-07-26 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (66, 5, 'Motivo não salvo', 19, 27, '2019-07-29 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (67, 10, 'Motivo não salvo', 19, 17, '2019-07-29 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (68, 1, 'Motivo não salvo', 21, 17, '2019-07-29 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (69, 5, 'Motivo não salvo', 19, 2, '2019-07-29 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (70, 10, 'Motivo não salvo', 17, 19, '2019-07-29 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (71, 5, 'Motivo não salvo', 19, 16, '2019-07-29 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (72, 10, 'Motivo não salvo', 17, 18, '2019-07-29 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (73, 5, 'Motivo não salvo', 16, 28, '2019-07-30 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (74, 5, 'Motivo não salvo', 13, 10, '2019-07-31 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (75, 10, 'Motivo não salvo', 19, 13, '2019-07-31 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (76, 15, 'Motivo não salvo', 10, 13, '2019-07-31 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (77, 10, 'Motivo não salvo', 24, 28, '2019-07-31 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (78, 5, 'Motivo não salvo', 27, 19, '2019-07-31 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (79, 2, 'Motivo não salvo', 2, 17, '2019-08-01 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (80, 10, 'Motivo não salvo', 16, 19, '2019-08-01 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (81, 2, 'Motivo não salvo', 2, 16, '2019-08-01 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (82, 10, 'Motivo não salvo', 6, 28, '2019-08-02 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (89, 5, 'Motivo não salvo', 24, 2, '2019-08-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (96, 5, 'Motivo não salvo', 2, 16, '2019-08-13 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (100, 3, 'Motivo não salvo', 28, 18, '2019-08-16 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (107, 5, 'Motivo não salvo', 2, 10, '2019-08-22 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (114, 5, 'Motivo não salvo', 13, 10, '2019-08-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (121, 10, 'Motivo não salvo', 20, 10, '2019-08-28 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (134, 10, 'Motivo não salvo', 18, 28, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (147, 10, 'Motivo não salvo', 10, 13, '2019-09-01 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (154, 5, 'Motivo não salvo', 28, 27, '2019-09-12 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (161, 2, 'Motivo não salvo', 28, 21, '2019-09-15 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (171, 20, 'Motivo não salvo', 24, 21, '2019-09-19 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (184, 1, 'Motivo não salvo', 13, 27, '2019-09-26 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (191, 3, 'Motivo não salvo', 2, 21, '2019-09-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (198, 20, 'Motivo não salvo', 11, 19, '2019-09-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (205, 10, 'Apoiar e participação comigo no processo de aprendizado e vendas C@RALHUDO', 15, 10, '2019-10-10 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (215, 5, 'Buscar ideias para o Papo de Mulher', 28, 2, '2019-10-16 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (228, 3, 'Engajamento nos estudos ', 28, 25, '2019-10-21 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (232, 10, 'Por sempre ajudar D+', 17, 11, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (236, 5, 'Por me deixar ajudar nas entrevistas', 11, 28, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (246, 10, 'Pela ajuda com o git', 25, 21, '2019-10-25 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (253, 5, 'Pelo bom trabalho gerenciando o projeto da aGo e lidando com o cliente 😁', 19, 17, '2019-10-28 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (260, 10, 'Por avisar de possiveis problemas e ajudar no gerenciamento das tarefas.', 18, 19, '2019-10-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (267, 10, 'Mandou MUITO bem nas contratações', 13, 28, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (274, 10, 'Ajudou na análise do código merda legado do CAMDA', 21, 19, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (284, 10, 'Ajuda com docker e a salvação diária do servidor do CRM', 14, 18, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (294, 2, 'Pela interação com a galera da ez, mesmo estando em Sampa. Tá sendo top demais!', 19, 8, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (304, 5, 'Trouxe o fone pre mim SHOOOOOW!!!!!!!!!', 15, 17, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (311, 5, 'Por ajudar sempre de boa vontade e ser pretativo! (Você é muito gentil)', 2, 11, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (315, 5, 'Por sempre estar aberto a nos ouvir e se empenhar e tornar a Ez #GreatPlaceToWork', 2, 13, '2019-11-14 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (331, 10, 'Solucionou o meu problema com vue', 21, 14, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (83, 4, 'Motivo não salvo', 2, 17, '2019-08-05 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (87, 10, 'Motivo não salvo', 17, 28, '2019-08-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (91, 10, 'Motivo não salvo', 17, 11, '2019-08-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (98, 2, 'Motivo não salvo', 2, 13, '2019-08-16 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (105, 5, 'Motivo não salvo', 16, 28, '2019-08-20 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (112, 5, 'Motivo não salvo', 13, 21, '2019-08-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (119, 5, 'Motivo não salvo', 19, 21, '2019-08-28 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (129, 8, 'Motivo não salvo', 19, 14, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (136, 5, 'Motivo não salvo', 10, 17, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (140, 10, 'Motivo não salvo', 18, 10, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (144, 5, 'Motivo não salvo', 28, 11, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (148, 5, 'Motivo não salvo', 16, 17, '2019-09-05 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (152, 5, 'Motivo não salvo', 16, 28, '2019-09-12 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (162, 5, 'Motivo não salvo', 19, 11, '2019-09-17 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (166, 5, 'Motivo não salvo', 21, 17, '2019-09-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (173, 5, 'Motivo não salvo', 19, 16, '2019-09-20 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (180, 5, 'Motivo não salvo', 17, 21, '2019-09-24 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (187, 5, 'Motivo não salvo', 13, 21, '2019-09-26 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (197, 20, 'Motivo não salvo', 11, 14, '2019-09-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (204, 1, 'Por me incluir no code review ', 2, 14, '2019-10-09 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (211, 5, 'Demonstrar engajamento dentro de vendas e no resto da empresa ', 28, 15, '2019-10-15 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (221, 5, 'Contribuir com dicas no meu design ', 10, 19, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (225, 7, 'Vir gravar no sábado', 10, 2, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (229, 5, 'Pelo empenho e dedicação na semana dos ez.coins. Foi muito participativo e fez vários artigos. PARABÉNS mano!!!', 19, 18, '2019-10-21 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (233, 10, 'Ajudar dms no CRM', 17, 14, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (240, 5, 'Ajudou com simulações de cold-call', 15, 2, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (247, 10, 'Por sempre me ajudar com os códigos', 25, 17, '2019-10-25 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (251, 10, 'Ajuda forte pro CRM sair semana passada, mesmo com bastante trampo!', 14, 17, '2019-10-28 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (258, 10, 'Por ajudar sempre que preciso nos imprevistos no dia a dia', 18, 13, '2019-10-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (265, 10, 'Por sempre me ajudar e me aguentar mais um mês, além de me inserir cada vez mais no problemas da aGo', 2, 17, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (272, 5, 'Ajudar nas tarefas do dia a dia', 15, 10, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (276, 2, 'Por me acompanhar no evento do Happy Hour ', 2, 15, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (280, 15, 'Ajuda no dia a dia, profissionalismo e postura exemplar', 8, 22, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (287, 1, 'Discussão do sistema dos ez.coins', 21, 16, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (291, 15, 'Ajuda no dia a dia, profissionalismo e postura exemplar', 22, 26, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (295, 2, 'Pela interação com a galera da ez, mesmo estando em Sampa. Tá sendo top demais!', 19, 22, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (299, 5, 'Master of code reviews', 14, 28, '2019-11-04 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (306, 5, 'Iniciativa de fazer a api do projeto ezcoins', 19, 21, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (310, 5, 'Ajuda na lógica da PoC de NFC', 24, 21, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (317, 5, 'Pelo auxílio na parte de artigos, e grande disponibilidade em ajudar. Vc é fera mlk!', 19, 10, '2019-11-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (321, 10, 'Pelas dicas de refatoração e auxilio no projeto', 4, 28, '2019-11-22 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (328, 10, 'App foda do Guni ', 13, 24, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (84, 15, 'Motivo não salvo', 24, 21, '2019-08-05 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (88, 5, 'Motivo não salvo', 28, 21, '2019-08-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (95, 5, 'Motivo não salvo', 2, 17, '2019-08-13 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (102, 2, 'Motivo não salvo', 28, 16, '2019-08-16 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (109, 5, 'Motivo não salvo', 2, 13, '2019-08-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (113, 5, 'Motivo não salvo', 19, 21, '2019-08-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (120, 3, 'Motivo não salvo', 2, 21, '2019-08-28 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (124, 5, 'Motivo não salvo', 13, 28, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (131, 10, 'Motivo não salvo', 18, 13, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (138, 15, 'Motivo não salvo', 10, 19, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (142, 10, 'Motivo não salvo', 18, 24, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (149, 5, 'Motivo não salvo', 2, 21, '2019-09-06 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (159, 2, 'Motivo não salvo', 2, 21, '2019-09-13 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (163, 10, 'Motivo não salvo', 2, 17, '2019-09-17 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (170, 5, 'Motivo não salvo', 21, 19, '2019-09-19 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (177, 10, 'Motivo não salvo', 17, 21, '2019-09-24 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (181, 4, 'Motivo não salvo', 17, 2, '2019-09-24 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (188, 4, 'Motivo não salvo', 2, 16, '2019-09-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (195, 5, 'Motivo não salvo', 11, 28, '2019-09-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (202, 5, 'Por me ajudar com ideias para melhorar meu trampo e meu conhecimento', 2, 10, '2019-10-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (212, 4, 'CR foda!', 21, 2, '2019-10-15 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (216, 20, 'Explicação e discussão sobre Elixir', 21, 11, '2019-10-17 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (220, 8, 'Design do site de cliente da agência ', 10, 20, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (227, 2, 'Por sempre buscar conhecimento', 28, 18, '2019-10-21 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (237, 15, 'Por querer aprender novas tecnologias', 11, 17, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (244, 10, 'Por sempre se preocupar em fazer conteúdo de qualidade pro canal e ajudar a gente a alcançar isso também ', 2, 10, '2019-10-24 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (248, 5, 'Pela ajuda com o docker', 25, 18, '2019-10-25 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (255, 5, 'Empolgado com elixir', 17, 21, '2019-10-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (259, 10, 'Auxiliar nos processos de CI', 18, 28, '2019-10-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (266, 10, 'Ajudar pra CARALHO com o Marketing', 13, 10, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (273, 5, 'Pelo bom trabalho com a loja de ez.coins 😎', 19, 17, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (277, 5, 'Empenho nos estudos', 17, 25, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (281, 20, 'Companheiro, otimo funcionario até mesmo fora do horario de trabalho', 3, 8, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (285, 1, 'Discussão do sistema dos ez.coins', 21, 11, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (292, 15, 'Ajuda no dia a dia, profissionalismo e postura exemplar', 22, 3, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (296, 2, 'Pela interação com a galera da ez, mesmo estando em Sampa. Tá sendo top demais!', 19, 26, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (303, 5, 'Sempre compartilha material e conhecimento. Fera demais!', 15, 10, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (307, 5, 'Iniciativa do projeto ezcoins. Top demais!', 19, 22, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (314, 5, 'Estudos e boa conversa sobre programação', 17, 25, '2019-11-08 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (318, 10, 'CustomExceptions zica', 7, 17, '2019-11-22 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (322, 20, 'Pela dedicação no projeto, auxilio nos jobs e no projeto', 4, 7, '2019-11-22 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (329, 5, 'Ajudar com festa da ez, na compra das breja', 13, 14, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (85, 3, 'Motivo não salvo', 2, 10, '2019-08-05 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (92, 5, 'Motivo não salvo', 28, 27, '2019-08-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (99, 10, 'Motivo não salvo', 13, 18, '2019-08-16 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (106, 10, 'Motivo não salvo', 19, 10, '2019-08-21 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (116, 7, 'Motivo não salvo', 19, 24, '2019-08-26 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (123, 5, 'Motivo não salvo', 21, 13, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (130, 10, 'Motivo não salvo', 28, 14, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (137, 30, 'Motivo não salvo', 11, 19, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (150, 5, 'Motivo não salvo', 2, 17, '2019-09-09 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (157, 5, 'Motivo não salvo', 16, 18, '2019-09-12 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (164, 5, 'Motivo não salvo', 21, 11, '2019-09-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (174, 15, 'Motivo não salvo', 24, 16, '2019-09-20 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (190, 10, 'Motivo não salvo', 19, 24, '2019-09-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (206, 10, 'Fazer o primeiro code review', 14, 2, '2019-10-10 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (219, 3, 'Ajudar na entrevista', 28, 11, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (226, 2, 'Ajudar com o direcionamneto do Rodrigo', 28, 17, '2019-10-19 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (239, 5, 'Por compartilhar seu documento de estudos de vue.js', 11, 3, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (249, 10, 'Por ter gerenciado o projeto da Gluco Gear. Você fez um ótimo trabalho! 👏🏻', 19, 28, '2019-10-25 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (256, 10, 'Fez uma call hoje comigo pra ajudar a resolver meu problema com o suporte da Salestime. Monstro atencioso!', 14, 11, '2019-10-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (269, 8, 'Ir no evento de mulheres pra trazer pro #papodemulher', 13, 2, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (279, 15, 'Ajuda no dia a dia, profissionalismo e postura exemplar', 8, 26, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (286, 1, 'Discussão do sistema dos ez.coins', 21, 2, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (293, 2, 'Pela interação com a galera da ez, mesmo estando em Sampa. Tá sendo top demais!', 19, 3, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (324, 5, 'Ajudar com Endomarketing :)', 13, 10, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (86, 10, 'Motivo não salvo', 17, 16, '2019-08-07 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (90, 2, 'Motivo não salvo', 2, 11, '2019-08-08 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (94, 10, 'Motivo não salvo', 21, 19, '2019-08-12 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (101, 10, 'Motivo não salvo', 13, 21, '2019-08-16 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (108, 5, 'Motivo não salvo', 19, 27, '2019-08-22 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (115, 5, 'Motivo não salvo', 13, 2, '2019-08-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (125, 5, 'Motivo não salvo', 17, 19, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (132, 10, 'Motivo não salvo', 10, 13, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (139, 10, 'Motivo não salvo', 10, 2, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (155, 1, 'Motivo não salvo', 2, 10, '2019-09-12 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (165, 5, 'Motivo não salvo', 21, 14, '2019-09-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (175, 5, 'Motivo não salvo', 19, 18, '2019-09-20 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (179, 20, 'Motivo não salvo', 21, 13, '2019-09-24 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (186, 5, 'Motivo não salvo', 13, 17, '2019-09-26 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (193, 10, 'Motivo não salvo', 10, 2, '2019-09-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (200, 5, 'Motivo não salvo', 28, 24, '2019-09-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (210, 5, 'Relatório para o pessoal da Gluco Gear, ficou top demais!', 19, 24, '2019-10-15 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (217, 5, 'Ajudar com dúvidas de GraphQL', 28, 14, '2019-10-17 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (224, 7, 'Por ajudar com o Papo de Mulher ', 10, 25, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (231, 10, 'Ajudar com OS e IOS', 17, 27, '2019-10-22 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (238, 10, 'Pela ajuda no domus', 11, 19, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (245, 5, 'Fez um desenho demais para o design da camiseta', 25, 2, '2019-10-25 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (261, 3, 'Ajudou a arrumar o idioma do teclado', 15, 11, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (268, 2, 'Coach de LOL', 13, 15, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (275, 2, 'Por me acompanhar no evento do Happy Hour ', 2, 10, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (282, 15, 'Companheiro, otimo funcionario até mesmo fora do horario de trabalho', 3, 26, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (289, 10, 'Motivo não salvo', 14, 17, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (302, 1, 'Por me encher o saco com a notificação kkk', 19, 17, '2019-11-06 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (309, 5, 'Ajuda com a planilha de proposta da agência. #OCARAÉFODA', 10, 19, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (313, 7, 'Ajudar no direcionamento do Rodrigo com os estudos, e boa conversa sobre programação', 17, 21, '2019-11-08 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (320, 10, 'Pelas dicas de recursos e ajuda no projeto ', 4, 17, '2019-11-22 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (327, 5, 'Ajudar o Cardoso no início do projeto', 13, 23, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (93, 5, 'Motivo não salvo', 2, 19, '2019-08-12 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (97, 5, 'Motivo não salvo', 28, 27, '2019-08-13 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (104, 5, 'Motivo não salvo', 19, 18, '2019-08-19 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (111, 10, 'Motivo não salvo', 21, 19, '2019-08-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (118, 10, 'Motivo não salvo', 20, 13, '2019-08-28 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (128, 5, 'Motivo não salvo', 17, 2, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (141, 10, 'Motivo não salvo', 17, 18, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (145, 10, 'Motivo não salvo', 10, 28, '2019-09-01 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (158, 10, 'Motivo não salvo', 20, 10, '2019-09-13 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (168, 5, 'Motivo não salvo', 2, 11, '2019-09-19 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (178, 20, 'Motivo não salvo', 17, 11, '2019-09-24 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (182, 10, 'Motivo não salvo', 17, 25, '2019-09-24 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (189, 10, 'Motivo não salvo', 2, 17, '2019-09-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (196, 8, 'Motivo não salvo', 28, 27, '2019-09-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (203, 5, 'Por sempre ajudar em tudo relacionado a design', 19, 10, '2019-10-09 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (213, 3, 'Teste manual do CAMDA', 21, 2, '2019-10-15 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (223, 10, 'Ajudar com vendas da agência ', 10, 15, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (230, 2, 'PR agito', 28, 14, '2019-10-22 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (243, 5, 'Ajudou com simulações de cold-call', 15, 21, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (250, 5, 'Pelo empenho e foco nos estudos! PARABÉNS 🙂', 19, 25, '2019-10-25 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (254, 5, 'Ajudou o Lucas a rodar o projeto', 17, 14, '2019-10-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (264, 5, 'Trabalho legal na glucogear', 17, 24, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (271, 5, 'Dividir os remédio tudo e ser um bom ouvinte ', 15, 24, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (278, 20, 'Ajuda no dia a dia, empenho na criacao de componentes fora de horario de trabalho', 8, 3, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (288, 1, 'Discussão do sistema dos ez.coins', 21, 14, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (298, 5, 'Por ajudar na arte da camiseta, ficou muito bom o resultado final (ou quase) <3', 2, 10, '2019-11-04 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (305, 5, 'Ajuda com elixir no projeto do ezcoins', 21, 11, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (312, 2, 'Por sempre helpar quando preciso. ', 2, 21, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (325, 5, 'Troca de ideia sobre cultura da ez', 13, 2, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (103, 10, 'Motivo não salvo', 14, 28, '2019-08-17 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (110, 5, 'Motivo não salvo', 19, 28, '2019-08-23 00:00:00', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (117, 5, 'Motivo não salvo', 13, 20, '2019-08-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (127, 5, 'Motivo não salvo', 13, 10, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (143, 10, 'Motivo não salvo', 28, 20, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (153, 5, 'Motivo não salvo', 28, 11, '2019-09-12 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (160, 5, 'Motivo não salvo', 28, 18, '2019-09-15 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (167, 10, 'Motivo não salvo', 19, 21, '2019-09-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (183, 5, 'Motivo não salvo', 13, 11, '2019-09-26 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (199, 10, 'Motivo não salvo', 19, 24, '2019-09-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (209, 10, 'Ajudou de forma bem rapida e clara durante a pequena participação que fiz no Camda', 27, 21, '2019-10-14 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (222, 5, 'Ajudar com YouGo', 10, 13, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (235, 10, 'Por trazer assuntos para descutir', 11, 21, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (242, 1, 'Gente boa', 15, 3, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (252, 10, 'Por sempre ajudar quando tenho aglum problema no pc ou alguma dúvida. ', 2, 21, '2019-10-28 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (262, 15, 'Ajudar na festa de fim de ano', 13, 14, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (290, 15, 'Ajuda no dia a dia, profissionalismo e postura exemplar', 22, 8, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (297, 2, 'Pelo apoio dado na NP durante a troca de parceiro. ', 19, 4, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (316, 5, 'Layout ezcoins', 21, 2, '2019-11-14 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (323, 10, 'Ajuda para começar no Salestime', 24, 17, '2019-11-25 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (330, 5, 'Papo sobre vendas!', 13, 15, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (122, 10, 'Motivo não salvo', 21, 13, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (135, 10, 'Motivo não salvo', 18, 17, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (172, 5, 'Motivo não salvo', 16, 28, '2019-09-20 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (194, 10, 'Motivo não salvo', 16, 28, '2019-09-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (207, 5, 'Ajudar a estruturar processo hunting RH', 28, 13, '2019-10-12 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (301, 20, 'Grande ajuda no projeto da glucogear', 24, 27, '2019-11-05 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (126, 10, 'Motivo não salvo', 21, 19, '2019-08-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (133, 10, 'Motivo não salvo', 11, 28, '2019-08-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (146, 10, 'Motivo não salvo', 13, 10, '2019-09-01 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (156, 5, 'Motivo não salvo', 28, 18, '2019-09-12 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (169, 5, 'Motivo não salvo', 2, 10, '2019-09-19 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (176, 5, 'Motivo não salvo', 19, 24, '2019-09-20 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (192, 5, 'Motivo não salvo', 13, 2, '2019-09-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (208, 3, 'Teste manual do CAMDA', 21, 27, '2019-10-13 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (218, 8, 'Gravar conteúdo de última hora quando ninguém queria', 10, 18, '2019-10-18 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (234, 5, 'Por se dedicar aos estudos', 11, 25, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (241, 5, 'Divide as bolachinas tipo saudáveis ', 15, 24, '2019-10-23 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (257, 10, 'Por ajudar na criação de videos e edição.', 18, 10, '2019-10-29 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (270, 10, 'Por ter paciencia comigo', 15, 13, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (283, 15, 'Companheiro, otimo funcionario até mesmo fora do horario de trabalho', 3, 22, '2019-10-31 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (308, 2, 'Notificação bugada da planilha', 17, 19, '2019-11-07 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (151, 10, 'Motivo não salvo', 21, 20, '2019-09-10 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (185, 15, 'Motivo não salvo', 13, 15, '2019-09-26 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (201, 5, 'Por me ajudar a conectar o PC na impressora, ou pelo menos tentar', 2, 16, '2019-10-03 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (214, 5, 'Me ajudar com o artigo de UX', 2, 16, '2019-10-16 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (263, 5, 'Ajudar nas ideias de comunidade', 13, 15, '2019-10-30 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (300, 5, 'Ajuda no dia a dia, profissionalismo e postura exemplar', 14, 17, '2019-11-04 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (319, 20, 'Ajudas e parceria de projeto ', 7, 4, '2019-11-22 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');
INSERT INTO public.donations (id, quantity, reason, sender_user_id, receiver_user_id, donate_at, inserted_at, updated_at) VALUES (326, 3, 'Ajudar com comunidade e dar ótimas ideias', 13, 9, '2019-11-27 00:00:00', '2019-11-28 15:51:37', '2019-11-28 15:51:37');


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.schema_migrations (version, inserted_at) VALUES (20191031161700, '2019-11-28 15:51:27');
INSERT INTO public.schema_migrations (version, inserted_at) VALUES (20191104132940, '2019-11-28 15:51:27');
INSERT INTO public.schema_migrations (version, inserted_at) VALUES (20191104150114, '2019-11-28 15:51:27');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (1, 'Alef Barbeli', 'alefbarbeli@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$chx22fUiZSW6ImxOyVt52g$BZIdvJKB8Nt67JUoQh3rm1thPEykYWG3Cy4hGY+woKQ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:27', '2019-11-28 15:51:27');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (2, 'Ana Laura', 'anynnha.laureca@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$vp7VbTiZqISLvbLFcHOKkQ$ZfW6FCw9nnIk4PyX5j3BDsNQtAiEHjqfI/IAao6lsTg', 'https://ca.slack-edge.com/T65SG3XGE-UDM3LANBE-d4b2e31678ac-512', '2019-11-28 15:51:28', '2019-11-28 15:51:28');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (3, 'Antônio Santos', 'ahssantos1@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$p939XOpAEhibndNNaAwbnw$jGQnJAz0s4AOrAdlPNxtlqb9ywRdL5zyjZFd8YTV5+Y', 'https://ca.slack-edge.com/T65SG3XGE-UP2UV7TNX-g8c0e2f6d538-512', '2019-11-28 15:51:28', '2019-11-28 15:51:28');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (4, 'Aylon Muramatsu', 'aylon.muramatsu@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$Lxnp7sz4+fiYVBWHJka6Ug$kzcCF9RIWLmFeERn3QF8hZTTGpr72Ur1UnIj3sSWoJ4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:28', '2019-11-28 15:51:28');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (5, 'Beatriz Ereno', 'beatriz.ereno@ezdevs.com.br', '$argon2id$v=19$m=131072,t=8,p=4$a+Uiag8TneSjajgGFsfcag$hM9RSrR/q2zwFw20MwiaN/qc/4+hiDuk4KOaRwpQ+fg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:29', '2019-11-28 15:51:29');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (6, 'Bianca Dias', 'bianca.dias@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$QYO5Ct06idExAi3STRLkzw$ytlpMJzjlD+zQjzACMOs5OQjiRUol5WHfnBYlezOfIw', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:29', '2019-11-28 15:51:29');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (7, 'Bruno Gervazio', 'brunogervasio23@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$+M/9TqrgktnFdjKO8b45Xw$J/mY1TCxCYTk+d5YKGI1mRZJ0zcNsEIXeeLpsLWH1Is', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:29', '2019-11-28 15:51:29');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (8, 'Denis Ibanez', 'denis.ibanez@outlook.com', '$argon2id$v=19$m=131072,t=8,p=4$vLPVILgjsb0fhpKFKXes2Q$FRZcLi6pnmoCw18YCA/jcWa99sV0YkpHWvX2HdsxeNE', 'https://ca.slack-edge.com/T65SG3XGE-UPF91GUMN-g8b3f3839319-512', '2019-11-28 15:51:29', '2019-11-28 15:51:29');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (9, 'Dimi Antoni', 'antonivargas@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$RjaLmsza+IjEivsrMqIg5Q$G9mrnK6VcqQf/oF4a2TttGmJUNPxHI2gxgybLERx5qU', 'https://ca.slack-edge.com/T65SG3XGE-UQ0QAG5S9-8cfe4c2c777f-512', '2019-11-28 15:51:30', '2019-11-28 15:51:30');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (10, 'Ed Freitas', 'edvaldo.freitas@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$AXpqIY53EyX8bdx7j6SH8Q$T1Z1DareTFZ2ozjgEOCQMUV4ujYFexFK6VQAzZReqfM', 'https://ca.slack-edge.com/T65SG3XGE-UJCDKC74M-48f417bb066b-512', '2019-11-28 15:51:30', '2019-11-28 15:51:30');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (11, 'Gabriel Cardoso', 'gabriel.cardoso@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$1yKvUG7HbbKotim7Lsww/A$o8YO/O45c93T3Y3RsIY45dj/PRPvcTHIFWOEYtzngrc', 'https://ca.slack-edge.com/T65SG3XGE-UAR7USW9L-4fe3f6f27ccf-512', '2019-11-28 15:51:30', '2019-11-28 15:51:30');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (12, 'Gabriel Gripp', 'grippado@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$mfUsiyRRS/FKGLMnK9FPiA$c+r7Cw0f7QMLP5YiFZMw32r6GNzeJ4YxDuLXRnBANjU', 'https://ca.slack-edge.com/T65SG3XGE-UQ2HEJ2LT-adf019c96d1e-512', '2019-11-28 15:51:31', '2019-11-28 15:51:31');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (13, 'Gabriel Malinosqui', 'gabriel.malinosqui@ezdevs.com.br', '$argon2id$v=19$m=131072,t=8,p=4$1Z0GlOz1nSkMFcGCgFHZLw$AiUBvOZ4MvUIevlIRY06vj/VmtOm2AvSdOgGTuum0o4', 'https://ca.slack-edge.com/T65SG3XGE-U65SG3XKQ-8eaf39a6e606-512', '2019-11-28 15:51:31', '2019-11-28 15:51:31');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (14, 'Guilherme Ferreira', 'guilherme.ferreira@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$M4AJ3Mqeyi5/lLx0vMt8+A$Oimysqcx7Z+nH1huXW/TpIZ3r6sXAL6qNHEWJU7/WsU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:31', '2019-11-28 15:51:31');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (15, 'Guilherme Silva', 'guilherme.silva@ezdevs.com.br', '$argon2id$v=19$m=131072,t=8,p=4$K3Go6B2g+0qYGUPSbAjkjA$aeuqRKW3w7g8+Y1rjDaThBjWhX1btLzf7boaOuTzPow', 'https://ca.slack-edge.com/T65SG3XGE-UN0640G94-3def65d03deb-512', '2019-11-28 15:51:32', '2019-11-28 15:51:32');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (16, 'Henrique Marciano', 'henrique.marciano@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$E7c3PjBO6FuO5lfSF5IjNQ$0TNPhnayCe8HOwSoJLqCipuHkckq1g00LRJcrxJoclw', 'https://ca.slack-edge.com/T65SG3XGE-UFT1BE831-5356e37bacc3-512', '2019-11-28 15:51:32', '2019-11-28 15:51:32');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (17, 'Ítalo Peruchi', 'italo.peruchi@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$nu6+wXhI7j+DkVFeU1JhVA$S4tzgi8rKM1eiwBBBrdCydrAh0Ag40vdpkxNNIX4pRQ', 'https://ca.slack-edge.com/T65SG3XGE-U64FXL9PT-1086f95f29d8-512', '2019-11-28 15:51:32', '2019-11-28 15:51:32');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (18, 'Júlio César', 'julio.cesar@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$fODRJRCpmpDY6oqvDtbvNg$MgZ0bSw4KjGH2bG7gjDDaKEU9QlBUhFIpCzgnjT3rUc', 'https://ca.slack-edge.com/T65SG3XGE-UDTDCG52R-35b190947518-512', '2019-11-28 15:51:33', '2019-11-28 15:51:33');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (19, 'Junior Sartori', 'junior.sartori@ezdevs.com.br', '$argon2id$v=19$m=131072,t=8,p=4$Gjpl7nUaew7EICFtMjKIPA$Ifsye6X+Wb5Bjx2KU81RpXZHmEYB84iyrkJCDc7xGgU', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:33', '2019-11-28 15:51:33');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (20, 'Lost', 'lost@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$Mr6Sp+yGgShB3z4HRN7X0w$SHsV1l5rsf+yhHvwdUOtTnL1N/3ao7oO6XbQ5iltB/E', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:33', '2019-11-28 15:51:33');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (21, 'Maykon Michel', 'maykon.michel@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$LYbkM9m+Cps1pWE95YAvuA$u+3mbH89UkIqWXMCqE7gUcEbMzGyArN6Gx3gDxbY1xg', 'https://ca.slack-edge.com/T65SG3XGE-UD00K941Y-1133b5e55af8-512', '2019-11-28 15:51:34', '2019-11-28 15:51:34');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (22, 'Paulo Rodrigues', 'paulo.rodrigues@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$e7aio+qeZREEvxXBRG1MKw$2CJ2BiO8fPt3U3/J3aqvuF9k2hLzY7OyvZCVlONm2lc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:34', '2019-11-28 15:51:34');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (23, 'Potiguar Catalan', 'potiguar@potiguar.net', '$argon2id$v=19$m=131072,t=8,p=4$vjYB3+oSMP/LeQeJBtiNNA$asvyJ5tKnmKE/unoZavUHdeDq5QX6uoh9PMesLO4E74', 'https://ca.slack-edge.com/T65SG3XGE-UQ60RAKB2-372b53a278d4-512', '2019-11-28 15:51:34', '2019-11-28 15:51:34');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (24, 'Rafael Bentivenha', 'rafael.bentivenha@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$hLT0sQaH5aBmI730xnFhNQ$J8Ve4eNVdOUJvyd60tnNzRHUwrc3NjCN9WjaSW9+Vew', 'https://ca.slack-edge.com/T65SG3XGE-UCV1FGT2Q-131eba56d311-512', '2019-11-28 15:51:35', '2019-11-28 15:51:35');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (25, 'Rafaela Ramos', 'rafaela.ramos@ezdevs.com.br', '$argon2id$v=19$m=131072,t=8,p=4$q7cxaMtOZ5JmKqW5Rsur+A$KpwzMEZP2gu4ANtx/nHXxyHaglNDrJEPuYdU0A3gOLk', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT63eZUcs0HZwV6z4bC8rKYmyugOka4-QRXt72_XmLHya7uMKxQ', '2019-11-28 15:51:35', '2019-11-28 15:51:35');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (26, 'Rodrigo Coffani', 'rodrigo.coffani@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$JG3OFyBj2QJU7bqWffCleQ$5ZAXh0S1IEXwk04kFanlLNjr2CbIwwsF/7z4OaJWTOE', 'https://ca.slack-edge.com/T65SG3XGE-UN5TP5MJA-5e1f79f765dd-512', '2019-11-28 15:51:35', '2019-11-28 15:51:35');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (27, 'Sidney Lima', 'sidneylimafilho@gmail.com', '$argon2id$v=19$m=131072,t=8,p=4$lbgN7DNdCc+2CstC/DUJOQ$Sh/wkt9KZS78ZCozZQqid3hTvBsPmJkR5ZO7Geaqq8k', 'https://ca.slack-edge.com/T65SG3XGE-UP2FH0YKC-g13c12ed8bb0-512', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (28, 'Vinícius Carra', 'vinicius.carra@ezdevs.tech', '$argon2id$v=19$m=131072,t=8,p=4$PE+PiyueJT2xSNnNLLEP0Q$8XFrtjse8esWupc3ZHovQInuW/2s0SIXZvlxtniXUMk', 'https://ca.slack-edge.com/T65SG3XGE-U7MKGJPA7-8167ad998e2c-512', '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.users (id, name, email, password_hash, avatar, inserted_at, updated_at) VALUES (29, 'Wellington Santana', 'wellington.santana@ezdevs.com.br', '$argon2id$v=19$m=131072,t=8,p=4$PhWat/gDIqQOCxXzw6D2dg$3RRpx2OZxdrXjjBXAMaxkCQAjSw7RAdpKYG6ux2yafI', 'https://ca.slack-edge.com/T65SG3XGE-U6540FR60-39cbab5e223c-512', '2019-11-28 15:51:36', '2019-11-28 15:51:36');


--
-- Data for Name: wallets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (1, 0, 0, 0, 1, '2019-11-28 15:51:27', '2019-11-28 15:51:27');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (5, 0, 0, 0, 5, '2019-11-28 15:51:29', '2019-11-28 15:51:29');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (12, 0, 0, 0, 12, '2019-11-28 15:51:31', '2019-11-28 15:51:31');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (29, 0, 0, 0, 29, '2019-11-28 15:51:36', '2019-11-28 15:51:36');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (18, 0, 103, 103, 18, '2019-11-28 15:51:33', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (20, 0, 38, 38, 20, '2019-11-28 15:51:33', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (16, 0, 86, 86, 16, '2019-11-28 15:51:32', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (3, 0, 43, 43, 3, '2019-11-28 15:51:28', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (8, 0, 37, 37, 8, '2019-11-28 15:51:29', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (26, 0, 47, 47, 26, '2019-11-28 15:51:35', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (27, 0, 67, 67, 27, '2019-11-28 15:51:36', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (22, 0, 37, 37, 22, '2019-11-28 15:51:34', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (19, 0, 215, 215, 19, '2019-11-28 15:51:33', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (11, 0, 151, 151, 11, '2019-11-28 15:51:30', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (21, 0, 199, 199, 21, '2019-11-28 15:51:34', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (25, 0, 40, 40, 25, '2019-11-28 15:51:35', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (13, 0, 148, 148, 13, '2019-11-28 15:51:31', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (4, 0, 22, 22, 4, '2019-11-28 15:51:28', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (28, 0, 222, 222, 28, '2019-11-28 15:51:36', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (6, 0, 50, 50, 6, '2019-11-28 15:51:29', '2019-11-28 15:51:36');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (7, 0, 20, 20, 7, '2019-11-28 15:51:29', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (17, 0, 203, 203, 17, '2019-11-28 15:51:32', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (10, 0, 180, 180, 10, '2019-11-28 15:51:30', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (2, 0, 145, 145, 2, '2019-11-28 15:51:28', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (9, 0, 3, 3, 9, '2019-11-28 15:51:30', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (23, 0, 5, 5, 23, '2019-11-28 15:51:34', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (24, 0, 115, 115, 24, '2019-11-28 15:51:35', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (15, 0, 44, 44, 15, '2019-11-28 15:51:32', '2019-11-28 15:51:37');
INSERT INTO public.wallets (id, to_offer, received, balance, owner_user_id, inserted_at, updated_at) VALUES (14, 0, 112, 112, 14, '2019-11-28 15:51:31', '2019-11-28 15:51:37');


--
-- Name: donations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.donations_id_seq', 331, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 29, true);


--
-- Name: wallets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wallets_id_seq', 29, true);


--
-- Name: donations donations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donations
    ADD CONSTRAINT donations_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: wallets wallets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);


--
-- Name: donations_receiver_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX donations_receiver_user_id_index ON public.donations USING btree (receiver_user_id);


--
-- Name: donations_sender_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX donations_sender_user_id_index ON public.donations USING btree (sender_user_id);


--
-- Name: users_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX users_email_index ON public.users USING btree (email);


--
-- Name: wallets_owner_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wallets_owner_user_id_index ON public.wallets USING btree (owner_user_id);


--
-- Name: donations donations_receiver_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donations
    ADD CONSTRAINT donations_receiver_user_id_fkey FOREIGN KEY (receiver_user_id) REFERENCES public.users(id);


--
-- Name: donations donations_sender_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donations
    ADD CONSTRAINT donations_sender_user_id_fkey FOREIGN KEY (sender_user_id) REFERENCES public.users(id);


--
-- Name: wallets wallets_owner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

