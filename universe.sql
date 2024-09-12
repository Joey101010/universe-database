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
    name character varying(100) NOT NULL,
    galaxy_type character varying(50),
    distance_from_earth numeric,
    description text
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
    name character varying(100) NOT NULL,
    planet_id integer,
    description text,
    diameter numeric
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
    name character varying(100) NOT NULL,
    planet_type character varying(50),
    is_spherical boolean,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    star_id integer,
    description text
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(100) NOT NULL,
    location character varying(100),
    capacity integer,
    planet_id integer
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_type character varying(50),
    age_in_millions_of_years integer,
    galaxy_id integer,
    description text
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
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 'The nearest major galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, 'Third-largest galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 23000000, 'A famous face-on spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral', 29000000, 'A galaxy with a bright nucleus and large central bulge');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'Spiral', 21000000, 'A galaxy in the constellation Ursa Major');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 'The only natural satellite of Earth', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'One of the two moons of Mars', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'The smaller and outermost moon of Mars', NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'The most volcanically active moon in the Solar System, orbiting Jupiter', NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'An icy moon of Jupiter with a subsurface ocean', NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'The largest moon in the Solar System, orbiting Jupiter', NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'The second-largest moon of Jupiter, heavily cratered', NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 'Saturn’s largest moon with a thick atmosphere', NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 'Saturn’s icy moon with geysers of water vapor', NULL);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 'Saturn’s moon that resembles the Death Star', NULL);
INSERT INTO public.moon VALUES (11, 'Tethys', 6, 'A moon of Saturn with a large crater and icy surface', NULL);
INSERT INTO public.moon VALUES (12, 'Dione', 6, 'An icy moon of Saturn with evidence of geological activity', NULL);
INSERT INTO public.moon VALUES (13, 'Iapetus', 6, 'A moon of Saturn with a distinctive two-tone coloration', NULL);
INSERT INTO public.moon VALUES (14, 'Miranda', 7, 'The smallest and innermost moon of Uranus', NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 'One of Uranus’ larger moons, with a heavily cratered surface', NULL);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 'A moon of Uranus with a dark, heavily cratered surface', NULL);
INSERT INTO public.moon VALUES (17, 'Titania', 7, 'The largest moon of Uranus', NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, 'The second-largest moon of Uranus', NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 8, 'The largest moon of Neptune, orbits in the opposite direction of its planet', NULL);
INSERT INTO public.moon VALUES (20, 'Nereid', 8, 'A distant moon of Neptune with a highly eccentric orbit', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', true, false, 4500, 57.9, 1, 'Closest planet to the Sun');
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', true, false, 4500, 108.2, 1, 'Second planet from the Sun, with a thick atmosphere');
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, true, 4500, 149.6, 1, 'Our home planet');
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', true, false, 4500, 227.9, 1, 'The Red Planet');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', true, false, 4500, 778.5, 1, 'The largest planet in the Solar System');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', true, false, 4500, 1429, 1, 'Known for its prominent ring system');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', true, false, 4500, 2871, 1, 'The planet with a tilted axis');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', true, false, 4500, 4495, 1, 'The farthest known planet in our Solar System');
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Exoplanet', true, NULL, 2000, 600, 2, 'Potentially habitable exoplanet in the Kepler system');
INSERT INTO public.planet VALUES (10, 'Proxima b', 'Exoplanet', true, NULL, 4700, 4.24, 6, 'Orbiting Proxima Centauri, closest exoplanet to Earth');
INSERT INTO public.planet VALUES (11, 'Gliese 581c', 'Exoplanet', true, NULL, 4700, 20.37, 2, 'One of the first potentially habitable exoplanets discovered');
INSERT INTO public.planet VALUES (12, 'HD 189733b', 'Gas Giant', true, false, 1000, 63, 3, 'A gas giant known for its deep blue color');


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'International Space Station', 'Low Earth Orbit', 6, 3);
INSERT INTO public.space_station VALUES (2, 'Lunar Gateway', 'Orbit around the Moon', 4, 3);
INSERT INTO public.space_station VALUES (3, 'Mars Base Alpha', 'Surface of Mars', 10, 4);
INSERT INTO public.space_station VALUES (4, 'Europa Base', 'Subsurface of Europa', 5, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main-sequence', 4600, 1, 'The star at the center of our solar system');
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type main-sequence', 242, 1, 'The brightest star in the night sky');
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'G-type', 4600, 2, 'A triple star system located 4.37 light-years away');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red supergiant', 8000, 1, 'A red supergiant star nearing the end of its life');
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue supergiant', 10000, 3, 'One of the brightest stars in Orion');
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'Red dwarf', 4700, 2, 'The closest star to the Sun');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_station_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_station_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: space_station unique_station_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT unique_station_name UNIQUE (name);


--
-- Name: moon moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: space_station space_station_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

