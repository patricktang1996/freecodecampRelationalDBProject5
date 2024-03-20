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
    guesses integer DEFAULT 0 NOT NULL,
    secret_number integer
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

INSERT INTO public.games VALUES (1, 6, 559, 558);
INSERT INTO public.games VALUES (2, 6, 298, 297);
INSERT INTO public.games VALUES (3, 7, 980, 979);
INSERT INTO public.games VALUES (4, 7, 543, 542);
INSERT INTO public.games VALUES (5, 6, 687, 684);
INSERT INTO public.games VALUES (6, 6, 952, 950);
INSERT INTO public.games VALUES (7, 6, 983, 982);
INSERT INTO public.games VALUES (8, 8, 117, 116);
INSERT INTO public.games VALUES (9, 8, 900, 899);
INSERT INTO public.games VALUES (10, 9, 751, 750);
INSERT INTO public.games VALUES (11, 9, 154, 153);
INSERT INTO public.games VALUES (12, 8, 131, 128);
INSERT INTO public.games VALUES (13, 8, 160, 158);
INSERT INTO public.games VALUES (14, 8, 791, 790);
INSERT INTO public.games VALUES (15, 10, 872, 871);
INSERT INTO public.games VALUES (16, 10, 607, 606);
INSERT INTO public.games VALUES (17, 11, 946, 945);
INSERT INTO public.games VALUES (18, 11, 195, 194);
INSERT INTO public.games VALUES (19, 10, 398, 395);
INSERT INTO public.games VALUES (20, 10, 94, 92);
INSERT INTO public.games VALUES (21, 10, 355, 354);
INSERT INTO public.games VALUES (22, 5, 8, 270);
INSERT INTO public.games VALUES (23, 12, 591, 590);
INSERT INTO public.games VALUES (24, 12, 824, 823);
INSERT INTO public.games VALUES (25, 13, 607, 606);
INSERT INTO public.games VALUES (26, 13, 207, 206);
INSERT INTO public.games VALUES (27, 12, 60, 57);
INSERT INTO public.games VALUES (28, 12, 234, 232);
INSERT INTO public.games VALUES (29, 12, 116, 115);
INSERT INTO public.games VALUES (30, 14, 115, 114);
INSERT INTO public.games VALUES (31, 14, 204, 203);
INSERT INTO public.games VALUES (32, 15, 308, 307);
INSERT INTO public.games VALUES (33, 15, 290, 289);
INSERT INTO public.games VALUES (34, 14, 418, 415);
INSERT INTO public.games VALUES (35, 14, 18, 16);
INSERT INTO public.games VALUES (36, 14, 279, 278);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1710905082024');
INSERT INTO public.users VALUES (2, 'user_1710905082023');
INSERT INTO public.users VALUES (3, 'user_1710905157322');
INSERT INTO public.users VALUES (4, 'user_1710905157321');
INSERT INTO public.users VALUES (5, 'tangjing');
INSERT INTO public.users VALUES (6, 'user_1710905419760');
INSERT INTO public.users VALUES (7, 'user_1710905419759');
INSERT INTO public.users VALUES (8, 'user_1710905584430');
INSERT INTO public.users VALUES (9, 'user_1710905584429');
INSERT INTO public.users VALUES (10, 'user_1710905646036');
INSERT INTO public.users VALUES (11, 'user_1710905646035');
INSERT INTO public.users VALUES (12, 'user_1710905758000');
INSERT INTO public.users VALUES (13, 'user_1710905757999');
INSERT INTO public.users VALUES (14, 'user_1710905853877');
INSERT INTO public.users VALUES (15, 'user_1710905853876');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


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

