--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(4,1),
    name character varying(50) NOT NULL,
    diameter_in_km integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    solar_mass integer
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(4,1),
    name character varying(50) NOT NULL,
    diameter_in_km integer,
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(4,1),
    name character varying(50) NOT NULL,
    diameter_in_km integer,
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(4,1),
    name character varying(50) NOT NULL,
    diameter_in_km integer,
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Large spiral galaxy with many star systems', false, 13600, 2.5, 'Milky Way', 105700);
INSERT INTO public.galaxy VALUES (2, 'Bright neighboring spiral galaxy', false, 10000, 4.2, 'Andromeda', 220000);
INSERT INTO public.galaxy VALUES (3, 'Small irregular companion galaxy', false, 13000, 163.0, 'Large Magellanic Cloud', 14000);
INSERT INTO public.galaxy VALUES (4, 'Dwarf irregular galaxy near the Milky Way', false, 12000, 200.0, 'Small Magellanic Cloud', 7000);
INSERT INTO public.galaxy VALUES (5, 'Elliptical galaxy with older stars', false, 11500, 60.0, 'Centaurus A', 60000);
INSERT INTO public.galaxy VALUES (6, 'Spiral galaxy with a bright core', false, 13200, 31.0, 'Whirlpool Galaxy', 76000);
INSERT INTO public.galaxy VALUES (7, 'Barred spiral galaxy with active star formation', false, 11000, 29.3, 'Triangulum Galaxy', 60000);
INSERT INTO public.galaxy VALUES (8, 'Massive elliptical galaxy in a galaxy cluster', false, 12500, 53.5, 'Messier 87', 120000);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'Galaxy type with rotating spiral arms and a central bulge', 1000000000);
INSERT INTO public.galaxy_types VALUES (2, 'Elliptical', 'Galaxy type with an oval shape and mostly older stars', 2000000000);
INSERT INTO public.galaxy_types VALUES (3, 'Irregular', 'Galaxy type with no clear regular shape or structure', 500000000);
INSERT INTO public.galaxy_types VALUES (4, 'Lenticular', 'Galaxy type with a central bulge and disk but no clear spiral arms', 800000000);
INSERT INTO public.galaxy_types VALUES (5, 'Barred Spiral', 'Spiral galaxy type with a central bar-shaped structure', 1200000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Natural moon orbiting Earth', false, 4500, 0.0, 'Moon', 3475, 3);
INSERT INTO public.moon VALUES (2, 'Small moon orbiting Mars', false, 4500, 0.0, 'Phobos', 22, 4);
INSERT INTO public.moon VALUES (3, 'Small outer moon orbiting Mars', false, 4500, 0.0, 'Deimos', 12, 4);
INSERT INTO public.moon VALUES (4, 'Large moon orbiting Jupiter', false, 4500, 0.0, 'Io', 3643, 5);
INSERT INTO public.moon VALUES (5, 'Icy moon orbiting Jupiter', false, 4500, 0.0, 'Europa', 3122, 5);
INSERT INTO public.moon VALUES (6, 'Largest moon orbiting Jupiter', false, 4500, 0.0, 'Ganymede', 5268, 5);
INSERT INTO public.moon VALUES (7, 'Heavily cratered moon orbiting Jupiter', false, 4500, 0.0, 'Callisto', 4821, 5);
INSERT INTO public.moon VALUES (8, 'Large icy moon orbiting Saturn', false, 4500, 0.0, 'Titan', 5150, 6);
INSERT INTO public.moon VALUES (9, 'Bright icy moon orbiting Saturn', false, 4500, 0.0, 'Enceladus', 504, 6);
INSERT INTO public.moon VALUES (10, 'Icy moon orbiting Saturn', false, 4500, 0.0, 'Mimas', 396, 6);
INSERT INTO public.moon VALUES (11, 'Large moon orbiting Saturn', false, 4500, 0.0, 'Rhea', 1528, 6);
INSERT INTO public.moon VALUES (12, 'Icy moon orbiting Saturn', false, 4500, 0.0, 'Dione', 1123, 6);
INSERT INTO public.moon VALUES (13, 'Medium-sized moon orbiting Saturn', false, 4500, 0.0, 'Tethys', 1062, 6);
INSERT INTO public.moon VALUES (14, 'Large moon orbiting Uranus', false, 4500, 0.0, 'Titania', 1578, 7);
INSERT INTO public.moon VALUES (15, 'Icy moon orbiting Uranus', false, 4500, 0.0, 'Oberon', 1523, 7);
INSERT INTO public.moon VALUES (16, 'Moon orbiting Uranus', false, 4500, 0.0, 'Umbriel', 1169, 7);
INSERT INTO public.moon VALUES (17, 'Bright moon orbiting Uranus', false, 4500, 0.0, 'Ariel', 1158, 7);
INSERT INTO public.moon VALUES (18, 'Small moon orbiting Uranus', false, 4500, 0.0, 'Miranda', 472, 7);
INSERT INTO public.moon VALUES (19, 'Largest moon orbiting Neptune', false, 4500, 0.0, 'Triton', 2707, 8);
INSERT INTO public.moon VALUES (20, 'Small moon orbiting Neptune', false, 4500, 0.0, 'Nereid', 340, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Small rocky planet closest to the Sun', false, 4500, 0.0, 'Mercury', 4879, 1);
INSERT INTO public.planet VALUES (2, 'Hot rocky planet with thick atmosphere', false, 4500, 0.0, 'Venus', 12104, 1);
INSERT INTO public.planet VALUES (3, 'Rocky planet known to support life', true, 4500, 0.0, 'Earth', 12742, 1);
INSERT INTO public.planet VALUES (4, 'Red rocky planet with thin atmosphere', false, 4500, 0.0, 'Mars', 6779, 1);
INSERT INTO public.planet VALUES (5, 'Largest gas giant planet', false, 4500, 0.0, 'Jupiter', 139820, 1);
INSERT INTO public.planet VALUES (6, 'Gas giant planet with large rings', false, 4500, 0.0, 'Saturn', 116460, 1);
INSERT INTO public.planet VALUES (7, 'Ice giant planet with blue-green color', false, 4500, 0.0, 'Uranus', 50724, 1);
INSERT INTO public.planet VALUES (8, 'Distant blue ice giant planet', false, 4500, 0.0, 'Neptune', 49244, 1);
INSERT INTO public.planet VALUES (9, 'Rocky exoplanet orbiting Proxima Centauri', false, 4800, 4.2, 'Proxima Centauri b', 12000, 2);
INSERT INTO public.planet VALUES (10, 'Gas giant exoplanet orbiting Sirius', false, 240, 8.6, 'Sirius b Planet', 88000, 3);
INSERT INTO public.planet VALUES (11, 'Rocky exoplanet orbiting Vega', false, 455, 25.0, 'Vega Prime', 14000, 5);
INSERT INTO public.planet VALUES (12, 'Gas giant exoplanet orbiting Polaris', false, 300, 310.0, 'Polaris Giant', 90000, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Main sequence star closest to Earth', false, 4600, 0.0, 'Sun', 1392700, 1);
INSERT INTO public.star VALUES (2, 'Red dwarf star near the solar system', false, 4850, 4.2, 'Proxima Centauri', 200000, 1);
INSERT INTO public.star VALUES (3, 'Bright binary star system', false, 242, 8.6, 'Sirius', 2380000, 1);
INSERT INTO public.star VALUES (4, 'Orange giant star', false, 7100, 36.7, 'Arcturus', 35300000, 1);
INSERT INTO public.star VALUES (5, 'Blue-white main sequence star', false, 455, 25.0, 'Vega', 2362000, 1);
INSERT INTO public.star VALUES (6, 'Red supergiant star', false, 10, 548.0, 'Betelgeuse', 1234000000, 1);
INSERT INTO public.star VALUES (7, 'Blue supergiant star', false, 8, 860.0, 'Rigel', 109000000, 1);
INSERT INTO public.star VALUES (8, 'Bright yellow-white supergiant star', false, 300, 310.0, 'Polaris', 52000000, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 5, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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

