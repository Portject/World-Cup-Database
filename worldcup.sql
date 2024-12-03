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
    round character varying(50) NOT NULL,
    year integer NOT NULL,
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

INSERT INTO public.games VALUES (283, 'Final', 2018, 838, 839, 4, 2);
INSERT INTO public.games VALUES (284, 'Third Place', 2018, 840, 841, 2, 0);
INSERT INTO public.games VALUES (285, 'Semi-Final', 2018, 839, 841, 2, 1);
INSERT INTO public.games VALUES (286, 'Semi-Final', 2018, 838, 840, 1, 0);
INSERT INTO public.games VALUES (287, 'Quarter-Final', 2018, 839, 842, 3, 2);
INSERT INTO public.games VALUES (288, 'Quarter-Final', 2018, 841, 843, 2, 0);
INSERT INTO public.games VALUES (289, 'Quarter-Final', 2018, 840, 844, 2, 1);
INSERT INTO public.games VALUES (290, 'Quarter-Final', 2018, 838, 845, 2, 0);
INSERT INTO public.games VALUES (291, 'Eighth-Final', 2018, 841, 846, 2, 1);
INSERT INTO public.games VALUES (292, 'Eighth-Final', 2018, 843, 847, 1, 0);
INSERT INTO public.games VALUES (293, 'Eighth-Final', 2018, 840, 848, 3, 2);
INSERT INTO public.games VALUES (294, 'Eighth-Final', 2018, 844, 849, 2, 0);
INSERT INTO public.games VALUES (295, 'Eighth-Final', 2018, 839, 850, 2, 1);
INSERT INTO public.games VALUES (296, 'Eighth-Final', 2018, 842, 851, 2, 1);
INSERT INTO public.games VALUES (297, 'Eighth-Final', 2018, 845, 852, 2, 1);
INSERT INTO public.games VALUES (298, 'Eighth-Final', 2018, 838, 853, 4, 3);
INSERT INTO public.games VALUES (299, 'Final', 2014, 854, 853, 1, 0);
INSERT INTO public.games VALUES (300, 'Third Place', 2014, 855, 844, 3, 0);
INSERT INTO public.games VALUES (301, 'Semi-Final', 2014, 853, 855, 1, 0);
INSERT INTO public.games VALUES (302, 'Semi-Final', 2014, 854, 844, 7, 1);
INSERT INTO public.games VALUES (303, 'Quarter-Final', 2014, 855, 856, 1, 0);
INSERT INTO public.games VALUES (304, 'Quarter-Final', 2014, 853, 840, 1, 0);
INSERT INTO public.games VALUES (305, 'Quarter-Final', 2014, 844, 846, 2, 1);
INSERT INTO public.games VALUES (306, 'Quarter-Final', 2014, 854, 838, 1, 0);
INSERT INTO public.games VALUES (307, 'Eighth-Final', 2014, 844, 857, 2, 1);
INSERT INTO public.games VALUES (308, 'Eighth-Final', 2014, 846, 845, 2, 0);
INSERT INTO public.games VALUES (309, 'Eighth-Final', 2014, 838, 858, 2, 0);
INSERT INTO public.games VALUES (310, 'Eighth-Final', 2014, 854, 859, 2, 1);
INSERT INTO public.games VALUES (311, 'Eighth-Final', 2014, 855, 849, 2, 1);
INSERT INTO public.games VALUES (312, 'Eighth-Final', 2014, 856, 860, 2, 1);
INSERT INTO public.games VALUES (313, 'Eighth-Final', 2014, 853, 847, 1, 0);
INSERT INTO public.games VALUES (314, 'Eighth-Final', 2014, 840, 861, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (838, 'France');
INSERT INTO public.teams VALUES (839, 'Croatia');
INSERT INTO public.teams VALUES (840, 'Belgium');
INSERT INTO public.teams VALUES (841, 'England');
INSERT INTO public.teams VALUES (842, 'Russia');
INSERT INTO public.teams VALUES (843, 'Sweden');
INSERT INTO public.teams VALUES (844, 'Brazil');
INSERT INTO public.teams VALUES (845, 'Uruguay');
INSERT INTO public.teams VALUES (846, 'Colombia');
INSERT INTO public.teams VALUES (847, 'Switzerland');
INSERT INTO public.teams VALUES (848, 'Japan');
INSERT INTO public.teams VALUES (849, 'Mexico');
INSERT INTO public.teams VALUES (850, 'Denmark');
INSERT INTO public.teams VALUES (851, 'Spain');
INSERT INTO public.teams VALUES (852, 'Portugal');
INSERT INTO public.teams VALUES (853, 'Argentina');
INSERT INTO public.teams VALUES (854, 'Germany');
INSERT INTO public.teams VALUES (855, 'Netherlands');
INSERT INTO public.teams VALUES (856, 'Costa Rica');
INSERT INTO public.teams VALUES (857, 'Chile');
INSERT INTO public.teams VALUES (858, 'Nigeria');
INSERT INTO public.teams VALUES (859, 'Algeria');
INSERT INTO public.teams VALUES (860, 'Greece');
INSERT INTO public.teams VALUES (861, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 314, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 861, true);


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

