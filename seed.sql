--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO bassopediauser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO bassopediauser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO bassopediauser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO bassopediauser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO bassopediauser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO bassopediauser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO bassopediauser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO bassopediauser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO bassopediauser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO bassopediauser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO bassopediauser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO bassopediauser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: bassopedia_bassist; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.bassopedia_bassist (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    image_url text NOT NULL,
    artists_played_with character varying(100) NOT NULL,
    notable_basses character varying(200) NOT NULL,
    type_of_basses_played character varying(100) NOT NULL,
    genre_id integer NOT NULL
);


ALTER TABLE public.bassopedia_bassist OWNER TO bassopediauser;

--
-- Name: bassopedia_bassist_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.bassopedia_bassist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bassopedia_bassist_id_seq OWNER TO bassopediauser;

--
-- Name: bassopedia_bassist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.bassopedia_bassist_id_seq OWNED BY public.bassopedia_bassist.id;


--
-- Name: bassopedia_genre; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.bassopedia_genre (
    id integer NOT NULL,
    genre character varying(100) NOT NULL
);


ALTER TABLE public.bassopedia_genre OWNER TO bassopediauser;

--
-- Name: bassopedia_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.bassopedia_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bassopedia_genre_id_seq OWNER TO bassopediauser;

--
-- Name: bassopedia_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.bassopedia_genre_id_seq OWNED BY public.bassopedia_genre.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO bassopediauser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO bassopediauser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO bassopediauser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO bassopediauser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO bassopediauser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: bassopediauser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO bassopediauser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bassopediauser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: bassopediauser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO bassopediauser;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: bassopedia_bassist id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.bassopedia_bassist ALTER COLUMN id SET DEFAULT nextval('public.bassopedia_bassist_id_seq'::regclass);


--
-- Name: bassopedia_genre id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.bassopedia_genre ALTER COLUMN id SET DEFAULT nextval('public.bassopedia_genre_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add bassist	7	add_bassist
26	Can change bassist	7	change_bassist
27	Can delete bassist	7	delete_bassist
28	Can view bassist	7	view_bassist
29	Can add genre	8	add_genre
30	Can change genre	8	change_genre
31	Can delete genre	8	delete_genre
32	Can view genre	8	view_genre
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$6SzlR0iwqNQI$MLGDMvst8gncwCgYtA24hiEvg3DCHawUKSs/TMSU6dY=	2020-09-05 23:18:36.413293-04	t	jamesnascimento			j@j.com	t	t	2020-09-04 21:50:43.795835-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: bassopedia_bassist; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.bassopedia_bassist (id, name, image_url, artists_played_with, notable_basses, type_of_basses_played, genre_id) FROM stdin;
1	Ray Brown	data:image/jpeg;base64,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	Ella Fitzgerald, Charlie Parker, Oscar Peterson	His bass	Upright Bass	1
2	Roger Waters	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAHsATAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAEDBAYCB//EADwQAAEDAwIEBAMEBgsAAAAAAAECAxEABAUSIQYTMUEiUWGBcZHRFDKxwQcVIzSh8BYkM0JSU2JykrLC/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECBAMF/8QAHhEAAgIDAQEBAQAAAAAAAAAAAAECEQMhMRJBcSL/2gAMAwEAAhEDEQA/APK4p6eKUUhDU8U9dBJUQACSdgBSA4pVpWOGEfZybq9Db4EqbQ2VBH+5XY0Mv8Pc2TBdeHhCtO3nQMGRUlurS6DXFLvSasadOw2NwDUhUJqCwUHUQetSqSQetYmqdHoJ2rAkUqeKeK3nmjAVqeAsQnJXty6udFu2JMbAqO2/sazEVq+Dr9zDXSRatNZB+9ASbVKikpIJgE6SO9TLmi4VezSWz9u5k718g8m3IS4pQBBB2+fSaj49xyW8G7cWgSGyUa0x0hX1in4XvL1zJXdm7bqt21rLik8tXgk/dk9tgJA6UU44fCMLeW7GlTymtJQNglHUnf3rOrUzXNRljtHjdKujTGBuTArSYi1j3eW7HY0VJkzXNxwpmLCwXe5GyuLVIQHG0qRJUk9yAZT77jvVVi41NietZ8sbdo1YZ6plCKUV1FPFaTIMkeITRjhNtbnEmKDa06l3SNU9hO8+1DQ0eWF+fSo1q0iQaGrQ06Z6srNY+0zGQdC27doJHMUvpzJIP4fxrDcU59zK3T67cqRauaQQrYuR3PkPSs2Eqcc7laj1PWat5BHLQlA+HsK5RxqLs75MzmqSoqxIrS8KYNdy41fvoXyeZpaSG9YcMd/JPmo+29C8Tibi/tnHmWnlBKgBpbJBHff0kbetaa34gteHErtfsxdvG06CtsgBJAgBR6mP4VOaUkqh0WOC7PhPxHxC3i2bnGttly9dtw06vmKU00CmISlUwY/I1gAogQDUlw+5cvuPvq1OOKKlHzJqOnjxKMafSZ5PTtFgj3pq7rkyJKJJHT1ruciySA0ps9UxtQ9ZKnPQVp+IMcxjcvd2bCyvlJTqJ7K0jUPYz86zSxCzSWxtUWsY1zr1IA8KBqJrpxp/JXot7RBcccVoaSO/89a5tVrYtlKbbUVPK0JKRuT0AHrW2t7djgbBnIX6Uqy9ynS01/g9PbufT0rnOfn9LjGwrj7BWNt7Cw+0JLdmAlakKI0vGVGRMx4u3Y9D0rI/pIf5/EqjyQ2pLDYWru4YmSe/WJ8gKJ8KIurrELya3mjdvXerxiTCQST8DJHrFDP0gWa2MmxcreLirlqTq2IKT+G4rnC1OmaMu8SoytKnpV3MhbQlJ1aiRttAmT61bxAbayTFxdJJtrZxLr0CdgoQPcwPeqoMahuCQABFFMiwq1w1gllJP2om5c8zAKW59PvKpsaX0jNwu9yd0+4rWp4KWpXmSae2s2GrZeRvUywgwhH+YfpUOFYXcXi2WgohQI1ERpA7nyr0nAcPMPBt+6CU2lrKv2gBSoBJHintvPxii1CNsHcnSA/CmIYxmN/pLnWkMJaSTasbjqSQYO2oyQIGw361huJMpeZ/JuXlyevhbROyE9hWl/SFmbvLZFLDTTjeOZkMgiAsjqo/MVn7PE3Vw244EpQhtOrUuQCPQxB+HrXLHFt+2VN0vKJ8JlzYPMIfI5DciSmSlJMkD4/nVLMZBWSv3LiFJb2S0hStWhA2A/P4mpn8eBiV3weBU2+GlNgdiCZ+YihdX5Sdic240KlSpqogIJ13TjTIbC3Vw2ggmVEmBPzij1xdMfrINT+yaaNu1PdKUae3mfxoZw1dJteIsdcKAIRcokHoATH4Gjd/iGLbiFFrzCvS4HW1ltQkEglMnqKT6Wl/LNa3Y4/GWxDDYStzxFXVTiok7+/0qLiPIZJWIYxlqxygpo8xxoal658O0gARvJJ3+dCuEeIGssnGMXgULtgOaknYLWANC/8AipYieu/lQrivi4B+7s7BKlvKOhbp+6iOoHmf533A6SipLZyTcXoyrtu7aqQOY0pIK0p0OhW4MGR1G/mBNT26/MEH50LZc0qiTPcz1ojbnUetCBkl1duNWrtokp5b6kqXI3lPSKG1cyaYWgwdPrVOpfRrgqVNNNSGXVISpgvc1GouaOV/eiJ1fDtWsGQVecMpyj63FXdgpDBcMRp5jemfMkKIn/Qe8mshpCmC5rGtKgCkwJBGxG+/Qz5bedF7O+W1wxkGG0JKi4yslQJnS82UiOnc06HbRqr/AB1pwRgXhyrh24f1ONOhoctlSvCE6juDAHn515atai4VEkq6knufOtNxDkv17ePC0VcM2KFF1Lb7ynFrcI3UZJCe/hGwmsusQo02Skcg0VxiiSPWhYSdOrsVRRHGH+sIHYUIGWcp91v4mh9Xsqd2/f8AKqFD6C4PTUqapGTA9R5ijXD4Cm7kEymEkj4KB/8ANAz1o7gv3e49v+i/pTAG2El5QHQoNCntlQesVobFltKW3AnxlMzNZ+6/tjT+ASJ0/YCB15sn2A+tWcdKrxJH3R1PtVRn92c+P5VexuyER3+tJAyXKD7nnJofNEMts4ihx7030S4PTTTUqkZ//9k=	Pink Floyd	Fender Precision Bass Roger Waters' Signature	Electric Bass	2
3	Ron Carter	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAGMAYwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAGAAMEBQcBAv/EAEAQAAIBAwIDBQUFBQUJAAAAAAECAwAEEQUhEjFBBhNRYYEUInGRoRUyQlKxI3KiwdEHsuHw8RYkNENTYmOCkv/EABkBAAIDAQAAAAAAAAAAAAAAAAIDAAEEBf/EACERAAICAgICAwEAAAAAAAAAAAABAhEDIRIxIkEEMlEj/9oADAMBAAIRAxEAPwDPFS4YY7xPkam20XdwoXwZC5BYeGOVMacPabyOEMqhjux6CtS7M3PZ7S1jia3juJHwDIyht/WuXxctPSOlddGZzbMv7wqJYaW2rx3NpCqe0PwiF3OOElgDv4YJrWu2um9m9SWSPSojFq0CrKVtLc8JGQMPyGN926fSsz7Ngi6uACwPdtgqcEHyPQ1Eni9kvmto8a12Xu9P7JNJdpKl1aXhW4V4yAVYEq4JGTupGeVCdtYXE8feRAAA4BJxW7SqdYV+7iik+0bHuLxo1k4pTwgcXhgFQRnHNvE1kulxFbEKw4WBII8871qnkeONoRGKk6Y5ZJOg4bohpODmD02xTrDanlX9uuf+mP0WvMke9YZSt2Oqj3pqAyEeRqn1BPeGB+I1eaauJvpVVfqQyjoJD+lHjfkU1ohTJheVRJBV1Pb5Jqunh4TT8c0A1RyNcoNqVOwjEYxXKKwaO8bxqWVsHxB6UZwINIKXEsTXCcIBA9zc8iCeYoUe9kY5Mcfyop0/SNeubMQ3EzmDh44rdjug5j035ZoeDmqQ1SUXbC7SO1enW+mz+wLDp06qCbi44pck/dQDIJO5OPKhmz37YxyLxcV0iyScUHc+8ThiF6AkEj41E0m5ls9SFm9hLcTO/DHEqHJOOnn/AFqc+pT3vaaxS6sXs3gUxKHDKzJxZAPFucb/ADoZr+eyJ+ZK/s+1S6S+v7OW5ka0LcARnOAwJ2x5g/JRQ/a9ndVBu7a0sLy6FtPIrSJEz7ZJBJA5kb+tTuygZLvVyo96GfjB/LhiD9DRTqkUlxdC5bUr/wBnhXEcUMRCDP5WJHFuc7A/Gik+eOn6KjGsmgEjjJliIUkGAZOPJada1ffCHlRHriJZMlxCfcmGC7RYZmXnkdDuPKqX7VycNg/+orFJpOhlMi2cEiXCe6wyeoqt1KPCsxBGJDj5VcvfHiBRjnoMCoizRiRnnXBD5wRyOKuMldojRGb3sMVOPhUKeIkE8Jx8KuWuY+n90VDnuQQdsegoovegWiDHCeAYU0qXtD590vjypU8CjR/7L+wsV8sOvasha2zm1t5F2kP52B6eA68/DOialp8QIGEGfuNyOfD/AD/KhHSdd1yWTitoolsYwFVGIVFXoB8BtV8dctLvu7a8WCSCdgisw41SYbrn1AIPlTVKK6Bab7KG/wBJlk12yu0iZJYZPdnDcnAyoYfl57+OB1ozvJo7zS1maJXGA/C4zj0PKq6xuReyuTB7Nf2x4bm24s8PTKn8SEbqf0IxUu0jBN3Zk8OHJBxnCuOL9SR6Uc5OTtgpJGZ6toaaYdentX/3W6tpHw2/dvgkr/Mf4VBmga/0CPWopJGnCBpA0jNlTvjc7AeHlRjdzpDrz6ZdBJrO5jKSqoJMvMcI6gdcjyHWolpo1vpMl1o1s5e0ZWaJS2SikkhCfEZb0AocUU00/YWSTVNA5A0mrRPpkc3GkUmY3LOFVxscdQDkjw5HbnVLfWU1tdNBcpLE681LHNeLiSW01GddiRKSUYZB38KkvcyXEERmCjBJAUY54/oKz5IxStdjrbdkK2jC3CtxNlDkZY1Hvmy0x4ve73P1p+R+Enh8ar7xt58n8YP1pcU2yMuIoLdrdCyktwj8R3qHdQQgHCnH7xpm2uWKxKT+EUrqeJkPdSMxHPiXHy3oY452U5KjqIEUKoGByrtRhJkA56V2m0wTU9OXSdPWOC3VLYzqGInLCOUHlh81P1PT2utMnWCzNvKqd5GUUyJIVPEMODjO31qi7C6w99ovDIRKsJw0LRCQAdMZo1s57WC0e5LxR2g/5SQmLJ8NsZpyRGxvTpYdXjtZWkMGoRJ+xuE546qR+IHwqZDJ399OrEJeJEIpos7YJPA6/wDaTxDPpzBoPV3t5Zoojw9zLxIV6D/TFS9f1X2axs9YRSb22lCBlPONj+0RvIgfPB6ValfZUo/gMdu9VksNStjBBM8pjZCkbFM/dOGZfeA36EUx2Rv1W8iF1fq12/KxjQiO3jX8vTfiPn1NWuuX+hLf3tvrul+2PMTPFIhZWReAEKpBBBJH+NDOmaZax3X2rpdtexRQH9ol0ythPxYxvyzzp0I0kxUpW3El9tNNkHaSFIIyxuyFjCj70mcAfVR86sr/ALA69ZW087xIYIImkdskYCjJ2x4Cr+5982V2ODvYz7rsgcBxkcj612/1zVZdNuUFuGaeN4uPOVUEMDtjP4jyz9KHJjg35BReRx8TMCM/rUC8A4phnwNW32fdP3hCxLHGQHd5lXhz4gkH6ZqJcjTrWZ+8728cKCVGY4/n94/w1mxwfsZKVEKCKaXu4oInklkX3VUZOPH4efkamSBtOg1GxnlgZ5YlLCFlk4SrAgcQ28jgmoEt5cTwdy7usOSe5QkJ/wDPoOfhUXvHiEgQHEi8LbdK0R4pi3bPCzvwilTW/gaVXxRAk7C63PouorPFujngZTyPWteg7RafqFzbtcWN3NeAfs4AA0a+eNs+tY1oemC70S6lDcL98AhzyKgEf3jRP2W7VQR27WepBojIDFJcRLmQDqvxPLNBLvQSCO7WcO2oSXntXtM7h5lhMaFh0T8ygDGRtkU9bL9qQ3NrMuYpICo35NzB+lXWn9oNIuLFneCGCwjVYwJVDZUfdRV8dzyqwhstJltDdWE3skcnJ85APwO/pQ8bei+VKmZlrkDXeuK0Y4gkEQz4ZQf19KL+zVpa9ytnkPFKhWRwPvA7Uw3YnUImaa3ure8dlVBv3bcAXA2O3IDrTETX2iMsd5DJDIo6j3T5g8j6USm+SvpDYwjwfF7Z3Tg7aXLbTMTPauUdsYJZTwsfmp+dOyzDgUA48h49ar+z2om716+jkIzPLnGeZddv4lPqaZvbg2tx3bfd48Zzy/zz9ar5b/lzRPh+OVwY3fQWtxcMOEr7ueJdjn40DazZtaXDEj3SM5B5jxx08x0/QteZkLJv5eYqh15uOLA5g5A8c8x8ia5/x80nOn0zf8jDGUL9oG5JW6P/ABVGeRsffPzrw/UbHBIpk11oxOQ2ey5z94/OlTNdplC7NP7IQp/s1bxsuC5eQn4sQPoBVPreiuZ3uLIlJ/xp0fz+NEugmM2GYBL3JC8PfMC+OBdieWa93kAfls46HrWVtqTHraAexv57eYLPCO8BwTJtw0SWms3Eao9z3hiBypz7i/DpXJ7a2lkAuIUbhPUYI9artXtymm3EMZ9zgBXywRsaHTZfQW22u3DkPFeElt9n5elEtv8A2gLpfBZX3BLIijLBwynIB5r8aw611ARRB1/GvC22Tjwp2W+EltlAQFOCcUVzjpIbHHCW5M3pJrXXXVr2GOC5JLW08eONWU7r5jYHzyeRoR7dWrW19KVA4WIcEcsbZx81+VAt/r88ljbXNjK0d5b3ZkCpkkKcFTnH5gR6+daFq4u9X0mK61BILW5LvG0MlygwnJWHEds5JweRpqi5wcWJm1jyKUQVeQd2kg543qi1GfiyMZwavEs3ECRPNZKRzJvIdvk1Q30UASTS6lpRQAnuxfJxN5Dp9a5uDBJS2jo5c8K7Aq49yaROWGIptcPIqlgoLAFjyHnV1e2mnyTcU+pRKASAtvHx7fvEj+dR5LXROHEd7dcW27ImPlmuukceUthJD2BheJH+0S3EoPEiDB+FKqmC9W0iWC27TOsSbKPZm2+tKg4z/SWvwNOzpI0hMeP8qlXrsF2Jzkb+tKlWeX2Y+P1RV/fePi3ySDnrUa//AODux/4x+oNKlVLst9AFZAGKTPQj+dWsYCQEKMArvSpU7N2H8X6Hi2JjMjps3dSHPwO1VTktjiJO2N6VKih2xefpDLY8BXMDwpUqcYjhrlKlVkFSpUqhD//Z	Miles Davis, Art Farmer, Jim Hall	His bass	Upright Bass, Electric Bass	1
4	John Myung	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAIUAyAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIEBQYDBwj/xABAEAACAQMCBAQDBQYEBAcAAAABAgMABBEFIQYSMUETIlFhMnGBBxRCkaEVI1JiscEkctHwgpKi4RYXMzRDU7L/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAiEQACAgIDAAMBAQEAAAAAAAAAAQIRAyESMUEEIlETQjL/2gAMAwEAAhEDEQA/APHaKM0CqJFANKeY9TSZoGe9AhRt6mlzTeh6mnBSd+1ABnNIAacABT4kaV+WMZJ7UWAwAClxV5Z6XpmcX1/Lk/ihTyAfM7/p/pR+xLeQhYL+1PMRtz8zfPBAJ/T5Dvk80U6Nlgm1aKPPpSVNu9PNncy280n76I4aJkKOD7g7fkTUMjFaKSfRnKLi6YlKcUlKFJpkiU5UzTgoHWkd+wG9AA7BNlFIicx5jSqpPWnMQBgUAI7dkphIXYbk9aCcCk+EAnrQAHydB5j+lPwIo89XP60qJyDxZO/SmE83nfp+EUANJwmOpNOjSk6f5z09qc58NQo6nrQA2ZskIp+ZooRcAlutFAHLFKKKKQC0u3uaTej6igBwJ7DHzpck96bSjFMAHvUmBljwpHXzEewrgm7Y/wBikRhJl9xk/p2/371EmXFFqkjTdANhkjOxPv7Vb8P27TanbPyBlgIYhl+P1zjpVM+mXsWmRagYsWcrBAxODn/Tb8xXpmnaXF908ISYDICkpUCWI4GxB+Jc+/MO2e2GSaOnFB9hxrpFvr+ijULNopbuxQyIUcFniHxJt12yR8iO9eRuDzkAbda9oXTJRZagZoEvL2SIy8sB5fHChvLsfrj1G3evH7lBbsIy6vIFHOV/iO5H0zin8d6on5K3ZwEf8WKdnGwppYmk+XWuk5QLZ2pVXl3NAAUZPWgkmgBS2NhTKOlIT60AGfWukUYb95Idh0FEUfO3Mcco71M07Tr/AFy9FhpNs083KXKqQMKOpJOwG9AEF28Vv5BSxqZXHIrNk4VVGST7CtVZ8BaqTepfhLZbWNiwjcSSNgZBVR8QIB9M/pV0+hafY8P21190WKVW8QrqXNE5wDhgFIYvsPJzYy4wRip5FcX6ecRMDjk88hHRRk0iDJDHfPSthrmv2RuVlsLeW1CxKjwI4VSw7nGMnBUHA7dTWTlKrI3ICAzEqD+EZ2H5U07E0kc5DRSKOc+3rRTEMo3opaQAAfWikooQDvpS5OKQU6NWkOI0d/XkUn+lOwSbHkckDer9D7U1YykcxfZlXAA/iJA/vXZ7S7By1rOFA6+G39hXXR4ra/1CG0urmGztS4M0twSu2dwDisb9NuNa6NqLjxuGbEXUdk8En7qWSGMpKObcc+5GDnY46kDatZpTxrGEUo0W2AcGqLgtRecPyaQZIrjx4XdVt5A7BQxypA3BGxqvvBfcNoJ1c3dswyeUEMoH4j2x+Xyrilt0ehCkrNZrKR29rdTx292t1HE8sN1AcIrKpwzYYEqOnQ+teM+EUVQQF8uQMg7fnWz1rjS31XRZoUtZYbyVBGG2K4PxtnseUFQB/F7ViSMHpXX8eLUdnF8mSctC0ZA6UlFdBzBvRQSAMk4Aqy0TQ9Q127uLXTolM9vbvcSJK3IeRcZ69/MNqB0VZrpHHk5f4asdL0DVNSupLa10+4aWPHiCRPDEWdxzlsBcjf3rY6dwjp9gofU5F1G5Bz4MZKwKewJO79Ns4B9COsSyRj2XDFKb0YzT9Lv9aJXTYOaFDiSdjyxp829cdhk+1bfQLCLhuFo0leW5lYNIykor4BAXbcqCc42OcH1An3+oR2lsk1xNBFboOVFIwq46AIN/y/rtWM1LiuWZzHo8Rt4uzzBXkxjHT4QO3r/eFKUn1o1nCGNd7Nja3EMlxeWczWtiLstdSXAj5QzehI/DuS3fAOM7ms7Dqmqa9bQSXlkWstOh57i/itmcxRsBnOW3GBnA+eD0GOkfAVFOQv5D6dK0qca3sPBMvDcECIlxI7XV2zF5JlJ+EA9NgFzvsNq040Ycr7K7irShofEF3ZC6F3GhDxTKwPiKwDAnG2cGqZgScZ3NLhUXYAAeldYYtuduppkiBQBjoB+tFLKQTjt2oosKItFLSYNABS0mKPlQB1hjD5zgAdTUoXcoQKCRgY22z77d6j5xGqKdjv8AOmMeU4HalV9l3S0WlvcyPhhzk46xsQ35iluInmTnE7yf51AP1quglZFBXG3rVha3gkBDGKPHd32PzqGmnaNoyUlxkQGXldS2xByrLsVPYj0q1ueJNYudNlsLi8MscihS8qBpSo6L4mObH1rjdQSKeZo9z15dwfljtUQxlUxIMc3TO1V9ZGTUoaORlVeWORguBnJPXf8ArVsOGdfktUvI9FvXtnXmWVI+cMPUcuainRbma2S6mMNrbyMoSW6fkLA9GCgFiv8AMBirjhDWNe0SaaDhrUZrmKNwGQKFtzk4Jy+ykn4SQPl2ov8AAS/TMg5yB1BwR3Hzp1e2XvD+mfaHw9FqQ8G21pA0b3MXKRzr2kC7FSMH1GdqxujcAiMLPxFccqHdba0cEt836YP8ufmKX9EuxrDKX/JjdOsb3UrwW+mW8txcqPE5YRkoB+InooG259q9utI/H1Sz4j1LwRr1rB4F+lu4MVxGcZb/AIQf+5AGa5rldJ05oNDg+6C33WOAcuSO7dSQBkknJ+Y3rvpGq6TqE5muWFrfKShMS/u5VIBIZBnfHUD1yMjesJ5XJWujphijjdS7LPX4JU06aR2f/BSCJudhyvEQpVj64B5ST/D7V5xq3F8FuzR6SniyEENLJvGM9cZ3bt19u4re8Z6rBNwxrKSwqtq9kw5+bDF+YBQB8yPzrwxtzvsBTwxjP7MnNlnD6ofc3FxfzeNdSvI5/Ex6ew9BXNmCjlTp3NITtgHam4rq0jj2J708A8nN3P6CiKIu3MfhFPmbfw4xk58x9TRYCxR85DMMKuyrTppBnlXr7Ux9gFDFmb0oSNowXBB9c1Ix6RrHu27mikEw80jbN2FFILImaTejNGT2pgJSoUyeZlyOgJ71M0bTpdX1KCxhYI0hPNK3SNQMlj8hmvZNIn0uwtksLSW0S2Uciw/d1kd+5LMc5J6nbvWWTKoao2xYHk6PGHj5AS2BnpkdahyNsOYjrXr+p8JcJ3swmMstgzH94tqoRG/PIX6VHsZeEdAuCmlaQ13PkCO6nXxsP822G3oPrUrPFrSLlgafZU/Z9wGNaKajriSxabt4USvyPcn2J6L79T2q54l+z7Sr+7J4fuY9Nu8ebTb3mjV98ZRjkgH6jPpVZxDq7atNPD+0oYzA58xnVF5wpGAfQbdPSs3qOuzzw28UmuTXE9nJi3eTJWNcDJB5d8npk4wD6ipTm2WoQqg1jSuIOHXS3vYZbVXLeGY+Qo2OuGGfUVWSsbdoLid4pZ5Mnw5FLBVx5XPY53wPbJG4rVa1q0vE2n6dGNLkk1W1nGJpAqRTxYzymLm82/LuOoz8qj6LwJf6tcSSancx2cSEGUyuDL5th5fw57Z39Aa0Ulx2ZyjK6XRTafbtqErz30ks3M4i6l3lYDZR3O2Om/QDrttbDhCaeBG1W4jtbF0PLaRjcHr22Lrj3x6H4q0Gl2Gl6LbLb6ZAVbGDNOpZnJztjqSenL7fDnNFzdsVa45wxKgNJLJ5WJJxvjbJwFOCebYhah5W1UTSPx0nymx9tFZaVpostHtzb2pJkKhuZ5cD4yCd/qfkVxgQdS1S006P7zqM/KHHMgXzNcdvKOufc4HXf1n2+j32owsba+trJ2bKvcxMz83ZuQHyN2zknbpXmkPDeu6vrd9beCZbqCYx3d1NJiNWBxkufXsAOnaojGMtyZpPM4rjBHTWOKry+Hg2XNZ2gHKBkGVh6M3p7DAFaD7PUvV0iRJLR/usl2LmG4fyjnACkg9Tkcw9DvUnTOENJ0lll1GVNTu1/wDjK4gRvl1b67e1TNa18yCTllENtCgM9w+6gDoqqOpPQD+2aU8qkuEETDHNPnkZWfaJqCppMVsuee7nUkH/AOuIdP8AmYflWKa0iuLGBrSK8+8eGvPzlPCZ8kkg5yBjl2x1zTNbv5dYumnK8qKiwQqSPImTjPuWYk47mri1VREirnA/mI/t6V04ocYqJzZJtycinXSb9yAVRf8AM3+lPk057GW1eWVCzksFRTsF7kn1q/VMb8h/6j/WqrWpfB1GZmUf4WBUC4x5jv8A3P5VbVEKcmV4YLC7PJhwzDPKSGPfH/euCLgDbzNvynt71ay2lvFz2ioSyJGHc9TIUDMfzqv5CCo2LE5c9l9qVhKNJP8ARVUFyAct1Z+1G0rbbIOp9aDmT9zDgKD5m9aS4cRryJ0HpQScZiZpeVe2w+VFSrWHwkaSTGSPyooArM0oPp+fpTcnO2/yp7BouZG6kjFAzT8H20UYvruS5jOYVhCxnBy55iDkDcBO2Rv1q/W5kjQxW6pCmMH3+dYvh/W20ieY+GJYJ4+Vk2yrD4XGcjIyev8AEalPxMeUAWpYAb882P6D+9ZSg5M2jk4o01xrMdrFzSsX5d8AdT7VUy68b62mfU7y4itjlYbSy5Q7k/xsfhAH5+21Z+bU5L1wjqkUOcyC2XLcvc+Ynt7gV34UsbfVNdgsJ7+K1WZiEllQsrnsmM7c2469accSWwlllJUQ7jRNRs5bSK5tfClu4hLErEZ5euSPw7b79jmru04RluZOVG8O3VDKbiRfPLHsAyR52XJxzMwU5GSK9J1LTdNm1ybUoreMalIeZpp3OZFOEHLnKR7gj4S223oae6uPuE3h38lxEuzJchQjRuRg5Dk522wzPJ5idh8WrM1pnLS7qDSLtZ9OQyXTJzeM7+K0idvMcErnG45U6fvG6VZFE1mKO70p1S4hHP8AdhlcqepTYZB26YU75LAYEHVdOYxXN5fvDaTo3iSCQqsMz9nTIIBJDYL5YDGAN8ZrTLnUZL0SWU/3eSOQma4ST93AvQvIxJ5zj+I75wO2MWl4dC5f6L284kWGxma7sJJLpJxbESMEjyVJ5WzgkEAZwMdOvlasRr+u3OrrH94kYlFLsNwokOd1HbblGepOTnernUIbvVpIwLkfdI8nxruQxvPKespGDjooAOMKoHXNQG0S4jvQ0up6QspPP4E8jLkH+VkAIIPy71qomEsl+nsd1q9tpMca3lwoumgRpMjd2wATnoMkHrWevdVvHjUXC+FGSSqDyxjv12yT61k2N1FKqXcqXEyQoRLHlgY8YAPy6fUHvXCa7traATFFhRj5QsY533/CPT3O3zO1ecsLjJ3tnof1Tgn0jQz3zzv4FopdiCWYHHz37D1OwrJcS6ml1IlnZyh7S3PNzjpLIRgsP5R0H1PeoN7qs91C1uv7q3Y5aNTu/wDmP4vl09u9Q080i83cj6jNdmLDx2+zjy5nk+seiZHGQ9vCNsMXb6D/AL1fxdBmRsegJP8ASqfTkMt87EZ8NQDj33P9RV5GpQZZMD1bNbR6M8zXKl4dYY1kkQFGALYJKdvqazaBdTvkU+WK8uyxwMYjHX/pzV7Ldxw2100UluJhCeVByliSMDG/vVBbKYjKYxvDa8ie0j4Uf/pj9KJGaRL066E9w15cKMSSTXTofTBwPzwKruUxqiZBbGWb196m3bw28PKuyqADkfhXoPqd/pS3FnqWlSR3F9bXVqCVdJGUiMlgGUBvhO2Dse1RH9N8rVqK8K8XECjkWZOUfEcjJotljlYyuyhF3UZrXWf2h8QSGT9oXQuIihAMkcKMCe+fDOamabxbdNps2oSWBuraKQRPI9pbOisQSPwBsYBye1Myow11OJPIh8tFamPi2G4uJ5bvSrF7fn8qfs23bCY6fh3zj6UlFhRk7hYdMvGSOUztFIjxShcI64B6HrvTknsWsrgOlxJeyLhZCB4cZMisSO+cAj/iNO1Ji0kQbl8kYVTjfA6D6VDYkAkZJq6Is4CF2J8657709rRQBiXJI38pGOtJGzF9tvWu65C7/WgLLtOKNYFl9y+8xLbmIxFEtYxlcYO+M5wetQ9Kgiv7RtNmVUmj5pFmwcqdhv6qdtvrVeXHKcMOYdO9ay0TSboePau4cywRo4K/eRKy4KspIDR8x/CCduvQUej8LjSeJNTtbJYtchhl8DIF0N+f08Qj4TtgS8pIBOeuRdXF3ZtYSrFfMUii5raSOLneTA2URHKsvlPm5ubPcAbZmW/t9Luja61bXljIrFY7hoCY3APbuPcAsM5rp4OiyIVj1bT2jYHKLOFBB67Mox1O1OosnlJeEKQXLBF1a00aCCFSttK93cPE+NwFCzfDsDnGMY26VJlu7oExQF7e7tH8SK5WJY7cvzgjkjXYHlLDm3PXcZpObh20iVZ9UgaJTkRQvznPrvnf3zVPrPEOnKoj0iEyZyTJKDsSffc/oKOKQcpM73tzFa26m4bxCowEPlaeQ9yB0XJyfkB3rJzeLJN4lwQ7E5LZ2/37UNK9xcc9y/OSN8+ntTlVRkxnY7EUm7KSotIHtjDGYjKudmiiiAJPfDZGO29a+2+zCfU4lutO4gtp45FVueaJ8kH3Gc7f72rAWt5JayjbmiOzqF3x/rW94c4pi0zSZYbjUL2G0EgaI2iBipbJYb9NwOvcmsZ8ltHRHjJbRMl+yO4hhPicR2KXDD91G8LKrN2BJOQPoaxlzotzo+ova62wsrmI/wDpE7n3B6EfLNbO1444Jtma4m0LU9Qu2yTJeMjnfruztt7dKmS/bVHAETTOG41SMYj8a4+Ae2BVR5ekScPDMaZorOMWunardc58xiinKt9VAHp3q5Xg3iKUj9ncKRRSdp74xgj5Asf1rhefbPxVcArDHptuD0KwM5H/ADMR+lUtz9pPGNycya5NGPSGOOMfotPiV/Z1SRpYPsi4rvGZ7+50+AuMc4ldmTf+FVwdtsZFWP8A5TxWkhk1niq3t+YDIWNY+md8u3vXl15r2sXwIvNW1CdW+IPcuQfpnFVfKn8I/KqMW77PcNI4S4IsroXMPET31zZsHP8AiouVT2yMY9e9XmkLpmr6nd6e1paXUEDeNaGScXCKAVGQoJVD5jsBsPnXzoArbEDHyrX8DcXf+EjMVtPvPOSwHicmMrg9j3wfpQI254s+zi8lBfTbaSZ/xS6cPrlj6Va8Q6hwjwpdDTNR0uCITRGTwrawDKwJKkkgjry9PlWWm+0LhO9Vhq3CglYkkMsULEfI7H86n61xfwHxUsf7ZW+E8QYQO6NGFJHTKE7ZA7GjQWyfod5wNxBfix0vQrMy8rN++05EGwzj54B/I0VA0C04C0/V4NS0fiKRJYmBEVxcABu+DlQcUU1RLv8ATyuQSSsPEmjVhgYJAP5AUv3OQ7Fxv0yT/averO60+3t5NGttP02O3MZMtkYAOZe+e5rJfaFwpp9lpTarplkmneEyho0J5JUO2wJ2cEg7daTfhpx1o8uNknPtKx9eZa62sMXIVaMcyHByM5/Ou5Hm9BmkV/35Uj+bP5UyLONw+D4abBfT1q5tNHL6DZ6rCx5nmuopAT08NFYYx02JrP8ANzszfxHNa/To5U4JtpmuCLUapcI0HOseT4KMx58E7qCuOlD6AveKrWOL7JOHNURHlcPCJUllZkYFHB8pOB8I6YrFXXGN/Lpt5p1vYaZYQXaqk4srURFwCDgnr1H6n6en3cUGofYhDH4i28PInI0vm8MifABx3/D9a8NG5HyFA0CpnaugjwKcorp2pDOWMEe+1ELAnlxSsTnBG2KapAkIzgk9aAO4qTbMMvCzcqTLyMT0HoT9aigNndh9K6hQwwd87UMFoglmXYjDDqD2NJzmr/iYQ3Gl6NqHil72RJbe7BRV80bDlbYDJKOu532rPDfoM/KgB6vuC249KfI8TEFUKeUA+59a5qhbZQTtnapum6Rf6nMsVlavISfjxhF+bdB9aAIfl7GkOcVqJeCdSh0i41KWB1htJRDcKdnUkAh8d08wGQagW+nWxHmjLk9Msf6CpsCoQOWCrux6ADJNXmnaBdTSIbvMSc26KMuf7Cp2nyWdmJFMcMXMMiRR5lx29cU8X5kjKW4aGFhuT8bj39B7UNvwDi9nosHNzwzyFTggSMTn6YFIx0+P/wBvpcJPY3DvJ/081R0A3z0B/Ouc5bIjXZ32PtTSEAjjumaaVEwMKoRAi4Gewx60V2kQKgjUbY7e1FOgG6trd3r+uzajcsY5ZMhRESPDQdFB9P60t5q+q3FqLC71O7ntQysIpJCVBHQ/SkopUUcBkYycnPWmZ/xb+0f96WiqIZEgxkZGc4r0jgxlj+zfWLsxo82nXj3duzfhkVIsfQjII7gmloofQIvLyIJ9jWowbYimmUcowPLeHGB26V4pdKFuGx3wf0ooo8BCJXQdKKKBjJRtTD/eiikA5KkRdcUUUDC5PNCD0KEVZcNXcv7YV3CPy2MsfKRyhlCEAHlxmiipfTH6SuKrG20yTQvuMbRG60m2nkKufjYsGP1wK1XD1gunaPGYpGYXZ8Z1PRc5AA9OlLRSfQPs66zezabw3qU8B+OLw+U9uZgM157GhkeCOaR5cAuSzZ6b4oooiAllIoaS4kjDtIMruRyscHO3XABGPfPapiNiNSoxnrRRVCAYBPoo6VxtP3k7O+5paKYHZxzNg/X3ooopgf/Z	Dream Theater	Six string	Electric Bass	3
5	Paul Chambers	data:image/jpeg;base64,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	Miles Davis, John Coltrane, Freddie Hubbard	His bass	Upright Bass	1
6	Israel Crosby	data:image/jpeg;base64,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	Ahmad Jamal, Gene Ammons, George Shearing	His bass	Upright Bass	1
7	Christian McBride	data:image/jpeg;base64,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	Freddie Hubbard, Chick Corea, Sting, George Duke	Juzek Upright, Atelier 5-string Fretless	Upright Bass, Electric Bass, Fretless Bass	1
8	Geddy Lee	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAF0AfAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAGAgMEBQcBAP/EAEEQAAEDAwIEAwUFBAcJAAAAAAECAwQABRESIQYxQVETImEUMnGBkQdCcqGxFSNi0TNDUoKSosEWJDRTVLLC4fD/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMEAAX/xAAmEQACAgEDAwQDAQAAAAAAAAAAAQIRAxIhMQQiQRNCYaFRUrEy/9oADAMBAAIRAxEAPwDJK7Xa9itKQDwG1dFdrtFIJ7FEvB/D8O5ywu9SXYsLoWk+dZ9MjAHr9KrrLbFz5GVJxHRjxV9Eip8+Wtp5Y1YSggaUnlt/oB+dczRhxJrVLgKY/B9mur5bttumiIo6USxIGc98E4P0oL4r4df4cursJ5YdSlRCXAgpyPgeXMUecIcQPRDboSra8v2jAQ6D5ST+lVP2nXmHfnbfJiIcQosK8QOp0qThWwP1OK696LdXhhCnEz7FcIpZrlMYBs02qnlCmlc6VgGzSDThptVKEQaTSlVykZxYilCuClCqpBPAUsD/AOzilMtLedS00hS3FnCUpGSTRnarBabUwmbf31OyPeREaBSE/iJ5n0G3qaeMWx4QcnsXc6fH4XsiLI/H/wB4DIcUtCdaHNR5K+nSgm4MIjuSApspy4C3g5Gg5qx4kv0a/OhTbBZkIOEupPvjoFDlVPDTJuDjcZKVrcbJWRnn3pJR0cnoKUVsFHDsuQ0mClhqQ6UOg4acR5RnfCVfqK7xLeYLl6eQ1aI1wDTYYW4RtqBJUUhJG+TgnuKhSZs7hi2JLEln2t4qbSnQFFkDOVAnrnFVVjcbTGws9CBk9TSYu6Vk+qz6morwdmRuHpZW5bpz9vUeUaY0pxGfRxGTj4p+dQpdhuUaH7d7P48H/q46g40PiR7v97FRpK9M1a0AbKzjmKtY7Mtu3ftSxynkKYRmc00opLPmwFYz5knAz267VfkxvS/APmm1czUuQAv9+kAaj50gYCVfDoD/ADqKrnSMmxpQpBFOKpBFIAaVScUs0mlYSyFOtNKdWlCEqUpRASlIySTyAFNpGTW0/ZVwtCtlvY4juxSuU+jXEbIyGUHkv8RHLsD6mqN0UhHU6BNFoVwZDMmcUm8OpwlsbiMkjkf4j1+g65Eps1+S6pb7hWo962TjpFukRHX7mvQN/DfBB+Xr8KxCZqEt5sDBQspI7YOKb1bWlGrND0opIejAatQOCOVWCG1rWFtKKHU7haTgg1UtakHJWR8RmrWHLSnY4Oeop4aXsxItVuSb4qVfrjHSlCEqUyAhIOo6h7wJ7k5258qpkySwrSEpyPKdsbdat3z4aXJLagFJGpP4huKr74UvSUzEe7KT4nwPUfLl9aX0lFbGecpaiuFS4UyRBX4sOQtleRnG2cd/T+dRBXelAUs3Y7MhoyYKQhlzCHo+d2Fn3cd0E7A9MkHuadVSokt2FJQ+wRqT0UNSVDqCOoNSp8BD6HZ1uILISHHY5V52AT/mRnG43GQFAcyWr4C+LICIaHUnRJbSsDOl0FIPoCMj64qOuM8legI1q6eGQv8A7c09CjOzZseIwhbjj7qW0oQRkknGBnb67Vq7f2exY09t1uMlLPhacSZu/i9Pdzg+oO2dhtS9rQ2PBKabTMaPM+lINbLd+CoslmKs3KOkwikSHvDLq1YAJTn5/pt0oen/AGTXdp/TBlxZLWPfcy0Qe2N/rmpz0p8lZdLkj4sDkiji18XyHFNNEBIQ2lARnYBKQNvpQSK6CQcgkEciKo0JhzTxSuJsDEuDxHb3bZPxodGM58yT0UOxFZ3xVZZdpvb4ltEIeWVtOAeVxJ7H/Sm4EuYEpeUhwoB8riPeJHYdaPuHeJIF5ifsm9ttzGnPKNedj37gjuKCbT3PSk49Sk2qf9MyQFJG4Kk9x0p5tlKlAo+PoaPrz9mFwSvxrC+zLir3Q2654byfTJ2V8edBs6C9aJS405pbcts+dCgMJPcYyDnvyqqqRm0JuiPcmXg22hAxqGVAnG3Q0iTBcEGKhKPEWEKUPDOo8yVDA5Y2Pwyas24MxbTL0pl5lqT/AMO442f3xyORPOiG8cD3dkwGLCqS+HGlOSnVuBtCVHYDHw+JoTlFOkSniiv8gLDahraPtUlxpedghnWCNt86h6/SmpbLLTh9neLrWM6lN6CPTGTWgW37MFltDtxuaMLTqCIo5/31Db/DRVCsnDtgjtTWYOlxrSt118hxaMjGPNkJO/3cVLzdhj002qoyG18N3m8Nh22W2RIbJwHEgBJPookCrpvha6Q79AtSdEO5eEXfEWvW0U4OoE45cwU78+xo64m40gQ0oeaKkSw04GNKSdCtII1DYLQdtxisrudxuF78Sbc31SH1YbSopAwnJOkAYGOfSuU2+AOEcez3YVWtfDtgUxdpNvQZDLykPtNu+P4DvNBRjy4O+MnpzyKvY3HnDjwCS89F8I+LlbOyjzIGM75+FZdBdkwXitCCttadDrSkHS4g/dPpTVxjMJfCoKllhY1JS4k6m/4SeuO9dOKlvY0M8sce1IKeLvtAmS5SUWJ32aMACVeGAtSgTzzyHLb5VSyePOJpLgWq6uNkDGGkJSP0qgdBTz6+lMmpqCRGefJJ7ssQaejth19psnSFrCc9snFMpqws8ZqTOSl94sstoW844BkpCElWw7nGPnV0TRaTZjjbaYrCixGbGEoQfMfUmqYlTT4fhuLS+g6godxRjGscGZBafUtQMlJ0KW5lKV9sJ5/M9hQ+tsMeIy7oaKCfL7oPftn6Kq+R6qs9PLJurNMt/EKiWoU50qcUkFrQP6UdSBnmnY4okjxbVek/tSbZ2nrnHQnZ5rUQMkjCTsepFB9ttAvPCVrl2p5DV1YKVNKLhB1IUU9sjIHPH61q9ndS8wEqH70Dz7czWPI2mRyZ3WmS4Bu+Xy3xNMi4S4rfhYUypwgq0nGoAAZ6du1DEzj+Iw2tVtQXkuOak+McYB54A+Z3NWf2h8AzbzchcrQWCtSNK2VnR5hyUk/TI9KyDiO1TLJLTDmSYy3xnxG47moN+hPejGmjsfURju4hJdeO5AToieTt5c4+A5ChGdeZc15Tsl9xa1cyadQq1pONc7Sf4Ed/j2/OuKNqP9ZO/wACO/x7U2v4+hcvUZMnlJfBWvSXXE6FuLUgKKgkqOMkAZ/IU6zLeiMoXGdcZcJyVtqIONx0+FMSfC8ZXgay3ny68Zx8qeYDOhZfW4kafLoSDlW+M5PKg6rgzK75PG6z8Ee3SsHAI8VXTl1pH7XnjYT5WOWPFVUlKLYUJ1yJQV97DKSBt+LvTTyYAA8J6SSTvrZSAB1+9U+z8fQe/wDb7K+ZJdlL8SQ6t1YGNS1ZOMk/qTUapM1LQePs61rbwMKWkJP0BNRjR28E3dk8VJiSnojviR3nGVkFOttRScH1FRRSgaqFF4LpcosQtoecKHMlSydQO+cg/T5iosVl+5SUgalOLPmdUCfUk/KoCVrRktrUg90qIq2gX65wvO3NkKGNkKdVgHvzp9SvctDIvcEKJ6Ld7Pcmwoez4btzbazhzBOVLB7HOe/LbepbnGHHC56V+2ezpdTq1NRGyhA75KSfqaq+GmDfpynZqgpWnUMjIHoBnlRVObXCt0dQd1oW+I4RpA05CiCD6Y5fpVdOtOTOzSySj6keAcvXE/GD1vU5MvkosqA2a0NdcEeQA86D47T0t0oaS44vGcIGTRu62mXaJzDoGExnFg9iNSx+YoCCyOVQcaVozxnq2ZPFqnKAxElnOMYaPUZH5Uly1zW0lS4spIHMlojpnt23qKHVY5kfOkl9e+5+tL3/AAPcBtaVJxkHcZGakx4b8hr9whbhyPI15ldfujfH/rvUXVg99qksE+zPrSSlSQkgg45kVzsCoc/ZNwI2hTen9QrfPLp6H6UkWe5Of0dvnr/DGWf0FR0OurWlHirGpQGdR2ojuF8uVuZbjxpslDSso0oeUkAJwANj610b9w6jFpsqf9lb+sajapKEf2ngGh/mIryOGJWCH5UBpf8AZMxo/wDlTDshUs65JW6rutWr9RSQ0z/yk/QfypmoMWl4P//Z	RUSH	Fender Jazz Bass Geddy Lee Signature	Electric Bass	2
10	Mic Todd	data:image/jpeg;base64,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	Coheed and Cambria	Spector Euro, Fender Jazz	Electric Bass	2
11	Chris Squire	data:image/jpeg;base64,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	Yes	Rickenbacker	Electric Bass	2
12	Les Claypool	data:image/jpeg;base64,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	Primus	Carl Thompson, Pachyderm	Upright Bass, Electric Bass, Fretless Bass	2
13	Dick Lovgren	https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Meshuggah_-_Dick_L%C3%B6vgren_-_2008_Melbourne.jpg/220px-Meshuggah_-_Dick_L%C3%B6vgren_-_2008_Melbourne.jpg	Messhuggah	Warwick Dolphin Pro I	Electric Bass	3
14	James Leach	https://photos.smugmug.com/Music/International-Bands/SikTh-Trix-AntwerpAmberes-BelgiumB%C3%A9lgica/i-z5TgbBg/0/d2c494ee/L/HUG_9059-L.jpg	Sikth	McIntyre	Electric Bass	3
15	Martin Mendez	https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/MartinMendezCopenhell2011.jpg/220px-MartinMendezCopenhell2011.jpg	Opeth	Fender Jazz, Sandberg	Electric Bass, Fretless Bass	3
16	Henry Selva	data:image/jpeg;base64,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	The Human Abstract	Music Man	Electric Bass	3
17	Paul Jackson	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAOEBIQEBAKChIXDQ0ODQ0NDQ8KCggNIB0WIiAdHxMYHSggGBolGxMTITEhJSkrLi4uFx8zODMsNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAO8AqgMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAgQFBgcBAAj/xABCEAACAQIDBAcFBQYGAgMBAAABAgMAEQQSIQUxQVEGEyIyYXGBBxRCUpEjYqGx8DNDcsHR8SQ0gpLC4VOiFVRjNf/EABQBAQAAAAAAAAAAAAAAAAAAAAD/xAAUEQEAAAAAAAAAAAAAAAAAAAAA/9oADAMBAAIRAxEAPwDG+pXKNAfH5qUsCnh9BRWWwFdjGnKgatB4DwrwiG8qCOIHZpwV9PGvMmnE/wDGga9V4DnSVTwB9Kc5PLyryLx/IUAMngtGgwDyd1C3kKnujWwHxTdZl+wjI65icub7oq047DqnYiURgBiwRczacCfHSgokmwZVtmVEGXMLnvVHtBY2sp4Xq8YrCOy2JCEHNmv8ABtf1qqY6JgQSScyrYkZVbxoGGUclrrKOQ+lEc+nhahuvrpvoB5fAV4gchv4ClKKUV/QoB5fAV7KPCiZK9b1oEBB4fSuZPADlRbflXD+r0Awo5ClZRa+l9QRbu+NKy28NaQfX1+Wg4bch9KRfwFLJ/6tQrUE1HHcf6bktSGW3ADkadxp2R6C5PxUlkB07I01PwrQNXFwN/xV4afMfDypw6i3DypMguOXEUAit9dRotqQ4A5nTf8AF5UbKfD4dL0lhrwJ4/LQan0ewseGwEOrsXizyp3u2dfrahPe1jkIyqklzm3nQi30qbGIwsmFixLzYeKA4eLvtl7agAi3O4r2x8TBih/hYi8YXL18i9WsijkN5FBU9pwuOwxVs8csd2GVstrWPlz41Tccy5QASQIgnaHeIPCtR6T4CREzkRoLMuYIzK1ZPtdWEhuQwve47KtQMSRfmLbjSXa53cLAfLSwR4k9n+G1cK38KBKLrrc87Um3pyoy/rTvUgrr+FzQJC3/AJV4rrxNdY/q9cLeJoEkWr1/Twrl/Ou2/Og6wF+J01vXCNK9m8+RvXju/nQCYacqRejP/ahXoLMB2L2y8h3qEV8h/Wj5CABdt2/7tCyb+HpQDC+vD0tXcml9fUV7LrpffYD+dLLW08WA173OgGB4304ChuovbfyuPzojLY8N9wb/AIUhV1vY79bmgt2yoEk2ZLGcM2OdlxAhd5Vij2YygsW8zwHGrfsLAe7bLgZi/VmEGVkdo5FB1JrMI9rPFhpoLIyyZW7XehYaXFa77MtupicAkUmV8i9U6MMzRkbvQigzyPa2IxWL9xhxE+IgeW0fWnrFj8fCq30iR4cRJA9gUfIbd1m8DW64XG4LB4iQdThsOmT/ADEiqqq9916yP2opENoyGJ45A8cUrGL9mrEUFVhS/I+dd8d+ul6XhtxJF9bDWuOPPkPmWgS7eR5aVw28PKvHfy4a8qS5/XzeNAk/y40M7+FLBPl51xv5b6BBPkK8B+VKCHfYn7w7tGihL6Kru1rkKMzMo5Cgui9AE/8AihtF8UiP1RlGHeLva6KD41R7D9dqtq6BdDMXJhyNqSmHBvCsSYJyqz5c2ZSX/d6+pvarTtv2abMxeHZIMPFgpBGwgmiLKyvbS/MUHzVN4elN6fTrkzo4BcEx6Dsx2Op/CmNBawbhdc1hcX+Gkz6Dip3n5aXEtgL9k2/20uUi+4nnpQM4xputxANedOXa5D73OjopY28dNKezQKmXvO12LKCvZSgigCL2tu1DHu0iONjv0011o2LKJqdeagdltaYTO984zDMM2g7tv+qBxMpyi9hfsqPip50J2u2BxiZ2McbSLHOD8Ivvt4VCYbE2kR2Y6SKxv8OuulW72i7CCSrjcPeWGdElDoMyq9tfKgntodINo7RV1w+HiGHDSqjhFaSSx3gnjWa45XRyJMxe92zdpm86fL0hkGHGHu65TdHRmVl51ENKWN2JY3uSx7TUD+BNLdknvWJociE6i7aXJHw0OKTn2hapfCYZyucBlUg6WzM1jQQp9Bx+7SWPkfCrBtDZLXbMOrKqGJCZVyHc1QWJiKMVPO1hQC+n/KnmzcD15IziLs3BIzK1MSavHst6NY3GYkT4cwwRRSKZ551EkFrXy5DvuPzoIbo5s+fHyJgoEV8zkl8nZi+85HDStc2H0RwfRvDrtDHBsXiQQuZNYsIxB0UbibX1NWobHg2PgpH2ZCjuxzXussmLJJ0uTrYndTWHaE2KwqwY+CKLEaCbCHLkxJOqkD5BxPPSgj+nGOw2Pwsae8Nho5I1meYlY+pw7W1e+7W3jTDE+0PAbOwQSHGHbE4w/Vwqgbq1IFgWJ3c+dUf2sY3qXTZ6lSQqTYwoO9Ke5H5KOHjWegacfGgTNKWJLG5JLMfE60G3lRHFCoLguqre2uhFuzXAp3AX8qIosBpfgfiy14HtG2nG1qBxgo7sb/LSGZsr2GYs1i1u8nIGlJiFRX0ucqkE9nKP70MXYHXcCgVR+xJ1P4UEZisMADe7ELz7Kk8BXkw32QJutmLAD4t2hpxMmZ15FgsY/wDJrqTS5sTmly9nqz2LDuqw3HyoIHExqJGADIN6KTmZRwvU70e6Ttho3ws2efDuNF7zYZ+a34eFQmOR87Zt66Hy4U3L0Fw2XsPDzQyykiQ9oQ2OXq/MVXZNm5HyntniRTTDYqSE3jdkO7snst5irFsSMyFpZTnbQ38aAa7DFtCSctzfs5dK0iHYYwmBiEcJxcnu0UjrfKzK3e38hVbwkedkXMELyJCDbsqzG160+WRi2QBozGrRXbvXGgIPpegzrpNhHwqBw4xL5cuRu00eHcXCP4jgao23ZYZsrxZk7CrKhHajI586tvSNmTHI0+SKd2ihYN2o5k17ZHDhaqx0twgw+JORWjzC7r+7V+OXw40EARWpexzabJBjsK7vh4ZIwYpwuZo8SRbTgdLaeFUbop0cn2piUw8IsT25ZCLrhohvY/y5mt8xHRfBR4E4PTDwRRuz4gHLJCbdts/G538zoN1Bzol0dODgiw6TyYxc7TyFe0sbk37NOdrYhdmxTbQxgjzqrrGqLlzqXJRFHMsbnnWIbY6cYlk91wssmHwydhDEepnxKDQFjwvyqtYjaE8ihJJsRMinOqSSvLGh4kA0Hto418RLJNK2d5JGkkP3jw9KaA0rfSQPOg8x0odq6aTQXeFN3AX3HvZaT1Xa3a5raUuLRRfXh92lopd1RASSyhF+LMTQROPuGYgs1zc690X0vUhgAWw8hQquUAlmPaZzv+gpPSXYeKwUhGIieNW/ZyjtQz/wmg9H3DM4O7KDb4W4UD1uzZu+ctx8sdhcmq3ilYW32JzxkHtZb1Y5outMg7kYLIzgd1AOfjuqGSLrC7hSV0VB3VW3/VAnaguqsAQQinMe9Ip0onRvDJKcuWOWTrEEMTfvyTu8qFjJg7nKLDqstgfDUU1wzmMdYWZRZurEZ7Svw8RrQWXbmFUnrvdsChjXqcXFAjRYSHEa2AN9TkAJPOm2zbpEW330PrUdjNtPitGEcYsmdIo1ijYgWzG28+NSeyFzlUGgst7/AC0Fq6GHPjsIjdWO1LMFkHZ7Ck8fGpLHdNkbFukbiQCXq5ElGThrY8r8azzplLkxKqrMMkYFwcup8qisBiB1jlsq54pl17qki49bigm+nqZMSyhg2TK0LXaRmibtAX8KkOkEp2q0MUCNPMxhSHIu8lRcH8bnwqtTM8iRw6zyNKjoAGabMRlyflat/wCgPQ5tmYUOREcc8asxkGaPDADRdNQNdbbzpQE6H9F02VCuGjB61gr4vEJl6yRzuX87cFFzvNZp7W+m3vLNgMMwEKP/AIiWM9nHuNyj7i/iatftf6Ze5R+5YVrYh0PvEl80mEhbfrwdvyrCSP7mg8PrSQaVf1101rlvSg8xrgH6vSiP+WtJ/t/DQIZaRbzpww7O8fw/FTe/lQXsNougXXeTVp9nuyuvxBna2SMZUNu9Kf6CqrEGbKqgm57IHeYndWtbAw4wGFSNsoYZpJm//U76CX260fu5WZY5Y8naSQZlbyr59xxijxTx4dZCj5kCl/2Z3gjyq6e0TpkGHUxkNp2iDVG2Rhz+2e9yOwT8vOgm5MN/hsgz3Paks37Rqi5NCUXQ5VCqvZ6ttLmpJj2WbtJ2F7X9KjcQlsQdbXQsrj4nFuFADZ2US9uxFnv/AAg1G7UwvVzMo7pOZW7qsh1q0dEcPHPjkV1Xq3GVVtmzaEfnUL0riK4qRPtAUdowjjK0ajS1BExC3AnvHfwq19FFu99ABlzMPhqpljYfw1acBiPdsDI+hZx1aX5mg4sEE6bRxuIddLwYGIvkefFE77cQqAn1FVcH05/dry1rXsf9n3vDLtDGIDApzYWFx/m3HxsPlHDmaCweyLoB7sqbQxigzsqjBwyD/KJbRj98j6CmXtB6cTxYkLhsRjcIoe0kixJLhGtyNr1dOn806onu2KTAuZUhDM6rllOqix4HjWNYvb2MwBkwe0YIcYhzuhb7PKTfVXG8X4UFS22+ed2ab31mOd57s3XMfOmBHrpyrz7/AF4GuEUHT6VzLXv7V3l+NB4C/jpXd3jXFX8qV9fSgS4uOHhTf9bqO3046UC/nQa30KwgfGQgjNlV5LfeA0qW9oeMkSKy5j2dXXnTT2cn/G8z7u4APezaXqW9ouDPUGw042oMcwEBmk7d2A7TgntVZJcoGgsOAHwjlUFsVvtGWx1Btf4bVNKuZlXxA3/lQFx/YVeF47a/D50wlVWOcfZsrhCG5g62NTeG2VNKXmmhxBwiTCOSaNe1k3XF+F7VD7F2Y+MxLYWBWcvKjlifs1i3OSPxvQEmjlwGMyDNAX6oo5y5o7kXYEaW8qm+kskG0NoRJ1kYTN1fXsVjkxqbmcufW16svSbo9h2dcHgoIziJgsWHa7NHBh1ILO/IWB872q04XoTsrZGFknxUcWNKxs0+JxKLJJIvyqm5BwAFB85bVw6x4iSNLFVlZIzfMsiA6G/lStpYoyBFOWwF8qjLHnPhQsa6yTOY1MKNM/VIf3KFuyPQVbujns8xWLx4wj/ZIiRzYiddVWA7svNjuoHPsr6CHas3WzqyYWNgZG3e9yj4AfxJr6Inmjw8dz1cESJdmNo4cNEB+rUPZ+AhwcMeHgRYo1VUjUdrzJ/maxP2ydOuuZtnYZ80SsPe5lOb3uQb0v8AKKCE6adIMLtnFSEyHBhM4wkr5mXFAbr23HkaqON2hJiggxE8spjTq4WftLHFqbX31HFvWpDCyx+7OhRTJnVlf4reFAxv5Gug0hrcLjnSlXTj5UHSPXWvD9GvZvPx0rm88fCgUBpXQPLnXl/tSS3n4EUHJBpw30D60aQ6c9KBQar0LxJgxsDN2QzdW33gwtWp7cwyvAykAgqwJIzZWrGwxQqwIFipB8eFbBsHaqYzCq2hYowkB/duND5UGDHDNBjGWxTv2uPhqSwQzSC+tje/yipj2k7OCSLiApBDBTbutUHh5VWJj8buip8qxAXb1oNK6W7TGD2VJlUEPEkMafDDfUk1Hez7Z0eBaRiZDiP/AI5ZpVdMveOi+HCjbG2rh8dh4oJgpuQDGwzZrHT10rnSfa8cT4vDxoonYYdCQey0RFzrwy0Fp6DFIsO+OlZBPiGeVgfggW6qqjgOzes+9s3TOTEFMHGGjit1kq/FOeF67gpuryqHc2RVyse6Bwpr0+6I4nEmDF4eJ5y6JDNCjdZNh5dysV4KefC1BAeznZK43ENh2QSPJEch/wDrIN7mvovZuFj2fhkiMjSZERHnmI63EvuFzzJNgKg/Z90Nh2LhwHMT4qQFppvlsLlV+6PxoftF6URbNw3WSLHLM3+RgkGdJXBBzsPA2PhQQXtY6ee5RHCYd1bESxkTMD//ADYTpYeJ1rAGbXn4k0fH4yTESvNKxkkeQySse8zk3pvbWgUPr4UoLbmPKu5fWu2uONBwr5HjevE+nl8tLVf0a6ya+m/5qAYWuqfKvMPTlSQPTnegU2ugyjS16Sw14endrtJPqaBDvp/Wg0V6H9KC+yvyv53zLU90H237viRAxASYrHr+7l4H+VV6RezcGxvYqPl501MrIQ62BVlZCPhcag0Gq9N9nh4JCw7pubjs1n2Gwy4nBtCgj6/DlgFH7SeE3Ob+VbEJUxuDw8lsyzQq0ygfERr9DWOdJMLNsvGCWHslLtZhmjmTkRxQigr+C2rNg5klA7Ud8obtLmNOtmbYMs0kspMkjtmZj3cu4D0qM27ijNIZWKtnCtZV6uOPwA8Ka4FgrrmYxrm7TAZqDQmlEMYxEgZu0qYaJRmbG4g7lA41pns26LS4GFsRii0mLmGZ4i2mHG8J4HXXlWPdH+kWTH4XF4lEkihIyYcfscBhrWz/AMfEczX0L73BLGuN65hCIXkMiyZcMsLAG5HzDL5i5oGW39vR4PDNi8TljVF/Z3VmxM1u4pr5o6UdIZtpYhsRMzG7MIoi2aPCR8FFTXtL6ZPtXE2QsmGjZlgiByq9vjI5mqeB/S1Ai/5UeGO5HDkTRdm4B8RKsMY6x3OVdcq1a9qdGBhYowzq8qyWkVTmXIRmBFBXHw2m7N3SbfrdQZY7chr3QMv0q0YHAZ4mVms3VmWM2yrIoqu4iM633g2/02oG+Ug8Od6S2vhx0o2S/wA27/atIdTf5dL2HxUApBb86Rb+tHy+dvGkhPHyoBW8zwvXD/Ufdai5f0aSR668TQNn9fWk0WVf6U3oL5INOC8qZSHTwoztnIAv5A96m7rfjccb97LQbh0IxqvsvDaAZI2jYfKwNVP2gxq7FQUMhhZY0I7U2bdr5082XjocPgcI0bGNC/U45b5poZmNs1uRuLVX+l0EsyYmzM2IwMtpQB9pNhm3OPWgzfF3jzRsuqsVuT+zbjTO+vrfWrFt3YkkUUGIcq5ngTEaFmVla+t+emoqvsPzoH+AII7QzC9wl/8AMyjdm5IKdp0gliX3dXeaDrRJLAzMuGxsw4kcu7pUJnIvY8LE+FFidOrbMHLl0Mb5+wqANmBHM9mx4WoLsdmbL2v9tHjYNiYg5TNhcUjLhGbiyOPyqU2ImydkyL1M0O38c65IXMLNs7ANztxJ58KzzCbNlmGYKRHftOx6uPLx1NPJMVDhs64Ys7MWHXN2uoT5V5nxoCvjRHj3mhyqOucpl7uu/wBL3qw4XGNiXXN2gWyKzDtZf71WdlbPklIIDHVSCBmzVf8AYWwHvGXv38wvQQmPlLQqFuOqYxkk5WYXvaoTaqAns3N2y5wMq5rXq9dKcAcNmZRGY3LLIpbKymw18uNUeWA9S245XzX+a+6gjb5vroKSy3/KiZdBuJOuvdrjacqAHDl/yrir/C3GlMviT4CuDdu9e7QJvz042oQXxtpck0Qnz8KHl8SKBM4Ud0s2tsxGXNTSnLnTifGg28qC3hN2mU8h2qVMmUDde3D4qd9Ud458RQMS19+ngPGgnVw0s2FaGJo4xIEsWHxrqNeGtO8X0m91xOaeAsuJwEWHx7nMzSSj419aj+hzNLiIsOCBnlsmY5VXn+Va3trZ2G2ph1RFjujP7mx/ZzumjK2nZGZba8qDEmmfEXwOIzP1cbe4qzZY4ITr3vAG9VXFYF4e8AQT2G7uYc60Tbewg7dY5KTxyqJCRljklvqgHh9KDjcAkobOE1HbUfuxyFBm2X18aldl7LuoxEoHUKsrMcyt1jr8JG8XJG+m21cP1c0iACMLIQovm04a04K9Xg+Rlm7Rv2mRf+zQNdp7RlxB7RyoNEiTswwjkBQtnYbrJY017Uirf7t6FapHYEmTERMoVj1qWDHvXNqDa9h7FjQJZEUAqLW7V7VMrCFVVsGtfQeB1ruFkVUFzfXfbNlYimmz5hmlZy4yFomJ7upBvQQnSOKOQ2dkZftg+YsvUC2hHrWd4eBvd5DqwKWue15GtIxGAzuwNj1iZSxP2cKG5B87VVMPAxwcyIELCGYKvzZTqb+VBThHYcH07w7uahOLjdxokbG352rzUDfL4E+VD6vX8h92nRT08QaRkFuPxWFA2ZNdyjiK4NPy0+GlyP8Ao0M+fjQDlXS+/wAKaZqdzHQ+XCmt6DR+pFuO6hPALcPSnxA4c7fxV5lH46/LQRMkVjdTY7wynKynmDwNaD0a6UKw+3ezrB/iIWGaPbkQBC5eAkBe7cW0NUqRt9rAbjp3hTZwwOhvY3BHwnnQaP09aB3iljlinYrlOQ5mgUAaH13X1qrLEp7bOIYRlM+Ib9nAL/ifCg4HbKEjr0jdvslBI6uHqgwzHTjb8aYpNJitowJiGEGDTFdZGDD/AIJYlJILoN98trnnQRmJxGExAeMxv18m0SfelOdVwlrKFTiTodahNrtZhCvbEaZLju34mrD0kOGws8ssMseIkeV2i6tcsOCQm9gPwqoMxuTvubmgTHHnYDdrvNSfR/CdbPGoue0pv8rXoGyYs8y6aDM7AfLVo6FYA9aXsRZyB92g0rZSP3XIYZEUNbLJGRfTx30uRwPe07S5ZkQhv3lwCLfWjYFsjBjmsO0SfhA1qJRl63ESO4Xrck0Kn5EXvep4UHsFtQOXVm6t+3HGrfvGFwAvoKo/SQu8kuVfdk7LLEG5gKfrvpntzax95ORso94SdJFbtRqV1GnOl7TxPWS5yQxaNGLDusbUEQLKLbuIFcYW1GvC9EmTW5F/I5qQxv8Ad5X+GgC+7/TqKE6n8hp8VOG+nOgMN/lQBKDXVr3007NcCb9L9n/2oranlzFIf186BtKdP5Gmt/D8adS8ePjTS1BqeXdfXjpQ2X+orhNhv8P4q7nAIvr4X8ONADEG303im7gEcv8AlR2a458SaaFt+pG+33VoBso3W86vuy9lYadY3aGN7wqTbMqsbWqiB/PcLEVofQthLhktcZetjYX5G/8AOgyvbuGSHGSIFUIJLW+7XNq4ONVzoAARzp908iZMW2lrhSDUI+JzR2NzbQGgJsRbyM3JNAPE8q1LoxhgIlawAIVjWX7GTV2vbur/ABVq/RGdHwyKNSudW1zcf+6CZmbs6cra/DUftUnqmtlvbQ2qQkS4sb+AFNcbBdCNe7csPhtQYltFMkjiwWzsLVI5+7rc5FH3V8qjtpvnlkbXWRqco/Zvp8It6b6A0mnhuuaHIeGg1vqaEZN17nXf92h5teWupNAYnXhuoEl23+h+9SkNt1vDWhv4Hfv+7QIK8rnXXWuhOOvgPlWum3n/AHpDMbf7SPu6UAJ1AB46tcUx/W6nk/1ppb9WoL82M3Hfy+a9BlxN/oLio1sQvFrtwNmrhxaD7x3a5vCgeyYiwt2hpwPdWhSPv727/T9aZSYpRxB4bmoUmJFu9YbrWagfdYf/AF/3VffZdjc3vENwbKkoB+E7tKzH3oDQn6Bq0L2TqvWYmU/+CJAB53oIr2lRgSq+42YGxqkZ+G7nWie0tVIDDeGsTbjWcFhzG/k1BIYKTIttDc6n5RVo6FbbaHFqhymORljdCe6x3GqesqZQLt52ouCxKpLG2YgrIjXAPA0G9bjx5U02gx6thpYq17HtUczqTmB0sGsQ3GmOMxCm63G64Nm86DFcSlnYGw7RGgy8TSg+61zS9qOOuk1B+1a9w3jTQyrwP1DUDhnv/WuNJr9dDQRIvMfRqR1o8D4nNQHdtNOdJzacTrvpDyW/KkmQc/PvUBc1zpcf9Ugtfnz+81JzDmBx0zUnrBzG7k1ByU+YpsT5fSnkigjePE9qmpPl9KD/2Q==	Headhunters	Fender Precision	Electric Bass	4
18	Marcus Miller	data:image/jpeg;base64,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	David Sanborn, Miles Davis	Fender Jazz Bass Marcus Miller Signature	Electric Bass, Fretless Bass	4
19	Victor Wooten	data:image/jpeg;base64,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	Bela Fleck, Vital Tech Tones	Fodera Victor Wooten Signature	Electric Bass	4
20	Larry Graham	data:image/jpeg;base64,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	Graham Central Station, Sly and the Family Stone	Warwick Larry Graham Signature, Moon JJ-4 300B	Electric Bass	4
21	Nate Phillips	https://bassmods.3dcartstores.com/assets/images/players/natebio.jpg	Pleasure	Stingray	Electric Bass	4
22	Jaco Pastorius	data:image/jpeg;base64,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	Weather Report, Joni Mitchell, Pat Metheny	Fender Jazz Jaco Signature	Electric Bass, Fretless Bass	5
23	Miroslav Vitous	data:image/jpeg;base64,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	Weather Report, Chick Corea	His bass	Upright Bass, Electric Bass	5
24	Stanley Clarke	data:image/jpeg;base64,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	Return to Forever, SMV, George Duke	Alembic Stanley Clarke Signature	Upright Bass, Electric Bass	5
25	John Pattitucci	data:image/jpeg;base64,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	Chick Corea, Wayne Shorter	Yamaha TRBJP2 John Patitucci Signature 6 Strings	Upright Bass, Electric Bass	5
26	Jeff Berlin	data:image/jpeg;base64,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	Dennis Chambers, Bruford	Cort Rithimic Jeff Berlin Signature	Electric Bass	5
27	John Paul Jones	data:image/jpeg;base64,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	Led Zeppelin, Them Crooked Vultures	1962 Fender Jazz Bass	Electric Bass	6
29	Paul McCartney	data:image/jpeg;base64,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	The Beatles	1951 Hofner 500/1	Electric Bass	6
30	John Deacon	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEBUQEBAVFRUVFRUVFRcVFRUVFRUVFRUXFxUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGisdHSYtKy0tLS4tLS0rLSsrLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBQYEBwj/xAA/EAABAwIEAwYEAggGAgMAAAABAAIRAwQFEiExBkFREyJhcYGRBzKhsRRSI0JicoLB0fAzQ5Ky4fGi0hVzo//EABkBAQADAQEAAAAAAAAAAAAAAAABAgMEBf/EACYRAAICAgIBBAIDAQAAAAAAAAABAhEDIRIxQQQTIlEyQjNhcRT/2gAMAwEAAhEDEQA/APIkIQpJBTfjamTssxDJkgc/NQoQCtcnVnlxkpiEIBCEqARCVIgBCEIAQhCAEIU1mwOqNDtiRPkgO2wwdzw2pUqMo0ydHvO4BglrB3nfbQ6rrdYWTPmuKtX/AOtrWe+af+fBW3/xD6jABuRtyYzUhob6qa14QaPnJJ/qsHlS7N1ib6RR/gLI94XFVoJMNNMOc2PzGQDM6R0KSpg9Ej9Fd05jZ4c1xd9hzjyV5U4Vhwcw7cio7nhIkZmOh25B5os0fsn2ZfRl7zDatHKajIDhLSCHAjzaSFb8F3QZcjNzEJ1Ovc2gIBI1BIMObz1hw3kJaJo1nAuAoPaJBYAGOJiM2hIOkb8/eZ/KNFYrjI9nw/FHZQM3812s7+p1XmuFYs+mQypyjXUgz4xqtZYY00azoV57k1pnZwvaLa+sREheP8c20VTovUr7H6QYe+F5fxNeCvV7uw0U4v5LRDT4NMyPZpWsVt+CPRNNkei7vcRze0ytyprgrT8Ceia/D3dE9xD22VUJQ1db7eEnZK3IpxZzhic1ieUApYoMiEuZKoJ0cKEShamQJEqEAJEqFIBCAlQCIQhACEIQgRCVIgBaHhfDwf072z3stMftD5nkc4kR4nwVDSplzg1olziAB4nQLbUcRt6LmUqUvbTaGyBpm3qOHUF5dqeSzyNpaNMaV7NRaMAA0hTlx5BLh9w2qwOYPRVt7i1RhytoFxnlK4mjts72ydwpGMkqoo39bMC+i5rTzOsecLQWzJbmGvkiRbkisxvD2VKcEa9ecQvOLq1IqFgOrhP/AH02XrValIIhee49Z5a06wB9IOw5raEtmOWNoqKRe5gBOuoZyIcBJZ6qGli9ZumYqxNMTP6udx06aAHxiUypgD6nfZGu46HmtG4fsYrn+pyHEqj/AJnEq2wylmXLQwOo095q0mFYaRyXPllGvib44y/YlpYeCNkowrwV7QtYCldTAXLbNylGHAclzXVs0BWd7XyhZrEcT5SrRTbDaRX3tISquvop7m9lVlatK7ccX5OXJJA96jzqMuSSt6OdslzoUMpVNEWIhIlViAXfh2GOq6zAXArnDcUaxuV2i1wxg5fIzyuSXxObEsP7LUGQuBWGKX4qaDZVyZlHl8ehj5cfl2KhCFkaAhKhAIhCEIBCEICz4eoB1U/sseRy1ykD11WgtsTrBoYy3Y2ns0kamNidCq/g61LjWfMBjBIj5i5wDQDGmuu425rS0HU2uYH6aGPQaLnyvZ04Y2i2wZpptAJ15wosZc8vDWOySDJ8jyHM+oXW26onRjgXN1cJEwQI0XXmY4jZcx1NIo8NddtB7UNqtkCBo7LzIJ0nw+qvsL7pLR8p1Hn5clMKcaBS0KGsqbtlK0PuaUNJWQxm1DnA8wd/uFuKlEuYR4LO3lIO23Gu/Of+laijejP3VhFNkQNTPpEn21XRhtQUS4PgSZ9/7+imvq7QGtJ1BHpIMz6BZrietNuHDdxaPER/f1V3HkqKKXF2ai6xOkBuFzW+PUh+sF5karju4+6bmUL0i+yX6n+j1h/E1ID5wuC64rp8nLzaUilelj9kf9L+jV4hxGHbFUVxe5iuFC2jhjHoylllIkdVTcyahaUZ2LKJSIQAhCFIBCEqAEIQgBCEIBUqRKgESpEIBUJEIQCEIQGm4Nqf4jOuQkyeWblsri/tBWqNEHuu32VNwL/jPH7Mj0DleWbC5xLyQ0EwASJHIkrlyfkdeH8Swo4LTBa8CHN0DuZb+UnmNFa0reSHdPqOi47Siwjb/wAnE+8qcUS0yxx05EyP6rF7OnwXlIyuygzmqy0raAc1a0XaK6RjJnRTEKlu7MZiY3kjXcq7dUAaSeQKosVodszQa04ew7Q6RP0keqSIgrZWYhhYcMrmMyvGha2Htd1zT3tdIIXnXFD9GNmdXH0EAacua9Nx2/7OlTaYNRw/0iYLj7+/kvJMfuxUrHLs3uj3WmFbKZ2itQhC6TlEQhCAEIQhIIQhAIhCVAIlQhACVIhAKhCEIBCEIBUJWhPLFAI0JYSKQCEQhACEIQFnw9c5K28ZgR67/wBVs7Co2BJ3O32XnTTBkbjVX9jedqMsw8axyd4j+ixyR8muOdaN6xzesc11sLdwZWAoVKgMZz5K+sKziCM3LpzWD0dN2aKkO/IKsmXGoWesG1J11VtRaRqVVstRaVqTqrYa6I18zpCq77En257MBrjkJdvoT8oAB12KuLB2izPE1Ms7SvO5zGdoEtA8gASrRVmcpNKjL8TYk9gL6hmo4iNojSD5abLCEruxi+dWqucSY+UA8gNlwrrjGkcsnYqRCWFJUahKhSBEJUiAEIQhIIQhAIlSJUAqEIQgEISwgBIlSIBQVKHqFKClAlLU0NQHJ4SgJlTXMTsyUuUAjhEJyCpAyFY8P05rjwDj9I/muBXPCjZrnwYf9zVWf4stD8kaWjhuZ0/RXFvhoC5rclp2VrQJPquNnZFD6Ay6KbMly/8AKexg6KpdFvhrO7K8o4t4vNZpoMaWw9wcTEQCdG/8hew4YzRo8l498Q+EK1rcVa7WF1u95e14ghhqGSx3MQSQDttzXRiSOXK9mNQAhPY1dBgP7DRNLFIayWhqq7BylC6bmjGoXPClARCWEQgESJxSKQIhCEAIQhCRUISoQOa1BCcxyHlARpEqEAiVIlQAFIHJiEApRCAV6NwPwNna25u2aO71Kk7Yjk+oOc8m+/RQ3QMZhWAXNxrRouc385hrB/G6AfRaix+Hh3uLgD9mk0uP+t0AexXpdXDHaZSDAgDaB0A2AUHYOG7T7KvItRmbPgiyZvSdUPWo932ZlH0VhitnSpUWU6NGnTBcSQxjWyWiBJGp3O6uWs6hOuLPtKJaAC5sOb4ujUeoJHqqy2i0XTMgynrsrG3EwFJRZIBHPfqDsQRyKmoNg6rmOpaJGU9FI2kdAPRS29JzjDRKvLKyFPvO1d9B5f1UxjZWU+I/DLcsAzbxAHTrPiuivQbUaadRocxwLXNcJDmkQQR0TWuWR+IfGH4MNo0oNV8lxmMjI5ftGfRbpVo527dnkHEmCutbipTLHim2o4U3OGjmAnKcw0JiFXZlrrfjAgFp+U/Mx7W1GHz01/0q1wLB7LEszRb9i8ampQLg1vTuPGXWdgFZTa7RDgvDPNyprWZ0W8xv4VV2AvtKra4H6jh2dT+GTlcfULFCk6k8sqscxzTDmuBa4eYOq0TTKM6a9I5dVwtoqzbXBEbphtugV1B1Zmn4K99GE00l0XDSOSa86KKLWzkcExK4pFUsCUJEIByExCAEqRCAWUSkQgFQkQgFQhCAVCRAQGq+HvD4vLtoeP0VOH1PH8rPUjXwBXt7z+kj+4WR+EuG9lZioR3qpNQ/unRnplbP8S1lF0vlZyeyyOhyiqOUlQqA6k+YH9VAILhms+Cc1pGvh7p7xJd5KS01bBQFdcWzCS7VpO5EQ7xI6+KktramDJlx8RA9gu5rW9FI2FHFFubqh1MRsIUhCaClJQgZXrBoJJgNEnyGpXhmNMffXFWq2q0uBMtdIhv72oiTC9O+IWJ9hZug95/dHkN/Q6N/jXhknrvv4+aU29OibSWywGC15+TTm7M3IBEyXTAGh1Xrvw1wkULMOMZqpLiRzGwheU4BeVszbelEVH6jK1xMiDuOgXvllQDGNpj9VoHsFX58qlRPxrROq7G+H7a9bkuaQcQIa8d2o391419NvBWKewbK5U8M4x4Nq4c4PDjUoOMNqRBaeTagGx6HY+GyrrO62mF9BX9nTr0nUKzczKjS1w8OoPIjcHwXz1xTgz7C6fbvJMQ5jts9N05XeehB8QVvjyapmco+Sa/LSNFSVXJjrglRlyltEJAQmp0paFFz3BjGlznGABuT0VGWI0LdYJ8OqlQNdXqZARqwDvg8gSdFWcX8Ius4ewufTO5I1afGOXiqe5G6LcXVmYQhCuVBCEISCEIQgEIQgFQhCAF2YRYG4uKdBv8AmPDTHJu73ejQ4+i416V8L8IyU3Xjx3qk06c8mAw9w83CPJniobB6PaQyg7KIGjWgcgAGgDySUHd4+QCZUdFJjerifb/tJbnvO8x9gufI6RrBbJnPJcBKVjtVWXeIZKuRrQTlmSdBO2nPqltsQJfD4yxBdzzeXIclkrNHDV0WVN8l/l/JPw5+6hs2y56jw90O9PsrLI/JRxRZVG6yhqUlI0rXkilDwhx1CAVBc3AY1z3bNH2CsDz/AOJd2HVRTOWKbROYSAXEF2ka70gsJ+BY7Zh86Lg7/wDN0uH0VnxFdGvUcT+s+XH1JIHhOUfwrgZRbMQJ5Dy12WCb7N+Hg0Hw7wUG8FSXEUw4w9gaQdIO556L19oWS+HuHBlF1Q7vdA/dbp7EytcVpFtq2ZTpOkIE+iefjCjcYEpBsB/eqsVHl3NYn4x4J21m27YO/bnveNJ8B3s4NPlmW1IUj6DatN9KoJa9pa4dWuEEfVSD5ZWv4f8Ah1eXVPtu5RpluZjqh1eCJGVrZifGFnscwx1tcVbZ+ppPLZ/MN2u9WkH1X0fgdxTrWlKpT+R1NseAjb0VpypaISPKG8C2tuG/i6zi57g1u7O8eQjdcbcLbhl82u5hqUQDkMiWvI0md4E+6m4ssrmrfumt2jKVQGmNgBoSIHMbSri+xnOA3smiN82uq5Xka23Zusd9I0HDnELb9j67WEBj8jjAiYEbeBC4eLsYt6THU65BOUjJzdI2hcmEY3VaamXKO0Ic+GgBxADZ9gB6LzHiWvUfd1XVTLy7U7COQA5CITGo5Ja6E04LZWk9EJEq7TmBCEIAQhCAEIQgFQhCAms7V1Woykz5nuawebjEnwG/ovdLag2kynRp6NY0Nb+60R/z6rzL4aWOe7dWI0osJH79SWM+naey9PomXO8AB7/9KkmSjqrP1YOg+5n+ii/E5A9wE96N4/vVI894KtxHEC1z6Qy/mObpMj7LDKbYlbOam1wqa8xPXc7Hx5wumpIEgw6dDMQdp0VS29eamjQ1s/q6yD8xaCNd/wC9VscPZTAaQwd4d185s3gSdWnQ6bJPFJU/BsvUxaaH4JUcQ4v3JPLkNAoqbstTL0cfZdtto5ypL24IrVCNS3YeQBWbXSMf7NEKiSVUW+MD/MbA/M3UDzB5e6t2QQC0yDqDyIVpQlHshSjLodmWS41xM06DzOkaeJP9dvVXuJV4hjTqd/JeefEBz6rm0KcE/MRIE6F2XzgA+ipy3TLUY44g1/8AiNLSdZpkkerHH7OC78NqZ6rWtqtcXGB+jyvJ5DRuusfrbSqK4t30zlqMLT4iPbqtX8McP7S8FUiW0Rm9dguiUI8dFIzd7PXbGz7BjWN2aAD/ADPuu+U1pkJWqSrGVzpCe7kEx2rh4JanzBATJ9F0b7R9kxqw3HnE1S1DqYaQHiGnLIdI73enQ+EKG6JSsrOMsKoX9064pZnEMaxwBDS4tJ74G5GWB6BVlpiBp0+wbcdnTY1xAL3AHXVrY3JXAbuv2BdTqBrqjRmEDblDolu6jsqYFuKbmgyDmJ11PTxXNOTfbOqMUukTWF2XgVg2GgmJEh0fdTWVwKveLS1xJza6HpA5KsY8U2hoOVoPPmuyGsOcnf21VJy1S68Fo/Zf4WxoknTovOuI64fdVXN2zR7CP5LRXmOtbSOU94iB6rGEro9NBrbMM8r0IhCF1nMCVCAgBIlKEAIQlhAACWErQp6dInQCSdvNQ2Sek/D207Ky7Q71nufr+Vncb6d1x/iWmwzUOd1dHoAFzXFsLejToj/LpU2ezdT7rowoRRaesn6qhPg6K3JVGMZswLACfnAgGMsd4nptori52nwXDmOemWkBxJaCdu9ET6wsZv5pGkOjPWHfcGnbMfI78lr7DapR5EZm+DgBt4zlPoVm69wWVpMw4BwkgRMaT5/fbmL22qd8Onn9wQu6dSjZxpuMqLF92GsNQ9AY6k7D3WSu8R1rvdAcAAR0cWMAjw1lWeLXINQUgdKYE/vEbeg+5WK4oeW1ag/OaP8AtP8A6hc8cK4pv7NnlfJpGlYH5BrMtkczy391ouHrwfhQ5xgNz78mtc7+QWfwannZSD3d09wkaEchr5wra5ewsNGno0d3TbumCPdW9VKkolfTx7ZX2eJ9tUdU56kA7ADYey8y4jvzUun1Byd3djEGY6GDp6LZ12mgXnkQQPXV30lYq6sRJJzUySfmOdhPMZ2iQfCD6LkxNKWzpkm1okw/HXh5NcuqsId3TB7x2OvLwBC9a+H9AGg64GaKrhkDgAWsaIAAGgbMwAvG6WFVHOa0AODnBstcHASY1g6b819BYZailRZSbsxob7DVacYcriRylxpjx3T4H6KZrtUlRsptMQVcoPbum1PmHmlDgASTAHM7BedcZfEACaVi7aQ6tuAelMfrHx281KVg1fE/FNOzZoO0qEwGg7TzceQXnmLYg67dmrkeDAZ+nLzVLbte+g2q6XZrjvOLpJMD5+quKdsSYaN+TRv58/RYZ3WjfArtlXibSQ1jW+QbPspQ8ZSXaBo16eQU13TcKkTlAGp5jrpyVNf3HaHIzRg+qxgnNJGkpcbZw392XuzbAaNCgN68syEyOU8vIpt1v4clCu+MUkcbk2wJSIQrlQQhCEipUIQgRKhCAAnwhCAVq0PBdn2t7QYds4cfJnfj/wAUIVZEo9I4tqRUcPL/AGhd9o2KVMfsN+yEKnksx9we4sxiF+RUAboWd71Jkf7fqhCnFFSzb+jPNJrHokuWZ6DXzl00nX5RDhI8uiip4gWDMNdGEeZc0CfDvIQuytUctu0wDpfJOrjJPU7knzJVRxva5G0K3N9R4P8ABo0fdCFTNrj/AKa4l2SWWLFllVMkOZ3mno557sepCZwVihzOt3kmZqMO+p1eCfr7oQsfVdI09P5LHGsQpCs1rjsMxEHXLJImP2Y9VmaVq7V+chzyXOj5ddcsc9+aELjlHirXk7MT5d+DR8IYMHXNOoQO6HOOgE5SI0Gm5G3RemUzohCY9yIyki5MRxCnb0nVqphjBJIBJ9ghC6DE8e4t40q3f6Ns06J2YD3qg61HDl+yFlnHSfSf5NHJIhaIqbPgfharc0+1e/JQY/OA2M7nt6dPNeu2FhTpjuMAJ1J3cT1JQhZvssZj4gcJdpSrXdKplLaZe9mUQ8MbJg8jAXj1J86IQoUVTIlJkN6zmuNKhaR6KiIQhWAiEIQk/9k=	Queen	Fender Precision Bass	Electric Bass, Fretless Bass	6
31	Jack Bruce	data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAFMAfQMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAABAAIEBQYDBwj/xAA7EAABAwMCBAMGAwUJAQAAAAABAgMEAAURITEGEkFREyJhByNxgZGxFKHwFTJCUqIzNGKCg5KyweEl/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAQBAgMFBv/EACURAAICAgMAAQMFAAAAAAAAAAABAgMREgQhMUEiMnETIzNCUf/aAAwDAQACEQMRAD8A8OTRoJ3o0AKlSpCgB1T7C207d4qZGfCC+ZQA3A1xUCplofEa5R3VJCkhYBBPfT/uqzT0eC9eFNZPT7VONwvr0aS0oKCEgJcGOXB1x960ko/tCFItl0DbVtkp5cOYJ5/4SDr1xg9+hrEW+eXJC2343LKQQXHCr97TG3Toa1cdf4vw+WYuPqCrAB5gDqNQa4i/bmsdHqtY21PPaPDpDS2HnGXRhxtRQodiDg1zqbeARdpwUtLh/EOZWk5CvMdQah4runk2sMFCjQoIFSpUqAFQqfEtM2Y2hyNHU4haygEEaEDJzroMdTpoexqEtJQspUMEHBFBOAJ3o0BRoICkZOBR6U0aU4E8oFAHeFEfnSmosRlbz7qglttAyVHsK9Osvsgdaa/E8VTxFTy5EWIoLdOmxUcpT8gaiexS0Nv3WbeJA8kFsJaUdudeckeoA/qr0Jt5yRl5Tilhbijr9D+eaUv5Dg9Yj3F4qtWzfREvHCtotbEdyIsi4OkqU0twrW430J9dtapmLUzdpcmzuIkNsLZ96+2rBaGhGMjvgEdc1qL1GjW7h6ZKjtJadWgeZtIB5icZ+Ooqj4WvD0+4mPM1daw60oY8wwpKv+SfX60i09t/8OrCzFTqfZAc9iMZz+58TYUR5Uvw9FH4hen0rz/jTgm78HykNXJtDjLv9lJZJLa/TJAwr0NfR8Yc7ARnPm0Oa7zoMC72t+1XVlDsaQnzJV9x2I3B9Kdq5Lf3HIt46j9p8hmhWy9oXAU/g+ZzEKkWt1WI8wD+lfZX5Hp1AycWK/LfQxFaW68s4ShCck04KYOOKueGbBMvMxJaRyxG1e/kKA5UDrvucdMHcVqOGeBWTKY/ba0rWpQywhXlQOvOob/AabanNXHtOcc4ciQUWSYEsPFaMJQEqbAxokDQDXsKxlas6x9GI8dqO9ngnha7FEfbYbbiNoIJShQ53RuObJJxnOAc7aAV5XNWHJby0gAKcUQAMda6vT3pDfLJWt5QPlW4sqKfhmohOTk1auDjltlbrVPCSwkIUqSaNaGAqNCr/ge0N3niBmO+U+C2kvOJV/GE4wn1ySB8M1DaisstGLlJRR63w/AHDvA8GFy8smSBIkdDzK6H4DA+VSoK/wD5cQ5xzqUSf9Q1VcQyLhGbeflpkKbWMIK0jQjsB09BStTji7ZYwogYYDigOuQVD7iuRLaWZM9BXGMMQRY8cy3EcMx220hRddRlJPQAn7ga1jbHcXIt0iPqWEsl9KVKxtnIwe2+e2lXfHjqfAtTbuQUoKwUkghQCRnI2qhUhUW0uTpaEFyWkoayynLie+OpPfG3xrRYVZVR+tntEBWY+cZSFZyOmgrjebg1GdaU4y44F6Dw9+lVfBN1RH4SaduL6G32socUpZVz5Pl31JIx881luKuKmH5Lctv3IjJUEPKURjm0OE/L477EVCrfhh/dto2dy4htYtDsW7xxJakIwYjpCgR69ts59CRnFY2wcPNOc67ZCRbICz51pJWteOgKiSr68uRWMhcb25metyfbpEtoaoPjAZPcpI1+vy10vJ/tdjoZP7JtSy8U4BlKAQj5J3+GRW7jclqkY78eLck+zW327QeEoLhQltpBQeVK1gOSMDoep202Ga8R4o4gk8Q3AyH8oZRkMM5z4afj1J6muF9vtxv8wyrpILrgyEjZKB2A6VAQgKBKlcqRW9NOncvRa7kOxarpHOhRoVuKhFKkKJ2oAVXPCFzRaOIYc15biWUKw74asEpIxg+m2fSqWnCoaysExerTR9QxZlr4hc8FUliS2G/M1jzb753xtgistKgphyOWCtL0FkJbaU2Fq5UABIBONdBvk15rwzxHdbdbnGmHXHI3KpBaUvVKT1Qem+1bThLiBb0JskIS2jyFpRzy46enxrmXQcOvg73EaseV08eFhPFnkOtzLqtb6m08rcYn3ZORuN1fDQehqjv81m4zWpDuU+CCEMjAHb5dvvjQ10v0mal1TipIdg+JylBQkOMrOyVaZOmx6/4qzryFSFFDLpZSrZXVP/n620qsUk1Kb/BtYnhqCNDZm1365MQ1SUtpOUjTOAASQB3wOvz1ANUftchxrbeLfCiBQQmH4iipRJUorUMn18tWXs/gvROJLY26tCj+IUQWycYLTvcCo3tvTy8XRiU4Sq3t8v8Avcpqv+Xp9HM5Upfp/UuzzqhRNDrThzR7DSnnQhCSo4JwD0AyfyBoO5BAxgYBA+NMH71dXweYHGgQgZ/yigk40KdTaCAinAAimiiDQAsa04Cm51pwNAE+0vFuQGyoBKs77Z/Qq+hXdy3TEPR2W3PEGFsq0AI6g9P0MAb5QKwcjcVbw30Ogc60t4xkq2P1rGyPzgc49uMLOGi7m3WVeH2fxLKEIaGEoSM656HGfkSa5ypDhdMaOSgJHvVjcnsD2FRTco0VJVHWHpGPKE/ug9yT9qqxIkIBKX3ATrnmrCFWzy14N3clJap5z6bj2cK5eII6lKKl+Mg5J1OvKfyUatPbxC91aZ4AylTjCj3BwpP2VWAsl3ftl4gzVPv+GxIQ44EqyVJBHMMZ10zWv9pPGELiuxtNW2O+2mNIS84p9IBIwU6YJ/mrTRqxMVlZGVbR5ly0FDFHOlNJzTIkDFTm3y1GkpKkKDzaEFBzkY5VBQ0xpjHzqGBk6U95IScpVzJIGD+jUNZJRxNCjihUkBFKlSoAVKlSoANTGNY5z/KfvSpVDLR9E0BXdtIUdRmjSqC3wMWPfY6CpqVExJLJPu1MqUU9yBkfnSpVDNI+MoetO6UqVXFyRDPKiSobhnQ9vOkfYmua1Hwin+HIOPXFClQW+DlTaVKgqf/Z	Cream	Warwick Jack Bruce Limited Edition Fretless Thumb Bass, Gibson EB-3	Electric Bass, Fretless Bass	6
32	Cliff Burton	data:image/jpeg;base64,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	Metallica	Rickenbacker	Electric Bass	7
33	Steve Harris	data:image/jpeg;base64,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	Iron Maiden	Fender Precision Bass	Electric Bass	7
34	David Ellefson	data:image/jpeg;base64,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	Megadeth	Jackson David Ellefson CB-X, Jackson David Ellefson Signature Kelly Bird Bass	Electric Bass	7
35	D. D. Verni	data:image/jpeg;base64,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	Overkill	B.C. Rich Widow, Fernandes Vertigo Bass Deluxe	Electric Bass	7
36	Geezer Butler	data:image/jpeg;base64,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	Black Sabbath	Lakland Geezer Butler Signature Bass, Fender Precision Bass	Electric Bass	7
28	John Entwistle	data:image/jpeg;base64,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	The Who	Fender Precision Bass Frankenstein	Electric Bass	6
\.


--
-- Data for Name: bassopedia_genre; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.bassopedia_genre (id, genre) FROM stdin;
1	Jazz
2	Progressive Rock
3	Progressive Metal
4	Funk
5	Jazz Fusion
6	Classic Rock
7	Metal
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-09-04 22:19:48.444278-04	4	John Myung, data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N	1	[{"added": {}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	bassopedia	bassist
8	bassopedia	genre
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-09-03 19:12:09.234444-04
2	auth	0001_initial	2020-09-03 19:12:09.316688-04
3	admin	0001_initial	2020-09-03 19:12:09.400772-04
4	admin	0002_logentry_remove_auto_add	2020-09-03 19:12:09.439955-04
5	admin	0003_logentry_add_action_flag_choices	2020-09-03 19:12:09.450483-04
6	contenttypes	0002_remove_content_type_name	2020-09-03 19:12:09.472895-04
7	auth	0002_alter_permission_name_max_length	2020-09-03 19:12:09.486896-04
8	auth	0003_alter_user_email_max_length	2020-09-03 19:12:09.498412-04
9	auth	0004_alter_user_username_opts	2020-09-03 19:12:09.508872-04
10	auth	0005_alter_user_last_login_null	2020-09-03 19:12:09.522245-04
11	auth	0006_require_contenttypes_0002	2020-09-03 19:12:09.526183-04
12	auth	0007_alter_validators_add_error_messages	2020-09-03 19:12:09.538403-04
13	auth	0008_alter_user_username_max_length	2020-09-03 19:12:09.554795-04
14	auth	0009_alter_user_last_name_max_length	2020-09-03 19:12:09.56756-04
15	auth	0010_alter_group_name_max_length	2020-09-03 19:12:09.58003-04
16	auth	0011_update_proxy_permissions	2020-09-03 19:12:09.590733-04
17	auth	0012_alter_user_first_name_max_length	2020-09-03 19:12:09.602681-04
18	sessions	0001_initial	2020-09-03 19:12:09.614859-04
19	bassopedia	0001_initial	2020-09-04 21:23:04.244766-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: bassopediauser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
20jveifdm38e9rzph4c6bgf9xzhzzvsl	.eJxVjDsOwjAQBe_iGlle_xJT0ucM1u7awQHkSHFSIe5OIqWA9s3Me4uI21ri1vISpySuAsTldyPkZ64HSA-s91nyXNdlInko8qRNDnPKr9vp_h0UbGWvHQTfB-sIfM9E5DkY7azzCrS1oVOomNAaxbjTpKADPWrn85gwGTLi8wW7djeC:1kENnw:qT2lDCUidkQnFDgslQLpXxR2YbXTL9qsYz2Xg5sAdqU	2020-09-18 22:19:48.562714-04
9v8gyl3849d1qxsfbuvqkh1t6dsknzy8	.eJxVjDsOwjAQBe_iGlle_xJT0ucM1u7awQHkSHFSIe5OIqWA9s3Me4uI21ri1vISpySuAsTldyPkZ64HSA-s91nyXNdlInko8qRNDnPKr9vp_h0UbGWvHQTfB-sIfM9E5DkY7azzCrS1oVOomNAaxbjTpKADPWrn85gwGTLi8wW7djeC:1kElCO:T2NdPCpRAbz3F9YK9a7krJ0qHV5sx-bF_J_20jo-Xfc	2020-09-19 23:18:36.422348-04
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: bassopedia_bassist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.bassopedia_bassist_id_seq', 36, true);


--
-- Name: bassopedia_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.bassopedia_genre_id_seq', 7, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bassopediauser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: bassopedia_bassist bassopedia_bassist_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.bassopedia_bassist
    ADD CONSTRAINT bassopedia_bassist_pkey PRIMARY KEY (id);


--
-- Name: bassopedia_genre bassopedia_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.bassopedia_genre
    ADD CONSTRAINT bassopedia_genre_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: bassopedia_bassist_genre_id_8b511801; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX bassopedia_bassist_genre_id_8b511801 ON public.bassopedia_bassist USING btree (genre_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: bassopediauser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bassopedia_bassist bassopedia_bassist_genre_id_8b511801_fk_bassopedia_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.bassopedia_bassist
    ADD CONSTRAINT bassopedia_bassist_genre_id_8b511801_fk_bassopedia_genre_id FOREIGN KEY (genre_id) REFERENCES public.bassopedia_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: bassopediauser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

