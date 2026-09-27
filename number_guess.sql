--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 1);
INSERT INTO public.games VALUES (2, 980, 2);
INSERT INTO public.games VALUES (3, 413, 2);
INSERT INTO public.games VALUES (4, 816, 3);
INSERT INTO public.games VALUES (5, 769, 3);
INSERT INTO public.games VALUES (6, 628, 2);
INSERT INTO public.games VALUES (7, 26, 2);
INSERT INTO public.games VALUES (8, 886, 2);
INSERT INTO public.games VALUES (9, 11, 1);
INSERT INTO public.games VALUES (10, 809, 4);
INSERT INTO public.games VALUES (11, 338, 4);
INSERT INTO public.games VALUES (12, 996, 5);
INSERT INTO public.games VALUES (13, 808, 5);
INSERT INTO public.games VALUES (14, 423, 4);
INSERT INTO public.games VALUES (15, 890, 4);
INSERT INTO public.games VALUES (16, 514, 4);
INSERT INTO public.games VALUES (17, 656, 6);
INSERT INTO public.games VALUES (18, 836, 6);
INSERT INTO public.games VALUES (19, 338, 7);
INSERT INTO public.games VALUES (20, 7, 7);
INSERT INTO public.games VALUES (21, 721, 6);
INSERT INTO public.games VALUES (22, 271, 6);
INSERT INTO public.games VALUES (23, 143, 6);
INSERT INTO public.games VALUES (24, 969, 8);
INSERT INTO public.games VALUES (25, 563, 8);
INSERT INTO public.games VALUES (26, 301, 9);
INSERT INTO public.games VALUES (27, 101, 9);
INSERT INTO public.games VALUES (28, 716, 8);
INSERT INTO public.games VALUES (29, 780, 8);
INSERT INTO public.games VALUES (30, 642, 8);
INSERT INTO public.games VALUES (31, 796, 10);
INSERT INTO public.games VALUES (32, 515, 10);
INSERT INTO public.games VALUES (33, 121, 11);
INSERT INTO public.games VALUES (34, 2, 11);
INSERT INTO public.games VALUES (35, 492, 10);
INSERT INTO public.games VALUES (36, 809, 10);
INSERT INTO public.games VALUES (37, 607, 10);
INSERT INTO public.games VALUES (38, 652, 13);
INSERT INTO public.games VALUES (39, 906, 13);
INSERT INTO public.games VALUES (40, 292, 14);
INSERT INTO public.games VALUES (41, 777, 14);
INSERT INTO public.games VALUES (42, 376, 13);
INSERT INTO public.games VALUES (43, 128, 13);
INSERT INTO public.games VALUES (44, 26, 13);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Elias');
INSERT INTO public.users VALUES (2, 'user_1790471849313');
INSERT INTO public.users VALUES (3, 'user_1790471849312');
INSERT INTO public.users VALUES (4, 'user_1790472195642');
INSERT INTO public.users VALUES (5, 'user_1790472195641');
INSERT INTO public.users VALUES (6, 'user_1790472415883');
INSERT INTO public.users VALUES (7, 'user_1790472415882');
INSERT INTO public.users VALUES (8, 'user_1790472566652');
INSERT INTO public.users VALUES (9, 'user_1790472566651');
INSERT INTO public.users VALUES (10, 'user_1790472604927');
INSERT INTO public.users VALUES (11, 'user_1790472604926');
INSERT INTO public.users VALUES (12, 'hello');
INSERT INTO public.users VALUES (13, 'user_1790472636096');
INSERT INTO public.users VALUES (14, 'user_1790472636095');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 44, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 14, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

