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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(20),
    description text,
    description2 text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: just_for_fun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.just_for_fun (
    just_for_fun_id integer NOT NULL,
    email character varying(50) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.just_for_fun OWNER TO freecodecamp;

--
-- Name: just_for_fun_just_for_fun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.just_for_fun_just_for_fun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.just_for_fun_just_for_fun_id_seq OWNER TO freecodecamp;

--
-- Name: just_for_fun_just_for_fun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.just_for_fun_just_for_fun_id_seq OWNED BY public.just_for_fun.just_for_fun_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_of_years integer,
    planet_types character varying(30),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric(6,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: just_for_fun just_for_fun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_fun ALTER COLUMN just_for_fun_id SET DEFAULT nextval('public.just_for_fun_just_for_fun_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'Spiral', 'Our galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombero', 'Spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 'Spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', NULL, NULL);


--
-- Data for Name: just_for_fun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.just_for_fun VALUES (1, 'sulthanwf@gmail.com', '-');
INSERT INTO public.just_for_fun VALUES (2, 'sulthanwfa@gmail.com', '-');
INSERT INTO public.just_for_fun VALUES (3, 'sulthanwfab@gmail.com', '-');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'Io', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Dione', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Ariel', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (12, 'Oberon', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'Miranda', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Ophelia', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Portia', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Larissa', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (17, 'Triton', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (18, 'Neso', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Dia', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (19, 'Callisto2', NULL, NULL, NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 4543, 'Terrestial', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, true, 4603, 'Terrestial', 1);
INSERT INTO public.planet VALUES (3, 'Mercury', false, true, 4503, 'Terrestial', 1);
INSERT INTO public.planet VALUES (4, 'Venus', true, false, 4503, 'Terrestial', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'CoRoT-7b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Gliese 581', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-452b', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4603, 151.27, 1);
INSERT INTO public.star VALUES (2, 'Beta Andromedae', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Delta Andromedae', NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'Iota Andromedae', NULL, NULL, 2);
INSERT INTO public.star VALUES (5, 'Alpha Andromedae', NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'Xi Andromedae', NULL, NULL, 2);
INSERT INTO public.star VALUES (7, 'Upsilon Andromedae', NULL, NULL, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: just_for_fun_just_for_fun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.just_for_fun_just_for_fun_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: just_for_fun just_for_fun_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_fun
    ADD CONSTRAINT just_for_fun_email_key UNIQUE (email);


--
-- Name: just_for_fun just_for_fun_email_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_fun
    ADD CONSTRAINT just_for_fun_email_key1 UNIQUE (email);


--
-- Name: just_for_fun just_for_fun_just_for_fun_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_fun
    ADD CONSTRAINT just_for_fun_just_for_fun_id_key UNIQUE (just_for_fun_id);


--
-- Name: just_for_fun just_for_fun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.just_for_fun
    ADD CONSTRAINT just_for_fun_pkey PRIMARY KEY (just_for_fun_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

