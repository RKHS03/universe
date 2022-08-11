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
    name character varying(60) NOT NULL,
    diameter integer,
    constellation text,
    age_in_billion numeric
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    exist boolean,
    orbit_period numeric
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
    name character varying(60) NOT NULL,
    star_id integer,
    life boolean,
    no_of_moon integer
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying NOT NULL,
    palnet_id integer,
    natural_satellite boolean
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    diameter integer,
    age numeric
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', 100000, 'Sagittarius', 13.61);
INSERT INTO public.galaxy VALUES (2, 'Antennae', NULL, 'corvus', NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 220000, 'andromeda', 10.01);
INSERT INTO public.galaxy VALUES (4, 'Backward', NULL, 'centaurus', NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', NULL, 'Coma Berenices', NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', NULL, 'Vigro', NULL);
INSERT INTO public.galaxy VALUES (7, 'LMC', 14000, 'Doado/Mensa', 101);
INSERT INTO public.galaxy VALUES (8, 'Cartwheel', NULL, 'Sculptor', NULL);
INSERT INTO public.galaxy VALUES (9, 'Cigar', 37000, 'Ursa Major', 13.3);
INSERT INTO public.galaxy VALUES (10, 'Pinwheel', 170000, 'Ursa Major', 0.21);
INSERT INTO public.galaxy VALUES (11, 'Sombrero', 50000, 'Vigro', 13.25);
INSERT INTO public.galaxy VALUES (12, 'Whirlpool', 60000, 'Canes Venatici', 0.4);
INSERT INTO public.galaxy VALUES (13, 'Tadpole', 2780000, 'Draco', 0.1);
INSERT INTO public.galaxy VALUES (14, 'NGC 1300', 110000, 'Eridanus', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, true, 27.322);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, true, 1.2624);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, true, 0.3189);
INSERT INTO public.moon VALUES (4, 'Adrastea', 5, true, 0.298);
INSERT INTO public.moon VALUES (5, 'Aitne', 5, true, 736);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, true, 0.498);
INSERT INTO public.moon VALUES (7, 'Ananke', 5, true, 631);
INSERT INTO public.moon VALUES (8, 'Aoede', 5, true, 748.8);
INSERT INTO public.moon VALUES (9, 'Arche', 5, true, 715.6);
INSERT INTO public.moon VALUES (10, 'Autonoe', 5, true, 753);
INSERT INTO public.moon VALUES (11, 'Callisto', 5, true, 16.689);
INSERT INTO public.moon VALUES (12, 'Carme', 5, true, 692);
INSERT INTO public.moon VALUES (13, 'Callirrhoe', 5, true, 774);
INSERT INTO public.moon VALUES (14, 'Carpo', 5, true, 456.5);
INSERT INTO public.moon VALUES (15, 'Chaldene', 5, true, 741);
INSERT INTO public.moon VALUES (16, 'Cyllene', 5, true, 737.8);
INSERT INTO public.moon VALUES (17, 'Elara', 5, true, 259.65);
INSERT INTO public.moon VALUES (18, 'Erinome', 5, true, 672);
INSERT INTO public.moon VALUES (19, 'Euanthe', 5, true, 622);
INSERT INTO public.moon VALUES (20, 'Titan', 6, false, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2, false, 0);
INSERT INTO public.planet VALUES (2, 'Venus', 2, false, 0);
INSERT INTO public.planet VALUES (3, 'Earth', 2, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, false, 80);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, false, 83);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, false, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, false, 14);
INSERT INTO public.planet VALUES (9, 'Xfotious', 6, true, 0);
INSERT INTO public.planet VALUES (10, 'Cyrofett', 9, true, 6);
INSERT INTO public.planet VALUES (12, 'Logenuphenus', 8, true, 0);
INSERT INTO public.planet VALUES (11, 'Jargoba', 5, false, 94);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Europa', 5, true);
INSERT INTO public.satellite VALUES (2, 'Sao', 8, true);
INSERT INTO public.satellite VALUES (3, 'TRS', 3, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirious', 1, 2400000, 23000000);
INSERT INTO public.star VALUES (2, 'The Sun', 1, 1392700, 460300000);
INSERT INTO public.star VALUES (3, 'Algenib', 3, 6678700, 18700000);
INSERT INTO public.star VALUES (4, 'Theta Draconis', 13, 1854815, 2000000000);
INSERT INTO public.star VALUES (5, 'Alpheratz', 5, 1148070, 47000000);
INSERT INTO public.star VALUES (6, 'Mirach', 8, 139140000, 164000000);
INSERT INTO public.star VALUES (7, 'Almach', 4, 55664000, 235000000);
INSERT INTO public.star VALUES (8, 'Adhil', 2, 5862378, 3000000);
INSERT INTO public.star VALUES (9, 'Nembus', 3, 29915100, 57000000);
INSERT INTO public.star VALUES (10, 'Sol', 3, 1392700, 173000000);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: moon name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_moon UNIQUE (name);


--
-- Name: planet name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_planet UNIQUE (name);


--
-- Name: star name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

