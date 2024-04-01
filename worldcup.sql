--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

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
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
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
    name text NOT NULL
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

INSERT INTO public.games VALUES (180, 2018, 'Final', 1051, 1052, 4, 2);
INSERT INTO public.games VALUES (181, 2018, 'Third Place', 1053, 1054, 2, 0);
INSERT INTO public.games VALUES (182, 2018, 'Semi-Final', 1052, 1054, 2, 1);
INSERT INTO public.games VALUES (183, 2018, 'Semi-Final', 1051, 1053, 1, 0);
INSERT INTO public.games VALUES (184, 2018, 'Quarter-Final', 1052, 1055, 3, 2);
INSERT INTO public.games VALUES (185, 2018, 'Quarter-Final', 1054, 1056, 2, 0);
INSERT INTO public.games VALUES (186, 2018, 'Quarter-Final', 1053, 1057, 2, 1);
INSERT INTO public.games VALUES (187, 2018, 'Quarter-Final', 1051, 1058, 2, 0);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 1054, 1059, 2, 1);
INSERT INTO public.games VALUES (189, 2018, 'Eighth-Final', 1056, 1060, 1, 0);
INSERT INTO public.games VALUES (190, 2018, 'Eighth-Final', 1053, 1061, 3, 2);
INSERT INTO public.games VALUES (191, 2018, 'Eighth-Final', 1057, 1062, 2, 0);
INSERT INTO public.games VALUES (192, 2018, 'Eighth-Final', 1052, 1063, 2, 1);
INSERT INTO public.games VALUES (193, 2018, 'Eighth-Final', 1055, 1064, 2, 1);
INSERT INTO public.games VALUES (194, 2018, 'Eighth-Final', 1058, 1065, 2, 1);
INSERT INTO public.games VALUES (195, 2018, 'Eighth-Final', 1051, 1066, 4, 3);
INSERT INTO public.games VALUES (196, 2014, 'Final', 1067, 1066, 1, 0);
INSERT INTO public.games VALUES (197, 2014, 'Third Place', 1068, 1057, 3, 0);
INSERT INTO public.games VALUES (198, 2014, 'Semi-Final', 1066, 1068, 1, 0);
INSERT INTO public.games VALUES (199, 2014, 'Semi-Final', 1067, 1057, 7, 1);
INSERT INTO public.games VALUES (200, 2014, 'Quarter-Final', 1068, 1069, 1, 0);
INSERT INTO public.games VALUES (201, 2014, 'Quarter-Final', 1066, 1053, 1, 0);
INSERT INTO public.games VALUES (202, 2014, 'Quarter-Final', 1057, 1059, 2, 1);
INSERT INTO public.games VALUES (203, 2014, 'Quarter-Final', 1067, 1051, 1, 0);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 1057, 1070, 2, 1);
INSERT INTO public.games VALUES (205, 2014, 'Eighth-Final', 1059, 1058, 2, 0);
INSERT INTO public.games VALUES (206, 2014, 'Eighth-Final', 1051, 1071, 2, 0);
INSERT INTO public.games VALUES (207, 2014, 'Eighth-Final', 1067, 1072, 2, 1);
INSERT INTO public.games VALUES (208, 2014, 'Eighth-Final', 1068, 1062, 2, 1);
INSERT INTO public.games VALUES (209, 2014, 'Eighth-Final', 1069, 1073, 2, 1);
INSERT INTO public.games VALUES (210, 2014, 'Eighth-Final', 1066, 1060, 1, 0);
INSERT INTO public.games VALUES (211, 2014, 'Eighth-Final', 1053, 1074, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1051, 'France');
INSERT INTO public.teams VALUES (1052, 'Croatia');
INSERT INTO public.teams VALUES (1053, 'Belgium');
INSERT INTO public.teams VALUES (1054, 'England');
INSERT INTO public.teams VALUES (1055, 'Russia');
INSERT INTO public.teams VALUES (1056, 'Sweden');
INSERT INTO public.teams VALUES (1057, 'Brazil');
INSERT INTO public.teams VALUES (1058, 'Uruguay');
INSERT INTO public.teams VALUES (1059, 'Colombia');
INSERT INTO public.teams VALUES (1060, 'Switzerland');
INSERT INTO public.teams VALUES (1061, 'Japan');
INSERT INTO public.teams VALUES (1062, 'Mexico');
INSERT INTO public.teams VALUES (1063, 'Denmark');
INSERT INTO public.teams VALUES (1064, 'Spain');
INSERT INTO public.teams VALUES (1065, 'Portugal');
INSERT INTO public.teams VALUES (1066, 'Argentina');
INSERT INTO public.teams VALUES (1067, 'Germany');
INSERT INTO public.teams VALUES (1068, 'Netherlands');
INSERT INTO public.teams VALUES (1069, 'Costa Rica');
INSERT INTO public.teams VALUES (1070, 'Chile');
INSERT INTO public.teams VALUES (1071, 'Nigeria');
INSERT INTO public.teams VALUES (1072, 'Algeria');
INSERT INTO public.teams VALUES (1073, 'Greece');
INSERT INTO public.teams VALUES (1074, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 211, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1074, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams team_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT team_unique UNIQUE (name);


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

