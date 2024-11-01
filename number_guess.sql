--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (111, 42, 695);
INSERT INTO public.games VALUES (112, 42, 809);
INSERT INTO public.games VALUES (113, 43, 223);
INSERT INTO public.games VALUES (114, 43, 102);
INSERT INTO public.games VALUES (115, 42, 635);
INSERT INTO public.games VALUES (116, 42, 932);
INSERT INTO public.games VALUES (117, 42, 245);
INSERT INTO public.games VALUES (118, 44, 980);
INSERT INTO public.games VALUES (119, 44, 166);
INSERT INTO public.games VALUES (120, 45, 440);
INSERT INTO public.games VALUES (121, 45, 94);
INSERT INTO public.games VALUES (122, 44, 580);
INSERT INTO public.games VALUES (123, 44, 916);
INSERT INTO public.games VALUES (124, 44, 625);
INSERT INTO public.games VALUES (125, 41, 1);
INSERT INTO public.games VALUES (126, 46, 326);
INSERT INTO public.games VALUES (127, 46, 61);
INSERT INTO public.games VALUES (128, 47, 994);
INSERT INTO public.games VALUES (129, 47, 149);
INSERT INTO public.games VALUES (130, 46, 351);
INSERT INTO public.games VALUES (131, 46, 23);
INSERT INTO public.games VALUES (132, 46, 139);
INSERT INTO public.games VALUES (133, 48, 617);
INSERT INTO public.games VALUES (134, 48, 84);
INSERT INTO public.games VALUES (135, 49, 177);
INSERT INTO public.games VALUES (136, 49, 80);
INSERT INTO public.games VALUES (137, 48, 121);
INSERT INTO public.games VALUES (138, 48, 124);
INSERT INTO public.games VALUES (139, 48, 518);
INSERT INTO public.games VALUES (140, 50, 448);
INSERT INTO public.games VALUES (141, 50, 626);
INSERT INTO public.games VALUES (142, 51, 66);
INSERT INTO public.games VALUES (143, 51, 682);
INSERT INTO public.games VALUES (144, 50, 394);
INSERT INTO public.games VALUES (145, 50, 684);
INSERT INTO public.games VALUES (146, 50, 128);
INSERT INTO public.games VALUES (147, 52, 680);
INSERT INTO public.games VALUES (148, 52, 191);
INSERT INTO public.games VALUES (149, 53, 223);
INSERT INTO public.games VALUES (150, 53, 154);
INSERT INTO public.games VALUES (151, 52, 223);
INSERT INTO public.games VALUES (152, 52, 943);
INSERT INTO public.games VALUES (153, 52, 114);
INSERT INTO public.games VALUES (154, 54, 702);
INSERT INTO public.games VALUES (155, 54, 437);
INSERT INTO public.games VALUES (156, 55, 962);
INSERT INTO public.games VALUES (157, 55, 669);
INSERT INTO public.games VALUES (158, 54, 48);
INSERT INTO public.games VALUES (159, 54, 322);
INSERT INTO public.games VALUES (160, 54, 842);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (41, 'Daniel');
INSERT INTO public.users VALUES (42, 'user_1730467566920');
INSERT INTO public.users VALUES (43, 'user_1730467566919');
INSERT INTO public.users VALUES (44, 'user_1730467600891');
INSERT INTO public.users VALUES (45, 'user_1730467600890');
INSERT INTO public.users VALUES (46, 'user_1730467756146');
INSERT INTO public.users VALUES (47, 'user_1730467756145');
INSERT INTO public.users VALUES (48, 'user_1730467785381');
INSERT INTO public.users VALUES (49, 'user_1730467785380');
INSERT INTO public.users VALUES (50, 'user_1730467800086');
INSERT INTO public.users VALUES (51, 'user_1730467800085');
INSERT INTO public.users VALUES (52, 'user_1730467805880');
INSERT INTO public.users VALUES (53, 'user_1730467805879');
INSERT INTO public.users VALUES (54, 'user_1730467900325');
INSERT INTO public.users VALUES (55, 'user_1730467900324');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

