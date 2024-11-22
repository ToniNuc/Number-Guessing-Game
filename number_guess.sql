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
    user_id integer,
    secret_number integer NOT NULL,
    guess_number integer NOT NULL
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

INSERT INTO public.games VALUES (1, 25, 587, 588);
INSERT INTO public.games VALUES (2, 26, 969, 970);
INSERT INTO public.games VALUES (3, 25, 853, 856);
INSERT INTO public.games VALUES (4, 25, 115, 117);
INSERT INTO public.games VALUES (5, 25, 623, 624);
INSERT INTO public.games VALUES (6, 27, 917, 918);
INSERT INTO public.games VALUES (7, 28, 618, 619);
INSERT INTO public.games VALUES (8, 27, 388, 391);
INSERT INTO public.games VALUES (9, 27, 361, 363);
INSERT INTO public.games VALUES (10, 27, 336, 337);
INSERT INTO public.games VALUES (11, 29, 471, 472);
INSERT INTO public.games VALUES (12, 30, 58, 59);
INSERT INTO public.games VALUES (13, 29, 310, 313);
INSERT INTO public.games VALUES (14, 29, 315, 317);
INSERT INTO public.games VALUES (15, 29, 966, 967);
INSERT INTO public.games VALUES (16, 31, 383, 384);
INSERT INTO public.games VALUES (17, 32, 963, 964);
INSERT INTO public.games VALUES (18, 31, 707, 710);
INSERT INTO public.games VALUES (19, 31, 818, 820);
INSERT INTO public.games VALUES (20, 31, 184, 185);
INSERT INTO public.games VALUES (21, 45, 673, 674);
INSERT INTO public.games VALUES (22, 45, 492, 493);
INSERT INTO public.games VALUES (23, 46, 258, 259);
INSERT INTO public.games VALUES (24, 46, 534, 535);
INSERT INTO public.games VALUES (25, 45, 761, 764);
INSERT INTO public.games VALUES (26, 45, 342, 344);
INSERT INTO public.games VALUES (27, 45, 485, 486);
INSERT INTO public.games VALUES (28, 47, 614, 615);
INSERT INTO public.games VALUES (29, 47, 433, 434);
INSERT INTO public.games VALUES (30, 48, 344, 345);
INSERT INTO public.games VALUES (31, 48, 838, 839);
INSERT INTO public.games VALUES (32, 47, 229, 232);
INSERT INTO public.games VALUES (33, 47, 969, 971);
INSERT INTO public.games VALUES (34, 47, 424, 425);
INSERT INTO public.games VALUES (35, 49, 89, 6);
INSERT INTO public.games VALUES (36, 49, 363, 8);
INSERT INTO public.games VALUES (37, 50, 308, 309);
INSERT INTO public.games VALUES (38, 50, 288, 289);
INSERT INTO public.games VALUES (39, 51, 199, 200);
INSERT INTO public.games VALUES (40, 51, 76, 77);
INSERT INTO public.games VALUES (41, 50, 552, 555);
INSERT INTO public.games VALUES (42, 50, 337, 339);
INSERT INTO public.games VALUES (43, 50, 544, 545);
INSERT INTO public.games VALUES (44, 52, 219, 220);
INSERT INTO public.games VALUES (45, 52, 888, 889);
INSERT INTO public.games VALUES (46, 53, 777, 778);
INSERT INTO public.games VALUES (47, 53, 758, 759);
INSERT INTO public.games VALUES (48, 52, 834, 837);
INSERT INTO public.games VALUES (49, 52, 973, 975);
INSERT INTO public.games VALUES (50, 52, 29, 30);
INSERT INTO public.games VALUES (51, 49, 19, 5);
INSERT INTO public.games VALUES (52, 54, 254, 255);
INSERT INTO public.games VALUES (53, 54, 838, 839);
INSERT INTO public.games VALUES (54, 55, 835, 836);
INSERT INTO public.games VALUES (55, 55, 253, 254);
INSERT INTO public.games VALUES (56, 54, 128, 131);
INSERT INTO public.games VALUES (57, 54, 981, 983);
INSERT INTO public.games VALUES (58, 54, 802, 803);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1732300378860');
INSERT INTO public.users VALUES (2, 'user_1732300378859');
INSERT INTO public.users VALUES (3, 'user_1732300574568');
INSERT INTO public.users VALUES (4, 'user_1732300574567');
INSERT INTO public.users VALUES (5, 'user_1732300764491');
INSERT INTO public.users VALUES (6, 'user_1732300764490');
INSERT INTO public.users VALUES (7, 'user_1732300823325');
INSERT INTO public.users VALUES (8, 'user_1732300823324');
INSERT INTO public.users VALUES (9, 'user_1732301306160');
INSERT INTO public.users VALUES (10, 'user_1732301306159');
INSERT INTO public.users VALUES (11, 'user_1732301369181');
INSERT INTO public.users VALUES (12, 'user_1732301369180');
INSERT INTO public.users VALUES (13, 'user_1732301411131');
INSERT INTO public.users VALUES (14, 'user_1732301411130');
INSERT INTO public.users VALUES (15, 'user_1732301491645');
INSERT INTO public.users VALUES (16, 'user_1732301491644');
INSERT INTO public.users VALUES (17, 'user_1732301519530');
INSERT INTO public.users VALUES (18, 'user_1732301519529');
INSERT INTO public.users VALUES (19, 'user_1732301574412');
INSERT INTO public.users VALUES (20, 'user_1732301574411');
INSERT INTO public.users VALUES (21, 'user_1732301620684');
INSERT INTO public.users VALUES (22, 'user_1732301620683');
INSERT INTO public.users VALUES (23, 'user_1732301809986');
INSERT INTO public.users VALUES (24, 'user_1732301809985');
INSERT INTO public.users VALUES (25, 'user_1732301936737');
INSERT INTO public.users VALUES (26, 'user_1732301936736');
INSERT INTO public.users VALUES (27, 'user_1732302002851');
INSERT INTO public.users VALUES (28, 'user_1732302002850');
INSERT INTO public.users VALUES (29, 'user_1732302036868');
INSERT INTO public.users VALUES (30, 'user_1732302036867');
INSERT INTO public.users VALUES (31, 'user_1732302101047');
INSERT INTO public.users VALUES (32, 'user_1732302101046');
INSERT INTO public.users VALUES (33, 'user_1732302274117');
INSERT INTO public.users VALUES (34, 'user_1732302274116');
INSERT INTO public.users VALUES (35, 'user_1732302292448');
INSERT INTO public.users VALUES (36, 'user_1732302292447');
INSERT INTO public.users VALUES (37, 'user_1732302320696');
INSERT INTO public.users VALUES (38, 'user_1732302320695');
INSERT INTO public.users VALUES (39, 'user_1732302329060');
INSERT INTO public.users VALUES (40, 'user_1732302329059');
INSERT INTO public.users VALUES (41, 'user_1732302336980');
INSERT INTO public.users VALUES (42, 'user_1732302336979');
INSERT INTO public.users VALUES (43, 'user_1732302377772');
INSERT INTO public.users VALUES (44, 'user_1732302377771');
INSERT INTO public.users VALUES (45, 'user_1732302556241');
INSERT INTO public.users VALUES (46, 'user_1732302556240');
INSERT INTO public.users VALUES (47, 'user_1732302632673');
INSERT INTO public.users VALUES (48, 'user_1732302632672');
INSERT INTO public.users VALUES (49, 'Anton');
INSERT INTO public.users VALUES (50, 'user_1732302802337');
INSERT INTO public.users VALUES (51, 'user_1732302802336');
INSERT INTO public.users VALUES (52, 'user_1732302831446');
INSERT INTO public.users VALUES (53, 'user_1732302831445');
INSERT INTO public.users VALUES (54, 'user_1732303015886');
INSERT INTO public.users VALUES (55, 'user_1732303015885');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 58, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

