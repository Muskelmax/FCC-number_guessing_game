--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1702640224707', 2, 279);
INSERT INTO public.users VALUES ('user_1702640224708', 5, 196);
INSERT INTO public.users VALUES ('user_1702640267567', 2, 499);
INSERT INTO public.users VALUES ('user_1702640267568', 5, 248);
INSERT INTO public.users VALUES ('Max', 3, 3);
INSERT INTO public.users VALUES ('user_1702640460771', 2, 44);
INSERT INTO public.users VALUES ('user_1702640460772', 5, 327);
INSERT INTO public.users VALUES ('user_1702640563764', 2, 10);
INSERT INTO public.users VALUES ('user_1702640563765', 5, 223);
INSERT INTO public.users VALUES ('user_1702640587793', 2, 172);
INSERT INTO public.users VALUES ('user_1702640587794', 5, 147);
INSERT INTO public.users VALUES ('user_1702640725873', 2, 810);
INSERT INTO public.users VALUES ('user_1702640725874', 5, 501);


--
-- PostgreSQL database dump complete
--

