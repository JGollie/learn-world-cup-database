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

INSERT INTO public.games VALUES (244, 2018, 'Final', 1219, 1220, 4, 2);
INSERT INTO public.games VALUES (245, 2018, 'Third Place', 1221, 1222, 2, 0);
INSERT INTO public.games VALUES (246, 2018, 'Semi-Final', 1220, 1222, 2, 1);
INSERT INTO public.games VALUES (247, 2018, 'Semi-Final', 1219, 1221, 1, 0);
INSERT INTO public.games VALUES (248, 2018, 'Quarter-Final', 1220, 1223, 3, 2);
INSERT INTO public.games VALUES (249, 2018, 'Quarter-Final', 1222, 1224, 2, 0);
INSERT INTO public.games VALUES (250, 2018, 'Quarter-Final', 1221, 1225, 2, 1);
INSERT INTO public.games VALUES (251, 2018, 'Quarter-Final', 1219, 1226, 2, 0);
INSERT INTO public.games VALUES (252, 2018, 'Eighth-Final', 1222, 1227, 2, 1);
INSERT INTO public.games VALUES (253, 2018, 'Eighth-Final', 1224, 1228, 1, 0);
INSERT INTO public.games VALUES (254, 2018, 'Eighth-Final', 1221, 1229, 3, 2);
INSERT INTO public.games VALUES (255, 2018, 'Eighth-Final', 1225, 1230, 2, 0);
INSERT INTO public.games VALUES (256, 2018, 'Eighth-Final', 1220, 1231, 2, 1);
INSERT INTO public.games VALUES (257, 2018, 'Eighth-Final', 1223, 1232, 2, 1);
INSERT INTO public.games VALUES (258, 2018, 'Eighth-Final', 1226, 1233, 2, 1);
INSERT INTO public.games VALUES (259, 2018, 'Eighth-Final', 1219, 1234, 4, 3);
INSERT INTO public.games VALUES (260, 2014, 'Final', 1235, 1234, 1, 0);
INSERT INTO public.games VALUES (261, 2014, 'Third Place', 1236, 1225, 3, 0);
INSERT INTO public.games VALUES (262, 2014, 'Semi-Final', 1234, 1236, 1, 0);
INSERT INTO public.games VALUES (263, 2014, 'Semi-Final', 1235, 1225, 7, 1);
INSERT INTO public.games VALUES (264, 2014, 'Quarter-Final', 1236, 1237, 1, 0);
INSERT INTO public.games VALUES (265, 2014, 'Quarter-Final', 1234, 1221, 1, 0);
INSERT INTO public.games VALUES (266, 2014, 'Quarter-Final', 1225, 1227, 2, 1);
INSERT INTO public.games VALUES (267, 2014, 'Quarter-Final', 1235, 1219, 1, 0);
INSERT INTO public.games VALUES (268, 2014, 'Eighth-Final', 1225, 1238, 2, 1);
INSERT INTO public.games VALUES (269, 2014, 'Eighth-Final', 1227, 1226, 2, 0);
INSERT INTO public.games VALUES (270, 2014, 'Eighth-Final', 1219, 1239, 2, 0);
INSERT INTO public.games VALUES (271, 2014, 'Eighth-Final', 1235, 1240, 2, 1);
INSERT INTO public.games VALUES (272, 2014, 'Eighth-Final', 1236, 1230, 2, 1);
INSERT INTO public.games VALUES (273, 2014, 'Eighth-Final', 1237, 1241, 2, 1);
INSERT INTO public.games VALUES (274, 2014, 'Eighth-Final', 1234, 1228, 1, 0);
INSERT INTO public.games VALUES (275, 2014, 'Eighth-Final', 1221, 1242, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1219, 'France');
INSERT INTO public.teams VALUES (1220, 'Croatia');
INSERT INTO public.teams VALUES (1221, 'Belgium');
INSERT INTO public.teams VALUES (1222, 'England');
INSERT INTO public.teams VALUES (1223, 'Russia');
INSERT INTO public.teams VALUES (1224, 'Sweden');
INSERT INTO public.teams VALUES (1225, 'Brazil');
INSERT INTO public.teams VALUES (1226, 'Uruguay');
INSERT INTO public.teams VALUES (1227, 'Colombia');
INSERT INTO public.teams VALUES (1228, 'Switzerland');
INSERT INTO public.teams VALUES (1229, 'Japan');
INSERT INTO public.teams VALUES (1230, 'Mexico');
INSERT INTO public.teams VALUES (1231, 'Denmark');
INSERT INTO public.teams VALUES (1232, 'Spain');
INSERT INTO public.teams VALUES (1233, 'Portugal');
INSERT INTO public.teams VALUES (1234, 'Argentina');
INSERT INTO public.teams VALUES (1235, 'Germany');
INSERT INTO public.teams VALUES (1236, 'Netherlands');
INSERT INTO public.teams VALUES (1237, 'Costa Rica');
INSERT INTO public.teams VALUES (1238, 'Chile');
INSERT INTO public.teams VALUES (1239, 'Nigeria');
INSERT INTO public.teams VALUES (1240, 'Algeria');
INSERT INTO public.teams VALUES (1241, 'Greece');
INSERT INTO public.teams VALUES (1242, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 275, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1242, true);


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

