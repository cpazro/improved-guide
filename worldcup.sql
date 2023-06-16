--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (328, 2018, 'Final', 811, 810, 4, 2);
INSERT INTO public.games VALUES (329, 2018, 'Third Place', 813, 812, 2, 0);
INSERT INTO public.games VALUES (330, 2018, 'Semi-Final', 813, 811, 2, 1);
INSERT INTO public.games VALUES (331, 2018, 'Semi-Final', 812, 810, 1, 0);
INSERT INTO public.games VALUES (332, 2018, 'Quarter-Final', 814, 811, 3, 2);
INSERT INTO public.games VALUES (333, 2018, 'Quarter-Final', 815, 813, 2, 0);
INSERT INTO public.games VALUES (334, 2018, 'Quarter-Final', 816, 812, 2, 1);
INSERT INTO public.games VALUES (335, 2018, 'Quarter-Final', 817, 810, 2, 0);
INSERT INTO public.games VALUES (336, 2018, 'Eighth-Final', 818, 813, 2, 1);
INSERT INTO public.games VALUES (337, 2018, 'Eighth-Final', 819, 815, 1, 0);
INSERT INTO public.games VALUES (338, 2018, 'Eighth-Final', 820, 812, 3, 2);
INSERT INTO public.games VALUES (339, 2018, 'Eighth-Final', 821, 816, 2, 0);
INSERT INTO public.games VALUES (340, 2018, 'Eighth-Final', 822, 811, 2, 1);
INSERT INTO public.games VALUES (341, 2018, 'Eighth-Final', 823, 814, 2, 1);
INSERT INTO public.games VALUES (342, 2018, 'Eighth-Final', 824, 817, 2, 1);
INSERT INTO public.games VALUES (343, 2018, 'Eighth-Final', 825, 810, 4, 3);
INSERT INTO public.games VALUES (344, 2014, 'Final', 825, 826, 1, 0);
INSERT INTO public.games VALUES (345, 2014, 'Third Place', 816, 827, 3, 0);
INSERT INTO public.games VALUES (346, 2014, 'Semi-Final', 827, 825, 1, 0);
INSERT INTO public.games VALUES (347, 2014, 'Semi-Final', 816, 826, 7, 1);
INSERT INTO public.games VALUES (348, 2014, 'Quarter-Final', 828, 827, 1, 0);
INSERT INTO public.games VALUES (349, 2014, 'Quarter-Final', 812, 825, 1, 0);
INSERT INTO public.games VALUES (350, 2014, 'Quarter-Final', 818, 816, 2, 1);
INSERT INTO public.games VALUES (351, 2014, 'Quarter-Final', 810, 826, 1, 0);
INSERT INTO public.games VALUES (352, 2014, 'Eighth-Final', 829, 816, 2, 1);
INSERT INTO public.games VALUES (353, 2014, 'Eighth-Final', 817, 818, 2, 0);
INSERT INTO public.games VALUES (354, 2014, 'Eighth-Final', 830, 810, 2, 0);
INSERT INTO public.games VALUES (355, 2014, 'Eighth-Final', 831, 826, 2, 1);
INSERT INTO public.games VALUES (356, 2014, 'Eighth-Final', 821, 827, 2, 1);
INSERT INTO public.games VALUES (357, 2014, 'Eighth-Final', 832, 828, 2, 1);
INSERT INTO public.games VALUES (358, 2014, 'Eighth-Final', 819, 825, 1, 0);
INSERT INTO public.games VALUES (359, 2014, 'Eighth-Final', 833, 812, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (810, 'France');
INSERT INTO public.teams VALUES (811, 'Croatia');
INSERT INTO public.teams VALUES (812, 'Belgium');
INSERT INTO public.teams VALUES (813, 'England');
INSERT INTO public.teams VALUES (814, 'Russia');
INSERT INTO public.teams VALUES (815, 'Sweden');
INSERT INTO public.teams VALUES (816, 'Brazil');
INSERT INTO public.teams VALUES (817, 'Uruguay');
INSERT INTO public.teams VALUES (818, 'Colombia');
INSERT INTO public.teams VALUES (819, 'Switzerland');
INSERT INTO public.teams VALUES (820, 'Japan');
INSERT INTO public.teams VALUES (821, 'Mexico');
INSERT INTO public.teams VALUES (822, 'Denmark');
INSERT INTO public.teams VALUES (823, 'Spain');
INSERT INTO public.teams VALUES (824, 'Portugal');
INSERT INTO public.teams VALUES (825, 'Argentina');
INSERT INTO public.teams VALUES (826, 'Germany');
INSERT INTO public.teams VALUES (827, 'Netherlands');
INSERT INTO public.teams VALUES (828, 'Costa Rica');
INSERT INTO public.teams VALUES (829, 'Chile');
INSERT INTO public.teams VALUES (830, 'Nigeria');
INSERT INTO public.teams VALUES (831, 'Algeria');
INSERT INTO public.teams VALUES (832, 'Greece');
INSERT INTO public.teams VALUES (833, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 359, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 833, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

