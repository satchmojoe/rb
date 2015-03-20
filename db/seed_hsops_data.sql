--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: element_options; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE element_options (
    id integer NOT NULL,
    form_element_id integer,
    "position" integer,
    option character varying,
    option_is_default boolean DEFAULT false,
    live boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    uses_dictionary boolean DEFAULT false
);


ALTER TABLE public.element_options OWNER TO ruby_forms_user;

--
-- Name: element_options_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE element_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.element_options_id_seq OWNER TO ruby_forms_user;

--
-- Name: element_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE element_options_id_seq OWNED BY element_options.id;


--
-- Name: element_types; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE element_types (
    id integer NOT NULL,
    e_type character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.element_types OWNER TO ruby_forms_user;

--
-- Name: element_types_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE element_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.element_types_id_seq OWNER TO ruby_forms_user;

--
-- Name: element_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE element_types_id_seq OWNED BY element_types.id;


--
-- Name: form_1; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_1 (
    id integer NOT NULL,
    enabled boolean,
    resume_key character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "element_ 0_1" character varying,
    "element_ 1_1" character varying,
    "element_ 2_1" character varying,
    "element_ 3_1" character varying,
    "element_ 4_1" character varying,
    "element_ 5_1" character varying,
    "element_ 6_1" character varying,
    "element_ 7_1" character varying,
    "element_ 8_1" character varying,
    "element_ 9_1" character varying,
    "element_ 10_1" character varying
);


ALTER TABLE public.form_1 OWNER TO ruby_forms_user;

--
-- Name: form_1_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_1_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_1_id_seq OWNED BY form_1.id;


--
-- Name: form_2; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_2 (
    id integer NOT NULL,
    enabled boolean,
    resume_key character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "element_ 0_1" character varying,
    "element_ 1_1" character varying,
    "element_ 2_1" character varying,
    "element_ 3_1" character varying,
    "element_ 4_1" character varying,
    "element_ 5_1" character varying,
    "element_ 6_1" character varying,
    "element_ 7_1" character varying,
    "element_ 8_1" character varying,
    "element_ 9_1" character varying,
    "element_ 10_1" character varying
);


ALTER TABLE public.form_2 OWNER TO ruby_forms_user;

--
-- Name: form_2_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_2_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_2_id_seq OWNED BY form_2.id;


--
-- Name: form_3; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_3 (
    id integer NOT NULL,
    enabled boolean,
    resume_key character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "element_ 0_1" character varying,
    "element_ 1_1" character varying,
    "element_ 2_1" character varying,
    "element_ 3_1" character varying,
    "element_ 4_1" character varying,
    "element_ 5_1" character varying,
    "element_ 6_1" character varying,
    "element_ 7_1" character varying,
    "element_ 8_1" character varying,
    "element_ 9_1" character varying,
    "element_ 10_1" character varying
);


ALTER TABLE public.form_3 OWNER TO ruby_forms_user;

--
-- Name: form_3_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_3_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_3_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_3_id_seq OWNED BY form_3.id;


--
-- Name: form_4; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_4 (
    id integer NOT NULL,
    enabled boolean,
    resume_key character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "element_ 0_1" character varying,
    "element_ 1_1" character varying,
    "element_ 2_1" character varying,
    "element_ 3_1" character varying,
    "element_ 4_1" character varying,
    "element_ 5_1" character varying,
    "element_ 6_1" character varying,
    "element_ 7_1" character varying,
    "element_ 8_1" character varying,
    "element_ 9_1" character varying,
    "element_ 10_1" character varying
);


ALTER TABLE public.form_4 OWNER TO ruby_forms_user;

--
-- Name: form_4_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_4_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_4_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_4_id_seq OWNED BY form_4.id;


--
-- Name: form_5; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_5 (
    id integer NOT NULL,
    enabled boolean,
    resume_key character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "element_ 0_1" character varying,
    "element_ 1_1" character varying,
    "element_ 2_1" character varying,
    "element_ 3_1" character varying,
    "element_ 4_1" character varying,
    "element_ 5_1" character varying,
    "element_ 6_1" character varying,
    "element_ 7_1" character varying,
    "element_ 8_1" character varying,
    "element_ 9_1" character varying,
    "element_ 10_1" character varying
);


ALTER TABLE public.form_5 OWNER TO ruby_forms_user;

--
-- Name: form_5_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_5_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_5_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_5_id_seq OWNED BY form_5.id;


--
-- Name: form_6; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_6 (
    id integer NOT NULL,
    enabled boolean,
    resume_key character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    element_38_1 character varying,
    element_39_1 character varying,
    element_40_1 character varying,
    element_1_1 character varying,
    element_2_1 character varying,
    element_3_1 character varying,
    element_4_1 character varying,
    element_5_1 character varying,
    element_6_1 character varying,
    element_7_1 character varying,
    element_8_16 character varying,
    element_8_17 character varying,
    element_8_18 character varying,
    element_8_19 character varying,
    element_8_110 character varying,
    element_8_111 character varying,
    element_8_112 character varying,
    element_8_113 character varying,
    element_8_114 character varying,
    element_8_115 character varying,
    element_8_116 character varying,
    element_8_117 character varying,
    element_8_118 character varying,
    element_8_119 character varying,
    element_8_120 character varying,
    element_8_121 character varying,
    element_8_122 character varying,
    element_8_123 character varying,
    element_9_1 character varying,
    element_10_16 character varying,
    element_10_17 character varying,
    element_10_18 character varying,
    element_10_19 character varying,
    element_11_1 character varying,
    element_12_1 character varying,
    element_12_2 character varying,
    element_12_3 character varying,
    element_12_4 character varying,
    element_12_5 character varying,
    element_12_6 character varying,
    element_13_1 character varying,
    element_14_1 character varying,
    element_14_2 character varying,
    element_14_3 character varying,
    element_15_1 character varying,
    element_16_1 character varying,
    element_17_1 character varying,
    element_18_1 character varying,
    element_18_2 character varying,
    element_18_3 character varying,
    element_18_4 character varying,
    element_18_5 character varying,
    element_18_6 character varying,
    element_18_7 character varying,
    element_18_8 character varying,
    element_18_9 character varying,
    element_18_10 character varying,
    element_18_11 character varying,
    element_19_1 character varying,
    element_20_1 character varying,
    element_21_1 character varying,
    element_22_1 character varying,
    element_23_1 character varying,
    element_24_1 character varying,
    element_25_1 character varying,
    element_26_1 character varying,
    element_27_1 character varying,
    element_28_1 character varying,
    element_29_1 character varying,
    element_30_1 character varying,
    element_31_1 character varying,
    element_32_1 character varying,
    element_33_1 character varying,
    element_34_1 character varying,
    element_35_1 character varying,
    element_36_1 character varying,
    element_37_1 character varying
);


ALTER TABLE public.form_6 OWNER TO ruby_forms_user;

--
-- Name: form_6_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_6_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_6_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_6_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_6_id_seq OWNED BY form_6.id;


--
-- Name: form_element_dictionary_options; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_element_dictionary_options (
    id integer NOT NULL,
    form_id integer,
    form_element_id integer,
    element_option_id integer,
    export_value integer,
    variable_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.form_element_dictionary_options OWNER TO ruby_forms_user;

--
-- Name: form_element_dictionary_options_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_element_dictionary_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_element_dictionary_options_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_element_dictionary_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_element_dictionary_options_id_seq OWNED BY form_element_dictionary_options.id;


--
-- Name: form_elements; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE form_elements (
    id integer NOT NULL,
    form_id integer NOT NULL,
    element_id integer NOT NULL,
    element_name character varying NOT NULL,
    element_title character varying,
    element_tool_tip character varying,
    element_height integer,
    element_is_unique boolean DEFAULT false NOT NULL,
    element_is_required boolean DEFAULT false NOT NULL,
    element_is_private boolean DEFAULT false NOT NULL,
    element_type_id integer NOT NULL,
    element_position integer,
    element_default_value character varying,
    element_range_min integer,
    element_range_max integer,
    element_choice_has_other boolean DEFAULT false NOT NULL,
    element_choice_other_label character varying,
    element_address_us_only boolean DEFAULT false NOT NULL,
    element_date_enable_range boolean DEFAULT false NOT NULL,
    element_date_range_min timestamp without time zone,
    element_date_range_max timestamp without time zone,
    element_file_enable_type_limit boolean DEFAULT false NOT NULL,
    element_file_block_or_allow character varying,
    element_file_type_list character varying,
    element_file_as_attachment boolean DEFAULT false NOT NULL,
    element_file_enable_multi_upload boolean DEFAULT false NOT NULL,
    element_file_max_selection integer DEFAULT 1,
    element_file_enable_size_limit boolean DEFAULT false NOT NULL,
    element_file_size_max integer DEFAULT 1,
    element_matrix_allow_multiselect boolean DEFAULT true NOT NULL,
    element_matrix_parent_id integer,
    element_submit_primary_text character varying,
    element_submit_secondary_text character varying,
    element_page_number integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    hidden boolean DEFAULT false
);


ALTER TABLE public.form_elements OWNER TO ruby_forms_user;

--
-- Name: form_elements_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE form_elements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_elements_id_seq OWNER TO ruby_forms_user;

--
-- Name: form_elements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE form_elements_id_seq OWNED BY form_elements.id;


--
-- Name: forms; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE forms (
    id integer NOT NULL,
    form_name character varying,
    form_description character varying,
    form_tags character varying,
    form_email character varying,
    form_redirect character varying,
    form_redirect_enable boolean,
    form_success_message character varying,
    form_password character varying,
    form_unique_ip character varying,
    form_frame_height integer,
    form_has_css boolean,
    form_active boolean,
    form_theme_id integer,
    form_resume_enable boolean,
    form_limit_enable boolean,
    form_limit integer,
    form_page_total integer,
    form_lastpage_title character varying,
    form_submit_primary_text character varying,
    form_submit_secondary_text character varying,
    form_pagination_type character varying,
    form_schedule_enable boolean,
    form_schedule_start_date date,
    form_schedule_end_date date,
    form_schedule_start_hour time without time zone,
    form_schedule_end_hour time without time zone,
    email_entry_enable boolean,
    logic_field_enable boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.forms OWNER TO ruby_forms_user;

--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE forms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forms_id_seq OWNER TO ruby_forms_user;

--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE forms_id_seq OWNED BY forms.id;


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE permissions (
    id integer NOT NULL,
    form_id integer,
    user_id integer,
    edit_form boolean DEFAULT false,
    edit_entries boolean DEFAULT false,
    view_entries boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.permissions OWNER TO ruby_forms_user;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO ruby_forms_user;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE permissions_id_seq OWNED BY permissions.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ruby_forms_user;

--
-- Name: users; Type: TABLE; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    user_email character varying,
    password_digest character varying,
    user_fullname character varying,
    priv_administer boolean,
    priv_new_forms boolean,
    last_login_date date,
    cookie_hash character varying,
    enabled boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    last_ip_address character varying
);


ALTER TABLE public.users OWNER TO ruby_forms_user;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ruby_forms_user
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ruby_forms_user;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruby_forms_user
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY element_options ALTER COLUMN id SET DEFAULT nextval('element_options_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY element_types ALTER COLUMN id SET DEFAULT nextval('element_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_1 ALTER COLUMN id SET DEFAULT nextval('form_1_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_2 ALTER COLUMN id SET DEFAULT nextval('form_2_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_3 ALTER COLUMN id SET DEFAULT nextval('form_3_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_4 ALTER COLUMN id SET DEFAULT nextval('form_4_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_5 ALTER COLUMN id SET DEFAULT nextval('form_5_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_6 ALTER COLUMN id SET DEFAULT nextval('form_6_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_element_dictionary_options ALTER COLUMN id SET DEFAULT nextval('form_element_dictionary_options_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY form_elements ALTER COLUMN id SET DEFAULT nextval('form_elements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY forms ALTER COLUMN id SET DEFAULT nextval('forms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY permissions ALTER COLUMN id SET DEFAULT nextval('permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ruby_forms_user
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: element_options; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY element_options (id, form_element_id, "position", option, option_is_default, live, created_at, updated_at, uses_dictionary) FROM stdin;
27	24	10	spider	f	t	2015-03-19 14:45:30.984675	2015-03-19 14:45:32.387345	t
28	24	11	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:30.990667	2015-03-19 14:45:32.397284	t
17	15	12	dog	f	t	2015-03-19 14:45:30.584397	2015-03-19 14:45:32.404254	t
18	15	13	cat	f	t	2015-03-19 14:45:30.592281	2015-03-19 14:45:32.411159	t
19	15	14	spider	f	t	2015-03-19 14:45:30.598108	2015-03-19 14:45:32.418106	t
20	15	15	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:30.603735	2015-03-19 14:45:32.425195	t
21	16	12	dog	f	t	2015-03-19 14:45:30.608722	2015-03-19 14:45:32.432277	t
22	16	13	cat	f	t	2015-03-19 14:45:30.614178	2015-03-19 14:45:32.44369	t
23	16	14	spider	f	t	2015-03-19 14:45:30.619674	2015-03-19 14:45:32.451418	t
24	16	15	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:30.625248	2015-03-19 14:45:32.458274	t
1	2	16	dog	f	t	2015-03-19 14:45:30.224418	2015-03-19 14:45:32.465682	t
2	2	17	cat	f	t	2015-03-19 14:45:30.231128	2015-03-19 14:45:32.473348	t
56	48	3	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:32.118258	2015-03-19 14:45:32.118258	f
57	49	0	dog	f	t	2015-03-19 14:45:32.124342	2015-03-19 14:45:32.124342	f
58	49	1	cat	f	t	2015-03-19 14:45:32.129809	2015-03-19 14:45:32.129809	f
59	49	2	spider	f	t	2015-03-19 14:45:32.135218	2015-03-19 14:45:32.135218	f
60	49	3	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:32.140969	2015-03-19 14:45:32.140969	f
29	26	8	dog	f	t	2015-03-19 14:45:30.995828	2015-03-19 14:45:32.148026	t
30	26	9	cat	f	t	2015-03-19 14:45:31.001458	2015-03-19 14:45:32.155852	t
31	26	10	spider	f	t	2015-03-19 14:45:31.006919	2015-03-19 14:45:32.162963	t
32	26	11	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:31.012626	2015-03-19 14:45:32.170885	t
33	27	8	dog	f	t	2015-03-19 14:45:31.017964	2015-03-19 14:45:32.178216	t
34	27	9	cat	f	t	2015-03-19 14:45:31.023799	2015-03-19 14:45:32.187793	t
35	27	10	spider	f	t	2015-03-19 14:45:31.029326	2015-03-19 14:45:32.196167	t
36	27	11	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:31.035167	2015-03-19 14:45:32.204804	t
13	13	12	dog	f	t	2015-03-19 14:45:30.560639	2015-03-19 14:45:32.21341	t
14	13	13	cat	f	t	2015-03-19 14:45:30.566972	2015-03-19 14:45:32.221071	t
15	13	14	spider	f	t	2015-03-19 14:45:30.573095	2015-03-19 14:45:32.228225	t
16	13	15	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:30.578997	2015-03-19 14:45:32.234974	t
37	35	4	dog	f	t	2015-03-19 14:45:31.483598	2015-03-19 14:45:32.286225	t
38	35	5	cat	f	t	2015-03-19 14:45:31.491369	2015-03-19 14:45:32.293399	t
39	35	6	spider	f	t	2015-03-19 14:45:31.497299	2015-03-19 14:45:32.300255	t
40	35	7	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:31.503117	2015-03-19 14:45:32.307671	t
41	37	4	dog	f	t	2015-03-19 14:45:31.508726	2015-03-19 14:45:32.315687	t
42	37	5	cat	f	t	2015-03-19 14:45:31.514484	2015-03-19 14:45:32.322969	t
43	37	6	spider	f	t	2015-03-19 14:45:31.520312	2015-03-19 14:45:32.329804	t
3	2	18	spider	f	t	2015-03-19 14:45:30.247008	2015-03-19 14:45:32.481153	t
4	2	19	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:30.254075	2015-03-19 14:45:32.488857	t
65	59	4	Italian	f	t	2015-03-19 14:45:35.145018	2015-03-19 14:45:35.145018	f
66	59	5	Korean	f	t	2015-03-19 14:45:35.149643	2015-03-19 14:45:35.149643	f
67	59	6	Spanish	f	t	2015-03-19 14:45:35.154061	2015-03-19 14:45:35.154061	f
68	59	7	Polish	f	t	2015-03-19 14:45:35.158923	2015-03-19 14:45:35.158923	f
69	59	8	Russian	f	t	2015-03-19 14:45:35.163564	2015-03-19 14:45:35.163564	f
70	59	9	Other	f	t	2015-03-19 14:45:35.168475	2015-03-19 14:45:35.168475	f
71	60	0	Yes	f	t	2015-03-19 14:45:35.186643	2015-03-19 14:45:35.186643	f
72	60	1	No	f	t	2015-03-19 14:45:35.192045	2015-03-19 14:45:35.192045	f
73	60	2	Not Applicable	f	t	2015-03-19 14:45:35.196613	2015-03-19 14:45:35.196613	f
74	62	0	Many different hospital units/No specific unit	f	t	2015-03-19 14:45:35.232089	2015-03-19 14:45:35.232089	f
75	62	1	Medicine (non-surgical)	f	t	2015-03-19 14:45:35.237376	2015-03-19 14:45:35.237376	f
76	62	2	Surgery 	f	t	2015-03-19 14:45:35.241969	2015-03-19 14:45:35.241969	f
77	62	3	Obstetrics	f	t	2015-03-19 14:45:35.246696	2015-03-19 14:45:35.246696	f
78	62	4	Pediatrics	f	t	2015-03-19 14:45:35.251602	2015-03-19 14:45:35.251602	f
79	62	5	Emergency department	f	t	2015-03-19 14:45:35.256636	2015-03-19 14:45:35.256636	f
80	62	6	Intensive care unit (ICU) - any type	f	t	2015-03-19 14:45:35.261312	2015-03-19 14:45:35.261312	f
81	62	7	Psychiatry/mental health	f	t	2015-03-19 14:45:35.267111	2015-03-19 14:45:35.267111	f
82	62	8	Rehabilitation	f	t	2015-03-19 14:45:35.271872	2015-03-19 14:45:35.271872	f
83	62	9	Pharmacy	f	t	2015-03-19 14:45:35.276369	2015-03-19 14:45:35.276369	f
84	62	10	Laboratory	f	t	2015-03-19 14:45:35.281544	2015-03-19 14:45:35.281544	f
85	62	11	Radiology	f	t	2015-03-19 14:45:35.287654	2015-03-19 14:45:35.287654	f
86	62	12	Anesthesiology	f	t	2015-03-19 14:45:35.292641	2015-03-19 14:45:35.292641	f
49	46	0	dog	f	t	2015-03-19 14:45:32.078511	2015-03-19 14:45:32.078511	f
50	46	1	cat	f	t	2015-03-19 14:45:32.084716	2015-03-19 14:45:32.084716	f
51	46	2	spider	f	t	2015-03-19 14:45:32.090569	2015-03-19 14:45:32.090569	f
52	46	3	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:32.096109	2015-03-19 14:45:32.096109	f
53	48	0	dog	f	t	2015-03-19 14:45:32.101465	2015-03-19 14:45:32.101465	f
54	48	1	cat	f	t	2015-03-19 14:45:32.107332	2015-03-19 14:45:32.107332	f
55	48	2	spider	f	t	2015-03-19 14:45:32.11294	2015-03-19 14:45:32.11294	f
44	37	7	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:31.525948	2015-03-19 14:45:32.337737	t
45	38	4	dog	f	t	2015-03-19 14:45:31.531273	2015-03-19 14:45:32.345032	t
46	38	5	cat	f	t	2015-03-19 14:45:31.537081	2015-03-19 14:45:32.352031	t
47	38	6	spider	f	t	2015-03-19 14:45:31.543443	2015-03-19 14:45:32.359126	t
48	38	7	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:31.549081	2015-03-19 14:45:32.366079	t
25	24	8	dog	f	t	2015-03-19 14:45:30.970902	2015-03-19 14:45:32.373277	t
26	24	9	cat	f	t	2015-03-19 14:45:30.977261	2015-03-19 14:45:32.380057	t
5	4	16	dog	f	t	2015-03-19 14:45:30.259469	2015-03-19 14:45:32.496221	t
6	4	17	cat	f	t	2015-03-19 14:45:30.265275	2015-03-19 14:45:32.503928	t
7	4	18	spider	f	t	2015-03-19 14:45:30.272146	2015-03-19 14:45:32.510632	t
8	4	19	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:30.278034	2015-03-19 14:45:32.517529	t
9	5	16	dog	f	t	2015-03-19 14:45:30.283195	2015-03-19 14:45:32.524521	t
10	5	17	cat	f	t	2015-03-19 14:45:30.288775	2015-03-19 14:45:32.531372	t
11	5	18	spider	f	t	2015-03-19 14:45:30.294287	2015-03-19 14:45:32.539229	t
12	5	19	sharks with freakin lasers on their head	f	t	2015-03-19 14:45:30.299952	2015-03-19 14:45:32.546579	t
61	59	0	Arabic	f	t	2015-03-19 14:45:35.123845	2015-03-19 14:45:35.123845	f
62	59	1	English	f	t	2015-03-19 14:45:35.129538	2015-03-19 14:45:35.129538	f
63	59	2	Chinese	f	t	2015-03-19 14:45:35.135074	2015-03-19 14:45:35.135074	f
64	59	3	French	f	t	2015-03-19 14:45:35.140173	2015-03-19 14:45:35.140173	f
87	62	13	Not primarily in Surgery	f	t	2015-03-19 14:45:35.297214	2015-03-19 14:45:35.297214	f
88	62	14	Other	f	t	2015-03-19 14:45:35.301394	2015-03-19 14:45:35.301394	f
89	64	0	Many different hospital units/No specific unit	f	t	2015-03-19 14:45:35.328927	2015-03-19 14:45:35.328927	f
90	64	1	MICU/SICU: Combined medical/surgical ICU	f	t	2015-03-19 14:45:35.334573	2015-03-19 14:45:35.334573	f
91	64	2	CCU: Coronary Care Unit	f	t	2015-03-19 14:45:35.340702	2015-03-19 14:45:35.340702	f
92	64	3	CVICU: Cardio-vascular ICU	f	t	2015-03-19 14:45:35.346076	2015-03-19 14:45:35.346076	f
93	64	4	MICU: Medical ICU	f	t	2015-03-19 14:45:35.351027	2015-03-19 14:45:35.351027	f
94	64	5	NICU: Neonatal ICU	f	t	2015-03-19 14:45:35.355715	2015-03-19 14:45:35.355715	f
95	64	6	N-ICU: Neuro ICU	f	t	2015-03-19 14:45:35.360257	2015-03-19 14:45:35.360257	f
96	64	7	PICU: Pediatric ICU	f	t	2015-03-19 14:45:35.365257	2015-03-19 14:45:35.365257	f
97	64	8	SICU: Surgical ICU	f	t	2015-03-19 14:45:35.370287	2015-03-19 14:45:35.370287	f
98	64	9	Other	f	t	2015-03-19 14:45:35.375008	2015-03-19 14:45:35.375008	f
99	66	0	Strongly Disagree	f	t	2015-03-19 14:45:35.405554	2015-03-19 14:45:35.405554	f
100	66	1	Disagree	f	t	2015-03-19 14:45:35.411026	2015-03-19 14:45:35.411026	f
101	66	2	Neither	f	t	2015-03-19 14:45:35.415882	2015-03-19 14:45:35.415882	f
102	66	3	Agree	f	t	2015-03-19 14:45:35.421215	2015-03-19 14:45:35.421215	f
103	66	4	Strongly Agree	f	t	2015-03-19 14:45:35.427144	2015-03-19 14:45:35.427144	f
104	67	0	Strongly Disagree	f	t	2015-03-19 14:45:35.444273	2015-03-19 14:45:35.444273	f
105	67	1	Disagree	f	t	2015-03-19 14:45:35.449538	2015-03-19 14:45:35.449538	f
106	67	2	Neither	f	t	2015-03-19 14:45:35.454728	2015-03-19 14:45:35.454728	f
107	67	3	Agree	f	t	2015-03-19 14:45:35.460167	2015-03-19 14:45:35.460167	f
108	67	4	Strongly Agree	f	t	2015-03-19 14:45:35.465428	2015-03-19 14:45:35.465428	f
109	68	0	Strongly Disagree	f	t	2015-03-19 14:45:35.484709	2015-03-19 14:45:35.484709	f
110	68	1	Disagree	f	t	2015-03-19 14:45:35.490131	2015-03-19 14:45:35.490131	f
111	68	2	Neither	f	t	2015-03-19 14:45:35.495061	2015-03-19 14:45:35.495061	f
112	68	3	Agree	f	t	2015-03-19 14:45:35.500065	2015-03-19 14:45:35.500065	f
113	68	4	Strongly Agree	f	t	2015-03-19 14:45:35.506008	2015-03-19 14:45:35.506008	f
114	69	0	Strongly Disagree	f	t	2015-03-19 14:45:35.531152	2015-03-19 14:45:35.531152	f
115	69	1	Disagree	f	t	2015-03-19 14:45:35.536388	2015-03-19 14:45:35.536388	f
116	69	2	Neither	f	t	2015-03-19 14:45:35.541132	2015-03-19 14:45:35.541132	f
117	69	3	Agree	f	t	2015-03-19 14:45:35.545782	2015-03-19 14:45:35.545782	f
118	69	4	Strongly Agree	f	t	2015-03-19 14:45:35.550679	2015-03-19 14:45:35.550679	f
119	70	0	Strongly Disagree	f	t	2015-03-19 14:45:35.56928	2015-03-19 14:45:35.56928	f
120	70	1	Disagree	f	t	2015-03-19 14:45:35.574576	2015-03-19 14:45:35.574576	f
121	70	2	Neither	f	t	2015-03-19 14:45:35.579812	2015-03-19 14:45:35.579812	f
122	70	3	Agree	f	t	2015-03-19 14:45:35.585233	2015-03-19 14:45:35.585233	f
123	70	4	Strongly Agree	f	t	2015-03-19 14:45:35.590412	2015-03-19 14:45:35.590412	f
124	71	0	Strongly Disagree	f	t	2015-03-19 14:45:35.607873	2015-03-19 14:45:35.607873	f
125	71	1	Disagree	f	t	2015-03-19 14:45:35.613202	2015-03-19 14:45:35.613202	f
126	71	2	Neither	f	t	2015-03-19 14:45:35.619323	2015-03-19 14:45:35.619323	f
127	71	3	Agree	f	t	2015-03-19 14:45:35.624238	2015-03-19 14:45:35.624238	f
128	71	4	Strongly Agree	f	t	2015-03-19 14:45:35.62908	2015-03-19 14:45:35.62908	f
129	72	0	Strongly Disagree	f	t	2015-03-19 14:45:35.646839	2015-03-19 14:45:35.646839	f
130	72	1	Disagree	f	t	2015-03-19 14:45:35.652208	2015-03-19 14:45:35.652208	f
131	72	2	Neither	f	t	2015-03-19 14:45:35.657271	2015-03-19 14:45:35.657271	f
132	72	3	Agree	f	t	2015-03-19 14:45:35.662143	2015-03-19 14:45:35.662143	f
133	72	4	Strongly Agree	f	t	2015-03-19 14:45:35.667006	2015-03-19 14:45:35.667006	f
134	73	0	Strongly Disagree	f	t	2015-03-19 14:45:35.686058	2015-03-19 14:45:35.686058	f
135	73	1	Disagree	f	t	2015-03-19 14:45:35.691625	2015-03-19 14:45:35.691625	f
136	73	2	Neither	f	t	2015-03-19 14:45:35.696274	2015-03-19 14:45:35.696274	f
137	73	3	Agree	f	t	2015-03-19 14:45:35.700972	2015-03-19 14:45:35.700972	f
138	73	4	Strongly Agree	f	t	2015-03-19 14:45:35.706968	2015-03-19 14:45:35.706968	f
139	74	0	Strongly Disagree	f	t	2015-03-19 14:45:35.725939	2015-03-19 14:45:35.725939	f
140	74	1	Disagree	f	t	2015-03-19 14:45:35.731271	2015-03-19 14:45:35.731271	f
141	74	2	Neither	f	t	2015-03-19 14:45:35.736302	2015-03-19 14:45:35.736302	f
142	74	3	Agree	f	t	2015-03-19 14:45:35.740904	2015-03-19 14:45:35.740904	f
143	74	4	Strongly Agree	f	t	2015-03-19 14:45:35.745628	2015-03-19 14:45:35.745628	f
144	75	0	Strongly Disagree	f	t	2015-03-19 14:45:35.763874	2015-03-19 14:45:35.763874	f
145	75	1	Disagree	f	t	2015-03-19 14:45:35.769332	2015-03-19 14:45:35.769332	f
146	75	2	Neither	f	t	2015-03-19 14:45:35.774461	2015-03-19 14:45:35.774461	f
147	75	3	Agree	f	t	2015-03-19 14:45:35.779759	2015-03-19 14:45:35.779759	f
148	75	4	Strongly Agree	f	t	2015-03-19 14:45:35.784913	2015-03-19 14:45:35.784913	f
149	76	0	Strongly Disagree	f	t	2015-03-19 14:45:35.803852	2015-03-19 14:45:35.803852	f
150	76	1	Disagree	f	t	2015-03-19 14:45:35.809281	2015-03-19 14:45:35.809281	f
151	76	2	Neither	f	t	2015-03-19 14:45:35.820525	2015-03-19 14:45:35.820525	f
152	76	3	Agree	f	t	2015-03-19 14:45:35.825792	2015-03-19 14:45:35.825792	f
153	76	4	Strongly Agree	f	t	2015-03-19 14:45:35.830633	2015-03-19 14:45:35.830633	f
154	77	0	Strongly Disagree	f	t	2015-03-19 14:45:35.849586	2015-03-19 14:45:35.849586	f
155	77	1	Disagree	f	t	2015-03-19 14:45:35.854906	2015-03-19 14:45:35.854906	f
156	77	2	Neither	f	t	2015-03-19 14:45:35.859618	2015-03-19 14:45:35.859618	f
157	77	3	Agree	f	t	2015-03-19 14:45:35.864408	2015-03-19 14:45:35.864408	f
158	77	4	Strongly Agree	f	t	2015-03-19 14:45:35.869909	2015-03-19 14:45:35.869909	f
159	78	0	Strongly Disagree	f	t	2015-03-19 14:45:35.888368	2015-03-19 14:45:35.888368	f
160	78	1	Disagree	f	t	2015-03-19 14:45:35.894122	2015-03-19 14:45:35.894122	f
161	78	2	Neither	f	t	2015-03-19 14:45:35.89907	2015-03-19 14:45:35.89907	f
162	78	3	Agree	f	t	2015-03-19 14:45:35.90381	2015-03-19 14:45:35.90381	f
163	78	4	Strongly Agree	f	t	2015-03-19 14:45:35.908565	2015-03-19 14:45:35.908565	f
164	79	0	Strongly Disagree	f	t	2015-03-19 14:45:35.926257	2015-03-19 14:45:35.926257	f
165	79	1	Disagree	f	t	2015-03-19 14:45:35.931652	2015-03-19 14:45:35.931652	f
166	79	2	Neither	f	t	2015-03-19 14:45:35.936552	2015-03-19 14:45:35.936552	f
167	79	3	Agree	f	t	2015-03-19 14:45:35.941366	2015-03-19 14:45:35.941366	f
168	79	4	Strongly Agree	f	t	2015-03-19 14:45:35.94618	2015-03-19 14:45:35.94618	f
169	80	0	Strongly Disagree	f	t	2015-03-19 14:45:35.964137	2015-03-19 14:45:35.964137	f
170	80	1	Disagree	f	t	2015-03-19 14:45:35.969568	2015-03-19 14:45:35.969568	f
171	80	2	Neither	f	t	2015-03-19 14:45:35.974564	2015-03-19 14:45:35.974564	f
172	80	3	Agree	f	t	2015-03-19 14:45:35.979452	2015-03-19 14:45:35.979452	f
173	80	4	Strongly Agree	f	t	2015-03-19 14:45:35.984365	2015-03-19 14:45:35.984365	f
174	81	0	Strongly Disagree	f	t	2015-03-19 14:45:36.002478	2015-03-19 14:45:36.002478	f
175	81	1	Disagree	f	t	2015-03-19 14:45:36.009312	2015-03-19 14:45:36.009312	f
176	81	2	Neither	f	t	2015-03-19 14:45:36.014413	2015-03-19 14:45:36.014413	f
177	81	3	Agree	f	t	2015-03-19 14:45:36.019261	2015-03-19 14:45:36.019261	f
178	81	4	Strongly Agree	f	t	2015-03-19 14:45:36.024219	2015-03-19 14:45:36.024219	f
179	82	0	Strongly Disagree	f	t	2015-03-19 14:45:36.04199	2015-03-19 14:45:36.04199	f
180	82	1	Disagree	f	t	2015-03-19 14:45:36.047799	2015-03-19 14:45:36.047799	f
181	82	2	Neither	f	t	2015-03-19 14:45:36.052765	2015-03-19 14:45:36.052765	f
182	82	3	Agree	f	t	2015-03-19 14:45:36.059032	2015-03-19 14:45:36.059032	f
183	82	4	Strongly Agree	f	t	2015-03-19 14:45:36.064037	2015-03-19 14:45:36.064037	f
184	83	0	Strongly Disagree	f	t	2015-03-19 14:45:36.081675	2015-03-19 14:45:36.081675	f
185	83	1	Disagree	f	t	2015-03-19 14:45:36.08697	2015-03-19 14:45:36.08697	f
186	83	2	Neither	f	t	2015-03-19 14:45:36.091864	2015-03-19 14:45:36.091864	f
187	83	3	Agree	f	t	2015-03-19 14:45:36.096623	2015-03-19 14:45:36.096623	f
188	83	4	Strongly Agree	f	t	2015-03-19 14:45:36.101575	2015-03-19 14:45:36.101575	f
189	85	0	Strongly Disagree	f	t	2015-03-19 14:45:36.139788	2015-03-19 14:45:36.139788	f
190	85	1	Disagree	f	t	2015-03-19 14:45:36.145023	2015-03-19 14:45:36.145023	f
191	85	2	Neither	f	t	2015-03-19 14:45:36.149959	2015-03-19 14:45:36.149959	f
192	85	3	Agree	f	t	2015-03-19 14:45:36.154882	2015-03-19 14:45:36.154882	f
193	85	4	Strongly Agree	f	t	2015-03-19 14:45:36.160606	2015-03-19 14:45:36.160606	f
194	86	0	Strongly Disagree	f	t	2015-03-19 14:45:36.17974	2015-03-19 14:45:36.17974	f
195	86	1	Disagree	f	t	2015-03-19 14:45:36.184963	2015-03-19 14:45:36.184963	f
196	86	2	Neither	f	t	2015-03-19 14:45:36.189674	2015-03-19 14:45:36.189674	f
197	86	3	Agree	f	t	2015-03-19 14:45:36.194769	2015-03-19 14:45:36.194769	f
198	86	4	Strongly Agree	f	t	2015-03-19 14:45:36.200143	2015-03-19 14:45:36.200143	f
199	87	0	Strongly Disagree	f	t	2015-03-19 14:45:36.219086	2015-03-19 14:45:36.219086	f
200	87	1	Disagree	f	t	2015-03-19 14:45:36.224447	2015-03-19 14:45:36.224447	f
201	87	2	Neither	f	t	2015-03-19 14:45:36.229647	2015-03-19 14:45:36.229647	f
202	87	3	Agree	f	t	2015-03-19 14:45:36.234993	2015-03-19 14:45:36.234993	f
203	87	4	Strongly Agree	f	t	2015-03-19 14:45:36.23986	2015-03-19 14:45:36.23986	f
204	88	0	Strongly Disagree	f	t	2015-03-19 14:45:36.257537	2015-03-19 14:45:36.257537	f
205	88	1	Disagree	f	t	2015-03-19 14:45:36.263222	2015-03-19 14:45:36.263222	f
206	88	2	Neither	f	t	2015-03-19 14:45:36.269678	2015-03-19 14:45:36.269678	f
207	88	3	Agree	f	t	2015-03-19 14:45:36.274673	2015-03-19 14:45:36.274673	f
208	88	4	Strongly Agree	f	t	2015-03-19 14:45:36.279465	2015-03-19 14:45:36.279465	f
209	90	0	Never	f	t	2015-03-19 14:45:36.310429	2015-03-19 14:45:36.310429	f
210	90	1	Rarely	f	t	2015-03-19 14:45:36.316235	2015-03-19 14:45:36.316235	f
211	90	2	Sometimes	f	t	2015-03-19 14:45:36.321763	2015-03-19 14:45:36.321763	f
212	90	3	Most of the time	f	t	2015-03-19 14:45:36.327264	2015-03-19 14:45:36.327264	f
213	90	4	Always	f	t	2015-03-19 14:45:36.333283	2015-03-19 14:45:36.333283	f
214	91	0	Never	f	t	2015-03-19 14:45:36.351718	2015-03-19 14:45:36.351718	f
215	91	1	Rarely	f	t	2015-03-19 14:45:36.357256	2015-03-19 14:45:36.357256	f
216	91	2	Sometimes	f	t	2015-03-19 14:45:36.362485	2015-03-19 14:45:36.362485	f
217	91	3	Most of the time	f	t	2015-03-19 14:45:36.36734	2015-03-19 14:45:36.36734	f
218	91	4	Always	f	t	2015-03-19 14:45:36.372356	2015-03-19 14:45:36.372356	f
219	92	0	Never	f	t	2015-03-19 14:45:36.391937	2015-03-19 14:45:36.391937	f
220	92	1	Rarely	f	t	2015-03-19 14:45:36.397619	2015-03-19 14:45:36.397619	f
221	92	2	Sometimes	f	t	2015-03-19 14:45:36.408925	2015-03-19 14:45:36.408925	f
222	92	3	Most of the time	f	t	2015-03-19 14:45:36.414051	2015-03-19 14:45:36.414051	f
223	92	4	Always	f	t	2015-03-19 14:45:36.419041	2015-03-19 14:45:36.419041	f
224	93	0	Never	f	t	2015-03-19 14:45:36.437235	2015-03-19 14:45:36.437235	f
225	93	1	Rarely	f	t	2015-03-19 14:45:36.442801	2015-03-19 14:45:36.442801	f
226	93	2	Sometimes	f	t	2015-03-19 14:45:36.447575	2015-03-19 14:45:36.447575	f
227	93	3	Most of the time	f	t	2015-03-19 14:45:36.45221	2015-03-19 14:45:36.45221	f
228	93	4	Always	f	t	2015-03-19 14:45:36.457051	2015-03-19 14:45:36.457051	f
229	94	0	Never	f	t	2015-03-19 14:45:36.474132	2015-03-19 14:45:36.474132	f
230	94	1	Rarely	f	t	2015-03-19 14:45:36.479448	2015-03-19 14:45:36.479448	f
231	94	2	Sometimes	f	t	2015-03-19 14:45:36.485706	2015-03-19 14:45:36.485706	f
232	94	3	Most of the time	f	t	2015-03-19 14:45:36.4907	2015-03-19 14:45:36.4907	f
233	94	4	Always	f	t	2015-03-19 14:45:36.495305	2015-03-19 14:45:36.495305	f
234	95	0	Never	f	t	2015-03-19 14:45:36.515318	2015-03-19 14:45:36.515318	f
235	95	1	Rarely	f	t	2015-03-19 14:45:36.520784	2015-03-19 14:45:36.520784	f
236	95	2	Sometimes	f	t	2015-03-19 14:45:36.526247	2015-03-19 14:45:36.526247	f
237	95	3	Most of the time	f	t	2015-03-19 14:45:36.531348	2015-03-19 14:45:36.531348	f
238	95	4	Always	f	t	2015-03-19 14:45:36.536604	2015-03-19 14:45:36.536604	f
239	97	0	Never	f	t	2015-03-19 14:45:36.569064	2015-03-19 14:45:36.569064	f
240	97	1	Rarely	f	t	2015-03-19 14:45:36.575091	2015-03-19 14:45:36.575091	f
241	97	2	Sometimes	f	t	2015-03-19 14:45:36.580219	2015-03-19 14:45:36.580219	f
242	97	3	Most of the time	f	t	2015-03-19 14:45:36.585238	2015-03-19 14:45:36.585238	f
243	97	4	Always	f	t	2015-03-19 14:45:36.591182	2015-03-19 14:45:36.591182	f
244	98	0	Never	f	t	2015-03-19 14:45:36.609786	2015-03-19 14:45:36.609786	f
245	98	1	Rarely	f	t	2015-03-19 14:45:36.615053	2015-03-19 14:45:36.615053	f
246	98	2	Sometimes	f	t	2015-03-19 14:45:36.620537	2015-03-19 14:45:36.620537	f
247	98	3	Most of the time	f	t	2015-03-19 14:45:36.62563	2015-03-19 14:45:36.62563	f
248	98	4	Always	f	t	2015-03-19 14:45:36.630407	2015-03-19 14:45:36.630407	f
249	99	0	Never	f	t	2015-03-19 14:45:36.649189	2015-03-19 14:45:36.649189	f
250	99	1	Rarely	f	t	2015-03-19 14:45:36.654684	2015-03-19 14:45:36.654684	f
251	99	2	Sometimes	f	t	2015-03-19 14:45:36.659558	2015-03-19 14:45:36.659558	f
252	99	3	Most of the time	f	t	2015-03-19 14:45:36.664358	2015-03-19 14:45:36.664358	f
253	99	4	Always	f	t	2015-03-19 14:45:36.669771	2015-03-19 14:45:36.669771	f
254	101	0	E	f	t	2015-03-19 14:45:36.707116	2015-03-19 14:45:36.707116	f
255	101	1	D	f	t	2015-03-19 14:45:36.71194	2015-03-19 14:45:36.71194	f
256	101	2	C	f	t	2015-03-19 14:45:36.716715	2015-03-19 14:45:36.716715	f
257	101	3	B	f	t	2015-03-19 14:45:36.721764	2015-03-19 14:45:36.721764	f
258	101	4	A	f	t	2015-03-19 14:45:36.726626	2015-03-19 14:45:36.726626	f
259	103	0	Strongly Disagree	f	t	2015-03-19 14:45:36.758959	2015-03-19 14:45:36.758959	f
260	103	1	Disagree	f	t	2015-03-19 14:45:36.764206	2015-03-19 14:45:36.764206	f
261	103	2	Neither	f	t	2015-03-19 14:45:36.76903	2015-03-19 14:45:36.76903	f
262	103	3	Agree	f	t	2015-03-19 14:45:36.773921	2015-03-19 14:45:36.773921	f
263	103	4	Strongly Agree	f	t	2015-03-19 14:45:36.778925	2015-03-19 14:45:36.778925	f
264	104	0	Strongly Disagree	f	t	2015-03-19 14:45:36.798442	2015-03-19 14:45:36.798442	f
265	104	1	Disagree	f	t	2015-03-19 14:45:36.804024	2015-03-19 14:45:36.804024	f
266	104	2	Neither	f	t	2015-03-19 14:45:36.808991	2015-03-19 14:45:36.808991	f
267	104	3	Agree	f	t	2015-03-19 14:45:36.813913	2015-03-19 14:45:36.813913	f
268	104	4	Strongly Agree	f	t	2015-03-19 14:45:36.819469	2015-03-19 14:45:36.819469	f
269	105	0	Strongly Disagree	f	t	2015-03-19 14:45:36.839068	2015-03-19 14:45:36.839068	f
270	105	1	Disagree	f	t	2015-03-19 14:45:36.8442	2015-03-19 14:45:36.8442	f
271	105	2	Neither	f	t	2015-03-19 14:45:36.849894	2015-03-19 14:45:36.849894	f
272	105	3	Agree	f	t	2015-03-19 14:45:36.855019	2015-03-19 14:45:36.855019	f
273	105	4	Strongly Agree	f	t	2015-03-19 14:45:36.85987	2015-03-19 14:45:36.85987	f
274	106	0	Strongly Disagree	f	t	2015-03-19 14:45:36.878445	2015-03-19 14:45:36.878445	f
275	106	1	Disagree	f	t	2015-03-19 14:45:36.884201	2015-03-19 14:45:36.884201	f
276	106	2	Neither	f	t	2015-03-19 14:45:36.890268	2015-03-19 14:45:36.890268	f
277	106	3	Agree	f	t	2015-03-19 14:45:36.896799	2015-03-19 14:45:36.896799	f
278	106	4	Strongly Agree	f	t	2015-03-19 14:45:36.901981	2015-03-19 14:45:36.901981	f
279	107	0	Strongly Disagree	f	t	2015-03-19 14:45:36.921547	2015-03-19 14:45:36.921547	f
280	107	1	Disagree	f	t	2015-03-19 14:45:36.927537	2015-03-19 14:45:36.927537	f
281	107	2	Neither	f	t	2015-03-19 14:45:36.932604	2015-03-19 14:45:36.932604	f
282	107	3	Agree	f	t	2015-03-19 14:45:36.938114	2015-03-19 14:45:36.938114	f
283	107	4	Strongly Agree	f	t	2015-03-19 14:45:36.94353	2015-03-19 14:45:36.94353	f
284	108	0	Strongly Disagree	f	t	2015-03-19 14:45:36.968993	2015-03-19 14:45:36.968993	f
285	108	1	Disagree	f	t	2015-03-19 14:45:36.974423	2015-03-19 14:45:36.974423	f
286	108	2	Neither	f	t	2015-03-19 14:45:36.979044	2015-03-19 14:45:36.979044	f
287	108	3	Agree	f	t	2015-03-19 14:45:36.984381	2015-03-19 14:45:36.984381	f
288	108	4	Strongly Agree	f	t	2015-03-19 14:45:36.989621	2015-03-19 14:45:36.989621	f
289	109	0	Strongly Disagree	f	t	2015-03-19 14:45:37.009155	2015-03-19 14:45:37.009155	f
290	109	1	Disagree	f	t	2015-03-19 14:45:37.014392	2015-03-19 14:45:37.014392	f
291	109	2	Neither	f	t	2015-03-19 14:45:37.0196	2015-03-19 14:45:37.0196	f
292	109	3	Agree	f	t	2015-03-19 14:45:37.024884	2015-03-19 14:45:37.024884	f
293	109	4	Strongly Agree	f	t	2015-03-19 14:45:37.029579	2015-03-19 14:45:37.029579	f
294	110	0	Strongly Disagree	f	t	2015-03-19 14:45:37.04819	2015-03-19 14:45:37.04819	f
295	110	1	Disagree	f	t	2015-03-19 14:45:37.053951	2015-03-19 14:45:37.053951	f
296	110	2	Neither	f	t	2015-03-19 14:45:37.059687	2015-03-19 14:45:37.059687	f
297	110	3	Agree	f	t	2015-03-19 14:45:37.064839	2015-03-19 14:45:37.064839	f
298	110	4	Strongly Agree	f	t	2015-03-19 14:45:37.069909	2015-03-19 14:45:37.069909	f
299	111	0	Strongly Disagree	f	t	2015-03-19 14:45:37.088142	2015-03-19 14:45:37.088142	f
300	111	1	Disagree	f	t	2015-03-19 14:45:37.093934	2015-03-19 14:45:37.093934	f
301	111	2	Neither	f	t	2015-03-19 14:45:37.099219	2015-03-19 14:45:37.099219	f
302	111	3	Agree	f	t	2015-03-19 14:45:37.105187	2015-03-19 14:45:37.105187	f
303	111	4	Strongly Agree	f	t	2015-03-19 14:45:37.110342	2015-03-19 14:45:37.110342	f
304	112	0	Strongly Disagree	f	t	2015-03-19 14:45:37.129831	2015-03-19 14:45:37.129831	f
305	112	1	Disagree	f	t	2015-03-19 14:45:37.135217	2015-03-19 14:45:37.135217	f
306	112	2	Neither	f	t	2015-03-19 14:45:37.140284	2015-03-19 14:45:37.140284	f
307	112	3	Agree	f	t	2015-03-19 14:45:37.145163	2015-03-19 14:45:37.145163	f
308	112	4	Strongly Agree	f	t	2015-03-19 14:45:37.149849	2015-03-19 14:45:37.149849	f
309	113	0	Strongly Disagree	f	t	2015-03-19 14:45:37.169415	2015-03-19 14:45:37.169415	f
310	113	1	Disagree	f	t	2015-03-19 14:45:37.174862	2015-03-19 14:45:37.174862	f
311	113	2	Neither	f	t	2015-03-19 14:45:37.180259	2015-03-19 14:45:37.180259	f
312	113	3	Agree	f	t	2015-03-19 14:45:37.185317	2015-03-19 14:45:37.185317	f
313	113	4	Strongly Agree	f	t	2015-03-19 14:45:37.190704	2015-03-19 14:45:37.190704	f
314	115	0	No event reports	f	t	2015-03-19 14:45:37.222324	2015-03-19 14:45:37.222324	f
315	115	1	1 to 2 event reports	f	t	2015-03-19 14:45:37.228281	2015-03-19 14:45:37.228281	f
316	115	2	3 to 5 event reports	f	t	2015-03-19 14:45:37.233523	2015-03-19 14:45:37.233523	f
317	115	3	6 to 10 event reports	f	t	2015-03-19 14:45:37.24379	2015-03-19 14:45:37.24379	f
318	115	4	11 to 20 event reports	f	t	2015-03-19 14:45:37.248887	2015-03-19 14:45:37.248887	f
319	115	5	21 event reports or more	f	t	2015-03-19 14:45:37.255319	2015-03-19 14:45:37.255319	f
320	117	0	Less than 1 year	f	t	2015-03-19 14:45:37.287733	2015-03-19 14:45:37.287733	f
321	117	1	1 to 5 years	f	t	2015-03-19 14:45:37.293443	2015-03-19 14:45:37.293443	f
322	117	2	6 to 10 years	f	t	2015-03-19 14:45:37.298623	2015-03-19 14:45:37.298623	f
323	117	3	11 to 15 years	f	t	2015-03-19 14:45:37.304893	2015-03-19 14:45:37.304893	f
324	117	4	16 to 20 years	f	t	2015-03-19 14:45:37.31032	2015-03-19 14:45:37.31032	f
325	117	5	21 years or more	f	t	2015-03-19 14:45:37.315204	2015-03-19 14:45:37.315204	f
326	118	0	Less than 1 year	f	t	2015-03-19 14:45:37.334364	2015-03-19 14:45:37.334364	f
327	118	1	1 to 5 years	f	t	2015-03-19 14:45:37.341325	2015-03-19 14:45:37.341325	f
328	118	2	6 to 10 years	f	t	2015-03-19 14:45:37.346739	2015-03-19 14:45:37.346739	f
329	118	3	11 to 15 years	f	t	2015-03-19 14:45:37.351733	2015-03-19 14:45:37.351733	f
330	118	4	16 to 20 years	f	t	2015-03-19 14:45:37.357969	2015-03-19 14:45:37.357969	f
331	118	5	21 years or more	f	t	2015-03-19 14:45:37.363092	2015-03-19 14:45:37.363092	f
332	119	0	Less than 20 hours per week	f	t	2015-03-19 14:45:37.381221	2015-03-19 14:45:37.381221	f
333	119	1	20 to 39 hours per week	f	t	2015-03-19 14:45:37.386933	2015-03-19 14:45:37.386933	f
334	119	2	40 to 59 hours per week	f	t	2015-03-19 14:45:37.392591	2015-03-19 14:45:37.392591	f
335	119	3	60 to 79 hours per week	f	t	2015-03-19 14:45:37.397375	2015-03-19 14:45:37.397375	f
336	119	4	80 to 99 hours per week	f	t	2015-03-19 14:45:37.402265	2015-03-19 14:45:37.402265	f
337	119	5	100 hours per week or more 	f	t	2015-03-19 14:45:37.407644	2015-03-19 14:45:37.407644	f
338	120	0	Registered Nurse	f	t	2015-03-19 14:45:37.42719	2015-03-19 14:45:37.42719	f
339	120	1	Physician Assistant/Nurse Practitioner	f	t	2015-03-19 14:45:37.432376	2015-03-19 14:45:37.432376	f
340	120	2	LVN/LPN	f	t	2015-03-19 14:45:37.437496	2015-03-19 14:45:37.437496	f
341	120	3	Patient Care Asst/Hospital Aide/Care Partner	f	t	2015-03-19 14:45:37.442462	2015-03-19 14:45:37.442462	f
342	120	4	Attending/Staff Physician	f	t	2015-03-19 14:45:37.447497	2015-03-19 14:45:37.447497	f
343	120	5	Resident Physician/Physician in Training	f	t	2015-03-19 14:45:37.452599	2015-03-19 14:45:37.452599	f
344	120	6	Pharmacist	f	t	2015-03-19 14:45:37.458392	2015-03-19 14:45:37.458392	f
345	120	7	Dietician	f	t	2015-03-19 14:45:37.463566	2015-03-19 14:45:37.463566	f
346	120	8	Unit Assistant/Clerk/Secretary	f	t	2015-03-19 14:45:37.468464	2015-03-19 14:45:37.468464	f
347	120	9	Respiratory Therapist	f	t	2015-03-19 14:45:37.473271	2015-03-19 14:45:37.473271	f
348	120	10	Physical, Occupational, or Speech Therapist	f	t	2015-03-19 14:45:37.477996	2015-03-19 14:45:37.477996	f
349	120	11	Technician (e.g., EKG, Lab, Radiology)	f	t	2015-03-19 14:45:37.482747	2015-03-19 14:45:37.482747	f
350	120	12	Administration/Management	f	t	2015-03-19 14:45:37.488035	2015-03-19 14:45:37.488035	f
351	120	13	Other	f	t	2015-03-19 14:45:37.492958	2015-03-19 14:45:37.492958	f
352	122	0	YES, I typically have direct interaction or contact with patients.	f	t	2015-03-19 14:45:37.529522	2015-03-19 14:45:37.529522	f
353	122	1	NO, I typically do NOT have direct interaction or contact with patients.	f	t	2015-03-19 14:45:37.535153	2015-03-19 14:45:37.535153	f
354	123	0	Less than 1 year	f	t	2015-03-19 14:45:37.554287	2015-03-19 14:45:37.554287	f
355	123	1	1 to 5 years	f	t	2015-03-19 14:45:37.559624	2015-03-19 14:45:37.559624	f
356	123	2	6 to 10 years	f	t	2015-03-19 14:45:37.564954	2015-03-19 14:45:37.564954	f
357	123	3	11 to 15 years	f	t	2015-03-19 14:45:37.571087	2015-03-19 14:45:37.571087	f
358	123	4	16 to 20 years	f	t	2015-03-19 14:45:37.576532	2015-03-19 14:45:37.576532	f
359	123	5	21 years or more	f	t	2015-03-19 14:45:37.581204	2015-03-19 14:45:37.581204	f
\.


--
-- Name: element_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('element_options_id_seq', 359, true);


--
-- Data for Name: element_types; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY element_types (id, e_type, created_at, updated_at) FROM stdin;
1	text	2015-03-19 14:45:29.925928	2015-03-19 14:45:29.925928
2	radio	2015-03-19 14:45:29.928974	2015-03-19 14:45:29.928974
3	text_area	2015-03-19 14:45:29.930784	2015-03-19 14:45:29.930784
4	select	2015-03-19 14:45:29.932484	2015-03-19 14:45:29.932484
5	checkbox	2015-03-19 14:45:29.933935	2015-03-19 14:45:29.933935
6	date	2015-03-19 14:45:29.935341	2015-03-19 14:45:29.935341
7	datetime	2015-03-19 14:45:29.93675	2015-03-19 14:45:29.93675
8	number	2015-03-19 14:45:29.938241	2015-03-19 14:45:29.938241
9	tel	2015-03-19 14:45:29.939694	2015-03-19 14:45:29.939694
10	matrix	2015-03-19 14:45:29.941171	2015-03-19 14:45:29.941171
11	section	2015-03-19 14:45:29.943054	2015-03-19 14:45:29.943054
\.


--
-- Name: element_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('element_types_id_seq', 11, true);


--
-- Data for Name: form_1; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_1 (id, enabled, resume_key, created_at, updated_at, "element_ 0_1", "element_ 1_1", "element_ 2_1", "element_ 3_1", "element_ 4_1", "element_ 5_1", "element_ 6_1", "element_ 7_1", "element_ 8_1", "element_ 9_1", "element_ 10_1") FROM stdin;
\.


--
-- Name: form_1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_1_id_seq', 1, false);


--
-- Data for Name: form_2; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_2 (id, enabled, resume_key, created_at, updated_at, "element_ 0_1", "element_ 1_1", "element_ 2_1", "element_ 3_1", "element_ 4_1", "element_ 5_1", "element_ 6_1", "element_ 7_1", "element_ 8_1", "element_ 9_1", "element_ 10_1") FROM stdin;
\.


--
-- Name: form_2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_2_id_seq', 1, false);


--
-- Data for Name: form_3; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_3 (id, enabled, resume_key, created_at, updated_at, "element_ 0_1", "element_ 1_1", "element_ 2_1", "element_ 3_1", "element_ 4_1", "element_ 5_1", "element_ 6_1", "element_ 7_1", "element_ 8_1", "element_ 9_1", "element_ 10_1") FROM stdin;
\.


--
-- Name: form_3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_3_id_seq', 1, false);


--
-- Data for Name: form_4; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_4 (id, enabled, resume_key, created_at, updated_at, "element_ 0_1", "element_ 1_1", "element_ 2_1", "element_ 3_1", "element_ 4_1", "element_ 5_1", "element_ 6_1", "element_ 7_1", "element_ 8_1", "element_ 9_1", "element_ 10_1") FROM stdin;
\.


--
-- Name: form_4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_4_id_seq', 1, false);


--
-- Data for Name: form_5; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_5 (id, enabled, resume_key, created_at, updated_at, "element_ 0_1", "element_ 1_1", "element_ 2_1", "element_ 3_1", "element_ 4_1", "element_ 5_1", "element_ 6_1", "element_ 7_1", "element_ 8_1", "element_ 9_1", "element_ 10_1") FROM stdin;
\.


--
-- Name: form_5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_5_id_seq', 1, false);


--
-- Data for Name: form_6; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_6 (id, enabled, resume_key, created_at, updated_at, element_38_1, element_39_1, element_40_1, element_1_1, element_2_1, element_3_1, element_4_1, element_5_1, element_6_1, element_7_1, element_8_16, element_8_17, element_8_18, element_8_19, element_8_110, element_8_111, element_8_112, element_8_113, element_8_114, element_8_115, element_8_116, element_8_117, element_8_118, element_8_119, element_8_120, element_8_121, element_8_122, element_8_123, element_9_1, element_10_16, element_10_17, element_10_18, element_10_19, element_11_1, element_12_1, element_12_2, element_12_3, element_12_4, element_12_5, element_12_6, element_13_1, element_14_1, element_14_2, element_14_3, element_15_1, element_16_1, element_17_1, element_18_1, element_18_2, element_18_3, element_18_4, element_18_5, element_18_6, element_18_7, element_18_8, element_18_9, element_18_10, element_18_11, element_19_1, element_20_1, element_21_1, element_22_1, element_23_1, element_24_1, element_25_1, element_26_1, element_27_1, element_28_1, element_29_1, element_30_1, element_31_1, element_32_1, element_33_1, element_34_1, element_35_1, element_36_1, element_37_1) FROM stdin;
1	\N	\N	\N	\N				null	null		null		null		null	null	null	null	null	null	null	null	null	null	null	null	null	null	null	null	null	null		null	null	null	null		null	null	null	null	null	null		null	null	null		null		null	null	null	null	null	null	null	null	null	null	null		null		null	null	null	null		null	null			9	3	6	8	2	1	21
2	\N	\N	\N	\N				null	null		null		null		null	null	null	null	null	null	null	null	null	null	null	null	null	null	null	null	null	null		null	null	null	null		null	null	null	null	null	null		null	null	null		null		null	null	null	null	null	null	null	null	null	null	null		null		null	null	null	null		null	null			2	1	4	1	1		21
3	\N	\N	\N	\N				null	null		null		null		Neither	Neither	Neither	Neither	Neither	Neither	Neither	Neither	Disagree	Disagree	Disagree	Disagree	Disagree	Neither	Strongly Agree	Agree	Neither	Agree		Neither	Neither	Agree	Agree		Rarely	Rarely	Rarely	Sometimes	Sometimes	Sometimes		Never	Rarely	Rarely		C		Neither	Neither	Neither	Agree	Neither	Neither	Neither	Neither	Neither	Neither	Neither		null		null	null	null	null		null	null			2	1	4	1	1		21
4	\N	\N	\N	\N				null	null		Intensive care unit (ICU) - any type		N-ICU: Neuro ICU		Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree		Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree		Never	Never	Never	Never	Never	Never		Never	Never	Never		E		Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree	Strongly Disagree		11 to 20 event reports		1 to 5 years	11 to 15 years	Less than 20 hours per week	Dietician		NO, I typically do NOT have direct interaction or contact with patients.	Less than 1 year			2	1	4	1	1		21
\.


--
-- Name: form_6_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_6_id_seq', 4, true);


--
-- Data for Name: form_element_dictionary_options; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_element_dictionary_options (id, form_id, form_element_id, element_option_id, export_value, variable_type, created_at, updated_at) FROM stdin;
1	1	2	1	0	\N	2015-03-19 14:45:30.325603	2015-03-19 14:45:30.325603
2	1	2	2	1	\N	2015-03-19 14:45:30.335414	2015-03-19 14:45:30.335414
3	1	2	3	2	\N	2015-03-19 14:45:30.344581	2015-03-19 14:45:30.344581
4	1	2	4	3	\N	2015-03-19 14:45:30.35333	2015-03-19 14:45:30.35333
5	1	4	5	0	\N	2015-03-19 14:45:30.362004	2015-03-19 14:45:30.362004
6	1	4	6	1	\N	2015-03-19 14:45:30.370582	2015-03-19 14:45:30.370582
7	1	4	7	2	\N	2015-03-19 14:45:30.378558	2015-03-19 14:45:30.378558
8	1	4	8	3	\N	2015-03-19 14:45:30.386587	2015-03-19 14:45:30.386587
9	1	5	9	0	\N	2015-03-19 14:45:30.394496	2015-03-19 14:45:30.394496
10	1	5	10	1	\N	2015-03-19 14:45:30.402541	2015-03-19 14:45:30.402541
11	1	5	11	2	\N	2015-03-19 14:45:30.410442	2015-03-19 14:45:30.410442
12	1	5	12	3	\N	2015-03-19 14:45:30.418834	2015-03-19 14:45:30.418834
13	2	13	13	0	\N	2015-03-19 14:45:30.726531	2015-03-19 14:45:30.726531
14	2	13	14	1	\N	2015-03-19 14:45:30.735343	2015-03-19 14:45:30.735343
15	2	13	15	2	\N	2015-03-19 14:45:30.743925	2015-03-19 14:45:30.743925
16	2	13	16	3	\N	2015-03-19 14:45:30.75255	2015-03-19 14:45:30.75255
17	2	15	17	0	\N	2015-03-19 14:45:30.761224	2015-03-19 14:45:30.761224
18	2	15	18	1	\N	2015-03-19 14:45:30.769895	2015-03-19 14:45:30.769895
19	2	15	19	2	\N	2015-03-19 14:45:30.777749	2015-03-19 14:45:30.777749
20	2	15	20	3	\N	2015-03-19 14:45:30.786063	2015-03-19 14:45:30.786063
21	2	16	21	0	\N	2015-03-19 14:45:30.794196	2015-03-19 14:45:30.794196
22	2	16	22	1	\N	2015-03-19 14:45:30.802473	2015-03-19 14:45:30.802473
23	2	16	23	2	\N	2015-03-19 14:45:30.817736	2015-03-19 14:45:30.817736
24	2	16	24	3	\N	2015-03-19 14:45:30.825939	2015-03-19 14:45:30.825939
25	3	24	25	0	\N	2015-03-19 14:45:31.240052	2015-03-19 14:45:31.240052
26	3	24	26	1	\N	2015-03-19 14:45:31.248849	2015-03-19 14:45:31.248849
27	3	24	27	2	\N	2015-03-19 14:45:31.258434	2015-03-19 14:45:31.258434
28	3	24	28	3	\N	2015-03-19 14:45:31.267529	2015-03-19 14:45:31.267529
29	3	26	29	0	\N	2015-03-19 14:45:31.276658	2015-03-19 14:45:31.276658
30	3	26	30	1	\N	2015-03-19 14:45:31.285162	2015-03-19 14:45:31.285162
31	3	26	31	2	\N	2015-03-19 14:45:31.293793	2015-03-19 14:45:31.293793
32	3	26	32	3	\N	2015-03-19 14:45:31.302174	2015-03-19 14:45:31.302174
33	3	27	33	0	\N	2015-03-19 14:45:31.310414	2015-03-19 14:45:31.310414
34	3	27	34	1	\N	2015-03-19 14:45:31.318574	2015-03-19 14:45:31.318574
35	3	27	35	2	\N	2015-03-19 14:45:31.326921	2015-03-19 14:45:31.326921
36	3	27	36	3	\N	2015-03-19 14:45:31.335367	2015-03-19 14:45:31.335367
37	4	35	37	0	\N	2015-03-19 14:45:31.843393	2015-03-19 14:45:31.843393
38	4	35	38	1	\N	2015-03-19 14:45:31.852616	2015-03-19 14:45:31.852616
39	4	35	39	2	\N	2015-03-19 14:45:31.861354	2015-03-19 14:45:31.861354
40	4	35	40	3	\N	2015-03-19 14:45:31.870041	2015-03-19 14:45:31.870041
41	4	37	41	0	\N	2015-03-19 14:45:31.878532	2015-03-19 14:45:31.878532
42	4	37	42	1	\N	2015-03-19 14:45:31.887423	2015-03-19 14:45:31.887423
43	4	37	43	2	\N	2015-03-19 14:45:31.895652	2015-03-19 14:45:31.895652
44	4	37	44	3	\N	2015-03-19 14:45:31.904163	2015-03-19 14:45:31.904163
45	4	38	45	0	\N	2015-03-19 14:45:31.912348	2015-03-19 14:45:31.912348
46	4	38	46	1	\N	2015-03-19 14:45:31.920848	2015-03-19 14:45:31.920848
47	4	38	47	2	\N	2015-03-19 14:45:31.928977	2015-03-19 14:45:31.928977
48	4	38	48	3	\N	2015-03-19 14:45:31.937172	2015-03-19 14:45:31.937172
49	5	48	56	0	\N	2015-03-19 14:45:32.246444	2015-03-19 14:45:32.246444
50	5	49	57	0	\N	2015-03-19 14:45:32.255228	2015-03-19 14:45:32.255228
51	5	49	58	1	\N	2015-03-19 14:45:32.264066	2015-03-19 14:45:32.264066
52	5	49	59	2	\N	2015-03-19 14:45:32.273499	2015-03-19 14:45:32.273499
53	5	49	60	3	\N	2015-03-19 14:45:32.281773	2015-03-19 14:45:32.281773
54	5	46	49	0	\N	2015-03-19 14:45:32.557617	2015-03-19 14:45:32.557617
55	5	46	50	1	\N	2015-03-19 14:45:32.566307	2015-03-19 14:45:32.566307
56	5	46	51	2	\N	2015-03-19 14:45:32.574328	2015-03-19 14:45:32.574328
57	5	46	52	3	\N	2015-03-19 14:45:32.582798	2015-03-19 14:45:32.582798
58	5	48	53	1	\N	2015-03-19 14:45:32.591532	2015-03-19 14:45:32.591532
59	5	48	54	2	\N	2015-03-19 14:45:32.599798	2015-03-19 14:45:32.599798
60	5	48	55	3	\N	2015-03-19 14:45:32.617202	2015-03-19 14:45:32.617202
\.


--
-- Name: form_element_dictionary_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_element_dictionary_options_id_seq', 60, true);


--
-- Data for Name: form_elements; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY form_elements (id, form_id, element_id, element_name, element_title, element_tool_tip, element_height, element_is_unique, element_is_required, element_is_private, element_type_id, element_position, element_default_value, element_range_min, element_range_max, element_choice_has_other, element_choice_other_label, element_address_us_only, element_date_enable_range, element_date_range_min, element_date_range_max, element_file_enable_type_limit, element_file_block_or_allow, element_file_type_list, element_file_as_attachment, element_file_enable_multi_upload, element_file_max_selection, element_file_enable_size_limit, element_file_size_max, element_matrix_allow_multiselect, element_matrix_parent_id, element_submit_primary_text, element_submit_secondary_text, element_page_number, created_at, updated_at, hidden) FROM stdin;
1	1	0	element_ 0_1	\N	\N	\N	f	f	f	1	0	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.104166	2015-03-19 14:45:30.104166	f
2	1	1	element_ 1_1	\N	\N	\N	f	f	f	2	1	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.117582	2015-03-19 14:45:30.117582	f
3	1	2	element_ 2_1	\N	\N	\N	f	f	f	3	2	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.127363	2015-03-19 14:45:30.127363	f
4	1	3	element_ 3_1	\N	\N	\N	f	f	f	4	3	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.137242	2015-03-19 14:45:30.137242	f
5	1	4	element_ 4_1	\N	\N	\N	f	f	f	5	4	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.146433	2015-03-19 14:45:30.146433	f
6	1	5	element_ 5_1	\N	\N	\N	f	f	f	6	5	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.156801	2015-03-19 14:45:30.156801	f
7	1	6	element_ 6_1	\N	\N	\N	f	f	f	7	6	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.166241	2015-03-19 14:45:30.166241	f
8	1	7	element_ 7_1	\N	\N	\N	f	f	f	8	7	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.175357	2015-03-19 14:45:30.175357	f
9	1	8	element_ 8_1	\N	\N	\N	f	f	f	9	8	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.184485	2015-03-19 14:45:30.184485	f
10	1	9	element_ 9_1	\N	\N	\N	f	f	f	10	9	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.193539	2015-03-19 14:45:30.193539	f
11	1	10	element_ 10_1	\N	\N	\N	f	f	f	11	10	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.202993	2015-03-19 14:45:30.202993	f
12	2	0	element_ 0_1	\N	\N	\N	f	f	f	1	0	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.444282	2015-03-19 14:45:30.444282	f
13	2	1	element_ 1_1	\N	\N	\N	f	f	f	2	1	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.454867	2015-03-19 14:45:30.454867	f
14	2	2	element_ 2_1	\N	\N	\N	f	f	f	3	2	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.464962	2015-03-19 14:45:30.464962	f
15	2	3	element_ 3_1	\N	\N	\N	f	f	f	4	3	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.474271	2015-03-19 14:45:30.474271	f
16	2	4	element_ 4_1	\N	\N	\N	f	f	f	5	4	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.482968	2015-03-19 14:45:30.482968	f
17	2	5	element_ 5_1	\N	\N	\N	f	f	f	6	5	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.493091	2015-03-19 14:45:30.493091	f
18	2	6	element_ 6_1	\N	\N	\N	f	f	f	7	6	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.50328	2015-03-19 14:45:30.50328	f
19	2	7	element_ 7_1	\N	\N	\N	f	f	f	8	7	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.512472	2015-03-19 14:45:30.512472	f
20	2	8	element_ 8_1	\N	\N	\N	f	f	f	9	8	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.521526	2015-03-19 14:45:30.521526	f
21	2	9	element_ 9_1	\N	\N	\N	f	f	f	10	9	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.531831	2015-03-19 14:45:30.531831	f
22	2	10	element_ 10_1	\N	\N	\N	f	f	f	11	10	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.542478	2015-03-19 14:45:30.542478	f
23	3	0	element_ 0_1	\N	\N	\N	f	f	f	1	0	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.853668	2015-03-19 14:45:30.853668	f
24	3	1	element_ 1_1	\N	\N	\N	f	f	f	2	1	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.864078	2015-03-19 14:45:30.864078	f
25	3	2	element_ 2_1	\N	\N	\N	f	f	f	3	2	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.873284	2015-03-19 14:45:30.873284	f
26	3	3	element_ 3_1	\N	\N	\N	f	f	f	4	3	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.883465	2015-03-19 14:45:30.883465	f
27	3	4	element_ 4_1	\N	\N	\N	f	f	f	5	4	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.896516	2015-03-19 14:45:30.896516	f
28	3	5	element_ 5_1	\N	\N	\N	f	f	f	6	5	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.907198	2015-03-19 14:45:30.907198	f
29	3	6	element_ 6_1	\N	\N	\N	f	f	f	7	6	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.916272	2015-03-19 14:45:30.916272	f
30	3	7	element_ 7_1	\N	\N	\N	f	f	f	8	7	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.926286	2015-03-19 14:45:30.926286	f
31	3	8	element_ 8_1	\N	\N	\N	f	f	f	9	8	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.93878	2015-03-19 14:45:30.93878	f
32	3	9	element_ 9_1	\N	\N	\N	f	f	f	10	9	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.949605	2015-03-19 14:45:30.949605	f
33	3	10	element_ 10_1	\N	\N	\N	f	f	f	11	10	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:30.959072	2015-03-19 14:45:30.959072	f
34	4	0	element_ 0_1	\N	\N	\N	f	f	f	1	0	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.368951	2015-03-19 14:45:31.368951	f
35	4	1	element_ 1_1	\N	\N	\N	f	f	f	2	1	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.379583	2015-03-19 14:45:31.379583	f
36	4	2	element_ 2_1	\N	\N	\N	f	f	f	3	2	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.392154	2015-03-19 14:45:31.392154	f
37	4	3	element_ 3_1	\N	\N	\N	f	f	f	4	3	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.401448	2015-03-19 14:45:31.401448	f
38	4	4	element_ 4_1	\N	\N	\N	f	f	f	5	4	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.410423	2015-03-19 14:45:31.410423	f
39	4	5	element_ 5_1	\N	\N	\N	f	f	f	6	5	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.420428	2015-03-19 14:45:31.420428	f
40	4	6	element_ 6_1	\N	\N	\N	f	f	f	7	6	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.430366	2015-03-19 14:45:31.430366	f
41	4	7	element_ 7_1	\N	\N	\N	f	f	f	8	7	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.441064	2015-03-19 14:45:31.441064	f
42	4	8	element_ 8_1	\N	\N	\N	f	f	f	9	8	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.450857	2015-03-19 14:45:31.450857	f
43	4	9	element_ 9_1	\N	\N	\N	f	f	f	10	9	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.460349	2015-03-19 14:45:31.460349	f
44	4	10	element_ 10_1	\N	\N	\N	f	f	f	11	10	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.471614	2015-03-19 14:45:31.471614	f
45	5	0	element_ 0_1	\N	\N	\N	f	f	f	1	0	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.962135	2015-03-19 14:45:31.962135	f
46	5	1	element_ 1_1	\N	\N	\N	f	f	f	2	1	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.974193	2015-03-19 14:45:31.974193	f
47	5	2	element_ 2_1	\N	\N	\N	f	f	f	3	2	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.98355	2015-03-19 14:45:31.98355	f
48	5	3	element_ 3_1	\N	\N	\N	f	f	f	4	3	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:31.992559	2015-03-19 14:45:31.992559	f
49	5	4	element_ 4_1	\N	\N	\N	f	f	f	5	4	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:32.002152	2015-03-19 14:45:32.002152	f
50	5	5	element_ 5_1	\N	\N	\N	f	f	f	6	5	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:32.012411	2015-03-19 14:45:32.012411	f
51	5	6	element_ 6_1	\N	\N	\N	f	f	f	7	6	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:32.02352	2015-03-19 14:45:32.02352	f
52	5	7	element_ 7_1	\N	\N	\N	f	f	f	8	7	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:32.03383	2015-03-19 14:45:32.03383	f
53	5	8	element_ 8_1	\N	\N	\N	f	f	f	9	8	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:32.043621	2015-03-19 14:45:32.043621	f
54	5	9	element_ 9_1	\N	\N	\N	f	f	f	10	9	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:32.054615	2015-03-19 14:45:32.054615	f
55	5	10	element_ 10_1	\N	\N	\N	f	f	f	11	10	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:32.064982	2015-03-19 14:45:32.064982	f
56	6	38	element_38_1	Instructions	This survey asks for your opinions about patient safety issues, medical error, and event reporting in your hospital and will take about 10 to 15 minutes to complete.\n\nIf you do not wish to answer a question, or if a question does not apply to you, you may leave your answer blank.	\N	f	f	f	11	0	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.067622	2015-03-19 14:45:35.067622	f
57	6	39	element_39_1	In addition:	An 'event' is defined as any type of error, mistake, incident, accident, or deviation, regardless of whether or not it results in patient harm. \n\n'Patient safety' is defined as the avoidance and prevention of patient injuries or adverse events resulting from the processes of health care delivery.	\N	f	f	f	11	1	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.081853	2015-03-19 14:45:35.081853	f
58	6	40	element_40_1	Primary Language		\N	f	f	f	11	2	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.092861	2015-03-19 14:45:35.092861	f
59	6	1	element_1_1	What language do you use most often to speak or read at work?	\N	\N	f	f	f	2	3	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.103473	2015-03-19 14:45:35.103473	f
60	6	2	element_2_1	If English is not your primary language, did you receive help to fill out this survey?	\N	\N	f	f	f	2	4	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.174311	2015-03-19 14:45:35.174311	f
61	6	3	element_3_1	SECTION A: Your Work Area/Unit	In this survey, think of your “unit” as the work area, department, or clinical area of the hospital where you spend most of your work time or provide most of your clinical services.	\N	f	f	f	11	5	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.202195	2015-03-19 14:45:35.202195	f
62	6	4	element_4_1	What is your primary work area or unit in this hospital? Select ONE answer.	\N	\N	f	f	f	2	6	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.213802	2015-03-19 14:45:35.213802	f
63	6	5	element_5_1	If other please specify	\N	\N	f	f	f	1	7	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.30703	2015-03-19 14:45:35.30703	f
64	6	6	element_6_1	If you chose ICU, please select which type of ICU you work in most often:	\N	\N	f	f	f	2	8	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.317983	2015-03-19 14:45:35.317983	f
65	6	7	element_7_1	If other please specify	\N	\N	f	f	f	1	9	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:35.380367	2015-03-19 14:45:35.380367	f
66	6	8	element_8_16	People support one another in this unit.	\N	\N	f	f	f	10	10	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.394274	2015-03-19 14:45:35.394274	f
67	6	8	element_8_17	We have enough staff to handle the workload.	\N	\N	f	f	f	10	11	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.433658	2015-03-19 14:45:35.433658	f
68	6	8	element_8_18	When a lot of work needs to be done quickly, we work together as a team to get the work done.	\N	\N	f	f	f	10	12	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.472255	2015-03-19 14:45:35.472255	f
69	6	8	element_8_19	In this unit, people treat each other with respect.	\N	\N	f	f	f	10	13	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.519325	2015-03-19 14:45:35.519325	f
70	6	8	element_8_110	Staff in this unit work longer hours than is best for patient care.	\N	\N	f	f	f	10	14	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.557273	2015-03-19 14:45:35.557273	f
71	6	8	element_8_111	We are actively doing things to improve patient safety.	\N	\N	f	f	f	10	15	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.596585	2015-03-19 14:45:35.596585	f
72	6	8	element_8_112	We use more agency/temporary staff than is best for patient care.	\N	\N	f	f	f	10	16	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.635643	2015-03-19 14:45:35.635643	f
73	6	8	element_8_113	Staff feel like their mistakes are held against them.	\N	\N	f	f	f	10	17	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.673691	2015-03-19 14:45:35.673691	f
74	6	8	element_8_114	Mistakes have led to positive changes here.	\N	\N	f	f	f	10	18	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.713112	2015-03-19 14:45:35.713112	f
75	6	8	element_8_115	It is just by chance that more serious mistakes don’t happen around here.	\N	\N	f	f	f	10	19	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.752272	2015-03-19 14:45:35.752272	f
76	6	8	element_8_116	When one area in this unit gets really busy, others help out.	\N	\N	f	f	f	10	20	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.791431	2015-03-19 14:45:35.791431	f
77	6	8	element_8_117	When an event is reported, it feels like the person is being written up, not the problem.	\N	\N	f	f	f	10	21	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.837619	2015-03-19 14:45:35.837619	f
78	6	8	element_8_118	After we make changes to improve patient safety, we evaluate their effectiveness.	\N	\N	f	f	f	10	22	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.876203	2015-03-19 14:45:35.876203	f
79	6	8	element_8_119	We work in 'crisis mode' trying to do too much, too quickly.	\N	\N	f	f	f	10	23	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.914454	2015-03-19 14:45:35.914454	f
80	6	8	element_8_120	Patient safety is never sacrificed to get more work done.	\N	\N	f	f	f	10	24	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.952442	2015-03-19 14:45:35.952442	f
81	6	8	element_8_121	Staff worry that mistakes they make are kept in their personnel file.	\N	\N	f	f	f	10	25	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:35.990843	2015-03-19 14:45:35.990843	f
82	6	8	element_8_122	We have patient safety problems in this unit.	\N	\N	f	f	f	10	26	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:36.030439	2015-03-19 14:45:36.030439	f
83	6	8	element_8_123	Our procedures and systems are good at preventing errors from happening.	\N	\N	f	f	f	10	27	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	66	\N	\N	\N	2015-03-19 14:45:36.070531	2015-03-19 14:45:36.070531	f
84	6	9	element_9_1	SECTION B: Your Supervisor/Manager	Please indicate your agreement or disagreement with the following statements about your immediate supervisor/manager or person to whom you directly report.	\N	f	f	f	11	28	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:36.113653	2015-03-19 14:45:36.113653	f
85	6	10	element_10_16	My supervisor/manager or department chair says a good word when he/she sees a job done according to established patient safety procedures.	\N	\N	f	f	f	10	29	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	85	\N	\N	\N	2015-03-19 14:45:36.127887	2015-03-19 14:45:36.127887	f
86	6	10	element_10_17	My supervisor/manager or department chair seriously considers staff suggestions for improving patient safety.	\N	\N	f	f	f	10	30	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	85	\N	\N	\N	2015-03-19 14:45:36.168511	2015-03-19 14:45:36.168511	f
87	6	10	element_10_18	Whenever pressure builds up, my supervisor/manager or department chair wants us to work faster, even if it means taking shortcuts.	\N	\N	f	f	f	10	31	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	85	\N	\N	\N	2015-03-19 14:45:36.206536	2015-03-19 14:45:36.206536	f
88	6	10	element_10_19	My supervisor/manager or department chair overlooks patient safety problems that happen over and over.	\N	\N	f	f	f	10	32	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	85	\N	\N	\N	2015-03-19 14:45:36.245992	2015-03-19 14:45:36.245992	f
89	6	11	element_11_1	SECTION C: Communications	How often do the following things happen in your work area/unit?. Think about your hospital work area/unit...	\N	f	f	f	11	33	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:36.285806	2015-03-19 14:45:36.285806	f
90	6	12	element_12_1	We are given feedback about changes put into place based on event reports.	\N	\N	f	f	f	10	34	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	90	\N	\N	\N	2015-03-19 14:45:36.298862	2015-03-19 14:45:36.298862	f
91	6	12	element_12_2	Staff will freely speak up if they see something that may negatively affect patient care.	\N	\N	f	f	f	10	35	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	90	\N	\N	\N	2015-03-19 14:45:36.339967	2015-03-19 14:45:36.339967	f
92	6	12	element_12_3	We are informed about errors that happen in this unit.	\N	\N	f	f	f	10	36	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	90	\N	\N	\N	2015-03-19 14:45:36.379197	2015-03-19 14:45:36.379197	f
93	6	12	element_12_4	Staff feel free to question the decisions or actions of those with more authority.	\N	\N	f	f	f	10	37	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	90	\N	\N	\N	2015-03-19 14:45:36.425247	2015-03-19 14:45:36.425247	f
94	6	12	element_12_5	In this unit, we discuss ways to prevent errors from happening again.	\N	\N	f	f	f	10	38	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	90	\N	\N	\N	2015-03-19 14:45:36.463052	2015-03-19 14:45:36.463052	f
95	6	12	element_12_6	Staff are afraid to ask questions when something does not seem right.	\N	\N	f	f	f	10	39	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	90	\N	\N	\N	2015-03-19 14:45:36.502156	2015-03-19 14:45:36.502156	f
96	6	13	element_13_1	SECTION D: Frequency of Events Reported	In your hospital work area/unit, when the following mistakes happen, how often are they reported?	\N	f	f	f	11	40	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:36.542435	2015-03-19 14:45:36.542435	f
97	6	14	element_14_1	When a mistake is made, but is caught and corrected before affecting the patient, how often is this reported?	\N	\N	f	f	f	10	41	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	97	\N	\N	\N	2015-03-19 14:45:36.55753	2015-03-19 14:45:36.55753	f
98	6	14	element_14_2	When a mistake is made, but has no potential to harm the patient, how often is this reported?	\N	\N	f	f	f	10	42	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	97	\N	\N	\N	2015-03-19 14:45:36.597914	2015-03-19 14:45:36.597914	f
99	6	14	element_14_3	When a mistake is made that could harm the patient, but does not, how often is this reported?	\N	\N	f	f	f	10	43	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	97	\N	\N	\N	2015-03-19 14:45:36.636947	2015-03-19 14:45:36.636947	f
100	6	15	element_15_1	SECTION E: Patient Safety Grade	Please give your work area/unit in this hospital an overall grade on patient safety.	\N	f	f	f	11	44	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:36.675748	2015-03-19 14:45:36.675748	f
101	6	16	element_16_1	Please give your work area/unit in this hospital an overall grade on patient safety.	\N	\N	f	f	f	10	45	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	101	\N	\N	\N	2015-03-19 14:45:36.695968	2015-03-19 14:45:36.695968	f
102	6	17	element_17_1	SECTION F: Your Hospital	Please indicate your agreement or disagreement with the following statements about your hospital.	\N	f	f	f	11	46	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:36.732996	2015-03-19 14:45:36.732996	f
103	6	18	element_18_1	Hospital management provides a work climate that promotes patient safety.	\N	\N	f	f	f	10	47	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:36.746906	2015-03-19 14:45:36.746906	f
104	6	18	element_18_2	Hospital units do not coordinate well with each other.	\N	\N	f	f	f	10	48	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:36.785401	2015-03-19 14:45:36.785401	f
105	6	18	element_18_3	Things “fall between the cracks” when transferring patients from one unit to another.	\N	\N	f	f	f	10	49	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:36.826503	2015-03-19 14:45:36.826503	f
106	6	18	element_18_4	There is good cooperation among hospital units that need to work together.	\N	\N	f	f	f	10	50	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:36.866154	2015-03-19 14:45:36.866154	f
107	6	18	element_18_5	Important patient care information is often lost during shift changes.	\N	\N	f	f	f	10	51	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:36.90874	2015-03-19 14:45:36.90874	f
108	6	18	element_18_6	It is often unpleasant to work with staff from other hospital units.	\N	\N	f	f	f	10	52	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:36.950948	2015-03-19 14:45:36.950948	f
109	6	18	element_18_7	Problems often occur in the exchange of information across hospital units.	\N	\N	f	f	f	10	53	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:36.996096	2015-03-19 14:45:36.996096	f
110	6	18	element_18_8	The actions of hospital management show that patient safety is a top priority.	\N	\N	f	f	f	10	54	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:37.035857	2015-03-19 14:45:37.035857	f
111	6	18	element_18_9	Hospital management seems interested in patient safety only after an adverse event happens.	\N	\N	f	f	f	10	55	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:37.075736	2015-03-19 14:45:37.075736	f
112	6	18	element_18_10	Hospital units work well together to provide the best care for patients.	\N	\N	f	f	f	10	56	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:37.116946	2015-03-19 14:45:37.116946	f
113	6	18	element_18_11	Shift changes are problematic for patients in this hospital.	\N	\N	f	f	f	10	57	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	103	\N	\N	\N	2015-03-19 14:45:37.156217	2015-03-19 14:45:37.156217	f
114	6	19	element_19_1	SECTION G: Number of Events Reported		\N	f	f	f	11	58	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.196144	2015-03-19 14:45:37.196144	f
115	6	20	element_20_1	In the past 12 months, how many event reports have you filled out and submitted?	\N	\N	f	f	f	2	59	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.20896	2015-03-19 14:45:37.20896	f
116	6	21	element_21_1	SECTION H: Background Information	This information will help in the analysis of the survey results.	\N	f	f	f	11	60	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.261006	2015-03-19 14:45:37.261006	f
117	6	22	element_22_1	How long have you worked in your current hospital work area/unit?	\N	\N	f	f	f	2	61	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.273847	2015-03-19 14:45:37.273847	f
118	6	23	element_23_1	How long have you worked in this hospital?	\N	\N	f	f	f	2	62	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.321414	2015-03-19 14:45:37.321414	f
119	6	24	element_24_1	Typically, how many hours per week do you work in this hospital?	\N	\N	f	f	f	2	63	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.368748	2015-03-19 14:45:37.368748	f
120	6	25	element_25_1	What is your staff position in this hospital?  Select ONE answer that best describes your staff position.	\N	\N	f	f	f	2	64	\N	\N	\N	t	n.  Other, please specify: 	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.414472	2015-03-19 14:45:37.414472	f
121	6	26	element_26_1	If other please specify	\N	\N	f	f	f	1	65	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.498398	2015-03-19 14:45:37.498398	f
122	6	27	element_27_1	In your staff position, do you typically have direct interaction or contact with patients?	\N	\N	f	f	f	2	66	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.517246	2015-03-19 14:45:37.517246	f
123	6	28	element_28_1	How long have you worked in your current specialty or profession?	\N	\N	f	f	f	2	67	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.540833	2015-03-19 14:45:37.540833	f
124	6	29	element_29_1	SECTION I: Your Comments		\N	f	f	f	11	68	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.586476	2015-03-19 14:45:37.586476	f
125	6	30	element_30_1	Please feel free to write any comments about patient safety, error, or event reporting in your hospital.	\N	\N	f	f	f	1	69	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.601294	2015-03-19 14:45:37.601294	f
126	6	31	element_31_1	unit_id	\N	\N	f	f	f	8	70	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.614158	2015-03-19 14:45:37.614158	t
127	6	32	element_32_1	hospital_id	\N	\N	f	f	f	8	71	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.626691	2015-03-19 14:45:37.626691	t
128	6	33	element_33_1	department_id	\N	\N	f	f	f	8	72	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.639621	2015-03-19 14:45:37.639621	t
129	6	34	element_34_1	health_system_id	\N	\N	f	f	f	8	73	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.653057	2015-03-19 14:45:37.653057	t
130	6	35	element_35_1	coordinating_entity_id	\N	\N	f	f	f	8	74	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.66628	2015-03-19 14:45:37.66628	t
131	6	36	element_36_1	user_id	\N	\N	f	f	f	8	75	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.678261	2015-03-19 14:45:37.678261	t
132	6	37	element_37_1	administered_survey_id	\N	\N	f	f	f	8	76	\N	\N	\N	f	\N	f	f	\N	\N	f	\N	\N	f	f	1	f	1	t	\N	\N	\N	\N	2015-03-19 14:45:37.69088	2015-03-19 14:45:37.69088	t
\.


--
-- Name: form_elements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('form_elements_id_seq', 132, true);


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY forms (id, form_name, form_description, form_tags, form_email, form_redirect, form_redirect_enable, form_success_message, form_password, form_unique_ip, form_frame_height, form_has_css, form_active, form_theme_id, form_resume_enable, form_limit_enable, form_limit, form_page_total, form_lastpage_title, form_submit_primary_text, form_submit_secondary_text, form_pagination_type, form_schedule_enable, form_schedule_start_date, form_schedule_end_date, form_schedule_start_hour, form_schedule_end_hour, email_entry_enable, logic_field_enable, created_at, updated_at) FROM stdin;
1	Seed Form 0	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-03-19 14:45:30.036479	2015-03-19 14:45:30.070212
2	Seed Form 1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-03-19 14:45:30.421368	2015-03-19 14:45:30.435337
3	Seed Form 2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-03-19 14:45:30.828503	2015-03-19 14:45:30.844734
4	Seed Form 3	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-03-19 14:45:31.339118	2015-03-19 14:45:31.3532
5	Seed Form 4	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-03-19 14:45:31.939879	2015-03-19 14:45:31.953513
6	HSOPS Sample	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2015-03-19 14:45:34.98094	2015-03-19 14:45:35.017019
\.


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('forms_id_seq', 6, true);


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY permissions (id, form_id, user_id, edit_form, edit_entries, view_entries, created_at, updated_at) FROM stdin;
1	1	1	t	t	t	2015-03-19 14:45:30.062552	2015-03-19 14:45:30.062552
2	2	1	t	t	t	2015-03-19 14:45:30.431069	2015-03-19 14:45:30.431069
3	3	1	t	t	t	2015-03-19 14:45:30.839612	2015-03-19 14:45:30.839612
4	4	1	t	t	t	2015-03-19 14:45:31.349223	2015-03-19 14:45:31.349223
5	5	1	t	t	t	2015-03-19 14:45:31.949249	2015-03-19 14:45:31.949249
6	6	1	t	t	t	2015-03-19 14:45:35.007799	2015-03-19 14:45:35.007799
\.


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('permissions_id_seq', 6, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY schema_migrations (version) FROM stdin;
20150306145224
20141226191026
20141226195701
20141229214325
20141229234705
20150109105504
20150116162105
20150130123401
20150130145356
20150130150231
20150206114838
20150206115345
20150206124933
20150206131706
20150206140514
20150206150904
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ruby_forms_user
--

COPY users (id, user_email, password_digest, user_fullname, priv_administer, priv_new_forms, last_login_date, cookie_hash, enabled, created_at, updated_at, last_ip_address) FROM stdin;
1	joe@joe.com	$2a$10$g8sy1TRG.EHpSwhUpI5aHOGvPmwFpSu2drTef5OCS2reMTgSA3mr2	joe	t	t	\N	\N	t	2015-03-19 14:45:30.012501	2015-03-19 14:45:30.012501	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruby_forms_user
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Name: element_options_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY element_options
    ADD CONSTRAINT element_options_pkey PRIMARY KEY (id);


--
-- Name: element_types_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY element_types
    ADD CONSTRAINT element_types_pkey PRIMARY KEY (id);


--
-- Name: form_1_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_1
    ADD CONSTRAINT form_1_pkey PRIMARY KEY (id);


--
-- Name: form_2_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_2
    ADD CONSTRAINT form_2_pkey PRIMARY KEY (id);


--
-- Name: form_3_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_3
    ADD CONSTRAINT form_3_pkey PRIMARY KEY (id);


--
-- Name: form_4_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_4
    ADD CONSTRAINT form_4_pkey PRIMARY KEY (id);


--
-- Name: form_5_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_5
    ADD CONSTRAINT form_5_pkey PRIMARY KEY (id);


--
-- Name: form_6_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_6
    ADD CONSTRAINT form_6_pkey PRIMARY KEY (id);


--
-- Name: form_element_dictionary_options_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_element_dictionary_options
    ADD CONSTRAINT form_element_dictionary_options_pkey PRIMARY KEY (id);


--
-- Name: form_elements_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY form_elements
    ADD CONSTRAINT form_elements_pkey PRIMARY KEY (id);


--
-- Name: forms_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY forms
    ADD CONSTRAINT forms_pkey PRIMARY KEY (id);


--
-- Name: permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_element_options_on_form_element_id; Type: INDEX; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE INDEX index_element_options_on_form_element_id ON element_options USING btree (form_element_id);


--
-- Name: index_form_element_dictionary_options_on_element_option_id; Type: INDEX; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE INDEX index_form_element_dictionary_options_on_element_option_id ON form_element_dictionary_options USING btree (element_option_id);


--
-- Name: index_form_element_dictionary_options_on_form_element_id; Type: INDEX; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE INDEX index_form_element_dictionary_options_on_form_element_id ON form_element_dictionary_options USING btree (form_element_id);


--
-- Name: index_form_element_dictionary_options_on_form_id; Type: INDEX; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE INDEX index_form_element_dictionary_options_on_form_id ON form_element_dictionary_options USING btree (form_id);


--
-- Name: index_permissions_on_form_id; Type: INDEX; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE INDEX index_permissions_on_form_id ON permissions USING btree (form_id);


--
-- Name: index_permissions_on_user_id; Type: INDEX; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE INDEX index_permissions_on_user_id ON permissions USING btree (user_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: ruby_forms_user; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: mrgcohen
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM ruby_forms_user;
GRANT ALL ON SCHEMA public TO ruby_forms_user;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

