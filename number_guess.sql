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
    guesses integer NOT NULL,
    user_id integer
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
    name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 171, 4);
INSERT INTO public.games VALUES (2, 127, 5);
INSERT INTO public.games VALUES (3, 325, 5);
INSERT INTO public.games VALUES (4, 409, 4);
INSERT INTO public.games VALUES (5, 159, 4);
INSERT INTO public.games VALUES (6, 933, 4);
INSERT INTO public.games VALUES (7, 134, 6);
INSERT INTO public.games VALUES (8, 884, 6);
INSERT INTO public.games VALUES (9, 117, 7);
INSERT INTO public.games VALUES (10, 925, 7);
INSERT INTO public.games VALUES (11, 947, 6);
INSERT INTO public.games VALUES (12, 522, 6);
INSERT INTO public.games VALUES (13, 618, 6);
INSERT INTO public.games VALUES (14, 491, 8);
INSERT INTO public.games VALUES (15, 768, 8);
INSERT INTO public.games VALUES (16, 380, 9);
INSERT INTO public.games VALUES (17, 903, 9);
INSERT INTO public.games VALUES (18, 102, 8);
INSERT INTO public.games VALUES (19, 245, 8);
INSERT INTO public.games VALUES (20, 182, 8);
INSERT INTO public.games VALUES (21, 960, 23);
INSERT INTO public.games VALUES (22, 97, 24);
INSERT INTO public.games VALUES (23, 897, 24);
INSERT INTO public.games VALUES (24, 302, 23);
INSERT INTO public.games VALUES (25, 979, 23);
INSERT INTO public.games VALUES (26, 711, 23);
INSERT INTO public.games VALUES (27, 292, 26);
INSERT INTO public.games VALUES (28, 205, 27);
INSERT INTO public.games VALUES (29, 547, 27);
INSERT INTO public.games VALUES (30, 339, 26);
INSERT INTO public.games VALUES (31, 773, 26);
INSERT INTO public.games VALUES (32, 888, 26);
INSERT INTO public.games VALUES (33, 741, 28);
INSERT INTO public.games VALUES (34, 244, 29);
INSERT INTO public.games VALUES (35, 439, 29);
INSERT INTO public.games VALUES (36, 340, 28);
INSERT INTO public.games VALUES (37, 474, 28);
INSERT INTO public.games VALUES (38, 850, 28);
INSERT INTO public.games VALUES (39, 471, 30);
INSERT INTO public.games VALUES (40, 645, 30);
INSERT INTO public.games VALUES (41, 43, 31);
INSERT INTO public.games VALUES (42, 8, 31);
INSERT INTO public.games VALUES (43, 69, 30);
INSERT INTO public.games VALUES (44, 722, 30);
INSERT INTO public.games VALUES (45, 829, 30);
INSERT INTO public.games VALUES (46, 189, 32);
INSERT INTO public.games VALUES (47, 415, 33);
INSERT INTO public.games VALUES (48, 982, 33);
INSERT INTO public.games VALUES (49, 235, 32);
INSERT INTO public.games VALUES (50, 247, 32);
INSERT INTO public.games VALUES (51, 84, 32);
INSERT INTO public.games VALUES (52, 883, 34);
INSERT INTO public.games VALUES (53, 976, 35);
INSERT INTO public.games VALUES (54, 547, 35);
INSERT INTO public.games VALUES (55, 601, 34);
INSERT INTO public.games VALUES (56, 359, 34);
INSERT INTO public.games VALUES (57, 183, 34);
INSERT INTO public.games VALUES (58, 350, 36);
INSERT INTO public.games VALUES (59, 939, 36);
INSERT INTO public.games VALUES (60, 610, 37);
INSERT INTO public.games VALUES (61, 116, 37);
INSERT INTO public.games VALUES (62, 83, 36);
INSERT INTO public.games VALUES (63, 932, 36);
INSERT INTO public.games VALUES (64, 243, 36);
INSERT INTO public.games VALUES (65, 499, 38);
INSERT INTO public.games VALUES (66, 822, 39);
INSERT INTO public.games VALUES (67, 763, 39);
INSERT INTO public.games VALUES (68, 290, 38);
INSERT INTO public.games VALUES (69, 912, 38);
INSERT INTO public.games VALUES (70, 477, 38);
INSERT INTO public.games VALUES (71, 571, 40);
INSERT INTO public.games VALUES (72, 228, 41);
INSERT INTO public.games VALUES (73, 928, 41);
INSERT INTO public.games VALUES (74, 657, 40);
INSERT INTO public.games VALUES (75, 832, 40);
INSERT INTO public.games VALUES (76, 866, 40);
INSERT INTO public.games VALUES (77, 695, 42);
INSERT INTO public.games VALUES (78, 769, 42);
INSERT INTO public.games VALUES (79, 674, 43);
INSERT INTO public.games VALUES (80, 252, 43);
INSERT INTO public.games VALUES (81, 921, 42);
INSERT INTO public.games VALUES (82, 486, 42);
INSERT INTO public.games VALUES (83, 457, 42);
INSERT INTO public.games VALUES (84, 461, 44);
INSERT INTO public.games VALUES (85, 554, 44);
INSERT INTO public.games VALUES (86, 651, 45);
INSERT INTO public.games VALUES (87, 118, 45);
INSERT INTO public.games VALUES (88, 622, 44);
INSERT INTO public.games VALUES (89, 871, 44);
INSERT INTO public.games VALUES (90, 652, 44);
INSERT INTO public.games VALUES (91, 47, 46);
INSERT INTO public.games VALUES (92, 173, 47);
INSERT INTO public.games VALUES (93, 128, 47);
INSERT INTO public.games VALUES (94, 70, 46);
INSERT INTO public.games VALUES (95, 790, 46);
INSERT INTO public.games VALUES (96, 359, 46);
INSERT INTO public.games VALUES (97, 957, 48);
INSERT INTO public.games VALUES (98, 473, 49);
INSERT INTO public.games VALUES (99, 513, 49);
INSERT INTO public.games VALUES (100, 184, 48);
INSERT INTO public.games VALUES (101, 503, 48);
INSERT INTO public.games VALUES (102, 227, 48);
INSERT INTO public.games VALUES (103, 825, 50);
INSERT INTO public.games VALUES (104, 903, 50);
INSERT INTO public.games VALUES (105, 824, 51);
INSERT INTO public.games VALUES (106, 211, 51);
INSERT INTO public.games VALUES (107, 761, 50);
INSERT INTO public.games VALUES (108, 946, 50);
INSERT INTO public.games VALUES (109, 513, 50);
INSERT INTO public.games VALUES (110, 255, 52);
INSERT INTO public.games VALUES (111, 765, 53);
INSERT INTO public.games VALUES (112, 839, 53);
INSERT INTO public.games VALUES (113, 116, 52);
INSERT INTO public.games VALUES (114, 220, 52);
INSERT INTO public.games VALUES (115, 767, 52);
INSERT INTO public.games VALUES (116, 19, 16);
INSERT INTO public.games VALUES (117, 281, 54);
INSERT INTO public.games VALUES (118, 259, 54);
INSERT INTO public.games VALUES (119, 729, 55);
INSERT INTO public.games VALUES (120, 821, 55);
INSERT INTO public.games VALUES (121, 875, 54);
INSERT INTO public.games VALUES (122, 426, 54);
INSERT INTO public.games VALUES (123, 880, 54);
INSERT INTO public.games VALUES (124, 653, 56);
INSERT INTO public.games VALUES (125, 244, 56);
INSERT INTO public.games VALUES (126, 351, 57);
INSERT INTO public.games VALUES (127, 660, 57);
INSERT INTO public.games VALUES (128, 861, 56);
INSERT INTO public.games VALUES (129, 305, 56);
INSERT INTO public.games VALUES (130, 19, 56);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1684378540211');
INSERT INTO public.users VALUES (2, 'user_1684378540210');
INSERT INTO public.users VALUES (3, 'libo');
INSERT INTO public.users VALUES (4, 'user_1684379205014');
INSERT INTO public.users VALUES (5, 'user_1684379205013');
INSERT INTO public.users VALUES (6, 'user_1684379238878');
INSERT INTO public.users VALUES (7, 'user_1684379238877');
INSERT INTO public.users VALUES (8, 'user_1684379311924');
INSERT INTO public.users VALUES (9, 'user_1684379311923');
INSERT INTO public.users VALUES (10, 'user_1684379734062');
INSERT INTO public.users VALUES (11, 'user_1684379734061');
INSERT INTO public.users VALUES (12, 'user_1684379964202');
INSERT INTO public.users VALUES (13, 'user_1684379964201');
INSERT INTO public.users VALUES (14, 'user_1684380274960');
INSERT INTO public.users VALUES (15, 'user_1684380274959');
INSERT INTO public.users VALUES (16, 'harsha');
INSERT INTO public.users VALUES (17, 'user_1684380312416');
INSERT INTO public.users VALUES (18, 'user_1684380312415');
INSERT INTO public.users VALUES (19, 'user_1684380334007');
INSERT INTO public.users VALUES (20, 'user_1684380334006');
INSERT INTO public.users VALUES (21, 'user_1684380435769');
INSERT INTO public.users VALUES (22, 'user_1684380435768');
INSERT INTO public.users VALUES (23, 'user_1684380472492');
INSERT INTO public.users VALUES (24, 'user_1684380472491');
INSERT INTO public.users VALUES (25, 'shawn');
INSERT INTO public.users VALUES (26, 'user_1684380668712');
INSERT INTO public.users VALUES (27, 'user_1684380668711');
INSERT INTO public.users VALUES (28, 'user_1684380715844');
INSERT INTO public.users VALUES (29, 'user_1684380715843');
INSERT INTO public.users VALUES (30, 'user_1684380750760');
INSERT INTO public.users VALUES (31, 'user_1684380750759');
INSERT INTO public.users VALUES (32, 'user_1684380846419');
INSERT INTO public.users VALUES (33, 'user_1684380846418');
INSERT INTO public.users VALUES (34, 'user_1684380987024');
INSERT INTO public.users VALUES (35, 'user_1684380987023');
INSERT INTO public.users VALUES (36, 'user_1684381046433');
INSERT INTO public.users VALUES (37, 'user_1684381046432');
INSERT INTO public.users VALUES (38, 'user_1684381095200');
INSERT INTO public.users VALUES (39, 'user_1684381095199');
INSERT INTO public.users VALUES (40, 'user_1684381140583');
INSERT INTO public.users VALUES (41, 'user_1684381140582');
INSERT INTO public.users VALUES (42, 'user_1684381160153');
INSERT INTO public.users VALUES (43, 'user_1684381160152');
INSERT INTO public.users VALUES (44, 'user_1684381215532');
INSERT INTO public.users VALUES (45, 'user_1684381215531');
INSERT INTO public.users VALUES (46, 'user_1684381236564');
INSERT INTO public.users VALUES (47, 'user_1684381236563');
INSERT INTO public.users VALUES (48, 'user_1684381298886');
INSERT INTO public.users VALUES (49, 'user_1684381298885');
INSERT INTO public.users VALUES (50, 'user_1684381331844');
INSERT INTO public.users VALUES (51, 'user_1684381331843');
INSERT INTO public.users VALUES (52, 'user_1684381363353');
INSERT INTO public.users VALUES (53, 'user_1684381363352');
INSERT INTO public.users VALUES (54, 'user_1684381462761');
INSERT INTO public.users VALUES (55, 'user_1684381462760');
INSERT INTO public.users VALUES (56, 'user_1684381493074');
INSERT INTO public.users VALUES (57, 'user_1684381493073');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 130, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 57, true);


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

