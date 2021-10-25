--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: accounts_followuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_followuser (
    id integer NOT NULL,
    vote boolean NOT NULL,
    publish timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    profiles_id integer NOT NULL,
    avatar_id integer NOT NULL
);


ALTER TABLE public.accounts_followuser OWNER TO postgres;

--
-- Name: accounts_followuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_followuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_followuser_id_seq OWNER TO postgres;

--
-- Name: accounts_followuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_followuser_id_seq OWNED BY public.accounts_followuser.id;


--
-- Name: accounts_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_profile (
    id integer NOT NULL,
    avatar character varying(100) NOT NULL,
    bio text NOT NULL,
    "fullName" character varying(221) NOT NULL,
    dr boolean NOT NULL,
    slug character varying(250) NOT NULL,
    facebook character varying(222) NOT NULL,
    twitter character varying(222) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.accounts_profile OWNER TO postgres;

--
-- Name: accounts_profile_follow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_profile_follow (
    id integer NOT NULL,
    profile_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.accounts_profile_follow OWNER TO postgres;

--
-- Name: accounts_profile_follow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_profile_follow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_profile_follow_id_seq OWNER TO postgres;

--
-- Name: accounts_profile_follow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_profile_follow_id_seq OWNED BY public.accounts_profile_follow.id;


--
-- Name: accounts_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_profile_id_seq OWNER TO postgres;

--
-- Name: accounts_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_profile_id_seq OWNED BY public.accounts_profile.id;


--
-- Name: accounts_sitename; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_sitename (
    id integer NOT NULL,
    "nameHome" character varying(111) NOT NULL,
    "imageHome" character varying(100) NOT NULL,
    "bioHome" text NOT NULL,
    site_id integer NOT NULL,
    user_id integer NOT NULL,
    "bioForum" text NOT NULL,
    "bioVideo" text NOT NULL,
    "imageForum" character varying(100) NOT NULL,
    "imageVideo" character varying(100) NOT NULL,
    "nameForum" character varying(111) NOT NULL,
    "nameVideo" character varying(111) NOT NULL
);


ALTER TABLE public.accounts_sitename OWNER TO postgres;

--
-- Name: accounts_sitename_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_sitename_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_sitename_id_seq OWNER TO postgres;

--
-- Name: accounts_sitename_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_sitename_id_seq OWNED BY public.accounts_sitename.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: blog_bodyorgans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_bodyorgans (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50),
    description text,
    image character varying(100) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    CONSTRAINT blog_bodyorgans_level_check CHECK ((level >= 0)),
    CONSTRAINT blog_bodyorgans_lft_check CHECK ((lft >= 0)),
    CONSTRAINT blog_bodyorgans_rght_check CHECK ((rght >= 0)),
    CONSTRAINT blog_bodyorgans_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.blog_bodyorgans OWNER TO postgres;

--
-- Name: blog_bodyorgans_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_bodyorgans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_bodyorgans_id_seq OWNER TO postgres;

--
-- Name: blog_bodyorgans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_bodyorgans_id_seq OWNED BY public.blog_bodyorgans.id;


--
-- Name: blog_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    description text NOT NULL,
    excerpt text NOT NULL,
    image character varying(100) NOT NULL,
    views integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    "languageCode" character varying(10),
    "slugLang" character varying(250),
    CONSTRAINT blog_category_level_check CHECK ((level >= 0)),
    CONSTRAINT blog_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT blog_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT blog_category_tree_id_check CHECK ((tree_id >= 0)),
    CONSTRAINT blog_category_views_check CHECK ((views >= 0))
);


ALTER TABLE public.blog_category OWNER TO postgres;

--
-- Name: blog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_category_id_seq OWNER TO postgres;

--
-- Name: blog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_category_id_seq OWNED BY public.blog_category.id;


--
-- Name: blog_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_comment (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    content text NOT NULL,
    publish timestamp with time zone NOT NULL,
    status boolean NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    post_id integer NOT NULL,
    CONSTRAINT blog_comment_level_check CHECK ((level >= 0)),
    CONSTRAINT blog_comment_lft_check CHECK ((lft >= 0)),
    CONSTRAINT blog_comment_rght_check CHECK ((rght >= 0)),
    CONSTRAINT blog_comment_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.blog_comment OWNER TO postgres;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_comment_id_seq OWNER TO postgres;

--
-- Name: blog_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_comment_id_seq OWNED BY public.blog_comment.id;


--
-- Name: blog_diseases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_diseases (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50),
    description text,
    image character varying(100) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    CONSTRAINT blog_diseases_level_check CHECK ((level >= 0)),
    CONSTRAINT blog_diseases_lft_check CHECK ((lft >= 0)),
    CONSTRAINT blog_diseases_rght_check CHECK ((rght >= 0)),
    CONSTRAINT blog_diseases_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.blog_diseases OWNER TO postgres;

--
-- Name: blog_diseases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_diseases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_diseases_id_seq OWNER TO postgres;

--
-- Name: blog_diseases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_diseases_id_seq OWNED BY public.blog_diseases.id;


--
-- Name: blog_favpost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_favpost (
    id integer NOT NULL,
    vote boolean NOT NULL,
    publish timestamp with time zone NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_favpost OWNER TO postgres;

--
-- Name: blog_favpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_favpost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_favpost_id_seq OWNER TO postgres;

--
-- Name: blog_favpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_favpost_id_seq OWNED BY public.blog_favpost.id;


--
-- Name: blog_langpost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_langpost (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    publish timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.blog_langpost OWNER TO postgres;

--
-- Name: blog_langpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_langpost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_langpost_id_seq OWNER TO postgres;

--
-- Name: blog_langpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_langpost_id_seq OWNED BY public.blog_langpost.id;


--
-- Name: blog_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_page (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    slug character varying(50),
    description text,
    image character varying(100) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    CONSTRAINT blog_page_level_check CHECK ((level >= 0)),
    CONSTRAINT blog_page_lft_check CHECK ((lft >= 0)),
    CONSTRAINT blog_page_rght_check CHECK ((rght >= 0)),
    CONSTRAINT blog_page_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.blog_page OWNER TO postgres;

--
-- Name: blog_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_page_id_seq OWNER TO postgres;

--
-- Name: blog_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_page_id_seq OWNED BY public.blog_page.id;


--
-- Name: blog_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    excerpt text NOT NULL,
    image character varying(100) NOT NULL,
    image_caption character varying(100) NOT NULL,
    slug character varying(250) NOT NULL,
    publish timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    content text NOT NULL,
    status character varying(10) NOT NULL,
    pin character varying(111) NOT NULL,
    video_or_article character varying(111) NOT NULL,
    video_url character varying(255),
    video_duration character varying(20),
    like_count bigint NOT NULL,
    views integer NOT NULL,
    thumbsup integer NOT NULL,
    thumbsdown integer NOT NULL,
    author_id integer NOT NULL,
    category_id integer NOT NULL,
    "languageCode" character varying(10),
    "languageName_id" integer,
    nm character varying(10) NOT NULL,
    "slugLang" character varying(250),
    CONSTRAINT blog_post_views_check CHECK ((views >= 0))
);


ALTER TABLE public.blog_post OWNER TO postgres;

--
-- Name: blog_post_favourites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post_favourites (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_post_favourites OWNER TO postgres;

--
-- Name: blog_post_favourites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_favourites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_favourites_id_seq OWNER TO postgres;

--
-- Name: blog_post_favourites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_favourites_id_seq OWNED BY public.blog_post_favourites.id;


--
-- Name: blog_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_id_seq OWNER TO postgres;

--
-- Name: blog_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_id_seq OWNED BY public.blog_post.id;


--
-- Name: blog_post_likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post_likes (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_post_likes OWNER TO postgres;

--
-- Name: blog_post_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_likes_id_seq OWNER TO postgres;

--
-- Name: blog_post_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_likes_id_seq OWNED BY public.blog_post_likes.id;


--
-- Name: blog_post_thumbs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_post_thumbs (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.blog_post_thumbs OWNER TO postgres;

--
-- Name: blog_post_thumbs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_post_thumbs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_post_thumbs_id_seq OWNER TO postgres;

--
-- Name: blog_post_thumbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_post_thumbs_id_seq OWNED BY public.blog_post_thumbs.id;


--
-- Name: blog_vote; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_vote (
    id integer NOT NULL,
    vote boolean NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL,
    publish timestamp with time zone NOT NULL
);


ALTER TABLE public.blog_vote OWNER TO postgres;

--
-- Name: blog_vote_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_vote_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blog_vote_id_seq OWNER TO postgres;

--
-- Name: blog_vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_vote_id_seq OWNED BY public.blog_vote.id;


--
-- Name: boards_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    description text NOT NULL,
    excerpt text NOT NULL,
    image character varying(100) NOT NULL,
    views integer NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    "slugLang" character varying(250),
    CONSTRAINT boards_category_level_check CHECK ((level >= 0)),
    CONSTRAINT boards_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT boards_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT boards_category_tree_id_check CHECK ((tree_id >= 0)),
    CONSTRAINT boards_category_views_check CHECK ((views >= 0))
);


ALTER TABLE public.boards_category OWNER TO postgres;

--
-- Name: boards_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_category_id_seq OWNER TO postgres;

--
-- Name: boards_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_category_id_seq OWNED BY public.boards_category.id;


--
-- Name: boards_commentt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_commentt (
    id integer NOT NULL,
    content text NOT NULL,
    publish timestamp with time zone NOT NULL,
    status boolean NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    "Topic_id" integer NOT NULL,
    author_id integer NOT NULL,
    parent_id integer,
    CONSTRAINT boards_commentt_level_check CHECK ((level >= 0)),
    CONSTRAINT boards_commentt_lft_check CHECK ((lft >= 0)),
    CONSTRAINT boards_commentt_rght_check CHECK ((rght >= 0)),
    CONSTRAINT boards_commentt_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.boards_commentt OWNER TO postgres;

--
-- Name: boards_commentt_NotfFaId; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."boards_commentt_NotfFaId" (
    id integer NOT NULL,
    commentt_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public."boards_commentt_NotfFaId" OWNER TO postgres;

--
-- Name: boards_commentt_NotfFaId_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."boards_commentt_NotfFaId_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."boards_commentt_NotfFaId_id_seq" OWNER TO postgres;

--
-- Name: boards_commentt_NotfFaId_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."boards_commentt_NotfFaId_id_seq" OWNED BY public."boards_commentt_NotfFaId".id;


--
-- Name: boards_commentt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_commentt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_commentt_id_seq OWNER TO postgres;

--
-- Name: boards_commentt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_commentt_id_seq OWNED BY public.boards_commentt.id;


--
-- Name: boards_favtopic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_favtopic (
    id integer NOT NULL,
    vote boolean NOT NULL,
    publish timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.boards_favtopic OWNER TO postgres;

--
-- Name: boards_favtopic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_favtopic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_favtopic_id_seq OWNER TO postgres;

--
-- Name: boards_favtopic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_favtopic_id_seq OWNED BY public.boards_favtopic.id;


--
-- Name: boards_notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_notification (
    id integer NOT NULL,
    url text NOT NULL,
    "fullName" character varying(221) NOT NULL,
    dr boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.boards_notification OWNER TO postgres;

--
-- Name: boards_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_notification_id_seq OWNER TO postgres;

--
-- Name: boards_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_notification_id_seq OWNED BY public.boards_notification.id;


--
-- Name: boards_topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_topic (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    excerpt text NOT NULL,
    image character varying(100) NOT NULL,
    image_caption character varying(100) NOT NULL,
    slug character varying(250) NOT NULL,
    publish timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    content text NOT NULL,
    status character varying(10) NOT NULL,
    pin character varying(111) NOT NULL,
    video_url character varying(255),
    video_duration character varying(20),
    like_count bigint NOT NULL,
    views integer NOT NULL,
    thumbsup integer NOT NULL,
    thumbsdown integer NOT NULL,
    author_id integer NOT NULL,
    category_id integer,
    "languageCode" character varying(200) NOT NULL,
    nm character varying(10) NOT NULL,
    "languageName_id" integer,
    "slugLang" character varying(250),
    CONSTRAINT boards_topic_views_check CHECK ((views >= 0))
);


ALTER TABLE public.boards_topic OWNER TO postgres;

--
-- Name: boards_topic_NotfFaV; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."boards_topic_NotfFaV" (
    id integer NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public."boards_topic_NotfFaV" OWNER TO postgres;

--
-- Name: boards_topic_NotfFaV_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."boards_topic_NotfFaV_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."boards_topic_NotfFaV_id_seq" OWNER TO postgres;

--
-- Name: boards_topic_NotfFaV_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."boards_topic_NotfFaV_id_seq" OWNED BY public."boards_topic_NotfFaV".id;


--
-- Name: boards_topic_favourites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_topic_favourites (
    id integer NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.boards_topic_favourites OWNER TO postgres;

--
-- Name: boards_topic_favourites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_topic_favourites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_topic_favourites_id_seq OWNER TO postgres;

--
-- Name: boards_topic_favourites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_topic_favourites_id_seq OWNED BY public.boards_topic_favourites.id;


--
-- Name: boards_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_topic_id_seq OWNER TO postgres;

--
-- Name: boards_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_topic_id_seq OWNED BY public.boards_topic.id;


--
-- Name: boards_topic_likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_topic_likes (
    id integer NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.boards_topic_likes OWNER TO postgres;

--
-- Name: boards_topic_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_topic_likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_topic_likes_id_seq OWNER TO postgres;

--
-- Name: boards_topic_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_topic_likes_id_seq OWNED BY public.boards_topic_likes.id;


--
-- Name: boards_topic_thumbs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_topic_thumbs (
    id integer NOT NULL,
    topic_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.boards_topic_thumbs OWNER TO postgres;

--
-- Name: boards_topic_thumbs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_topic_thumbs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_topic_thumbs_id_seq OWNER TO postgres;

--
-- Name: boards_topic_thumbs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_topic_thumbs_id_seq OWNED BY public.boards_topic_thumbs.id;


--
-- Name: boards_topiclang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_topiclang (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    publish timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.boards_topiclang OWNER TO postgres;

--
-- Name: boards_topiclang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_topiclang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_topiclang_id_seq OWNER TO postgres;

--
-- Name: boards_topiclang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_topiclang_id_seq OWNED BY public.boards_topiclang.id;


--
-- Name: boards_votet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_votet (
    id integer NOT NULL,
    vote boolean NOT NULL,
    "Topic_id" integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    publish timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.boards_votet OWNER TO postgres;

--
-- Name: boards_votet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_votet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_votet_id_seq OWNER TO postgres;

--
-- Name: boards_votet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_votet_id_seq OWNED BY public.boards_votet.id;


--
-- Name: categories_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_category (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(50) NOT NULL,
    active boolean NOT NULL,
    thumbnail character varying(100),
    thumbnail_width integer,
    thumbnail_height integer,
    "order" integer NOT NULL,
    alternate_title character varying(100) NOT NULL,
    alternate_url character varying(200) NOT NULL,
    description text,
    meta_keywords character varying(255) NOT NULL,
    meta_extra text NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    CONSTRAINT categories_category_level_check CHECK ((level >= 0)),
    CONSTRAINT categories_category_lft_check CHECK ((lft >= 0)),
    CONSTRAINT categories_category_rght_check CHECK ((rght >= 0)),
    CONSTRAINT categories_category_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.categories_category OWNER TO postgres;

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_id_seq OWNER TO postgres;

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories_category.id;


--
-- Name: categories_categoryrelation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_categoryrelation (
    id integer NOT NULL,
    object_id integer NOT NULL,
    relation_type character varying(200),
    category_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT categories_categoryrelation_object_id_check CHECK ((object_id >= 0))
);


ALTER TABLE public.categories_categoryrelation OWNER TO postgres;

--
-- Name: categories_categoryrelation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_categoryrelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categoryrelation_id_seq OWNER TO postgres;

--
-- Name: categories_categoryrelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_categoryrelation_id_seq OWNED BY public.categories_categoryrelation.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO postgres;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO postgres;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: robots_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.robots_rule (
    id integer NOT NULL,
    robot character varying(255) NOT NULL,
    crawl_delay numeric(3,1)
);


ALTER TABLE public.robots_rule OWNER TO postgres;

--
-- Name: robots_rule_allowed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.robots_rule_allowed (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    url_id integer NOT NULL
);


ALTER TABLE public.robots_rule_allowed OWNER TO postgres;

--
-- Name: robots_rule_allowed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.robots_rule_allowed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robots_rule_allowed_id_seq OWNER TO postgres;

--
-- Name: robots_rule_allowed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.robots_rule_allowed_id_seq OWNED BY public.robots_rule_allowed.id;


--
-- Name: robots_rule_disallowed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.robots_rule_disallowed (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    url_id integer NOT NULL
);


ALTER TABLE public.robots_rule_disallowed OWNER TO postgres;

--
-- Name: robots_rule_disallowed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.robots_rule_disallowed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robots_rule_disallowed_id_seq OWNER TO postgres;

--
-- Name: robots_rule_disallowed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.robots_rule_disallowed_id_seq OWNED BY public.robots_rule_disallowed.id;


--
-- Name: robots_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.robots_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robots_rule_id_seq OWNER TO postgres;

--
-- Name: robots_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.robots_rule_id_seq OWNED BY public.robots_rule.id;


--
-- Name: robots_rule_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.robots_rule_sites (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.robots_rule_sites OWNER TO postgres;

--
-- Name: robots_rule_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.robots_rule_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robots_rule_sites_id_seq OWNER TO postgres;

--
-- Name: robots_rule_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.robots_rule_sites_id_seq OWNED BY public.robots_rule_sites.id;


--
-- Name: robots_url; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.robots_url (
    id integer NOT NULL,
    pattern character varying(255) NOT NULL
);


ALTER TABLE public.robots_url OWNER TO postgres;

--
-- Name: robots_url_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.robots_url_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.robots_url_id_seq OWNER TO postgres;

--
-- Name: robots_url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.robots_url_id_seq OWNED BY public.robots_url.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE public.taggit_tag OWNER TO postgres;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taggit_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_tag_id_seq OWNER TO postgres;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taggit_tag_id_seq OWNED BY public.taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.taggit_taggeditem OWNER TO postgres;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taggit_taggeditem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggit_taggeditem_id_seq OWNER TO postgres;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taggit_taggeditem_id_seq OWNED BY public.taggit_taggeditem.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: accounts_followuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_followuser ALTER COLUMN id SET DEFAULT nextval('public.accounts_followuser_id_seq'::regclass);


--
-- Name: accounts_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile ALTER COLUMN id SET DEFAULT nextval('public.accounts_profile_id_seq'::regclass);


--
-- Name: accounts_profile_follow id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile_follow ALTER COLUMN id SET DEFAULT nextval('public.accounts_profile_follow_id_seq'::regclass);


--
-- Name: accounts_sitename id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_sitename ALTER COLUMN id SET DEFAULT nextval('public.accounts_sitename_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_bodyorgans id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_bodyorgans ALTER COLUMN id SET DEFAULT nextval('public.blog_bodyorgans_id_seq'::regclass);


--
-- Name: blog_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category ALTER COLUMN id SET DEFAULT nextval('public.blog_category_id_seq'::regclass);


--
-- Name: blog_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comment ALTER COLUMN id SET DEFAULT nextval('public.blog_comment_id_seq'::regclass);


--
-- Name: blog_diseases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_diseases ALTER COLUMN id SET DEFAULT nextval('public.blog_diseases_id_seq'::regclass);


--
-- Name: blog_favpost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_favpost ALTER COLUMN id SET DEFAULT nextval('public.blog_favpost_id_seq'::regclass);


--
-- Name: blog_langpost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_langpost ALTER COLUMN id SET DEFAULT nextval('public.blog_langpost_id_seq'::regclass);


--
-- Name: blog_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_page ALTER COLUMN id SET DEFAULT nextval('public.blog_page_id_seq'::regclass);


--
-- Name: blog_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post ALTER COLUMN id SET DEFAULT nextval('public.blog_post_id_seq'::regclass);


--
-- Name: blog_post_favourites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_favourites ALTER COLUMN id SET DEFAULT nextval('public.blog_post_favourites_id_seq'::regclass);


--
-- Name: blog_post_likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_likes ALTER COLUMN id SET DEFAULT nextval('public.blog_post_likes_id_seq'::regclass);


--
-- Name: blog_post_thumbs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_thumbs ALTER COLUMN id SET DEFAULT nextval('public.blog_post_thumbs_id_seq'::regclass);


--
-- Name: blog_vote id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_vote ALTER COLUMN id SET DEFAULT nextval('public.blog_vote_id_seq'::regclass);


--
-- Name: boards_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_category ALTER COLUMN id SET DEFAULT nextval('public.boards_category_id_seq'::regclass);


--
-- Name: boards_commentt id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_commentt ALTER COLUMN id SET DEFAULT nextval('public.boards_commentt_id_seq'::regclass);


--
-- Name: boards_commentt_NotfFaId id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_commentt_NotfFaId" ALTER COLUMN id SET DEFAULT nextval('public."boards_commentt_NotfFaId_id_seq"'::regclass);


--
-- Name: boards_favtopic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_favtopic ALTER COLUMN id SET DEFAULT nextval('public.boards_favtopic_id_seq'::regclass);


--
-- Name: boards_notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_notification ALTER COLUMN id SET DEFAULT nextval('public.boards_notification_id_seq'::regclass);


--
-- Name: boards_topic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic ALTER COLUMN id SET DEFAULT nextval('public.boards_topic_id_seq'::regclass);


--
-- Name: boards_topic_NotfFaV id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_topic_NotfFaV" ALTER COLUMN id SET DEFAULT nextval('public."boards_topic_NotfFaV_id_seq"'::regclass);


--
-- Name: boards_topic_favourites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_favourites ALTER COLUMN id SET DEFAULT nextval('public.boards_topic_favourites_id_seq'::regclass);


--
-- Name: boards_topic_likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_likes ALTER COLUMN id SET DEFAULT nextval('public.boards_topic_likes_id_seq'::regclass);


--
-- Name: boards_topic_thumbs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_thumbs ALTER COLUMN id SET DEFAULT nextval('public.boards_topic_thumbs_id_seq'::regclass);


--
-- Name: boards_topiclang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topiclang ALTER COLUMN id SET DEFAULT nextval('public.boards_topiclang_id_seq'::regclass);


--
-- Name: boards_votet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_votet ALTER COLUMN id SET DEFAULT nextval('public.boards_votet_id_seq'::regclass);


--
-- Name: categories_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_category ALTER COLUMN id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: categories_categoryrelation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categoryrelation ALTER COLUMN id SET DEFAULT nextval('public.categories_categoryrelation_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: robots_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule ALTER COLUMN id SET DEFAULT nextval('public.robots_rule_id_seq'::regclass);


--
-- Name: robots_rule_allowed id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_allowed ALTER COLUMN id SET DEFAULT nextval('public.robots_rule_allowed_id_seq'::regclass);


--
-- Name: robots_rule_disallowed id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_disallowed ALTER COLUMN id SET DEFAULT nextval('public.robots_rule_disallowed_id_seq'::regclass);


--
-- Name: robots_rule_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_sites ALTER COLUMN id SET DEFAULT nextval('public.robots_rule_sites_id_seq'::regclass);


--
-- Name: robots_url id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_url ALTER COLUMN id SET DEFAULT nextval('public.robots_url_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag ALTER COLUMN id SET DEFAULT nextval('public.taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('public.taggit_taggeditem_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	a@mail.com	f	f	2
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: accounts_followuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_followuser (id, vote, publish, created_at, updated_at, profiles_id, avatar_id) FROM stdin;
\.


--
-- Data for Name: accounts_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_profile (id, avatar, bio, "fullName", dr, slug, facebook, twitter, user_id) FROM stdin;
1	users/avatars/1/د.-محمد-منصور-1.jpg		د.محمد منصور	t	f2s3Bs9F			1
2	users/avatars/2/.-علاء-الدين-السويفي-e1621586258741.jpg		علاء_السويفي	t	G4XgYm4d	https://www.facebook.com/dr.aladdin		2
3	users/avatars/3/.-محمد-عبد-السلام-e1621588161941.jpg		محمد_عبد_السلام	t	6DqfBFKD	https://www.facebook.com/mohammed.a.salam.779		3
4	users/avatars/4/._زياد_منصور-e1621588685537.jpg		زياد_منصور	t	gr23kodn	https://www.facebook.com/zeyad.mansour.96		4
5	users/avatars/5/.-مريم-جاسر-e1621588312652.jpg		ريم_جاسر	t	4difcb7M	https://www.facebook.com/miraa.gasser		5
\.


--
-- Data for Name: accounts_profile_follow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_profile_follow (id, profile_id, user_id) FROM stdin;
\.


--
-- Data for Name: accounts_sitename; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_sitename (id, "nameHome", "imageHome", "bioHome", site_id, user_id, "bioForum", "bioVideo", "imageForum", "imageVideo", "nameForum", "nameVideo") FROM stdin;
1	مقالات طبية – الدكتور	users/avatars/2/default.jpg	أكبر منصة طبية على الإنترنت العربي تحارب انتشار المعلومات المضللة والعلم الزائف وتنشر أحدث المعلومات الطبية بطريقة مبسطة	1	2	أحدث الفيديوهات | موقع الدكتور	أحدث الفيديوهات | موقع الدكتور	users/avatars/2/default_8UCJW5c.jpg	users/avatars/2/default_clkIohP.jpg	أحدث الفيديوهات | موقع الدكتور	أحدث الفيديوهات | موقع الدكتور
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
29	Can add site	8	add_site
30	Can change site	8	change_site
31	Can delete site	8	delete_site
32	Can view site	8	view_site
33	Can add email address	9	add_emailaddress
34	Can change email address	9	change_emailaddress
35	Can delete email address	9	delete_emailaddress
36	Can view email address	9	view_emailaddress
37	Can add email confirmation	10	add_emailconfirmation
38	Can change email confirmation	10	change_emailconfirmation
39	Can delete email confirmation	10	delete_emailconfirmation
40	Can view email confirmation	10	view_emailconfirmation
41	Can add social account	11	add_socialaccount
42	Can change social account	11	change_socialaccount
43	Can delete social account	11	delete_socialaccount
44	Can view social account	11	view_socialaccount
45	Can add social application	12	add_socialapp
46	Can change social application	12	change_socialapp
47	Can delete social application	12	delete_socialapp
48	Can view social application	12	view_socialapp
49	Can add social application token	13	add_socialtoken
50	Can change social application token	13	change_socialtoken
51	Can delete social application token	13	delete_socialtoken
52	Can view social application token	13	view_socialtoken
53	Can add category	14	add_category
54	Can change category	14	change_category
55	Can delete category	14	delete_category
56	Can view category	14	view_category
57	Can add post	15	add_post
58	Can change post	15	change_post
59	Can delete post	15	delete_post
60	Can view post	15	view_post
61	Can add vote	16	add_vote
62	Can change vote	16	change_vote
63	Can delete vote	16	delete_vote
64	Can view vote	16	view_vote
65	Can add page	17	add_page
66	Can change page	17	change_page
67	Can delete page	17	delete_page
68	Can view page	17	view_page
69	Can add diseases	18	add_diseases
70	Can change diseases	18	change_diseases
71	Can delete diseases	18	delete_diseases
72	Can view diseases	18	view_diseases
73	Can add comment	19	add_comment
74	Can change comment	19	change_comment
75	Can delete comment	19	delete_comment
76	Can view comment	19	view_comment
77	Can add body organs	20	add_bodyorgans
78	Can change body organs	20	change_bodyorgans
79	Can delete body organs	20	delete_bodyorgans
80	Can view body organs	20	view_bodyorgans
81	Can add tag	21	add_tag
82	Can change tag	21	change_tag
83	Can delete tag	21	delete_tag
1	Can add profile	1	add_profile
2	Can change profile	1	change_profile
3	Can delete profile	1	delete_profile
4	Can view profile	1	view_profile
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
84	Can view tag	21	view_tag
85	Can add tagged item	22	add_taggeditem
86	Can change tagged item	22	change_taggeditem
87	Can delete tagged item	22	delete_taggeditem
88	Can view tagged item	22	view_taggeditem
89	Can add attachment	23	add_attachment
90	Can change attachment	23	change_attachment
91	Can delete attachment	23	delete_attachment
92	Can view attachment	23	view_attachment
93	Can add category	24	add_category
94	Can change category	24	change_category
95	Can delete category	24	delete_category
96	Can view category	24	view_category
97	Can add category relation	25	add_categoryrelation
98	Can change category relation	25	change_categoryrelation
99	Can delete category relation	25	delete_categoryrelation
100	Can view category relation	25	view_categoryrelation
101	Can add rule	26	add_rule
102	Can change rule	26	change_rule
103	Can delete rule	26	delete_rule
104	Can view rule	26	view_rule
105	Can add url	27	add_url
106	Can change url	27	change_url
107	Can delete url	27	delete_url
108	Can view url	27	view_url
109	Can add category	28	add_category
110	Can change category	28	change_category
111	Can delete category	28	delete_category
112	Can view category	28	view_category
113	Can add topic	29	add_topic
114	Can change topic	29	change_topic
115	Can delete topic	29	delete_topic
116	Can view topic	29	view_topic
117	Can add vote t	30	add_votet
118	Can change vote t	30	change_votet
119	Can delete vote t	30	delete_votet
120	Can view vote t	30	view_votet
121	Can add notification	31	add_notification
122	Can change notification	31	change_notification
123	Can delete notification	31	delete_notification
124	Can view notification	31	view_notification
125	Can add comment t	32	add_commentt
126	Can change comment t	32	change_commentt
127	Can delete comment t	32	delete_commentt
128	Can view comment t	32	view_commentt
129	Can add site name	33	add_sitename
130	Can change site name	33	change_sitename
131	Can delete site name	33	delete_sitename
132	Can view site name	33	view_sitename
133	Can add lang post	34	add_langpost
134	Can change lang post	34	change_langpost
135	Can delete lang post	34	delete_langpost
136	Can view lang post	34	view_langpost
137	Can add follow user	35	add_followuser
138	Can change follow user	35	change_followuser
139	Can delete follow user	35	delete_followuser
140	Can view follow user	35	view_followuser
141	Can add fav post	36	add_favpost
142	Can change fav post	36	change_favpost
143	Can delete fav post	36	delete_favpost
144	Can view fav post	36	view_favpost
145	Can add topic lang	37	add_topiclang
146	Can change topic lang	37	change_topiclang
147	Can delete topic lang	37	delete_topiclang
148	Can view topic lang	37	view_topiclang
149	Can add fav topic	38	add_favtopic
150	Can change fav topic	38	change_favtopic
151	Can delete fav topic	38	delete_favtopic
152	Can view fav topic	38	view_favtopic
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$yKMt8bRJ8phV$UWooC/zlKgoFEghiQVNwbkRlYT/WAyG0bisW3Zt8p7I=	\N	t	m			mz@mail.com	t	t	2021-05-22 19:15:58.289+02
3	pbkdf2_sha256$216000$aPv6tB6Seu3E$lm1zhgFLN1e3xyLqsnG3UH2pzpGIkmuMLM7NA//iw2A=	\N	t	mohamedABd			mm@mm.mm	t	t	2021-05-22 20:57:23.034+02
4	pbkdf2_sha256$216000$nTKH4LRt2bBr$1hZwbPPLE6bsaycY7mTIajqKURhMJFcTIDodKSHF33E=	\N	t	z			z#z@zz.zz	t	t	2021-05-22 21:15:45.617+02
5	pbkdf2_sha256$216000$21wz33eag7Xh$Xda6oDt2NKLO3EgIWThUnWkRNrJoQClVrniMt+CH30I=	\N	t	mg			mg@mg.mg	t	t	2021-05-22 21:19:56.719+02
2	pbkdf2_sha256$216000$TAabE8HkpNmW$O16Q+smnUB708F5BxEZp7r/TLXKbZGxYei+z8mbJKcs=	2021-10-24 09:44:20.599378+02	t	a			a@mail.com	t	t	2021-05-22 19:16:25.28+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: blog_bodyorgans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_bodyorgans (id, name, slug, description, image, lft, rght, tree_id, level, parent_id) FROM stdin;
\.


--
-- Data for Name: blog_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_category (id, name, slug, description, excerpt, image, views, lft, rght, tree_id, level, parent_id, "languageCode", "slugLang") FROM stdin;
1	الامرض	lmrd	<p>الامرض<br></p>	الامرض	posts/default.jpg	0	1	12	1	0	\N	\N	\N
2	الكلية	lkly	<p>الكلية<br></p>	الكلية	posts/default.jpg	0	10	11	1	1	1	\N	\N
3	الريجيم وتخفيف الوزن	lrygym-otkhfyf-lozn	<p>الريجيم وتخفيف الوزن<br></p>	الريجيم وتخفيف الوزن	posts/default.jpg	0	2	3	1	1	1	\N	\N
4	القلب	lklb	<p>القلب<br></p>	القلب	posts/default.jpg	0	6	7	1	1	1	\N	\N
5	السرطان	lsrtn	<p><span style="font-size: 12px; text-transform: uppercase;">السرطان&nbsp;</span><br></p>	السرطان	posts/default.jpg	0	4	5	1	1	1	\N	\N
6	الكبدي	lkbdy	<p><span style="font-size: 20.8px; text-transform: uppercase;">الكبدي</span><br></p>	الكبدي	posts/default.jpg	0	8	9	1	1	1	\N	\N
\.


--
-- Data for Name: blog_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_comment (id, name, email, content, publish, status, lft, rght, tree_id, level, parent_id, post_id) FROM stdin;
\.


--
-- Data for Name: blog_diseases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_diseases (id, name, slug, description, image, lft, rght, tree_id, level, parent_id) FROM stdin;
\.


--
-- Data for Name: blog_favpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_favpost (id, vote, publish, post_id, user_id) FROM stdin;
1	t	2021-10-24 09:53:00.673435+02	43	2
\.


--
-- Data for Name: blog_langpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_langpost (id, title, slug, publish, created_at, updated_at, author_id) FROM stdin;
1	1	1	2021-08-15 09:37:14+02	2021-08-15 09:37:33.178188+02	2021-08-15 09:37:33.178188+02	2
\.


--
-- Data for Name: blog_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_page (id, title, slug, description, image, lft, rght, tree_id, level, parent_id) FROM stdin;
1	onePage	onePage		page/default.jpg	1	2	1	0	\N
\.


--
-- Data for Name: blog_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post (id, title, excerpt, image, image_caption, slug, publish, created_at, updated_at, content, status, pin, video_or_article, video_url, video_duration, like_count, views, thumbsup, thumbsdown, author_id, category_id, "languageCode", "languageName_id", nm, "slugLang") FROM stdin;
43	انتشر مؤخرا الكلام ده عن الكوليسترول	انتشر مؤخرا الكلام ده عن الكوليسترول.. 👇 وناس كتير بتشيره بحسن نية - ومنهم أطباء - مع إنه كلام مش صح وليس له أساس.. ده حد مألف الكلام وناسبه لدكتور ج	uploads/0jot2_BieN5Da.jpg	El Doctor	ntshr-mkhr-lklm-dh-aan-lkolystrol	2021-05-22 21:04:18.262+02	2021-05-22 21:04:18.635+02	2021-10-24 10:05:10.487463+02	انتشر مؤخرا الكلام ده عن الكوليسترول.. 👇 وناس كتير بتشيره بحسن نية - ومنهم أطباء - مع إنه كلام مش صح وليس له أساس.. ده حد مألف الكلام وناسبه لدكتور جورج مان.. مع ان نتيجة الدراسة اللي الكلام عنها غير كده تماما! اسم الدراسة واسم الطبيب بس هم اللي صح.. كل ما عدا ذلك عكس الحقيقة وعكس ما اثبتته عشرات الدراسات .. بما فيها فرامينجهام ستادي اللي بقالها حوالي ٥٠ سنة شغالة.. الخلط اللي بيخلي البعض يقول الكلام ده أحيانا .. هو بداية اتهام الكاربوهايدرات بمشاكل الصحة كلها بدلا من الدهون.. ولكن طبعا لا تزال النتيجة النهائية هي ان الكوليسترول هو اللي بيترسب في الاوعية الدموية والقلب .. والظريف ان اللي كاتب الكلام وصل بيه الفتي انه يقول ان مفيش حاجة اسمها LDL &amp; HDL!! زي ماييجي واحد شايف ان الشمس مالهاش دور في سرطان الجلد.. فيقول لحضرتك ان مفيش حاجة اسمها شمس!! 😅 خلينا نأكد تاني: الكوليسترول لازال مضر جدا.. وعلاج ارتفاع الدهون لازال بينقذ بشر كتير من جلطات القلب والمخ وغيرهم!! #طب_ولا_عك #الدكتور #محمد_منصور #نسبة_الكوليسترول_الطبيعية #الكوليسترول *** البوست الأصلي اللي الناس بتشيره: *الكوليسترول* أزيل رسميا من قائمة المواد الضارة للجسم. اعترفت حكومة الولايات المتحدة الامريكية أخيراً أن الكوليسترول ليس مصدرا من مصادر القلق. وعليه فقد تم الغاء التحذير عنه والذي كان موجودا منذ السبعينيات لتجنب أمراض القلب والشرايين المسدودة. وهذا يعني أن البيض والزبدة ومنتجات الألبان الكاملة الدسم والمكسرات وزيت جوز الهند واللحوم قد تم تصنيفها الآن على أنها *آمنة* وتمت إزالتها رسميًا من قائمة الاغذية ذات الضرر لصحة الانسان. كما ذكرت وزارة الزراعة الأمريكية ، المسؤولة عن تحديث البيانات التوجيهية الغذائية بانها لن تحذر الناس من تناول الأطعمة عالية الكوليسترول ، وسوف تركز بدلا من ذلك على السكر باعتباره المادة الرئيسية المقلقة للصحة. قال طبيب القلب الأمريكي ستيفن نيسن: إنه القرار الصحيح. _ لقد حصلنا على إرشادات غذائية خاطئة. لقد كانوا مخطئين منذ عقود ". لقد كان المفهوم الخاطئ انه عندما نتناول المزيد من الأطعمة الغنية بهذا المركب ، تصبح أجسامنا أقل نموا. وإذا حرمنا أنفسنا من الأطعمة التي تحتوي على نسبة عالية من الكولسترول - مثل البيض والزبدة والكبد - فإن جسمنا ينمو. الحقيقية عن الكولسترول انه يتم إنتاج معظمه في اجسادنا من قبل الكبد. يتكون العقل في المقام الأول من الكوليسترول. من الضروري أن تعمل الخلايا العصبية. الكولسترول هو الأساس لإنشاء جميع هرمونات الستيرويد ، بما في ذلك هرمون الاستروجين ، التستوستيرون ، والكورتيكوستيرويدات. * ارتفاع الكوليسترول في الجسم هو مؤشر واضح يدل على أن الكبد في صحة جيدة. الدكتور جورج مان مدير مساعد في دراسة فرامنغهام عن حدوث وانتشار مرض القلب والأوعية الدموية (CVD) وعوامل الخطر فيها: الدهون المشبعة والكولسترول في النظام الغذائي ليست هي السبب في مرض القلب التاجي. * هذه الأسطورة هي أعظم خدع القرن ، الكوليسترول هو أكبر خدعة طبية في كل العصور * لا يوجد شيء مثل * الكوليسترول السيئ * لذلك يمكنك التوقف عن محاولة تغيير مستوى الكوليسترول الخاص بك. تثبت الدراسات أنه بدون شك، الكوليسترول لا يسبب أمراض القلب ، ولن يمنع نوبة قلبية. غالبية الناس الذين لديهم نوبات قلبية لديهم مستويات كولسترول طبيعية. Cholesterol* is finally officially removed from Naughty List. The US government has finally accepted that *cholesterol* is not a _nutrient of concern_. *doing a U-turn* on their warnings to us to stay away from high-cholesterol foods since the 1970s to avoid heart disease and clogged arteries. This means eggs, butter, full-fat dairy products, nuts, coconut oil and meat have now been classified as *safe* and have been officially removed from the _nutrients of concern_ list. The US Department of Agriculture, which is responsible for updating the guidelines every five years, stated in its findings for 2015: "Previously, the Dietary Guidelines for Americans recommended that cholesterol intake be limited to no more than 300 mg/day. "The 2015 DGAC will not bring forward this recommendation because available evidence shows no appreciable relationship between consumption of dietary cholesterol and serum (blood) cholesterol, consistent with the AHA/ACC (American Heart Association / American College of Cardiology) The Dietary Guidelines Advisory Committee will, in response, no longer warn people against eating high-cholesterol foods and will instead focus on sugar as the main substance of dietary concern. US cardiologist Dr Steven Nissen said: _It's the right decision_. _We got the dietary guidelines wrong. They've been wrong for decades_." When we eat more foods rich in this compound, our bodies make less. If we deprive ourselves of foods high in cholesterol - such as eggs, butter, and liver - our body revs up. The Real Truth about Cholesterol. The majority of the cholesterol in you is produced by your liver. Your brain is primarily made up from cholesterol. It is essential for nerve cells to function. Cholesterol is the basis for the creation of all the steroid hormones, including estrogen, testosterone, and corticosteroids. *High cholesterol in the body is a clear indication which shows the liver of the individual is in good health.* Dr. George V. Mann M.D. associate director of the Framingham study for the incidence and prevalence of cardiovascular disease (CVD) and its risk factors states: _Saturated fats and cholesterol in the diet are not the cause of coronary heart disease. *That myth is the greatest deception of the century, perhaps of any century*_ *Cholesterol is the biggest medical scam of all time* There is no such thing as *bad Cholesterol* So you can stop trying to change your Cholesterol level. Studies prove beyond a doubt, cholesterol doesn't cause heart disease and it won't stop a heart attack. *The majority of people that have heart attacks have normal cholesterol levels.* OUR BODY NEEDS 950 mg OF CHOLESTEROL FOR DAILY METABOLISM AND THE LIVER IS THE MAIN Producer. ONLY 15% OF CHOLESTEROL IS BEING DONATED BY THE FOOD WE EAT. If the fat content is less in our food we eat, our liver Got to work more to maintain the level at 950 mg. *If the cholesterol level is high in our body, it shows the liver is working perfect.* Experts say that there is nothing like LDL or HDL. ………….. ….. *Cholesterol is not found to create block any where in human body*. Please share the recent facts about CHOLESTEROL	published	draft	article	\N	\N	0	2	0	0	2	1	ar	\N	1	\N
176	انضم إلى جروب الدكتور على فيسبوك | المكان الأفضل للنقاش في كل الأمور الطبية والعلاج والتغذية	وأخيرا!! وبعد طلباااات كثييييييرة!! تم إطلاق جروب "الدكتور" على فيسبوك!مساحة حرة مغلقة لكل من يهتم بالطب الحقيقي والعلم والأمراض وعلاجها..لكل من لدي	uploads/0jot2_FZVTEE5_rZ1mWhd.jpg	El Doctor	xsQ9w2Bu8bw	2021-05-22 22:05:30+02	2021-05-22 22:05:31.168+02	2021-10-24 12:07:31.091147+02	فيديو مهم جداً.. فيه علاج كل الأمراض:<br><br>00:00 لماذا دكتور جودة محمد عواد<br>04:38 د.جودة عواد يعالج فيروس الكبد سي<br>07:03 طريقة العلاج عند د.جودة<br>12:41 مريض يحكي قصته مع د.جودة عواد<br>17:45 كيف تعالج مريضك بدون تشخيص<br>22:33 علاج الأمراض المناعية<br>25:04 علاج مرض ارتفاع الضغط<br>26:39 علاج السرطان<br>27:07 المحمول وعلاج الصرع وفحص الثدي<br>30:25 علاج مرض السكر - الإنسولين الطبيعي<br>33:38 أمراض الكلى وسعر الكشف وبلاوي أخرى<br>35:31 رسالة مهمة لدكتور جودة عواد<br><br>من هو دكتور جودة محمد عواد؟<br>هل هو طبيب متخصص؟ هل يعالح جميع الأمراض فعلاً؟ هل هو ساحر؟<br>هل فعلا لديه الحل السحري لعلاج فيروس سي بدون دواء؟ و علاج الفشل الكلوي بدون غسيل؟<br>ماهي التركيبة السحرية التي يستعملها في المحاليل الوريدية التي يعالج مرضاه بها؟<br>وما هي الخلطة السحرية التي يستعملها لعمل المشروب الفضي و المشروب الذهبي و المشروب الماسي؟<br>ما هي حكاية مر البطارخ والقرنفل والراوند واللبان الدكر في علاج الأمراض الخطيرة؟<br>ما هي جائزة صناع الأمل ولماذا حصل عليها دكتور مجدي يعقوب؟<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br>*** بعض القراءات والفيديوهات المفيدة:<br><br>الأهرام: محمد بن راشد يكرم صناع الأمل.. وتبرعات ٨٨ مليون درهم لمستشفي مجدي يعقوب<br>https://gate.ahram.org.eg/News/2374278.aspx<br><br>Generic drugs - Depovit B12:<br>https://www.ndrugs.com/?s=depovit%20b12#doctor_dosage<br><br>Risk of Hepatocellular Cancer in HCV Patients Treated With Direct-Acting Antiviral Agents:<br>https://pubmed.ncbi.nlm.nih.gov/28642197/<br><br>لمشاهدة فيديو د.محمد ياسر: الرد علي الدكتور جودة محمد عواد || شوف بيعالج السرطان ازاي:<br>https://www.youtube.com/watch?v=bWerCJys3e0&amp;t=16s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(1)صاروخ الطب والهبد والتجارة:<br>https://www.youtube.com/watch?v=-CeoGVlXQuE&amp;t=13s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(2) وتتوالى ضحاياه وتتكرر روشتاته الموحدة لجميع الامراض ولجميع الاعمار<br>https://www.youtube.com/watch?v=-cgq_vUNz58	published	draft	video	,https://www.youtube.com/embed/xsQ9w2Bu8bw,https://www.facebook.com/Eldoctooor/videos/512826336824734/	PT5M41S	0	3	0	0	1	1	ar	1	1	\N
41	ممكن تحرق سعرات من غير ما تتعب ؟!	انت ممكن تشترك في الجيم بس للأسف ده مش هيجيب نتيجة و لا يحرق سعرات غير لما تنزل فعلا تروح الجيم و الحاجة الوحيدة اللي هتتحرق من الاشتراك في الجيم غالبا هبيقى دمك بعد ما تدفع اشتراك الجيم	uploads/diet-695723_1280-780x470.jpg	El Doctor	zy-hrk-saart-zyd-mn-ghyr-m-taab	2021-05-22 20:55:08.754+02	2021-05-22 20:55:09.036+02	2021-10-24 14:15:28.504952+02	<p>انت ممكن تشترك في الجيم بس للأسف ده مش هيجيب نتيجة و لا يحرق سعرات غير لما تنزل فعلا تروح الجيم و الحاجة الوحيدة اللي هتتحرق من الاشتراك في الجيم غالبا هبيقى دمك بعد ما تدفع اشتراك الجيم</p><p>طيب ايه الحل؟ الحل ياسيدي اني هاكتبلك السعرات اللي بتحرقها كل يوم في الانشطة العادية و انت شوف ايه اللي بتحب تعمله في الانشطة دي و زود المدة اللي هتمارس النشاط ده فيه</p><p><br></p><p>ملحوظة مهمة: ده متوسط اللي بيحرقه الشخص صاحب الوزن المتوسط في نصف ساعة من ممارسة النشاط ده</p><p><br></p><p>النوم 23 سعر حراري ، مشاهدة التلفزيون 28 ، سعر حراري “لو بتشجع الزمالك غالبا هتحرق أكثر :)” القراءة جلوسا 42 سعر ، الوقوف في الطابور 47 ، سعر الطهي 93 ، سعر التسوق في الهايبر ماركت بعربية التسوق 130 سعر ، الحركة العادية 130 سعر ، اللعب مع اطفالك 149 ، سعر تنظيف البيت 167 سعر ، تحريك العفش 223 سعر ، تصليح السيارة 112 سعر ، شغل السباكة او الكهرباء في البيت 112 سعر ، شيل السجاجيد 167 سعر ، الشغل على الكومبيوتر 51 سعر ، شغل المكتب الخفيف 56 سعر</p><p><br></p><p>طيب لو ربنا كرمك و قررت تعمل رياضة بص يا سيدي كل نص ساعة هتحرق الاتي رفع اثقال 112 سعر ، تمارين خفيفة 205 سعر، تمارين عنيفة 260 سعر ، قيادة الدرجة 260 سعر ، بلياردو 93 سعر ، بولينج 112 سعر ، مشي 149سعر ، مشي سريع 186 سعر ، سباحة 223 سعر ، كرة قدم 260 سعر ، جري 298 سعر ، نط الحبل (ركز في دي قوي) 372 سعر!(ايوة زي ما سمعت كده)</p><p><br></p><p>طيب أنا كشخص عادي محتاج احرق كام سعر في اليوم؟</p><p><br></p><p>المفروض في الاحوال العادية اننا ناكل على حسب ما احنا محتاجين من طاقة و دي من تعاليم الرسول الكريم على فكرة (بحسب ابن أدم لقيمات يقمن صلبه) بمعنى منظمة الصحة العالمية تنصح بممارسة انشطة حركية من متوسطة الى شديدة لمدة 150 دقيقة اسبوعيا على الاقل لو انت بتعمل كده يبقى هتحتاج حوالي 2500 سعر حراري في اليوم للرجال و 2000 سعر حراري في اليوم للسيدات</p><p><br></p><p>طب فين المشكلة؟</p><p><br></p><p>المشكلة اننا غالبا مش بنمارس النشاط المطلوب اسبوعيا و المشكلة الاكبر اننا بناكل حسب رغبتنا في الاكل مش حسب احتياجنا للطاقة و بالتالي الحل انك تزود مجهودك عشان تخليه يتناسب مع كمية الاكل اللي انت بتاكلها</p><p><br></p><p>يعني انت لو أكلك بيديك 4000 سعر حراري في اليوم يبقى هتحتاج تبذل مجهود يحرق ال2000 سعر حراري الزيادة دول و ده عشان بس وزنك ما يزيدش مش عشان تخس عاوز تخس هتحتاج تحرق اكتر</p><p><br></p><p>نصيحة مفيدة: حاول تنزل على موبايلك تطبيق يتابع مجهودك البدني اليومي ، الموضوع ده محفز جدا للمواظبة على نفس النشاط اليومي</p><p><br></p><p>دمتم بصحة</p><p><br></p>	published	draft	article	\N	\N	0	3	0	0	2	3	ar	\N	1	\N
134	أهم ما يجب أن تعرفه عن فقدان حاسة الشم بعد كورونا | الأسباب والعلاج | كوفيد19 وتغيرالرائحة والطعم	00:00 مقدمة - فقدان حاسة الشم والتذوق01:36 أسباب فقد حاسة الشم أو التذوق02:05 خطورة ومضاعفات فقدان حاسة الشم03:22 أنواع تغير حاسة الشم Cacosmia - P	uploads/0jot2_74Lg3Rw.jpg	El Doctor	CRI-1I3-zAg	2021-05-22 21:50:04.337+02	2021-05-22 21:50:05.21+02	2021-05-22 21:50:05.584+02	00:00 مقدمة - فقدان حاسة الشم والتذوق<br>01:36 أسباب فقد حاسة الشم أو التذوق<br>02:05 خطورة ومضاعفات فقدان حاسة الشم<br>03:22 أنواع تغير حاسة الشم Cacosmia - Phantosmia -Anosmia - Hyposmia<br>04:22 كيفية حدوث فقدان حاسة الشم<br>06:46 كوفيد وفقدان حاسة الشم<br>07:19 تطور الحالة - هل بيخف؟<br>07:38 أعمل إيه لما أفقد حاسة الشم - علامات الخطورة<br>09:03 هل هو علامة جيدة أم سيئة<br>11:38 علاج فقدان الشم - تدريبات الشم<br><br>هل حصل لك تغير في حاسة الشم أو فقدت حاسة الشم مؤخراً؟<br>هل ده فعلاً معناه الإصابة بمرض كورونا؟ <br>ولا ممكن يكون له معنى تاني؟<br><br>إزاي بيحصل فقدان حاسة الشم؟<br>إيه هي أنواع تغير حاسة الشم؟<br><br>هل فيه علامات معينة خطيرة تخليك تقلق؟<br>ماهي علامات الخطورة؟<br><br>إيه العلاج؟<br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتورلمتابعة كل جديد في الطب ولمشاهدة كل الفيديوهات والفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>Post production:<br>@Medicatoon-ميديكاتون <br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br><br><br>** Some useful resources:<br><br>Smell loss is a prognostic factor for lower severity of coronavirus disease&nbsp;2019:<br>https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7380219/<br>&nbsp;<br>COVID-19 and anosmia: A review based on up-to-date knowledge:<br>https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7265845/<br>&nbsp;<br>Smell loss is a prognostic factor for lower severity of coronavirus disease&nbsp;2019:<br>https://www.annallergy.org/article/S1081-1206(20)30514-7/fulltext<br>&nbsp;<br>Loss of sense of smell as marker of COVID-19 infection:<br>https://www.entuk.org/sites/default/files/files/Loss%20of%20sense%20of%20smell%20as%20marker%20of%20COVID.pdf<br>&nbsp;<br>Anosmia and loss of smell in the era of covid-19:<br>https://www.bmj.com/content/370/bmj.m2808	published	draft	video	,https://www.youtube.com/embed/CRI-1I3-zAg	PT13M24S	0	1	0	0	1	1	ar	\N	1	\N
35	النصائح الأحد عشر للحماية من السرطان	✔️✔️✔️ النصائح الأحد عشر للحماية من السرطان: حضرتك عارف ان السرطان هو أكبر سبب للوفيات في العالم؟ 🤨طيب.. حضرتك عارف إن الأبحاث اللي بتتعمل على السرط	uploads/0jot2_99tBsWr.jpg	El Doctor	lnsh-lahd-aashr-llhmy-mn-lsrtn	2021-05-22 20:18:03+02	2021-05-22 20:18:04.239+02	2021-09-26 11:14:03.518151+02	✔️✔️✔️ النصائح الأحد عشر للحماية من السرطان: حضرتك عارف ان السرطان هو أكبر سبب للوفيات في العالم؟ 🤨<br>طيب.. حضرتك عارف إن الأبحاث اللي بتتعمل على السرطان كل يوم كتير جدا؟ 🤔<br>طيب.. حضرتك عارف إن الفتي والعك في الموضوع ده على الفيسبوك والواتساب كتييير جدا جدا جدا؟؟!! 🙄 انا هنا مش هقول لك حاجة غير اللي ثبتت بالدراسات القوية..<br>بس انت إحفظ اللي جاي ده كويس جداً.. ونفذه بس.. وربنا يحفظنا جميعا: 🚭<br><h2>١- ممنوع التدخين:</h2>- تقريبا مفيش سرطان إلا والتدخين بيسببه بشكل أو بآخر.. حتى سرطان الكلى والمثانة!<br>- إوعى التدخين السلبي .. للأسف له نفس التأثير بالظبط! 😋<br><h2>٢- خلي أكلك صحي:</h2>- اعتمد على الخضار والفاكهة في أكلك.. ماتخليش وجبة من غير خضار أو فاكهة.<br>- اللحوم المصنعة (برجر وسوسيس ولانشون وغيره) ثبت أكيد إنها مرتبطة ببعض السرطانات!<br>- بعض أنواع الألوان الصناعية ومكسبات الطعم والمواد الحافظة ممكن تكون مرتبطة بالسرطان.. (بنقول ممكن!)<br>- فيه دراسات بتقول إن زيت الزيتون البكر والمكسرات ممكن تقلل سرطان الثدي وبعض السرطانات التانية (برضه بنقول ممكن!) 🏋️<br><h2>٣- أظبط وزنك:</h2>للأسف السمنة مرتبطة ببعض السرطانات! 🍷<br><h2>٤- إياك والخمور:</h2>سرطانات كتير مرتبطة بكمية الكحول اللي بتشربها! 🏃‍♂️<br><h2>٥- إلعب رياضة وخليك أكتيف:</h2>حتى لو مشي كل يوم نص ساعة.. كفاية جدا! ☀️<br><h2>٦- ماتقعدش كتير في الشمس (خصوصا من الظهر للعصر):</h2>- مفيش شك إنها بتسبب سرطانات الجلد!<br>- خليك في الظل على قد ماتقدر في الأوقات اللي الشمس فيها جامدة.<br>- ماتصدقش اللي يقول لك فيتامين دال و فوايدها للعظم!! اللي عايز فيتامين دال يكفيه خمس دقايق كل يوم لما الشمس تكون حنينة! (آه والله الدراسات أثبتت إن خمس دقايق كل يوم كفاية!) .. إلا بالنسبة للأشخاص اللي بشرتهم غامقة أوي. 📍<br><h2>٧- خد تطعيماتك!</h2>تطعيم فايروس بي وتطعيم هيومان بابيلوما فايروس بيحموك فعلا من بعض السرطانات!.. استشير دكتورك! 🏥<br><h2>٨- لو لك فحص دوري للكشف على السرطان.. إعمله!</h2>(فحص البروستاتا وتحليلها عند سن الخمسين للرجالة - عينة عنق الرحم للبنات - أشعة ماموجرام على الثدي للبنات اللي عندهم سرطان الثدي في العيلة.. إلخ إلخ إلخ) 🛏️<br><h2>٩- إياك يكون لك علاقات جنسية كتير!</h2>ممكن تسبب سرطان عنق الرحم للبنات وممكن تسبب عدوى الإيدز اللي بيجيب سرطان المستقيم في الرجالة! 💉<br><h2>١٠- إوعى تستعمل حقنة (إبرة) مكان حد!</h2>سواء عشان تاخد دوا... أو عشان تاخد مخدرات مثلا لو حضرتك بتضرب!! 👨‍⚕️<br><h2>١١- لو انت أو أي حد تعرفه وزنه نزل بدون سبب أو بقى يعرق جامد بالليل أو طلعله كلكوعة (حلوة كلكوعة دي) في أي مكان في جسمه.. لازم يروح لدكتور.. ويقول له: هل دي احتمال تكون سرطان؟</h2>(ولو فيه أي حد في عيلتك جاله سرطان .. قول للدكتور ساعتها عشان ياخد باله!) وربنا يحفظنا جميعا.. عشان تعرف أكتر عن صحتك.. تابع قناة "الدكتور" وبرنامج "طب ولا عك؟" على يوتيوب:<br>https://www.youtube.com/user/mohamedemansour #حماية_من_السرطان #الدكتور<br>#سلسلة_النصائح_العشرة (بس هم المرة دي احداشر 😅 )<br>#شير_في_الخير	published	home	article	\N	\N	0	3	0	0	1	5	ar	\N	1	\N
61	من مقالات أستاذ هذا الجيل.. العبقري الدكتور أحمد خالد توفيق رحمه الله	إنهم مستمرون ‍ إنهم مستمرون!... أكتب هذه الكلمات في غرفة مغلقة، وبرغم هذا يتسلل دخان قش الارز اللعين إلى كل ركن فلو خرجت إلى الشرفة لأصابك الهلع. نعم	uploads/0jot2_jXuohe4.jpg	El Doctor	mn-mklt-astth-hth-lgyl-laabkry-ldktor-ahmd-khld-to	2021-05-22 21:26:27.673+02	2021-05-22 21:26:28.005+02	2021-05-22 21:26:28.183+02	إنهم مستمرون ‍ إنهم مستمرون!... أكتب هذه الكلمات في غرفة مغلقة، وبرغم هذا يتسلل دخان قش الارز اللعين إلى كل ركن فلو خرجت إلى الشرفة لأصابك الهلع. نعم يا سادة .. محافظة الغربية أيضًا تعاني من حرق قش الأرز لكن أحدًا لا يتكلم عنها، فهي مجرد محطة استعداد وتدريب كي يصير محافظها محافظ الجيزة لا أكثر.. عندها تبدأ مشاكله مع تلك المحافظة عالية الصوت. أحمد الله على أنني لست مصابًا بالربو وإلإ لقضيت نحبي منذ أسبوع. أما مرضى الربو فلهم الله .. إن المستشفيات تعج بهم. في أوائل السبعينات ظهرت تقليعة في طوكيو – حيث معدلات التلوث الأعلى - هي زجاجة بها أكسجين نقي تشتريها من البائع لتشم الهواء بضع دقائق. أي أنك تقف هناك مع أصدقائك وترش رشة أكسجين جريئة. يبدو أن هذه الظاهرة ستبدأ عندنا وعندها تكون مصر أول دولة تبيع الهواء في زجاجات فعلاً، ولسوف يصير شراء الهواء من البقال جزءًا من نشاطك اليومي. في عصر الاهتمام بالبيئة وكل هذه المؤتمرات واللافتات في كل مكان تنذرني بخراب بيتي لو أشعلت لفافة تبغ، يتساءل المرء عما إذا كان دخان حرق الأرز هذا أكثر أمنًا وتحضرًا من السجائر فعلاً. في الكتب التي تتكلم عن علامات الساعة تجد علامة الضباب الأبيض الذي يتسلل للبيوت فيعمي العيون، ويختنق به الكفار والعصاة أما المؤمنون فلا يلاحظونه. سوف تزعم الحكومة إذن أنه لا يوجد ضباب ولا حاجة، وأنها تشك في إيماننا .. لا عجب، فهؤلاء القوم مستمرون للأبد ولن يعوقهم شيء .. وسط هذا الجو الخانق الكئيب تشعر بأنه لا لزوم للماضي ولا جدوى من الغد، وأن الموت هو الحل الوحيد أمامك، لكنك تعرف أنهم لن يتركوك في سلام .. سيفتحون القبر ويدفنون فوقك واحدًا من قيادات المجالس المحلية أو الحزب الوطني.. لا غرابة فهم مستمرون. مع كل هذه الكآبة والقرف، تفتح البريد الالكتروني لتجد هذا الخبر العظيم الذي تم توزيعه على 58468 عنوانًا على الأقل: "طبيب سوداني بإنجلترا يكتشف علاجاً لمرض السكري وداء الصرع ! العقار الجديد يقضي على السكري نهائياً خلال 2- 6 أشهر فقط!! " السكري والصرع معًا ؟..نهائيًا ؟.. مش واسعة شوية ؟..كأن هذا كان ينقصك !.. ثم منذ متى يمكن علاج السكري نهائيًا ؟.. أفضل الحلول الموجودة قائمة على تعويض الهرمون .. يعني العلاج مدى الحياة .. تقرأ الخبر بعناية فتجد أن طبيبًا سودانيًا يدعى (طارق أرباب) بمستشفى همر سميث التابع لكلية الطب جامعة لندن، نجح في اختراع أول عقار في العالم لعلاج مرض السكري بصورة نهائية، وحصل على براءة اختراع من كل من بريطانيا والولايات المتحدة الأمريكية اللتين سجل بهما الاختراع تحت الرقم (4065834). الحوار مع هذا الطبيب الظاهرة يقول إنه اكتشف أن إنزيم الأميليز يحول النشا إلى سكر ، وهذا يمكن إثباته عن طريق اليود ‍!.. هذه التجربة يعرفها كل طالب ابتدائي على كل حال. استطاع أرباب تحويل الأميليز إلى عقار شاف (نهائيًا) للسكر . يقول إن مرضى السكري يعانون من نقص في المادة اللعابية التي تهضم السكر والنشا. لا أريد أن أبدو متعصبًا وغراب بين، لكنني عدت إلى العلامات المؤكدة على العلم الزائف التي وضعها روبرت بارك أستاذ الفيزياء بجامعة ميريلاند صاحب كتاب (علم الفودوو: الطريق من الحماقة إلى الخديعة) وهو كتاب شهير جدًا: العلامة الأولى: المكتشف يقدم إدعاءاته لوسائل الإعلام مباشرة: العلم يعتمد على أن يقدم العالم أفكاره الجديدة لتدقيق العلماء الآخرين؛ إذ يتوقع العلماء أن يقدم زملاؤهم الأفكار لهم أولاً. بالفعل تجد أن الأخ أرباب يقدم بحثه لمجلة سودانية شهيرة، لكنك لا تجد شيئًا عن أبحاثه في أية مجلة طبية. لقد زعم أن المجلة الطبية البريطانية BMJ قبلت بحثه لكن هذا لم يحدث كما سنرى حالاً. العلامة الثانية:المكتشف يقول إن المؤسسات الكبرى تحاول حجب عمله: هذا الباحث يؤكد أنه سجل اختراعه في الولايات المتحدة خشية من أن تسرقه الشركات الكبرى. العلامة الثالثة: المكتشف أجرى أبحاثه وحده: صورة العالم العبقري الذي يسهر الليل وحده في قبو هي صورة تناسب أفلام هوليوود للخيال العلمي، لكن لا يمكن أن تتحقق في الواقع. العلامة الرابعة: المكتشف مضطر لأن يصمم قوانين طبيعة جديدة يفسر بها الظاهرة: يلقي العالم ذنب انتشار السكري على تغيير المواد الغذائية، وتخزين الغذاء لفترات طويلة في الثلاجات، واستخدام المواد الكيمائية في الحفاظ على المواد الغذائية. ويقول إن الدقيق صعب الهضم، و إذا لم يُهضم يترسب في الأنسجة والشرايين الدقيقة والكبيرة داخل الجسم، فيكون الشخص عرضة لأمراض القلب والفشل الكلوي وأمراض الدماغ بالاضافة الى السكري. وهذا يمكن حله بإضافة بعض كربونات الصوديوم التي تحلل الدقيق في الجسم لأجزاء صغيرة . ما هذا الكلام ؟.. يبدو مهمًا منطقيًا لكنه ليس كذلك، ولن يرضى أي كيميائي حيوي عن هذا الكلام الفارغ .. وبنفس المنطق الغريب يقول أرباب: البحوث المعملية الحديثة أثبتت أن هناك علاقة شبه قوية بين ضيق الشرايين الذي يصيب القلب ومرض الصرع الذي يحدث نتيجة ضيق في شرايين الدماغ ، وليس نتيجة شحنات كهربائية في الدماغ كما كان يعتقد في السابق. ولذلك بعد الاكتشاف الجديد لحقيقة مرض الصرع، ابتكرت عملية جراحية جديدة لمعالجة الصرع تعتمد على توسيع شرايين الدم داخل الدماغ !. أي طبيب يعرف أن هذا كلام عجيب .. هكذا وجدت أن هذا العالم حقق أربعًا من آيات العلم الزائف من سبع وضعها (بارك). على أنني قررت أن أبحث عن اسمه أكثر في الإنترنت، فوجدت موقعًا سودانيًا محترمًا عقلانيًا يذكر هذه الحقائق: 1- اتصلوا بمستشفى هامر سميث يسألون عن (أرباب) هذا فكان الرد أنه لا يوجد أحد بهذا الاسم عندهم !.. ثم تذكروا في خطاب آخر أن هناك واحدًا لكنه يعمل بعقد شرفي وهو على الأرجح ممارس عام. 2- رقم براءة الاختراع المذكورة هي لـ (أستيك ساعة) ! لا أعتقد أنها الطريقة المثلى لعلاج السكري والصرع. 3- المجلة الطبية البريطانية لم تنشر أي بحث لطبيب اسمه أرباب. أنهيت قراءة هذه المعلومات ، وفتحت النافذة لأستنشق المزيد من السحابة السوداء التي لم تعد بهذا السوء.. هؤلاء القوم مستمرون .. مستمرون .. نفس الأكاذيب والادعاءات والتلفيق.. لا ألوم المجلة لحظة؛ فمن أين يعرف غير المتخصص الحقيقة وسط هذا الكلام الكبير كله؟.. وقد رأينا جريدة الشعب عندنا تقع في ذات الخطأ، ورأينا أخبار اليوم وغيرها .. كنت أعتقد أن الأخوة السودانيين أفلتوا من معظم تلك الأمراض المصرية لكن اتضح أن هذا داء عربي أصيل كما يبدو. لقاءات صحفية وأمل زائف لمرضى الصرع والسكري ومنطق مغلوط، وهذا الرجل يعرف أنه يكذب .. ولو لم يكن يعرف أنه يكذب فهو مخبول تمامًا. المهم أننا نستحق ما يحدث لنا.. نستحق السحابة السوداء ونستحق حكوماتنا بالتأكيد، فلا أمل في الخلاص ما لم نتغير أولاً. (من مقالات أستاذ هذا الجيل.. العبقري الدكتور أحمد خالد توفيق رحمه الله) #العراب #احمد_خالد_توفيق #الدكتور #محمد_منصور #الأعشاب #الطب_البديل #طب_ولا_عك	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
171	جودة محمد عواد | تعلم النصب بلا معلم | الفرق بين الطبيب المتخصص وتاجر البط النصاب	فيديو مهم جداً.. فيه علاج كل الأمراض:00:00 لماذا دكتور جودة محمد عواد04:38 د.جودة عواد يعالج فيروس الكبد سي07:03 طريقة العلاج عند د.جودة12:41 مري	uploads/0jot2_UhNb3cF.jpg	El Doctor	kAG8Snw57hs	2021-05-22 22:03:12+02	2021-05-22 22:03:14.318+02	2021-09-26 17:01:25.001323+02	فيديو مهم جداً.. فيه علاج كل الأمراض:<br><br>00:00 لماذا دكتور جودة محمد عواد<br>04:38 د.جودة عواد يعالج فيروس الكبد سي<br>07:03 طريقة العلاج عند د.جودة<br>12:41 مريض يحكي قصته مع د.جودة عواد<br>17:45 كيف تعالج مريضك بدون تشخيص<br>22:33 علاج الأمراض المناعية<br>25:04 علاج مرض ارتفاع الضغط<br>26:39 علاج السرطان<br>27:07 المحمول وعلاج الصرع وفحص الثدي<br>30:25 علاج مرض السكر - الإنسولين الطبيعي<br>33:38 أمراض الكلى وسعر الكشف وبلاوي أخرى<br>35:31 رسالة مهمة لدكتور جودة عواد<br><br>من هو دكتور جودة محمد عواد؟<br>هل هو طبيب متخصص؟ هل يعالح جميع الأمراض فعلاً؟ هل هو ساحر؟<br>هل فعلا لديه الحل السحري لعلاج فيروس سي بدون دواء؟ و علاج الفشل الكلوي بدون غسيل؟<br>ماهي التركيبة السحرية التي يستعملها في المحاليل الوريدية التي يعالج مرضاه بها؟<br>وما هي الخلطة السحرية التي يستعملها لعمل المشروب الفضي و المشروب الذهبي و المشروب الماسي؟<br>ما هي حكاية مر البطارخ والقرنفل والراوند واللبان الدكر في علاج الأمراض الخطيرة؟<br>ما هي جائزة صناع الأمل ولماذا حصل عليها دكتور مجدي يعقوب؟<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br>*** بعض القراءات والفيديوهات المفيدة:<br><br>الأهرام: محمد بن راشد يكرم صناع الأمل.. وتبرعات ٨٨ مليون درهم لمستشفي مجدي يعقوب<br>https://gate.ahram.org.eg/News/2374278.aspx<br><br>Generic drugs - Depovit B12:<br>https://www.ndrugs.com/?s=depovit%20b12#doctor_dosage<br><br>Risk of Hepatocellular Cancer in HCV Patients Treated With Direct-Acting Antiviral Agents:<br>https://pubmed.ncbi.nlm.nih.gov/28642197/<br><br>لمشاهدة فيديو د.محمد ياسر: الرد علي الدكتور جودة محمد عواد || شوف بيعالج السرطان ازاي:<br>https://www.youtube.com/watch?v=bWerCJys3e0&amp;t=16s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(1)صاروخ الطب والهبد والتجارة:<br>https://www.youtube.com/watch?v=-CeoGVlXQuE&amp;t=13s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(2) وتتوالى ضحاياه وتتكرر روشتاته الموحدة لجميع الامراض ولجميع الاعمار<br>https://www.youtube.com/watch?v=-cgq_vUNz58	published	draft	video	,https://www.youtube.com/embed/kAG8Snw57hs	PT37M43S	0	2	0	0	1	1	ar	\N	1	\N
2	ألم الصدر وجلطة القلب والطب النبوي - طب ولا عك - الحلقة الثانية	تعال نعرف سوا ايه هي اسباب وجع الصدر؟ .. يعني	uploads/0jot2_ybRLzAx.jpg	El Doctor	NXNxLbADIrM	2021-05-22 19:38:15+02	2021-05-22 19:38:15.31+02	2021-05-23 23:03:58.625+02	الحلقة الأولى من برنامج "طب ولا عك"<br><br><br>Camera: Safaa Baagar<br>2D animation &amp; aftereffects: Rowan Hussain<br>Music: Jazz In Paris<br>Media Right Productions: https://youtu.be/mNLJMTRvyj8<br><br>المصادر:<br>https://www.almasryalyoum.com/news/details/1220944<br><br>http://www.shorouknews.com/columns/view.aspx?cdate=02092016&amp;id=7833125e-9cf1-488a-bed8-8579d608beb3<br><br>https://www.almasryalyoum.com/news/details/1133439	published	home	video	,https://www.youtube.com/embed/NXNxLbADIrM	PT25M9S	0	1	0	0	1	1	ar	\N	1	\N
74	لو بتعاني من حبّ الشّباب فنصيحتنا ليك	أكيد كثير فينا عانى من مشكلة حبّ الشّباب في فترة ما.. الفترة دي في الغالب بتكون فترة المُراهقة و من هنا جات التسمية.. مع إنّ حبّ الشباب مش شرط يظهر في	uploads/0jot2_GFKPX05.jpg	El Doctor	lo-btaany-mn-hb-lshbb-fnsyhtn-lyk	2021-05-22 21:37:12.37+02	2021-05-22 21:37:13.001+02	2021-05-22 21:37:13.133+02	أكيد كثير فينا عانى من مشكلة حبّ الشّباب في فترة ما.. الفترة دي في الغالب بتكون فترة المُراهقة و من هنا جات التسمية.. مع إنّ حبّ الشباب مش شرط يظهر في فترة المراهقة بل ممكن ييجي في أيّ سنّ عادي.. و لكن اللي بيخليه أكثر شيوعاً في فترة المُراهقة هي عوامل حنقولها دلوقتي.. في البداية الحبوب دي بتكون نتيجة انسداد المسام.. و دا بيحصل في حالة إنّ الغدد الدهنية الموجودة في بصيلة الشعر بدأت تفرز دهون أكتر من الطبيعي تسدّ المسام.. فبتهيّأ بكدا بيئة مناسبة لتكاثر البكتيريا اللي هي بتبقى موجودة بشكلٍ طبيعي في البشرة فتبدأ تزيد و تعمل إلتهابات.. الغدد الدهنية دي بتكون متركزة بشكل أكبر في الوجه و أعلى الظهر و الصدر و الأكتاف و دي الأماكن اللي بيظهر فيها الحبوب غالبًا.. طيب.. ايه العوامل اللي ممكن تسبب زيادة إفرازات الغدد الدّهنية؟ 🔴 الهرمونات اللي بتزيد في فترة المراهقة و عشان كدا حبّ الشباب شائع في الفترة دي.. 🔴 بعض الأدوية زيّ الكورتيزونات.. 🔴 بعض أنواع الدايت زيّ النشويّات الكثير و فيه بعض الدّراسات بتقول إنّ الشوكولاتة بتزوّد حب الشباب برضو.. 🔴 التوتّر و الضّغط النّفسي.. 🔴 عوامل جينيّة.. لو الوالدين مثلًا جالهم حب شباب فمن المحتمل الأطفال يجيلهم برضو.. لو بتعاني من حبّ الشّباب فنصيحتنا ليك: 🔴 غسل الوجه يوميّاً بغسول مناسب لنوع بشرتنا حيساعد في إزالة أيّ إفرازات دهنيّة زيادة.. 🔴 بلاش كريمات التّرطيب و الميك اب اللي أغلب مكوّناتها دهنيّة أو زيوت عشان ما تسدّش المسامّ.. 🔴 ممكن نستخدم بعض المراهم/كريمات/ جيل للعلاج و اللي مش بتحتاج وصفة طبيّة زيّ الحاجات اللي مادتها بينزويل بيروكسايد ( أكنيروكسيد ).. لو الخطوات دي كلها ما جابتش نتيجة ففي خيارات ثانية و لكن ساعتها حنحتاج استشارة مختص: 🔴 مضادات حيوية موضعيّة زيّ أكنيمايسين.. و فيه منتجات بيبقى فيها المضاد الحيوي مع البينزويل بيروكسايد عشان يقلل من المقاومة البكتيرية زي أكني بينز.. 🔴 مادّة الأدابالين أو التريتينوين في صورة موضعية برضو.. 🔴 كورس مضاد حيوي زيّ فيبرامايسين.. 🔴 آخر لاين هو مادّة الآيزوتيريتينوين ( نيت لوك ) و دا فعّال جدًّا و لكن ليه بعض المحاذير فبنلجأ له لمّا الحالة ما تستجيبش لأيّ علاج من العلاجات السابقة.. شاركوا البوست مع أيّ حدّ تعرفوه بيعاني من حبّ الشّباب.. 🙌🏻 و كالعادة دمتم سالمين و أصحاء.. 😄🌸 #طب_ولا_عك #شير_في_الخير #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
158	بناءً على طلب المُتابعين الأعزّاء حنخصص بوستات للحديث عن مجموعات الأدوية النّفسية	نبدأ النّهاردة بمجموعة اسمها مضادّات الذّهان.. ✔  عشان نفهم الأدوية دي بتشتغل ازاي لازم الأوّل نعرف يعني ايه ذُهان..؟ الذّهان هُوَ أشبه ما يكون بالانف	uploads/0jot2_GUHw5Vm.jpg	El Doctor	bn-aal-tlb-lmtbaayn-laaaz-hnkhss-bostt-llhdyth-aan	2021-05-22 21:57:05.374+02	2021-05-22 21:57:05.846+02	2021-05-22 21:57:05.972+02	نبدأ النّهاردة بمجموعة اسمها مضادّات الذّهان.. ✔  عشان نفهم الأدوية دي بتشتغل ازاي لازم الأوّل نعرف يعني ايه ذُهان..؟ الذّهان هُوَ أشبه ما يكون بالانفصال عن الواقع.. لإنّ الأشخاص اللي بيعانوا منه بتكون أعراضهم الأساسيّة حاجتين: 🔴 هلوسة: و هي سماع أو رؤية أشياء غير موجودة في الحقيقة.. 🔴 ضلالات: و هي اعتقاد أفكار خاطئة.. مثل اعتقاد أنّ أحدهم يكرهُك أو يُضمِر لك السّوء أو أنّ الناس تسخر منك.. الخ و الذّهان هو العرض الأساسي لمجموعة من الاضطرابات النّفسية و هي الاضطرابات النّفسية الذّهانيّة و اللي أشهرها مرض الفصام ( schizophrenia ) و غيرها كثير زيّ: 🔴 الاضطراب فصامي الشّكل ( schizophreniform disorder ) 🔴 الاضطراب الفصامي العاطفي ( schizoaffective disorder ) 🔴 الاضطراب الضّلالي ( delusional disorder ) 🔴 الاضطراب الذّهاني الوجيز ( brief psychotic disorder ) مش حنطوّل عليكم في الأنواع و حنكتفي بذكر أشهرها لو حدّ حابب يبحث باستزادة في الموضوع.. ✔️ الحاجة المهمّة اللي المفروض نعرفها هي إنّ أحد النّظريات اللي بتفسّر حدوث الذّهان هي نظريّة الدوبامين ( dopamine hypotheses ).. و دي بتقول إنّ الهلوسة و الضلالات دول بيحصلوا لمّا الدوبامين بيعلى في مناطق معيّنة من الدّماغ.. عشان كدا مضادّات الذّهان ماهي إلّا مضادّات للدّوبامين.. و بعض مضادات الذّهان القديمة ممكن تستخدم للقولون العصبي و التّرجيع.. ✔️ عندنا جيلين من مضادات الذّهان: 🔴 الجيل الأوّل زيّ 🔹 كلوربرومازين 🔹 هالوبيريدول 🔹سولبرايد 🔴 الجيل الثاني و هو المستخدم بشكل أوسع دلوقتي: 🔹كلوزابين 🔹ريسبريدون 🔹 باليبريدون 🔹 أريبيبرازول 🔹 أولانزابين ✔️ ايه هي الآثار الجانبيّة للأدوية دي..؟ 🔴 النّعاس 🔴 زيادة الوزن ( أكثر مع الجيل الثّاني ) 🔴 زيادة خطر الإصابة بالسكر ( أكثر مع الجيل الثّاني ) 🔴 اضطرابات في الحركة ( أكثر مع الجيل الأوّل ) 🔴 إمساك، زغللة في الرؤية، جفاف في الفم.. 🔴 زيادة إفراز البرولاكتين.. 🔴 مافيش من الآثار الجانبيّة دي إدمان.. أبدًا.. عشان دي أحد الأفكار الخاطئة عن الأدوية النّفسية بشكل عامّ.. ✔️ ازاي الطبيب بيتحكّم في الأعراض دي..؟ الآثار الجانبية بتكون مختلفة ( في حدّتها ) من دواء لدواء مش بس من جيل لجيل.. و أيضًا من شخص لشخص.. لذلك في عدّة استراتيجيات متبعة على حسب حدّة الأعراض دي: 🔴 الطبيب ممكن يقلّل الجرعة أو عدد مرات أخذ الدّواء لغاية ما يوصل للاستجابة المرجوّة.. 🔴 ممكن ينقل على دواء ثاني.. عشان كدا دايمًا بنقول للنّاس مش معنى إنّ أوّل دواء جرّبته ما جابش نتيجة إنّك تفقد الأمل لا.. دا غلط.. ساعات التّجربة الأولى ما بتكونش فعّالة.. بنسمّي كلّ تجربة antipsychotic trial و غالبًا مدّتها لا تقلّ عن شهر.. 🔴 ممكن يبدأ يوصف أدوية ثانية مع مضادّ الذّهان لتخفيف الآثار الجانبية.. ✔️ بعض مضادّات الذّهان بتستخدم في اضطرابات نفسيّة ثانية غير ذهانيّة ( زيّ التوحّد و الوسواس القهري و بعض اضطرابات الشّخصية ).. مافيهاش ذهان.. لإنّها بتعالج التهيّج أو العُنف المُصاحب للاضطرابات دي.. و برضو بتستخدم في علاج الاضطراب ثنائي القطب.. لذلك مضادّات الذهان مش أدوية بياخذها المجانين.. و مفيش اضطراب في الطّب النّفسي اسمه الجنون.. لو مهتمّين أكثر أنصحكم تبحثوا في الموضوع بأنفسكم و كمان اتفرّجوا على فيلم A beautiful mind.. حتلاقوا إنّ الإنسان المصاب بالذّهان قد يكون إنسان ذكي جدًّا و ناجح أكاديميًّا مش مجنون أبدًا.. و طبعًا شيّروا البوست و كونوا رُسُلَ المعرِفَة لأصدِقائِكُم و عائِلاتِكُم.. 💖 و دمتم سالمين و أصحّاء.. 😁🌸 #الدكتور #طب_ولا_عك #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
170	بريد العيادة | لايف | التجلطات ولقاح أسترازينيكا | كوفيد وجبل طارق | فضح النصابين في شهر رمضان	فيديو خاص ودردشة من القلب وإجابة على بعض الأسئلة:كيف تحمي طفلك حديث الولادة من كورونا؟أخذت الجرعة الأولى أسترازينيكا.. ممكن آخد الثانية فايزر؟التجل	uploads/0jot2_6Of1F3I.jpg	El Doctor	EkR8Nz21kpA	2021-05-22 22:02:32.143+02	2021-05-22 22:02:34.001+02	2021-09-30 11:33:14.579097+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/EkR8Nz21kpA	PT32M9S	0	2	0	0	1	1	ar	\N	1	\N
9	✔️ في دقيقتين: التخسيس والكيتو دايت - الخلاصة 👍	لو عايز تخس من غير ما تحس..لو عايز الخلاصة في موضوع الدايت والتخسيس..لو عايز نظام عشان وزنك ينزل وتبعد عن السكر والضغط وتحمي قلبك وشرايينك وصحتك ب	uploads/0jot2_LMSOuUA.jpg	El Doctor	92qKENiVEE0	2021-05-22 19:47:40.955+02	2021-05-22 19:47:41.441+02	2021-05-22 19:47:41.775+02	لو عايز تخس من غير ما تحس..<br><br><h2><span style="font-family: &quot;Arial Black&quot;;">لو عايز الخلاصة في موضوع الدايت والتخسيس..</span></h2><br>لو عايز نظام عشان وزنك ينزل وتبعد عن السكر والضغط وتحمي قلبك وشرايينك وصحتك بشكل عام..<br><br>لو عايز الدايت اللي الدراسات الحديثة حالياً بتدعمها.. واللي ممكن تبقى أسلوب حياة يخلي جسمك مثالي بدون تعب..<br><br><br>رابط حلقة الحوار الكامل عن الدايت والكيتو للي عايز تفاصيل أكتر:<br>https://youtu.be/AP2o9nAtLzM<br><br>رابط حلقة: الدايت وطرق التخسيس - طب ولا عك؟<br>https://youtu.be/dtRePec37sw<br><br>أمثلة لوصفات وجبات كيتو دايت جاهزة:<br>https://www.knoozi.com/1770/%D9%83%D9%8A%D8%AA%D9%88-%D8%AF%D8%A7%D9%8A%D8%AA/<br><br>لحساب كتلة الجسم ومعرفة إذا كنت تعاني من زيادة في الوزن أو سمنة:<br>https://www.un-web.com/tools/bmi/<br><br>لحساب احتياجك اليومي من السعرات الحرارية بناءاً على طولك ووزنك وعمرك وجنسك ومجهودك:<br>https://www.moh.gov.bh/HealthInfo/CaloriesNeed<br><br>جروب "السمنة وأشياء أخرى" للي عايز يبدأ كيتو دايت ومحتاج متابعة  - مع د.محمد الصباغ ومجموعة من الأطباء:<br>https://www.facebook.com/groups/188569918438649/?ref=bookmarks<br><br>Song: MBB - Palm Trees (Vlog No Copyright Music)<br>Music provided by Vlog No Copyright Music.<br>Video Link: https://youtu.be/jr0e9XzOPn4	published	draft	video	,https://www.youtube.com/embed/92qKENiVEE0	PT8M12S	0	1	0	0	1	3	ar	\N	1	\N
42	فيرس التهاب الكبد الوبائي سي مهم انك تعرف فيه نقط كدا تكفيك لثقافتك الشخصية وتساعد بيها اللى حوليك.	وانت بتسمع التلفزيون!! او بتقرأ الاخبار!! او حتي كنت ماشي في الشارع كدا و لمحت يافطة !!! عن "حملة مصر بدون فيرس سي " جربت تسأل نفسك هي الحملة دى لمين	uploads/0jot2_4TLtXGv.jpg	El Doctor	fyrs-lthb-lkbd-loby-sy-mhm-nk-taarf-fyh-nkt-kd-tkf	2021-05-22 20:57:42+02	2021-05-22 20:57:42.588+02	2021-05-22 21:01:36.372+02	وانت بتسمع التلفزيون!! او بتقرأ الاخبار!! او حتي كنت ماشي في الشارع كدا و لمحت يافطة !!! عن "حملة مصر بدون فيرس سي " جربت تسأل نفسك هي الحملة دى لمين ؟ طب ما سألتش نفسك مرة هو امتي لازم احلل ؟ ولا جه في دماغك يوم كدا مين دول اللي بيتكلمو عنهم ؟ وهو انا وانت (بعد الشر يعني ) ممكن نكون اتعرضنا للفيرس سي واحنا مش عارفين ؟ النهاردة هنتكلم عن فيرس التهاب الكبد الوبائي سي .....موضوع مهم انك تعرف فيه نقط كدا تكفيك لثقافتك الشخصية وتساعد بيها اللى حوليك. بص يا سيدى لو تعرف حد فيه أي حاجة من اللى جاي ده ابعته علي اقرب معمل يروح يعمل التحاليل اللي هنكتبها لك ونشرحهالك دي : • بياخد او اخد أدوية غير مشروعة عن طريق الحقن الوريدى او الاستنشاق ولو حتي جربها مرة واحدة. • واحد رايح لدكتور بيشتكي من اي حاجة وفي التحاليل الروتينية بتاعته كانت وظائف الكبد عالية بدون تفسير. • الاطفال اللي أمهاتهم مصابين بالتهاب الكبد سي او شركاء العلاقة الجنسية لاشخاص مصابين بالتهاب الكبد سي. • الناس اللى بتشتغل في المجال الصحي المعرضيين لمشتقات الدم المختلفة والوخز بالابر. • اذا كان مصاب بمرض يخليه ينقل دم كتير زي مرضى انيميا البحر المتوسط . • بيغسل كلي. • كان شقي حبتين ودخل السجن قبل كدا. • اللي اكتشفو انه عنده فيرس نقص المناعة ( الايدز). • اي حد عمل عمليات قبل سنة 1992. طيب الشخص اللي عرفناه ده.. هيبتدي منين ؟؟! اول حاجة خالص بيتعمل له تحليل نشوف اذا هو فعلا اتعرض لفيرس سي ولا لا وده عن طريق قياس نسبة الاجسام المضادة اللي كونها الجسم لفيرس سي صعبة!!! طيب بص ركز معايا.. أي حاجة بتدخل الدم بتقراها نوع من انواع كريات الدم البيضاء وتتعرف عليها واول ما تفسرها انها جسم غريب كفيرس او بكتريا تبدأ تدى اشارات لخلايا تانية تحاول تأكلها وتبلعها وتدى اشارات كمان لخلايا تالتة تطلع اجسام مضادة للجسم ده والاجسام المضادة دى فيه منها بيختفي بعد فترة ويروح او انه يفضل في الجسم دليل علي ان الجسم الغريب ده قد مر من هنا وكأنه حفر اسمه علي حيطة للذكرى مثلا . الاجسام المضادة اللى يكونها الجسم ضد الفيرس الكبدى سي بتفضل في الجسم مش بتروح .. فاذا الاجسام المضادة طلعت ايجابية.. يبقي الخطوة اللي بعدها هو الكشف عن الفيرس نفسه في الدم بحاجة كدا اسمها العربي مكلكع شويتين: "تفاعل البلمرة المتسلسل" (PCR). اذا تحليل تفاعل البلمرة المتسلسل (PCR) طلع ايجابي.. فده تأكيد لوجود الاصابة بفيرس سي .. مش بس مجرد تعرض عابر للفيرس. ومن هنا هنبتدى نعمل تحاليل اضافية عشان نحضر المريض للعلاج. وده الل هنعرفه في مرة تانية . اذا عجبك الاسلوب دوس لايك وشير واذا ما عجبكش دوس لايك وقولنا نغيره ازاي عشان بعدكدا يعجبك #الدكتور #طب_ولا_عك #فيرس_سي #محمد_عبد_السلام	published	draft	article	\N	\N	0	1	0	0	3	6	ar	\N	1	\N
3	✔️العلاج النهائي لقرحة المعدة والقولون العصبي وطب الأعشاب☘️ - طب ولا عك - الحلقة الثالثة - ج1😲	لو بيجيلك وجع في المعدة أو عندك القولون العصب	uploads/0jot2_d0u1wki.jpg	El Doctor	Q9DDC-_1D48	2021-05-22 19:39:44.491+02	2021-05-22 19:39:44.755+02	2021-05-22 19:39:46.407+02	الحلقة الأولى من برنامج "طب ولا عك"<br><br><br>Camera: Safaa Baagar<br>2D animation &amp; aftereffects: Rowan Hussain<br>Music: Jazz In Paris<br>Media Right Productions: https://youtu.be/mNLJMTRvyj8<br><br>المصادر:<br>https://www.almasryalyoum.com/news/details/1220944<br><br>http://www.shorouknews.com/columns/view.aspx?cdate=02092016&amp;id=7833125e-9cf1-488a-bed8-8579d608beb3<br><br>https://www.almasryalyoum.com/news/details/1133439	published	draft	video	,https://www.youtube.com/embed/Q9DDC-_1D48	PT12M23S	0	1	0	0	1	1	ar	\N	1	\N
111	صيام المريض | الحالات التي لا يجوز فيها الصيام ويجب فيها الفطر | الصيام والأمراض	هل فعلاً الصوم مفيد لكل الناس؟وهل حديث "صومو تصحو" يصلح لكل الناس؟ وهل هو حديث صحيح أصلاً؟ماهي الحالات المرضية التي لا يجوز فيها الصيام؟متى يجوز لك	uploads/0jot2_VDQuM1s.jpg	El Doctor	r3iuEZEWDT4	2021-05-22 21:46:32.796+02	2021-05-22 21:46:33.901+02	2021-05-22 21:46:34.892+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/r3iuEZEWDT4	PT7M17S	0	1	0	0	1	1	ar	\N	1	\N
73	كام مرة جالك شد عضلى و انت بتلعب او بتجرى	كل بيت فيه واحد او اثنين بيلعبوا كورة...⚽️كام مرة جالك شد عضلى و انت بتلعب او بتجرى‼️-الشد العضلى ده بيبقا انقباض مفاجئ فى عضلات الجسم و بيسبب ألم ش	uploads/0jot2_bcnhMV8.jpg	El Doctor	km-mr-glk-shd-aadl-o-nt-btlaab-o-btgr	2021-05-22 21:29:55.978+02	2021-05-22 21:29:56.359+02	2021-09-30 11:38:12.77261+02	تعرفوا إنّ نقص فيتامين دال ممكن يكون سبب في الشّعور بالإرهاق و الاكتئاب و تساقط الشّعر و آلام العضلات مش بسّ هشاشة العظام..؟ وظيفة فيتامين دال الرّئيسيّة هي المحافظة على سلامة العظام.. لإنّه بيزوّد امتصاص الكالسيوم من الأمعاء و ترسّبه في العظام و بالتّالي نموّ العظام بشكل سليم عند الأطفال و المُحافظة على نسب الكالسيوم فيها عند البالغين.. لكن دا مش الدّور الوحيد.. فيتامين دال مهمّ جدًّا في حاجات ثانية كثير.. زيّ إنّه بيقوّي الجهاز المناعي و كمان ليه دور في الحفاظ على سلامة العضلات و اعتدال المود و نموّ الشّعر.. طيب.. ازاي نحافظ على معدّل كويس من فيتامين دال في جسمنا و نتجنّب نقصه..؟ إليكم شوية حاجات لطيفة ممكن نعملها 🔴 نتعرض للشّمس يوميًّا لمدّة 10-15 دقيقة.. 🔴 ناكل الأطعمة الغنيّة بفيتامين دال زيّ التونة و السلمون و السردين و المشروم و صفار البيض.. 🔴 بعض الأطعمة المُعلَّبة بينضاف لها فيتامين دال زي الحليب و الزّبادي و عصير البرتقال.. لو عايزين تعرفوا المنتج اللي حتشتروه مضاف ليه فيتامين دال و لا لأ بصوا على المكوّنات.. 🔴 ممكن ناخذ مكمّلات غذائيّة تحتوي على فيتامين دال لو بدأنا نشتكي من أعراض و لقينا النّسبة قليلة فعلاً.. لذلك يُنصح بالمُتابعة مع مختصّ في حالة أخذ المكمّلات الغذائية.. حافظوا على صحّتكم و شاركوا البوست دا مع أيّ حدّ تعرفوه مش بيحب يخرج في الشمس.. و دمتم أصحاء و سالمين.. 🌸 #طب_ولا_عك #شير_في_الخير #مريم_جاسر	published	draft	article	\N	\N	0	2	0	0	4	1	ar	\N	1	\N
148	أهم 4 أخطاء يقع فيها المريض عند تعامله مع الطبيب | ازاي تستفيد من الدكتور؟	أحد المشاكل الكبيرة اللي بتقابل المريض لما يروح لدكتور إنه بيبقى عنده توقعات غير منطقية لنتيجة كشف الطبيب عليه..وده لأن كتير من الناس مش عارف طبيعة م	uploads/0jot2_BIfsOKD.jpg	El Doctor	R4hNOQgcafE	2021-05-22 21:53:07.189+02	2021-05-22 21:53:08.25+02	2021-09-30 12:18:49.22805+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/R4hNOQgcafE	PT12M24S	0	2	0	0	1	1	ar	\N	1	\N
6	pseudoscience | العلوم الزائفة | الطاقة والشاكرا والبرمجة اللغوية العصبية | طب ولا عك	ياترى إيه هو تعريف طب الأعشاب .. و الطب البدي	uploads/0jot2_MuDOyX6.jpg	El Doctor	WV7wFsFPbzI	2021-05-22 19:40:47.96+02	2021-05-22 19:40:48.451+02	2021-05-22 19:40:48.643+02	ياترى إيه هو تعريف طب الأعشاب .. و الطب البديل .. والعلاج بالطاقة .. والشاكرا .. والبرمجة اللغوية العصبية .. و الديتوكس .. والأبراج .. والإبر الصينية..  وحاجات تانية كتييير؟<br><br>هل دي علوم فعلاً؟؟ ولا دي مجرد نصب وهبل بس بشياكة؟<br><br>تعالو نتفق على أساس .. يعني إيه "علوم زائفة"؟<br><br>عارف ان الكلام ده هيزعل ناس كتير محترمة ماشية في السكك دي بحسن نية.. لكن ده مش كلامي.. ده العلم الثابت بالدليل.. وده بالمناسبة هيكون موضوعنا الحلقة الجاية ان شاء الله: "الطب المبني على الدليل"<br><br>لايك وتابع صفحة الدكتور على فيس بوك:<br>https://www.facebook.com/Eldoctooor/<br><br>بعض المصادر الجانبية (بخلاف التجارب الشخصية والحبايب اللي ضاعوا في السكة ديه!):<br><br>https://en.m.wikipedia.org/wiki/Pseudoscience<br><br>https://en.m.wikipedia.org/wiki/List_of_topics_characterized_as_pseudoscience<br><br>https://sciencebasedmedicine.org/teaching-pseudoscience-in-universities<br><br>https://physics.weber.edu/carroll/honors/pseudoscience.htm<br>https://ar.islamway.net/article/22555/حقيقة-علم-الطاقة-الباطني<br><br>https://sciencebasedmedicine.org/the-detox-scam-how-to-spot-it-and-how-to-<br><br><br>Music: Song: MBB - Palm Trees (Vlog No Copyright Music)<br>Music provided by Vlog No Copyright Music.<br>Video Link: https://youtu.be/jr0e9XzOPn4	published	draft	video	,https://www.youtube.com/embed/WV7wFsFPbzI	PT10M31S	0	1	0	0	1	1	ar	\N	1	\N
10	كنت تتخيل إن حاجة زي دي ممكن تموتك؟؟	معلومة خطييرة!! حاجة بنعملها كل يوم بتسبب سرطان لنا ولأولادنا! ضروري تتفرج على الفيديو لآخر ١٠ ثواني!شير.. ومنشن لحد محتاج الفيديو ده!	uploads/0jot2_4hAibn6.jpg	El Doctor	RiFh8THLxFk	2021-05-22 19:47:58.33+02	2021-05-22 19:47:58.778+02	2021-05-22 19:47:59.02+02	معلومة خطييرة!! حاجة بنعملها كل يوم بتسبب سرطان لنا ولأولادنا! ضروري تتفرج على الفيديو لآخر ١٠ ثواني!<br>شير.. ومنشن لحد محتاج الفيديو ده!	published	draft	video	,https://www.youtube.com/embed/RiFh8THLxFk	PT3M26S	0	1	0	0	1	1	ar	\N	1	\N
7	🤔 الدايت وطرق وأنظمة التخسيس - طب ولا عك؟ 🙄	ياترى فيديوهات الدايت والتخسيس اللي مالية الي	uploads/0jot2_xTcUxaM.jpg	El Doctor	dtRePec37sw	2021-05-22 19:41:02.241+02	2021-05-22 19:41:02.818+02	2021-05-22 19:41:03.093+02	ياترى فيديوهات الدايت والتخسيس اللي مالية اليوتيوب دي.. طب ولا عك؟<br><br>لو عايز تخس؟ ايه هي الاعشاب المفيدة في التخسيس؟<br><br><br>إيه رأيك في الأدوية اللي بتتاخد عشان نزول الوزن؟<br><br>ايه رأيك في الليمون بالكمون؟.. وكنافة البحر؟ طيب وبالنسبة للسنامكي؟<br><br>هل التخسيس والدايت ونزول الوزن بسرعة له أضرار؟<br><br>لموضوع ده هنغطيه على حلقتين قصيرين ان شاء الله.. حلقة النهاردة عن العك المنتشر في الدايت والتخسيس.. وحلقة الأسبوع الجاي عن أفضل طريقة علمية وصحية للتخسيس وعن أنظمة اللوكارب (قليلة الكاربوهيدرات) والكيتو دايت.<br><br>** جروب "السمنة وأشياء أخرى":<br>https://www.facebook.com/groups/188569918438649/<br><br><br>** تفسير الحالة المرضية في مقدمة الحلقة (للأطباء فقط):<br>Diuretic induced hypokalaemia led to Atrial Fibrillation. Gall stones likely caused by rapid weight loss. Iatrogenic thyrotoxicosis may lead to hypothyroidism due to pituitary access suppression.<br><br><br>** بعض مصادر الحلقة الخفيفة دي (أغلب المصادر هيكون في الحلقة الجاية ان شاء الله - الجزء الثاني):<br>https://bnf.nice.org.uk/drug/senna.html<br><br>https://www.ncbi.nlm.nih.gov/pmc/articles/PMC536949/?page=1<br><br>https://patient.info/health/weight-loss-weight-reduction#nav-3<br><br>https://www.truthinadvertising.org/weight-loss-tea/<br><br>Music:<br> Jazz In Paris - Media Right Productions:<br>https://youtu.be/mNLJMTRvyj8<br><br>Song:<br> MBB - Palm Trees (Vlog No Copyright Music)<br>Music provided by Vlog No Copyright Music.<br>Video Link: https://youtu.be/jr0e9XzOPn4	published	draft	video	,https://www.youtube.com/embed/dtRePec37sw	PT10M53S	0	1	0	0	1	1	ar	\N	1	\N
83	الالتهاب السّحائي أو الحمّى الشّوكية.. 🤒	الالتهاب السّحائي أو الحمّى الشّوكية.. 🤒هو عبارة عن التهاب الأغشية المحيطة بالمخ و الحبل الشّوكي ( السّحايا ).. الموضوع دا بيحصل بسبب عدوى إمّا فيرو	uploads/0jot2_OqXM1dw.jpg	El Doctor	llthb-lshy-ao-lhm-lshoky	2021-05-22 21:39:18.309+02	2021-05-22 21:39:18.781+02	2021-05-22 21:39:18.928+02	هنتكلم النهاردة عن الحروق و ازاى تتصرف بشكل صحيح فى حالة تعرضك او تعرض من حولك للاصابة بحرق.<br>الحروق هى واحدة من أكثر الحوادث و الاصابات التى تحدث فى المنازل خاصة للأطفال، و كلمة حرق مش بس معناها احساس بالألم لكن بيحصل تلف فى انسجة الجلد و بيختلف نوع الحرق حسب درجة و شدة التلف. فى 3 انواع او درجات من الحروق بتختلف حسب شدتها من الدرجة الاولى و الثانية و الثالثة الى اشدهم ضرر و خطورة و هى الحروق من الدرجة الرابعة.<br>الدرجة الاولى: احمرار الجلد فقط (لا تتكون فقاعات)<br>الدرجة الثانية: فقاعات و زيادة سمك الجلد فى بعض المناطق<br>الدرجة الثالثة: جفاف الجلد و ميله الى اللون الابيض<br>الدرجة الرابعة: نفس أعراض الدرجة الثالثة لكنها تمتد تحت الجلد لتأثر على الاوتار و العظام فى اسباب كتير مسئولة عن حدوث الحروق و هى<br>-السوائل الساخنة ( درجة الغليان)<br>- مواد كيميائية<br>- تيار كهربى<br>- اى مصدر للنار و اللهب<br>- و ممكن نتيجة التعرض الزائد لأشعة الشمس طيب نقدر نتصرف ازاى مع الحروق؟<br>1-عزل المصدر المسئول عن الحرق باسرع طريقة ممكنة<br>2- خلع الملابس و المجوهرات (خاتم، دبلة،اساور،ساعة....) حول منطقة الحرق مع تجنب حدوث اى احتكاك<br>3-تعريض المنطقة المصابة للمياه الجارية لمده لا تقل عن 15 دقيقة ( لا نستخدم الثلج ابدااااا)<br>4-تغطية الحرق بلزقة طبية لمنع الاحتكاك<br>5-فى حالة ان الألم غير محتمل بنستخدم بعض المسكنات و افضلهم<br>Paracetamol Or Ibuprofen<br>6-فى حالة ان الحرق حصل فى منطقة الوجه يفضل الجلوس عن الاستلقاء لأن ده بيساعد فى الحد من الورم طيب بعد ما تعمل الخطوات السابقة تبدأ تشوف...هل لازم تروح المستشفى ولا لأ؟<br>يتوجب الذهاب للمستشفى فى الحالات الاتية<br>-لو مساحة الحرق اكبر من كف اليد<br>-تغير لون الجلد الى الابيض او الاسود<br>-فى حالة تكون فقاعات بها سائل<br>-فى جميع حالات الحروق الكيميائية او الكهربية و يفضل الاستشارة الطبية فى حالة ان المصاب عمره تجاوز ال 60 عام او طفل تحت سن ال 5اعوام او فى حالة الحمل, اخيرا... نرجو الانتباه على اطفالنا و ابعادهم عن اى مصدر للنار سواء اعواد الثقاب، الولاعات، الشمع و غيرها و كذلك تغطية فتحات الكهرباء الغير مستخدمة و سهل الوصول اليها. #الدكتور<br>#طب_ولا_عك<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
11	🏥 الطب المبني على الدليل - هل خبرة الطبيب أهم أم التجارب العلمية السليمة	اتكلمنا كتير عن أنواع وهمية من الطب اللي بيتعرض على الشاشات نهار وليل عشان هي تجارة بتكسب ذهب!!النهاردة بقى هنتكلم عن النوع الوحيد الصح في الطب في ا	uploads/0jot2_y2HUI4w.jpg	El Doctor	vzkIkvxtGL4	2021-05-22 19:48:16.523+02	2021-05-22 19:48:16.991+02	2021-05-22 19:48:17.218+02	معلومة خطييرة!! حاجة بنعملها كل يوم بتسبب سرطان لنا ولأولادنا! ضروري تتفرج على الفيديو لآخر ١٠ ثواني!<br>شير.. ومنشن لحد محتاج الفيديو ده!	published	draft	video	,https://www.youtube.com/embed/vzkIkvxtGL4	PT13M44S	0	1	0	0	1	1	ar	\N	1	\N
95	حنتكلّم النّهاردة عن أحد أنواع إصابات الرّكبة الشّائعة..تمزُّق غضروف الرّكبة الهلالي	✔️ ايه هو الغضروف الهلالي دا..؟ الأوّل حنقول شرح بسيط كدا للتركيب التّشريحي لمفصل الرّكبة.. عندي التقاء لـ٣ عظام في المفصل دا: 🔴 عظمة الفخذ.. 🔴 عظمة	uploads/0jot2_lNNT1Ja.jpg	El Doctor	hntklm-lnhrd-aan-ahd-anoaa-sbt-lrkb-lshaatmzk-ghdr	2021-05-22 21:42:56.3+02	2021-05-22 21:42:56.841+02	2021-05-22 21:42:57.023+02	*انا عندى اكتئاب* الجملة دى انتشرت بشكل كبير بين الناس و على مواقع السوشيال ميديا و كثير مننا بيقولها على محمل الهزار، لكن فى الواقع الكلمة دى اخطر من كده بكثير‼️ يعنى ايه اكتئاب؟<br>الاكتئاب ده مرض نفسى يتمثل فى حالة مستمرة من الحزن و فقدان الحماس و الرغبة تجاه النشاطات اليومية، و تقدر تلاحظ تغير كبير فى طريقه تفكير و تصرفات المريض و عدم القدرة على القيام بالنشاطات و المهام اليومية.<br><br>طيب ايه أعراض الاكتئاب<br>1️⃣الشعور بالحزن و فقدان الأمل<br>2️⃣عدم انتظام النوم....فالمريض يعانى اما من الارق الشديد او النوم لفترات طويلة<br>3️⃣الشعور بالتعب و الارهاق<br>4️⃣التوتر المستمر و عدم الارتياح<br>5️⃣بطء التفكير و الكلام و حركة الجسم<br>6️⃣التفكير فى الانتحار و الرغبة فى الموت<br>7️⃣بعض المشاكل الصحية دون سبب وجيه مثل(الام الظهر و الصداع)<br>8️⃣الميل الى العزلة و عدم الاختلاط بالغير<br>9️⃣صعوبة التذكر أسباب الاكتئاب..<br>1-تغير فى كيمياء المخ و المستقبلات الموجودة فيه و طرق استجابتها للاشارات الواردة اليه<br>2-خلل فى توازن هرمونات الجسم و الذى قد ينتج عن عدة مشاكل صحية مثل خلل فى افرازات الغدة النخامية<br>3-العامل الوراثى ايه العوامل التى تساعد على المرض؟<br>🔴تراجع الثقة فى النفس و الاعتماد التام على الأخرين فى اتخاذ القرارات الشخصية<br>🔴التعرض للضغوط النفسية و الاحداث الصادمة<br>🔴الافراط فى شرب الكحوليات و المخدرات<br>🔴بعض الامراض المزمنة مثل السرطان (لما تسببه من اثر نفسى) مفيش طريقة صريحة لتجنب المرض لكن تقدر تساعد نفسك عن طريق:<br>-الاختلاط بالعائلة و الاصدقاء و تجنب العزلة👨‍👩‍👧‍👦<br>-التعامل مع الضغوطات و الاضطرابات النفسية و طلب المساعدة عند الحاجه<br>-سرعة زيارة الطبيب👨‍⚕️ فى حالة ملاحظة اى من الاعراض السابقه و البدء فى العلاج قبل ان تسوء الحالة للأطلاع على المواضيع ذات الصلة يرجى الدخول على اللينك فى أول تعليق⬇️ #طب_ولا_عك<br>#شير_في_الخير<br>#الدكتور<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
89	جروب كيتو كود..اذا كنت ناوي تعمل كيتو دايت.. فأنصحك وبشدة انك تشترك في المجموعة دي	جروب كيتو كود.. اذا كنت ناوي تعمل كيتو دايت.. فأنصحك وبشدة انك تشترك في المجموعة دي.. أنشأها د. محمد الصباغ.. طبيب الغدد المتميز في بريطانيا.. وبيشارك	uploads/0jot2_DrJ1huQ.jpg	El Doctor	grob-kyto-kodth-knt-noy-taaml-kyto-dyt-fanshk-obsh	2021-05-22 21:40:49.047+02	2021-05-22 21:40:49.423+02	2021-05-22 21:40:49.54+02	جروب كيتو كود.. اذا كنت ناوي تعمل كيتو دايت.. فأنصحك وبشدة انك تشترك في المجموعة دي.. أنشأها د. محمد الصباغ.. طبيب الغدد المتميز في بريطانيا.. وبيشارك في ادارتها والرد على أسئلة الأعضاء مجموعة من الأطباء والمتخصصين المتميزين.. كلامهم كله تقريبا مدعوم بدراسات وأدلة محترمة.. الجروب دي منارة علم.. انصح اللي عايز ينزل في الوزن بسرعة انه يتابعها.. https://www.facebook.com/groups/keto.code تحياتي.. د.محمد منصور #طب_ولا_عك	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
104	الجائحة | كيفية التعامل معاها | دورك إيه؟	منظمة الصحة العالمية أعلنت "الجائحة"؟الدول قفلت أبوابها؟ والناس اتحبست في بيوتها؟ والمدارس والجامعات قفلت؟مفيش صلاة في المساجد؟ والحرم مقفول والعمرة	uploads/0jot2_hqNDCbz.jpg	El Doctor	DdQMoJmebQc	2021-05-22 21:45:50.574+02	2021-05-22 21:45:51.849+02	2021-05-22 21:45:52.097+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/DdQMoJmebQc	PT22M21S	0	1	0	0	1	1	ar	\N	1	\N
106	هل ممكن الأطباء يموتوك؟؟😨 | أنواع العلاج | ألف باء طب	سمعنا اليومين اللي فاتوا دول ان الدكاترة بيسيبو الناس الكبار في السن يموتو إذا أصيبو بالكورونا!!هل فعلاً انت ممكن تروح المستشفى أو تروح لدكتور، وبدل	uploads/0jot2_28YOEaE.jpg	El Doctor	jxHYHqK2TyY	2021-05-22 21:46:01.269+02	2021-05-22 21:46:02.342+02	2021-05-22 21:46:02.561+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/jxHYHqK2TyY	PT15M11S	0	1	0	0	1	1	ar	\N	1	\N
97	كثير منّنا بيحسّ ساعات بحموضة و حرقة في المعدة بعد تناول نوع معيّن من الأكل	كثير منّنا بيحسّ ساعات بحموضة و حرقة في المعدة بعد تناول نوع معيّن من الأكل.. الأكل المقلي مثلًا أو الحارّ.. حُرقة المعدة مشكلة شائعة و لكن لحسن الحظّ	uploads/0jot2_1JHRzcq.jpg	El Doctor	kthyr-mnn-byhs-saat-bhmod-o-hrk-fy-lmaad-baad-tnol	2021-05-22 21:43:37.191+02	2021-05-22 21:43:37.9+02	2021-05-22 21:43:38.036+02	كثير منّنا بيحسّ ساعات بحموضة و حرقة في المعدة بعد تناول نوع معيّن من الأكل.. الأكل المقلي مثلًا أو الحارّ.. حُرقة المعدة مشكلة شائعة و لكن لحسن الحظّ لو بتحصل بشكل عرضي مافيش منها قلق..<br>✔️ الألم بيكون خلف عظمة الصّدر مُباشرةً ( فُمّ المعدة ) و بيكون بعد الأكل و غالبًا بيزيد عند الاستلقاء أو الانحناء..<br>✔️ الموضوع دا بيحصل بسبب ضعف في العضلة الموجودة أسفل المريء ( العضلة العاصرة المريئية ).. فبيحصل ارتخاء للعضلة و ما بتقفلش كويس عشان تمنع الطّعام و العُصارة المعديّة من الارتداد من المعدة إلى المريء.. فيحصل الارتجاع و الشعور بالحُرقة و الألم.. و أيضًا الشعور بطعم حمضي في الفم..<br>✔️ لو كان الموضوع دا مش بيتكرّر كثير ( أقلّ من مرّتين في الأسبوع ) فدي حرقة معديّة عرضيّة و لكن لو أكثر من كدا فقد يكون عرض للارتجاع المريئي..<br>✔️ و عندنا بعض الخطوات البسيطة اللي نقدر نعملها للتخفيف من الألم:<br>🔴 نحافظ على وزن صحّي.. لإنّ الوزن الزّائد قد يضغط على المعدة و يزوّد ارتجاع حمض المعدة و الحرقان..<br>🔴 بلاش نلبس ملابس ضيّقة لنفس السّبب السّابق.. عشان ما نزوّدش الضّغط على المعدة..<br>🔴 نبعد عن الأطعمة اللي بتزوّد الحموضة.. غالبًا هي الأطعمة المقليّة أو الحارّة ( لو حسّيت إنك بتتعب أكثر بعد أكلة معينة تجنّبها.. )<br>🔴 ما ناكلش و ننام على طول.. ( نستنّى من ساعتين لثلاث ساعات )<br>🔴 بلاش وجبات كبيرة و الأفضل وجبات صغيرة بعدد أكثر على مدار اليوم..<br>🔴 لو الحرقة بتزيد بالليل نحاول نرفع الرّأس قليلاً عن مستوى باقي الجسم أثناء النّوم.. ✔️ و طبعاً مُضادات الحموضة ( فوار فواكه و مالوكس ) و الـ H2 blockers ( راني و أنتودين ) و الـ PPI ( بانتولوك، بيبزول، اوميز.. الخ ) كُلّ دي خيارات علاجيّة فعّالة.. شاركوا البوست مع صحابكم لتعمّ الفائدة و دمتم سالمين و أصحّاء 😁🌸 #طب_ولا_عك<br>#الدكتور<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
14	الدكاترة نصابين وحرامية - ابراهيم الفقي والبرمجة اللغوية العصبية - علم الطاقة (بريد العيادة)	أهلا بيكم في أول حلقة من السلسلة الجديدة: "بريد العيادة" في السلسلة دي هنرد على كتير من التعليقات اللي جات لنا على الفيديوهات اللي فاتت اللي فيها أمو	uploads/0jot2_cM1j1Rk.jpg	El Doctor	5mAm8_RnDpM	2021-05-22 19:52:05.719+02	2021-05-22 19:52:06.401+02	2021-05-22 19:52:06.729+02	أهلا بيكم في أول حلقة من السلسلة الجديدة: "بريد العيادة" <br>في السلسلة دي هنرد على كتير من التعليقات اللي جات لنا على الفيديوهات اللي فاتت اللي فيها أمور محتاجة ندردش فيها مع بعض..<br><br>بعض الأسئلة في الحلقة لو عايز تروحلها مباشرة:<br><br>00:00 مقدمة<br>03:28 ابراهيم الفقي   <br>06:00 الكلام ده بيتدرس لطلبة طب في اوروبا<br>06:58 الدكاترة جزارين ونصابين وحرامية<br>08:40 البرمجة اللغوية العصبية<br>09:27 كلية طب الأعشاب<br>11:20 هل الويكيبيديا هي مصدر معلوماتنا؟<br>12:30 كله إلا الطاقة!! الطاقة دي أهم العلوم!<br>16:36 أنا خفيت لما استعملت الأعشاب والإبر الصينية والطب البديل<br>17:40 الطب الغربي غلط .. و عصير الليمون والمشروبات الدافية أحسن حاجة للبرد<br>18:50 الطب النفسي طب ولا عك؟<br>19:40 فين دليلك على إن الحاجات دي كلها عك؟<br>21:16 اشترك في القناة.. وشير.. وسيب لنا كومنت :)<br><br>يارب الفيديو ده يكون مفيد.. ويكون قربنا من بعض شوية..<br>لو عجبك.. ياريت تقول لي في تعليق.. وخلينا نكمل بالطريقة دي.. ونخليه مرة كل شهر مثلا.. ولا إيه؟<br><br>تحياتي..<br>محمد منصور<br>طبيب الباطنة والكلى بمستشفى جامعة لستر<br>بريطانيا<br><br><br>ماتنساش تتابع صفحة "الدكتور" على فيس بوك:<br>https://www.facebook.com/Eldoctooor<br><br><br>Post production:<br>Breeze studio - Egypt<br>https://www.facebook.com/BreezeStudioEgypt/	published	draft	video	,https://www.youtube.com/embed/5mAm8_RnDpM	PT21M54S	0	1	0	0	1	2	ar	\N	1	\N
105	تحذير لكل من سمع عن اكتشاف علاج كوفيد19 - تعليق على فيديو د.إياد قنيبي	فيديو سريع ومهم لتوضيح حقيقة اكتشاف علاج لمرض كورونا الجديد..إذا كنت شاهدت فيديو د.إياد قنيبي عن علاج كوفيد19 بدواء هايدروكسيكلوروكين أو غيره من الأد	uploads/0jot2_PQObLwJ.jpg	El Doctor	CxC5rBG79sA	2021-05-22 21:45:56.558+02	2021-05-22 21:45:57.514+02	2021-05-22 21:45:57.802+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/CxC5rBG79sA	PT10M23S	0	1	0	0	1	1	ar	\N	1	\N
40	عاوز تاكل كل اللي نفسك فيه و بأي كمية انت عاوزها و ما تعملش رياضة و يبقي شكلك زي نجوم السينما	عشان محدش يقول محدش قاللي عاوز تاكل كل اللي نفسك فيه و بأي كمية انت عاوزها و ما تعملش رياضة و يبقي شكلك زي نجوم السينما؟! 🍔 نجوم السينما الاجنبية طبع	uploads/0jot2_UUBi61z.jpg	El Doctor	aaoz-tkl-kl-lly-nfsk-fyh-o-bay-kmy-nt-aaozh-o-m-ta	2021-05-22 20:51:28.063+02	2021-05-22 20:51:28.701+02	2021-05-22 20:51:30.66+02	<p>عشان محدش يقول محدش قاللي عاوز تاكل كل اللي نفسك فيه و بأي كمية انت</p><p> عاوزها و ما تعملش رياضة و يبقي شكلك زي نجوم السينما؟! 🍔 نجوم السينما الاجنبية طبعا لأننا عندنا حيتان برضه 🐳 </p><p>هي طريقة واحدة بس ☝ تخليك توصل لكل ده (غير الفوتوشوب طبعا) </p><p>تعمل خير كتير ، و تتصدق 💰 و تكفل ايتام و بعد عمر طويل هتعمل كل اللي انا كتبته فوق ده في الجنة ان شاء الله 🌴</p><p> خلاص هاعمل دايت و أخس و أبقى زي احمد حسام "ميدو" و اخسر ٥٠ كجم من وزني في شهر واحد 💪</p><p><br>كات 🎬 هايل يا فنان .... تستاهل ساندوتشين شاورما من ابو مازن السوري على المشهد الجميل ده بعدين خليك صادق مع نفسك |، انت لا ارادتك و لا محفظتك 💸 يسمحولك تعمل اللي عمله ميدو (بصوت عزت العلايلي في الطريق الى ايلات) طب ايه الحل 💭 بص يا ابن الحلال 👀 .... الموضوع معادلة من طرفين ✌<br>أكل و مجهود تاكل اكتر من مجهودك ، الاكل الزيادة هيتخزن في جسمك ، و هيتخزن في أي حتة على مزاجه هو مش على مزاجك انت ، و غالبا بيتخزن في حتت ما يعلم بيها الا ربنا 😲 تاكل اقل من مجهودك يبقى هتخس ، ما لم يكن فيه سبب مرضي لعدم الخسسان و أنا صغير والدتي ربنا يديها الصحة و يبارك فيها 🙏 بعد ما فاض بيها من كسلي قالت لي "انت كده .... تحب الجوع و الراحة"<br>أنا كان اول مرة اسمع المثل ده و حسيت بانها ظالماني فرديت و قولتلها "بالعكس ، انا باحب الشبع و الراحة 😍... جوع ايه بعد الشر" و دارت الأيام و قدرت اني انزل من ٩٥ كجم ل ٨٠ كجم في شهر واحد بدون دايت ولا عذاب ولا حرمان و انا بأكل شيكولاتة 🍫 و كل اللي نفسي فيه و الاجمل اني قدرت احافظ على وزني الجديد لمدة ٤ سنين دلوقتي باستخدام المعادلة البسيطة أكل قصاد مجهود 🏇 طيب ازاي تأكل اقل من غير ما تحس بالحرمان؟<br>و ازي تزود مجهودك من غير ما تحس بالتعب؟ ده هنقوله في بوست تاني ان شاء الله #طب_ولا_عك<br>#الدكتور<br>#علاء_السويفي</p>	published	draft	article	\N	\N	0	1	0	0	2	3	ar	\N	1	\N
22	أسباب الضعف الجنسي عند الرجال - [التشخيص وطرق العلاج] - فياجرا وأنواعها	عندك مشاكل مع العلاقة الزوجية؟؟ فيه ضعف والأمور مش تمام؟؟طيب إيه الحل؟ هل تحلل هرمون تستوستيرون؟ ولا تروح تكشف عند دكتور؟تاخد ترامادول ولا فياجرا ول	uploads/0jot2_T8DiNP6.jpg	El Doctor	1AhhpIZSR6A	2021-05-22 19:55:42.568+02	2021-05-22 19:55:42.982+02	2021-05-22 19:55:43.219+02	الفيديو ده قديم وتم تسجيل فيديو أحدث منه بالتفصيل عن قناة فكر تاني ود.كريم علي ود.إيريك بيرج على هذا الرابط:<br>https://www.youtube.com/watch?v=ikKEbsxXDZg&amp;t=827s<br><br>أسئلة كتيييييييييييييييييييييييييييييييييييييييييييييييييير جداً جات للقناة تسأل عن قناة #فكر_تاني وهل المعلومات الغريبة اللي ي القناة دي صح ولا غلط؟<br><br>خلينا بسرعة نتكلم عن القناة مالها وماعليها وصاحبها دكتور #كريم_علي <br><br>دي هتكون آخر حلقة نتكلم فيها عن قنوات لفترة طويلة شوية.. عشان نرجع بقى للي اتعودنا عليه من تبسيط الطب والأمراض ونشوف هل علاجاتها المنتشرة طب ولا عك؟<br><br>من مستشفى جامعة لستر في بريطانيا:<br>د محمد منصور<br>قناة الدكتور	published	draft	video	,https://www.youtube.com/embed/1AhhpIZSR6A	PT22M30S	0	1	0	0	1	1	ar	\N	1	\N
65	هؤلاء النصابون الكبار وابتكاراتهم العبقرية من تراث العراب.. د.أحمد خالد توفيق	من تراث العراب.. د.أحمد خالد توفيق .. الأستاذ بكلية طب طنطا.. والأديب الذي لن يتكرر.. هؤلاء النصابون الكبار وابتكاراتهم العبقرية أخيرًا شاهدت حلقات ال	uploads/0jot2_CpzAxwF.jpg	El Doctor	hl-lnsbon-lkbr-obtkrthm-laabkry-mn-trth-laarb-dahm	2021-05-22 21:27:40.32+02	2021-05-22 21:27:41.059+02	2021-05-22 21:27:41.18+02	من تراث العراب.. د.أحمد خالد توفيق .. الأستاذ بكلية طب طنطا.. والأديب الذي لن يتكرر.. هؤلاء النصابون الكبار وابتكاراتهم العبقرية أخيرًا شاهدت حلقات البرنامج الأمريكي (هراء) الذي أرسل لي صديقي الكويتي حلقات موسم كامل منه .. (هراء) أو (فضلات ثيران) هي الترجمة المهذبة لاسم البرنامج البذيء، والذي يقدمه اثنان من المشعوذين الظرفاء سليطي اللسان هما (بن) و(ستيلر) اللذان قررا أن يكرسا حياتهما لمحاربة الخرافة والسخف والنصب .. نفس الدور الذي لعبه منذ مائة عام مشعوذ آخر هو (هوديني) على أساس إن (حبل على حبل مايبرمش) كما يقولون عندنا .. الحلقة التي استلفتت نظري تدور عن الطب البديل .. يمكنني اليوم أن استعمل الكلمة بحرية بعد ما فضل د. (محمد المخزنجي) استعمال لفظة (الطب المكمل).. منذ البداية يقول مقدم الحلقة في استمتاع: "نحن نبحث عن الهراء .. وما دمنا نتكلم عن الطب البديل فالمشكلة هي: من أين نبدأ ؟" ويأخذك البرنامج في رحلة ممتعة بين هذا النصاب الذي يجوب الولايات المتحدة بشاحنة، ويقوم بتدليك القدمين بجهاز يحدث ذبذبة معينة تدغدغ القدم، ويتقاضى 55 دولارًا في الساعة.. يطلقون على هذا النوع من العلاج اسم reflexology ويقضي بأن كل أعضاء الجسم لها جزء يمثلها في القدم .. ثم يأخذك البرنامج إلى المعالجين بالمغناطيس .. هناك مغناطيس لكل عضو من أعضاء جسدك، والفكرة هي تصحيح مغناطيسية جسمك المختلة .. يؤكد الدكتور المتحمس لهذه الطريقة – وكلهم يحملون لقب دكتور على فكرة - أن رسم المخ الكهربي أظهر انخفاض معدلات التوتر لدى من عولجوا بهذه الطريقة.. هنا يذكرنا البرنامج بأن رسام المخ الكهربي لا دور له في قياس التوتر .. ويعلق أحد أساتذة الأمراض العصبية أن أجسامنا لا تعمل بهذه الكيفية ولا دور للمغناطيس فيها .. هناك جو علمي مهيب حول الموضوع لكن الحقيقة هي أنه مجرد هراء .. بعد هذا نرى الـ Chiropractor وهو نصاب آخر يعالج بفلسفة تقوم على أن كل الأمراض تنجم عن ارتخاء الفقرات . لهذا يمارس هذه العملية التي هي أقرب للتدليك العنيف جدًا .. يعترف الرجل الذي يزعم أنه حاصل على الدكتوراه بأنه أجرى هذه العملية العنيفة على طفل عمره شهر واحد ليعالجه من الإكزيما..! هكذا ينتقل البرنامج من هراء لآخر، وفي النهاية يلتقي بعالم كتب عن هؤلاء النصابين كتابًا اسمه (الفودوو العلمي). يقول هذا العالم إن الأمر كله يعتمد على الإيحاء ورغبة الشفاء لدى المريض .. ثم يصف كل هذا الذي يحدث بعبارة قاسية هي : "إنه مجرد استمناء فكري !". نترك هذا البرنامج الشائق ونثب إلى مصر التي تفشى فيها سرطان الطب البديل .. قد يطيب للنفس أن تتأسى بحقيقة أن هذا النصب يجري في أكثر دول العالم تقدمًا، لكننا نقول إن هناك فارقين مهمين بيننا وبينهم.. الفارق الأول هو أن طريقتهم العلمية صارمة وثابتة .. يستعملون المقاييس التي وضعها كانط وديكارت وليسوا على استعداد للتخلي عنها .. لن تتكلم مجلة طبية محترمة عن العلاج بالمغناطيس، ولو تكلمت لقامت بإجراء دراسة مقارنة مع مجموعة ضابطة تخضعها لعلم الإحصاء الذي لا يكذب .. هكذا يظل الخط واضحًا بين ما هو علم وما هو علم زائف، بينما عندنا يطرد العلم الزائف العلم الحقيقي، ولم يعد من الغريب أن يطلب منك المريض ألا تكتب له علاج السكر لأن معالجه نصحه بعدم تعاطيه !.. هناك أطباء يبيعون الأعشاب في عياداتهم أو خلائط غريبة من مساحيق ركبوها بأنفسهم .. عرفت طبيبًا ظل يعالج سرطان المستقيم بأن يسكب فوقه العسل الأبيض يوميًا، وبعد ما مات المريض كان رأيه هو أن العسل (مش قطفة أولى).. الفارق الثاني هو أنهم لم يربطوا هذا النوع من الطب بالدين، وبهذا لم يضعوا درعًا واقيًا حول إدعاءاتهم يصعب أن تخترقه... عندما يبتكر طبيب مصري نوعًا من قطرات العين مستخلصًا من العرق، ويزعم أنه يعالج المياه البيضاء لأن قميص سيدنا يوسف أعاد البصر لأبيه، فإنه قد ضمن رواج المنتج أولاً، ووضع حول نفسه سياجًا منيعًا ثانيًا .. من يخترق هذا السياج ليتشكك، يبدُ أمام الناس كأنه يعارض صحيح الدين، برغم أن ما حدث من عودة بصر الكفيف معجزة إلهية، وإنكار قدرة العرق على شفاء المياه البيضاء لا علاقة له بالدين . برغم الطابع المحلي القوي للعلم البديل، فإن رأيي الخاص هو أن ما حدث في الأعوام الأخيرة نصر آخر للعولمة .. ربما تم هذا شعوريًا أو لا شعوريًا، لكن هناك من الأذكياء من درس تجارب نصابي الغرب وعرف كيف يصنع قرشين منها .. هكذا بدأت ظواهر المعالجين الروحيين تتسرب لنا .. تسرب لنا الكثير من الطب البديل .. برامج مريم نور التي تمزج الشامانية بالمانوية باليوجا في خليط واحد خلاب ... ظاهرة الداعية التلفزيوني الوسيم الأنيق .. أليست تكرارًا لظاهرة الواعظ النجم البروتستانتي في الغرب ؟، بينما تراجعت مكانة رجل الدين العالم الأزهري الذي يعرف ما يتكلم عنه حقًا .. حتى الطريقة (الكارنيجية) في الوصول للثروة والنجاح في الحياة وجدت من يتلقفها عندنا .. ثمة سمة عامة تجمع هؤلاء جميعًا .. من الصعب أن تكون مقنعًا ما لم تكن مقتنعًا .. لهذا هم يجمعون بين الاقتناع والإقناع، فلا أعتقد أن أحدهم ينفرد بنفسه خلف الستار ليضحك قليلاً قبل أن يعود لمواجهة الجمهور .. بالنسبة لهم ما يقومون به جم الفائدة .. حقيقة تتأكد لدى كل منهم وهو يجتاز مدخل البنك ليصرف الشيك الخامس في شهر واحد .. هل هناك شيء أكثر فائدة ؟ هم شرسون جدًا في الدفاع عما يزعمون، وهذا قد يصل درجة التوحش أحيانًا .. هذا طبيعي لأنك في الواقع تحاربهم في صنعتهم ورزقهم الذي جعلهم نجومًا وحقق لهم كل هذه الأرباح .. جرب أن تطلق الشائعات عن بائع الفول الذي يقف بعربته عند مدخل شارعكم، وسوف يمزقك أو يدلق قدر الفول فوق رأسك.. وكما قال لي سائق سيارة تاكسي ذات مرة: آل يا واخد قوتي يا ناوي على موتي ..! طيف هذه الألاعيب واسع ممتد يبدأ بعلاج الالتهاب سي بالحمام، وينتهي بنشاطات راقية متحذلقة مثل البرمجة اللغوية العصبية.. إنها دائرة شيطانية أخرى تدور كالتالي: الناس تريد معلومات أكثر عن هذه الألعاب الجديدة .. الفضائيات تقدم للناس ما يريدون .. يولد المزيد من النجوم الذين يصير لهم أتباع أكثر .. هؤلاء الأتباع يطلبون المزيد من الألعاب الجديدة .. #العراب #احمد_خالد_توفيق #الدكتور #محمد_منصور #الأعشاب #الطب_البديل #طب_ولا_عك	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
18	أكل وشرب - في العظم - شرفشتاين - فارمستان - ياللا فتنس - د.عبدالسلام محمد - طب ولا عك؟	حلقة خاصة بنشوف فيها مجموعة قنوات بتتكلم في الطب والصحة عموماً..ونشوف.. هل القنوات دي بتقول طب؟ ولا عك؟د.محمد منصورطبيب الأمراض الباطنة والكلىبعد	uploads/0jot2_wRlug85.jpg	El Doctor	50nRvkD3nRk	2021-05-22 19:54:04.845+02	2021-05-22 19:54:05.282+02	2021-05-22 19:54:05.678+02	حلقة خاصة بنشوف فيها مجموعة قنوات بتتكلم في الطب والصحة عموماً..<br>ونشوف.. هل القنوات دي بتقول طب؟ ولا عك؟<br><br>د.محمد منصور<br>طبيب الأمراض الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br>Post Production:<br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. 4 م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل الفيديوهات والمعلومات وغيرها موجودة على موقع "الدكتور" على الانترنت<br>www.eldoctor.co.uk<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br><br>للاشتراك في قناة "أكل وشرب":<br>https://www.youtube.com/channel/UC_RXem52kTHnoytEwPJxb8w<br><br>للاشتراك في قناة "في العظم":<br>https://www.youtube.com/channel/UCE44SScUJDi1V0CG15MT62g<br><br>للاشتراك في قناة "فارماستان":<br>https://www.youtube.com/channel/UCwMECkGShtMWmAamI5awqxQ<br><br>للاشتراك في قناة "ياللا فتنس":<br>https://www.youtube.com/channel/UCm9fkX-I5dbkTsYb40vPfAA<br><br>للاشتراك في قناة "د.عبدالسلام محمد":<br>https://www.youtube.com/channel/UCsic5TjDdcTfa9L2zMYvQng<br><br>للاشتراك في قناة "شرفشتاين":<br>https://www.youtube.com/channel/UC5lHUClILFbhw2x_cAI6POw<br><br>(يرجى ملاحظة أن قناة الدكتور ليس لها علاقة بأي من هذه القنوات أو المعلومات التي ترد فيها، وأن التقييم تم بناءا على مجموعة فيديوهات فقط من كل قناة. أيضا هذا الفيديو ليس دعائيا ولا إعلانيا ولكنه من باب التوعية ونشر العلم النافع.)	published	draft	video	,https://www.youtube.com/embed/50nRvkD3nRk	PT9M46S	0	1	0	0	1	1	ar	\N	1	\N
19	خلاصة القول في موضوع رامي اسماعيل - طب ولا عك؟	رسالة مهمة لكل واحد فكر يتعالج مع د.رامي اسماعيل أو يعرف حد بيفكر.. ورسالة شخصية في أخر التسجيل لرامي إسماعيل.. شير وخليها توصل لكل واحد محتاجها..	uploads/0jot2_xkqvulM.jpg	El Doctor	VRz3BJXANoU	2021-05-22 19:54:13.409+02	2021-05-22 19:54:13.879+02	2021-05-22 19:54:14.268+02	رسالة مهمة لكل واحد فكر يتعالج مع د.رامي اسماعيل أو يعرف حد بيفكر.. ورسالة شخصية في أخر التسجيل لرامي إسماعيل.. شير وخليها توصل لكل واحد محتاجها..	published	draft	video	,https://www.youtube.com/embed/VRz3BJXANoU	PT19M47S	0	1	0	0	1	1	ar	\N	1	\N
12	إلتهابات البول وحصوات الكلى - حوار مع دكتور - إسأل الخبير	بيجيلك وجع في جنبك؟حرقان في البول؟ لون البول بيتغير؟ياترى ده إلتهاب ولا حصوة في الكلى؟تاخد مضاد حيوي ولا تاخد فوار؟ طيب نوعه إيه؟ طيب تشرب مياه قد	uploads/0jot2_j2dya8Z.jpg	El Doctor	5iuqXHBXIU0	2021-05-22 19:49:24+02	2021-05-22 19:49:25.666+02	2021-05-22 19:50:56.006+02	معلومة خطييرة!! حاجة بنعملها كل يوم بتسبب سرطان لنا ولأولادنا! ضروري تتفرج على الفيديو لآخر ١٠ ثواني!<br>شير.. ومنشن لحد محتاج الفيديو ده!	published	draft	video	,https://www.youtube.com/embed/5iuqXHBXIU0	PT33M43S	0	1	0	0	1	2	ar	\N	1	\N
81	التوحد كلمة انتشرت بشكل كبير فى الفترة الأخيرة على مواقع التواصل الاجتماعى	التوحد... كلمة انتشرت بشكل كبير فى الفترة الأخيرة على مواقع التواصل الاجتماعى و للأسف اصبحت مجال للهزار و السخرية دون مراعاة لمن يعانون من هذا المرض..	uploads/0jot2_jOxI5J6.jpg	El Doctor	ltohd-klm-ntshrt-bshkl-kbyr-f-lftr-lakhyr-aal-moka	2021-05-22 21:38:56.75+02	2021-05-22 21:38:57.407+02	2021-05-22 21:38:57.538+02	التوحد... كلمة انتشرت بشكل كبير فى الفترة الأخيرة على مواقع التواصل الاجتماعى و للأسف اصبحت مجال للهزار و السخرية دون مراعاة لمن يعانون من هذا المرض.. التوحد ده حالة نفسية متعلقة بنمو و تطور العقل و بيأثر على ادراك او استيعاب الشخص و قدرته على الانسجام مع الناس فى المجتمع.. الأعراض: تقدر تلاحظها على الاطفال الرضع فيما يلي: غياب التواصل بالعين من الطفل و النظر لمن حولة و عدم استجابة الطفل لسماع اسمه.. -احيانا يكون الطفل طبيعيا فى أولى سنوات حياته لكن بعد كده تلاحظ انه بدأ يميل للعزلة و العدوانية و قلة الكلام و فقد مهارات التواصل و الحديث.. ممكن يأثر المرض بالأيجاب او السلب على درجة ذكاء الطفل و قدرته على التعلم.. عرفنا ان المرض بيأثر على الحياة الاجتماعية للمريض و انسجامه مع من حوله سواء فى المدرسة او العمل او المنزل و يمكن ملاحظته فيما يلى: عدم الاستجابة للحديث الموجه اليه او التظاهر بعدم السمع.. عدم السماح لغيره بمعانقته و احتضانه و الميل للعب وحيدا.. تجنب النظر لمن حوله و التواصل بالعين على غير عادة جميع الاطفال الاخرين.. جمود الوجه و فقد القدرة على التعبير.. اختلاف نمط و طريقة الكلام حيث تكون طريقته اقرب للأنسان الالى.. ليس فقط الحياة الاجتماعية لكن ايضا بعض التصرفات الغريبة مثل: تكرار بعد الحركات مثل التأرجح و الدوران و بعض هذه التصرفات من الممكن ان يتسبب فى ايذائه لنفسه مثل العض او ان يقوم بصدم راسه فى اى شيئ حوله.. تناول انواع معينة من الطعام و رفض الكثير منها.. للأسف مقيش طريقة تمنع حدوث المرض او العلاج منه تماما، لكن العلاج المبكر بيساعد و يحسن الحالة بشكل كبير عشان كده فى بعض العلامات لو لاحظتها على طفلك وجب سرعة اللجوء الى الطبيب مثل: لا يستجيب بابتسامة أو بتعبير عن السعادة ببلوغه الشهر السادس.. لا يقلد الأصوات أو تعبيرات الوجه ببلوغه الشهر التاسع.. لا يصدر اى صوت ببلوغه الشهر الثاني عشر.. لا يقوم بأى حركة مثل الإشارة أو التلويح باليد ببلوغه الشهر الرابع عشر.. عدم النطق بكلمات متفرقة ببلوغه الشهر السادس عشر.. عدم قدرته على قول عبارة تتكون من كلمتين على الاقل ببلوغه عامين.. فقد مهارات اللغة أو المهارات الاجتماعية في أي عمر.. #طب_ولا_عك #الدكتور #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
174	صرخة تحذير من الهند | كوفيد خرج عن السيطرة | رمضان و فيروس كورونا وإغلاق المساجد	وضع فيروس كورونا وحالات كوفيد في الهند خرج عن السيطرة..معدل قياسي للحالات لم يتم تسجيله في العالم من قبل..كل هذا حدث بعد شهر من موسم أعياد الهندوس..	uploads/0jot2_krJ5EW7.jpg	El Doctor	JMcgXwjp-RU	2021-05-22 22:03:49.588+02	2021-05-22 22:03:51.721+02	2021-09-26 12:38:54.359468+02	فيديو مهم جداً.. فيه علاج كل الأمراض:<br><br>00:00 لماذا دكتور جودة محمد عواد<br>04:38 د.جودة عواد يعالج فيروس الكبد سي<br>07:03 طريقة العلاج عند د.جودة<br>12:41 مريض يحكي قصته مع د.جودة عواد<br>17:45 كيف تعالج مريضك بدون تشخيص<br>22:33 علاج الأمراض المناعية<br>25:04 علاج مرض ارتفاع الضغط<br>26:39 علاج السرطان<br>27:07 المحمول وعلاج الصرع وفحص الثدي<br>30:25 علاج مرض السكر - الإنسولين الطبيعي<br>33:38 أمراض الكلى وسعر الكشف وبلاوي أخرى<br>35:31 رسالة مهمة لدكتور جودة عواد<br><br>من هو دكتور جودة محمد عواد؟<br>هل هو طبيب متخصص؟ هل يعالح جميع الأمراض فعلاً؟ هل هو ساحر؟<br>هل فعلا لديه الحل السحري لعلاج فيروس سي بدون دواء؟ و علاج الفشل الكلوي بدون غسيل؟<br>ماهي التركيبة السحرية التي يستعملها في المحاليل الوريدية التي يعالج مرضاه بها؟<br>وما هي الخلطة السحرية التي يستعملها لعمل المشروب الفضي و المشروب الذهبي و المشروب الماسي؟<br>ما هي حكاية مر البطارخ والقرنفل والراوند واللبان الدكر في علاج الأمراض الخطيرة؟<br>ما هي جائزة صناع الأمل ولماذا حصل عليها دكتور مجدي يعقوب؟<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br>*** بعض القراءات والفيديوهات المفيدة:<br><br>الأهرام: محمد بن راشد يكرم صناع الأمل.. وتبرعات ٨٨ مليون درهم لمستشفي مجدي يعقوب<br>https://gate.ahram.org.eg/News/2374278.aspx<br><br>Generic drugs - Depovit B12:<br>https://www.ndrugs.com/?s=depovit%20b12#doctor_dosage<br><br>Risk of Hepatocellular Cancer in HCV Patients Treated With Direct-Acting Antiviral Agents:<br>https://pubmed.ncbi.nlm.nih.gov/28642197/<br><br>لمشاهدة فيديو د.محمد ياسر: الرد علي الدكتور جودة محمد عواد || شوف بيعالج السرطان ازاي:<br>https://www.youtube.com/watch?v=bWerCJys3e0&amp;t=16s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(1)صاروخ الطب والهبد والتجارة:<br>https://www.youtube.com/watch?v=-CeoGVlXQuE&amp;t=13s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(2) وتتوالى ضحاياه وتتكرر روشتاته الموحدة لجميع الامراض ولجميع الاعمار<br>https://www.youtube.com/watch?v=-cgq_vUNz58	published	draft	video	,https://www.youtube.com/embed/JMcgXwjp-RU	PT5M19S	0	3	0	0	1	1	ar	\N	1	\N
20	ردود على تعليقاتكم على حلقة رامي اسماعيل - بريد العيادة	ردود كتير جات على الفيديواللي فات اللي اتكلمنا فيه عن رامي اسماعيل..بعضها بيشكر.. وبعضها بيدافع.. وبعضها بيشتم..في الفيديو ده.. هنوضح نقط مهمة .. ون	uploads/0jot2_JXrGJB9.jpg	El Doctor	UrUjx5JGtAw	2021-05-22 19:54:23.094+02	2021-05-22 19:54:23.833+02	2021-05-22 19:54:23.985+02	ردود كتير جات على الفيديواللي فات اللي اتكلمنا فيه عن رامي اسماعيل..<br>بعضها بيشكر.. وبعضها بيدافع.. وبعضها بيشتم..<br>في الفيديو ده.. هنوضح نقط مهمة .. ونرد على كتير من تعليقاتكم على الموضوع ده..<br><br>ياريت في تعليقاتكم على الفيديو ده تقولولي.. ايه هي الصفات اللي تخلي حضرتك تثق في أي دكتور عشان تتعالج معاه؟<br><br>من مستشفى جامعة لستر في بريطانيا:<br>د. محمد منصور<br>طبيب الأمراض الباطنة وأمراض الكلى	published	draft	video	,https://www.youtube.com/embed/UrUjx5JGtAw	PT11M1S	0	1	0	0	1	1	ar	\N	1	\N
156	هنتكلم النهاردة عن السعال الديكى و هو عدوى بكتيرية تصيب الجهاز التنفسى، و يتميز بكحة شديدة و متتالية	هنتكلم النهاردة عن السعال الديكى و هو عدوى بكتيرية تصيب الجهاز التنفسى، و يتميز بكحة شديدة و متتالية قد تستمر نصف دقيقة دون انقطاع يتبعها صوت شبيه بصو	uploads/0jot2_VVGLm7D.jpg	El Doctor	hntklm-lnhrd-aan-lsaal-ldyk-o-ho-aado-bktyry-tsyb	2021-05-22 21:54:13.183+02	2021-05-22 21:54:13.683+02	2021-05-22 21:54:13.854+02	..... الذبحة هو نوع من أنواع الم الصدر الشديد الناتج عن ضعف تدفق الدم الى القلب.<br>و الذبحة عرض من اعراض امراض شريان القلب التاجى.<br>الالم الناتج عن الذبحة الصدرية بيكون شبيه بوجود حمل ثقيل على الصدر او الشعور بعصر منطقة الصدر.<br>بالرغم من كثرة تكرار حدوث الذبحة الا انه يصعب تمييزها عن باقى الام الصدر حتى الان،لذلك يفضل سرعة استشارة الطبيب فى حالة الشعور بألم مستمر فى الصدر. طب ايه الأعراض؟<br>⁦1️⃣⁩ألم شديد و حرقان فى منطقة الصدر<br>⁦2️⃣⁩الم فى الذراعين و الرقبة واحيانا يمتد الالم للظهر<br>⁦3️⃣⁩صعوبة التنفس<br>⁦4️⃣⁩الشعور بالدوخة و الدوران<br>⁦5️⃣⁩التعرق المستمر ايه انواع الذبحة؟<br>⁦1️⃣⁩الذبحة المستقرة<br>⁦2️⃣⁩الذبحة الغير مستقرة<br>⁦3️⃣⁩الذبحة الغير معتادة الذبحة المستقرة⁦‼️⁩<br>-تحدث نتيجة بذل مجهود كبير و التحميل الزائد على عضلة القلب<br>-تستمر لمدة قصيرة(5 دقائق او اقل)<br>-يختفى الألم و الاعراض بالراحة دون الحاجة للأدوية الذبحة الغير مستقرة⁦‼️⁩<br>-غير متوقعة الحدوث<br>-تحدث اثناء الراحة<br>-أشد خطورة من الذبحة المستقرة و تستمر لمدة اطول(30 دقيقة او اكثر)<br>-احيانا ما تتسبب فى نوبة قلبية ايه اسباب الذبحة؟<br>عرفنا انها بتحصل نتجية انخفاض معدل تدفق الدم الى القلب، الدم مسئول عن نقل الاكسجين الى القلب، وصول كمية غير كافية من الاكسجين تتسبب فى حدوث حالة مرضية تعرف ب الاقفار.(الاسكيميا)<br>انخفاض تدفق الدم ده سببه ضيق فى الشرايين نتجية بعض الترسبات بها و الذى يعرف ب تصلب الشرايين مما يؤدى لانخفاض مستوى الاكسجين فى القلب و عدم وجود فرصة لعضلة القلب أن تستريح. ايه العوامل المساعدة لحدوث الذبحة؟<br>⁦1️⃣⁩التدخين و الافراط فى المشروبات الكحولية<br>⁦2️⃣⁩مرض السكر<br>⁦3️⃣⁩ارتفاع ضغط الدم<br>⁦4️⃣⁩ارتفاع مستوى الكوليستيرول فى الدم<br>⁦5️⃣⁩وجود تاريخ وراثى لأمراض القلب فى العائلة<br>⁦6️⃣⁩التقدم فى العمر<br>⁦7️⃣⁩زيادة الضغط العصبى و التوتر<br>⁦8️⃣⁩السمنة المفرطة<br>⁦9️⃣⁩غياب العامل الرياضى و النشاط من حياتنا اليومية ازاى نقدر نتجنب الاصابة بالذبحة؟<br>-الاقلاع عن التدخين و الحد من المشروبات الكحولية🥃🚬🚫<br>-مراقبة و ضبط ضغط الدم و معدل السكر و الكوليستيرول فى الدم<br>-تناول طعام صحى لتجنب زيادة الوزن🍔🌭🥪❌<br>-ممارسة الرياضه يوميا دون ارهاق عضلة القلب🚴🏃<br>-الابتعاد عن التوتر و العصبية #طب_ولا_عك<br>#الدكتور<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
21	قناة "فكر تاني" - د كريم علي - طب ولا عك؟	الفيديو ده قديم وتم تسجيل فيديو أحدث منه بالتفصيل عن قناة فكر تاني ود.كريم علي ود.إيريك بيرج على هذا الرابط:https://www.youtube.com/watch?v=ikKEbsxXD	uploads/0jot2_TmfYGns.jpg	El Doctor	25gfQmTQiYA	2021-05-22 19:54:38.374+02	2021-05-22 19:54:38.857+02	2021-05-22 19:54:39.125+02	الفيديو ده قديم وتم تسجيل فيديو أحدث منه بالتفصيل عن قناة فكر تاني ود.كريم علي ود.إيريك بيرج على هذا الرابط:<br>https://www.youtube.com/watch?v=ikKEbsxXDZg&amp;t=827s<br><br>أسئلة كتيييييييييييييييييييييييييييييييييييييييييييييييييير جداً جات للقناة تسأل عن قناة #فكر_تاني وهل المعلومات الغريبة اللي ي القناة دي صح ولا غلط؟<br><br>خلينا بسرعة نتكلم عن القناة مالها وماعليها وصاحبها دكتور #كريم_علي <br><br>دي هتكون آخر حلقة نتكلم فيها عن قنوات لفترة طويلة شوية.. عشان نرجع بقى للي اتعودنا عليه من تبسيط الطب والأمراض ونشوف هل علاجاتها المنتشرة طب ولا عك؟<br><br>من مستشفى جامعة لستر في بريطانيا:<br>د محمد منصور<br>قناة الدكتور	published	draft	video	,https://www.youtube.com/embed/25gfQmTQiYA	PT15M21S	0	1	0	0	1	1	ar	\N	1	\N
110	علاج الحموضة | ألم البطن | الصداع | الامساك | الهبوط والتعب | الدوخة | المشاكل الصحية في رمضان	أسباب أغلب المشاكل الصحية المتكررة في رمضان وكيفية التعامل معاها وعلاجهاحاولت في 10 دقايق أرد على أغلب الأسئلة اللي وصلتني في المواضيع دي:ألم المع	uploads/0jot2_3AsUKJa.jpg	El Doctor	9p1tbuxEqaU	2021-05-22 21:46:24.174+02	2021-05-22 21:46:25.075+02	2021-05-22 21:46:25.314+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/9p1tbuxEqaU	PT13M19S	0	1	0	0	1	1	ar	\N	1	\N
23	ازاي تختار دكتور تكشف عنده؟ | كيف تختار طبيبك الخاص؟	عندك مشكلة طبية ومحتاج تكشف عند دكتور ومحتار تروح لمين؟الشاب الصغير ولا الدكتور الكبير؟اللي كشفه غالي ولا رخيص؟اللي خطه في الروشتة حلو ولا وحش؟الل	uploads/0jot2_YvCj7gK.jpg	El Doctor	eQHjzn-1X2A	2021-05-22 19:55:57.528+02	2021-05-22 19:55:57.934+02	2021-05-22 19:55:58.31+02	عندك مشكلة طبية ومحتاج تكشف عند دكتور ومحتار تروح لمين؟<br>الشاب الصغير ولا الدكتور الكبير؟<br>اللي كشفه غالي ولا رخيص؟<br>اللي خطه في الروشتة حلو ولا وحش؟<br>اللي عيادته زحمة  وبتستنى عنده بالساعات ولا العكس؟<br><br>خلينا نتفق في الحلقة القصيرة دي إيه أهم نقطتين لازم يتوفرو في الدكتور اللي تكشف عنده وتاخد رأيه وتثق فيه..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. 4 م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل الفيديوهات والمعلومات وغيرها موجودة على موقع "الدكتور" على الانترنت<br>www.eldoctor.co.uk<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br><br>Media Partner:<br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br><br>من بريطانيا:<br>د.محمد منصور<br>طبيب الأمراض الباطنة وأمراض الكلى<br>مستشفى جامعة لستر	published	draft	video	,https://www.youtube.com/embed/eQHjzn-1X2A	PT11M10S	0	1	0	0	1	1	ar	\N	1	\N
160	لكل الأحباب اللي بيسألو ليه ماعملتش فيديوهات تانية عن كورونا (أو كوفيد19):	بصراحة شديدة وبدون دخول في تفاصيل:الموضوع لم يعد مشكلة طبية..أصبح مشكلة اقتصادية بالمقام الأول ثم سياسية بالمقام الثاني..المعلومات اللي قلتها في	uploads/0jot2_b0ut1C3.jpg	El Doctor	lkl-lahbb-lly-bysalo-lyh-maamltsh-fydyoht-tny-aan	2021-05-22 21:59:16.003+02	2021-05-22 21:59:16.667+02	2021-05-22 21:59:16.786+02	بصراحة شديدة وبدون دخول في تفاصيل:<br><br>الموضوع لم يعد مشكلة طبية..<br>أصبح مشكلة اقتصادية بالمقام الأول ثم سياسية بالمقام الثاني..<br><br>المعلومات اللي قلتها في الفيديوهين اللي فاتوا كافية جداً عشان حضرتك تفهم المرض وحقيقته وطرق الحماية منه..<br><br>لكن الأعداد اللي بتزيد والدول اللي بيظهر فيها بعد ماكانت بتنكر وجوده... والدول اللي زي الصين اللي بدأ ينحسر فيها (حسب أرقامهم المعلنة).. كل ده مالهوش أي علاقة بحقيقة المرض أو انتشاره!<br><br>يعني إيه؟<br><br>هقول لحضرتك باختصار شديد جدا 3 عناوين أخبار (من ضمن عشرات) تقدر حضرتك من خلالهم تفهم ليه فيه دول كانت بتنكر وجود المرض عندها (بينما العالم كله عارف انه موجود عندها) بدأت تعلن ظهوره.. وليه دول تانية زي الصين بدأت تعلن ان الكورونا بينحسر (مع إن الواقع قد يكون العكس تماماً)<br><br><h2>1- منظمة الصحة العالمية والبنك العالمي يعلنان عن ميزانية طوارئ وضخ أموال مساعدة للدول التي يظهر فيها المرضز</h2><br><h2>2- الحكومة الصينية تهتم بثبات الإقتصاد على حساب صحة وأرواح البشر</h2><br><h2>3- تقارير وفيديوهات مسربة عن آلاف الجثث يتم حرقها بشكل عشوائي في الصين لعدم تسجيلها إصابات كوفيد19 ( وتسريبات لفيديوهات ادعاءات بحرق مرضى أحياء واثبات وفاتهم بأمراض أخرى)!!</h2><br>ولأن صفحة وقناة الدكتور مش بنتكلم فيهم برأينا ولا تحليلاتنا.. ولكن بالعلم والطب المبني على الدليل فقط.. فعشان كده توقفت عن تسجيل أي فيديوهات تحديث حالياً عن المرض ده..<br><br>بعض المصادر البسيطة هكتبها في أول تعليق.. لكن حضرتك لازم تدور بنفسك..<br><br>أنا ضد نظرية المؤامرة على طول الخط لأنها دائما بتكون وسيلة للهروب من العلم وتصديق الخرافات والجهل.. لكن لأن هنا الأدلة كلها بتصب في اتجاه المؤامرات.. فأنا سأكتفي بما قلته من جوانب علمية تكفي حضرتك انك تحمي نفسك وعيلتك بإذن الله..<br>وتقدر حضرتك تشوف الفيديوهين على قناة أو صفحة "الدكتور"..<br><br>ودمتم في حفظ الله..<br><br>(تعديل بسيط لعدم إساءة الفهم: انا مش بقول ان المرض مش حقيقي او انه مؤامرة... انا بقول ان أعداد الحالات وزيادتها أو نقصها كتير منه مش حقيقي وبيتحكم فيه سياسة واقتصاد.. فمفيش داعي للخوض فيه)<br><br>#الدكتور<br>#محمد_منصور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
173	كوفيد | الموجة الثالثة | تحذير من أطباء الرعاية المركزة | عفاريت منتشرة في مصر	#shortsرسالة مهمة من أطباء الرعاية المركزة في مصر للناس اللي مش مقتنعة بوجود كوفيد وشايفين إن كورونا مؤامرة!تحياتي:د.محمد منصورطبيب الباطنة والك	uploads/0jot2_v6QPwcE.jpg	El Doctor	--VAWVhOZ5I	2021-05-22 22:03:44.106+02	2021-05-22 22:03:45.17+02	2021-09-25 10:24:20.214088+02	فيديو مهم جداً.. فيه علاج كل الأمراض:<br><br>00:00 لماذا دكتور جودة محمد عواد<br>04:38 د.جودة عواد يعالج فيروس الكبد سي<br>07:03 طريقة العلاج عند د.جودة<br>12:41 مريض يحكي قصته مع د.جودة عواد<br>17:45 كيف تعالج مريضك بدون تشخيص<br>22:33 علاج الأمراض المناعية<br>25:04 علاج مرض ارتفاع الضغط<br>26:39 علاج السرطان<br>27:07 المحمول وعلاج الصرع وفحص الثدي<br>30:25 علاج مرض السكر - الإنسولين الطبيعي<br>33:38 أمراض الكلى وسعر الكشف وبلاوي أخرى<br>35:31 رسالة مهمة لدكتور جودة عواد<br><br>من هو دكتور جودة محمد عواد؟<br>هل هو طبيب متخصص؟ هل يعالح جميع الأمراض فعلاً؟ هل هو ساحر؟<br>هل فعلا لديه الحل السحري لعلاج فيروس سي بدون دواء؟ و علاج الفشل الكلوي بدون غسيل؟<br>ماهي التركيبة السحرية التي يستعملها في المحاليل الوريدية التي يعالج مرضاه بها؟<br>وما هي الخلطة السحرية التي يستعملها لعمل المشروب الفضي و المشروب الذهبي و المشروب الماسي؟<br>ما هي حكاية مر البطارخ والقرنفل والراوند واللبان الدكر في علاج الأمراض الخطيرة؟<br>ما هي جائزة صناع الأمل ولماذا حصل عليها دكتور مجدي يعقوب؟<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br>*** بعض القراءات والفيديوهات المفيدة:<br><br>الأهرام: محمد بن راشد يكرم صناع الأمل.. وتبرعات ٨٨ مليون درهم لمستشفي مجدي يعقوب<br>https://gate.ahram.org.eg/News/2374278.aspx<br><br>Generic drugs - Depovit B12:<br>https://www.ndrugs.com/?s=depovit%20b12#doctor_dosage<br><br>Risk of Hepatocellular Cancer in HCV Patients Treated With Direct-Acting Antiviral Agents:<br>https://pubmed.ncbi.nlm.nih.gov/28642197/<br><br>لمشاهدة فيديو د.محمد ياسر: الرد علي الدكتور جودة محمد عواد || شوف بيعالج السرطان ازاي:<br>https://www.youtube.com/watch?v=bWerCJys3e0&amp;t=16s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(1)صاروخ الطب والهبد والتجارة:<br>https://www.youtube.com/watch?v=-CeoGVlXQuE&amp;t=13s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(2) وتتوالى ضحاياه وتتكرر روشتاته الموحدة لجميع الامراض ولجميع الاعمار<br>https://www.youtube.com/watch?v=-cgq_vUNz58	published	draft	video	,https://www.youtube.com/embed/--VAWVhOZ5I	PT44S	0	2	0	0	1	1	ar	\N	1	\N
161	لسبب ما.. كثير من الناس بتظن إنه إذا كانت الكحة جافة (ناشفة) يبقى ده كورونا والعياذ بالله!!	وإذا كان فيها بلغم أو مخاط (كحة منتجة) يبقى الحمد لله نجونا ودي مش كورونا!!الكلام ده خطأ تماما!!صحيح إن من أشهر أسباب الكحة المنتجة للبلغم هي أمرا	uploads/0jot2_wclheHr.jpg	El Doctor	lsbb-m-kthyr-mn-lns-btthn-nh-th-knt-lkh-gf-nshf-yb	2021-05-22 21:59:47.537+02	2021-05-22 21:59:48.692+02	2021-05-22 21:59:48.89+02	وإذا كان فيها بلغم أو مخاط (كحة منتجة) يبقى الحمد لله نجونا ودي مش كورونا!!<br><br>الكلام ده خطأ تماما!!<br><br>صحيح إن من أشهر أسباب الكحة المنتجة للبلغم هي أمراض غير فيروسية (زي الإلتهاب الشعبي الحاد و التهاب رئة المدخنين)..<br><br>و صحيح إن فيروس كورونا أول ما بيدخل الجسم ويتسبب في العدوى بيكون من أشهر أعراضه الكحة الجافة وارتفاع درجة الحرارة (زي أي فيروس تاني مسبب لنزلات البرد)..<br><br>لكن طبيعة الكحة دي بتتغير غالباً خلال أيام قليلة حسب تطور المرض عند كل مريض..<br><br>فإذ تغلبت مناعة المريض على الفيروس وبدأ في التحسن.. فدرجة حرارة الجسم بترجع للطبيعي، والكحة بتتحسن تدريحيا!..<br><br>وإذا - لاسمح الله - دخل المريض في أحد المضاعفات.. فهناك سيناريوهين هم الأشهر وهم اللي ممكن يسببو الوفاة لا قدر الله..<br><br>واحد منهم إن المريض يدخل في التهاب رئوي شديد.. وهنا بتفضل حرارته عالية والكحة ممكن تزيد وبتتحول لكحة منتجة لإفرازات (كحة ببلغم أو فيها مخاط)، لكن بيظهر على المريض أعراض الإعياء والضعف العام والتعب والدوخة وممكن لون شفايفه يميل للأزرق، وده أمر خطير وممكن يتسبب في الوفاة، خصوصاً في كبار السن.<br><br>والسيناريو الثاني هو إن المريض يدخل في "متلازمة الضائقة التنفسية الحادة"<br>ARDS<br>وهنا فعلاً بتفضل الكحة جافة لكن بيصبح العرض الأساسي هو ضيق التنفس مع الإعياء الشديد واللون الأزرق والغثيان والقيء والضعف العام والدوخة.<br><br>*** يبقى إيه خلاصة الكلام ده؟؟<br>أنا عايز أقول إيه؟؟<br><br>ان مفيش حاجة اسمها: "لو كحة ناشفة تبقى مصيبة، لكن لو جافة تبقى خير وأمان!!"<br><br>زي ما اتكلمنا أكثر من مرة في الفيديوهات.. اذا جالك أعراض نزلة برد.. ارتاح في البيت واشرب سوائل كتير وخلي حد من حبايبك يتابعك ويطمن عليك (حتى لو بالتليفون لو عايش لوحدك)..<br><br>*** امتى -لا سمح الله - تروح المستشفى:<br><br>في حالة:<br>ضيق النفس أو صدور أصوات من صدرك مع التنفس<br>الشعور بالتعب والضعف والإعياء الشديد والدوخة<br>تحول الأغشية المخاطية (زي اللسان والشفايف) للون الأزرق<br><br>الموضوع ليس له علاقة بنوع الكحة..<br>ولا بدرجة الحرارة (عشان شفت كلام كتير واختراعات بخصوص ان لو حرارتك أكبر من كذا يبقى فيروس ولو أقل من كذا تبقى بكتيريا - الكلام ده لا يحدد احتياجك للمستشفى من عدمه)<br><br>ربنا يحفظكم جميعاً..<br>ودمتم سالمين..<br><br>#الدكتور<br>#د_محمد_منصور<br>#طب_ولا_عك<br>#COVID19 #Coronavirus #كورونا #ARDS	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
24	مراحل تجارب وانتاج الدواء - هل الأدوية التي نشتريها آمنة؟	الموضوع خطير ومهم.. لأن الدواء ده بيأثر على أغلى شيء عندك..هل الأدوية التي تبيعها شركات الأدوية آمنة؟هل التطعيمات واللقاحات امنة؟ما هي المراحل التي	uploads/0jot2_Z5OObaa.jpg	El Doctor	K4HIHEyMTNQ	2021-05-22 19:56:12.981+02	2021-05-22 19:56:13.429+02	2021-05-22 19:56:13.818+02	عندك مشكلة طبية ومحتاج تكشف عند دكتور ومحتار تروح لمين؟<br>الشاب الصغير ولا الدكتور الكبير؟<br>اللي كشفه غالي ولا رخيص؟<br>اللي خطه في الروشتة حلو ولا وحش؟<br>اللي عيادته زحمة  وبتستنى عنده بالساعات ولا العكس؟<br><br>خلينا نتفق في الحلقة القصيرة دي إيه أهم نقطتين لازم يتوفرو في الدكتور اللي تكشف عنده وتاخد رأيه وتثق فيه..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. 4 م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل الفيديوهات والمعلومات وغيرها موجودة على موقع "الدكتور" على الانترنت<br>www.eldoctor.co.uk<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br><br>Media Partner:<br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br><br>من بريطانيا:<br>د.محمد منصور<br>طبيب الأمراض الباطنة وأمراض الكلى<br>مستشفى جامعة لستر	published	draft	video	,https://www.youtube.com/embed/K4HIHEyMTNQ	PT21M17S	0	1	0	0	1	1	ar	\N	1	\N
46	أدخل كلية الطب ولا لأ؟ هل المكملات الغذائية مفيدة؟ ليه النصابين بيتشهرو؟ ردود على أسئلتكم	الحلقة دي هي الأخيرة في حلقات بريد العيادة اللي تم تسجيلها الفترة اللي فاتت.. حاولت اجاوب فيها على أكتر أسئلة بتتكرر في تعليقاتكم.. لو حضرتك عايز توص	uploads/0jot2_yXLQ4Hq.jpg	El Doctor	rZQDxuPTR1k	2021-05-22 21:07:28.004+02	2021-05-22 21:07:28.84+02	2021-05-22 21:07:29.035+02	حلقتنا النهاردة من بريد العيادة هتكون دردشة في التعليقات بتاعتكم على حلقة: "الحجامة - طب ولا عك؟"<br>لو ماشفتش الحلقة.. اتفرج عليها الأول من هنا:<br>https://www.youtube.com/watch?v=IBf7pkUDXWw&amp;t=1018s<br><br>ولو دي أول حلقة لحضرتك عندنا.. مانصحكش تكمل الحلقة!!<br> ممكن تروح تشوف حلقة "الحجامة - طب ولا عك؟" الأول.. وبعدها تعال اتفرج على الحلقة دي.. والا مش هتعرف احنا بنتكلم عن إيه!<br>https://www.youtube.com/watch?v=IBf7pkUDXWw&amp;t=1018s<br><br><br>****************************************************************************نويه وتوضيح:<br>هذه الحلقة تم تسجيلها -كما ذكرت سابقاً- منذ أكثر من شهرين .. <br>ومنذ ذلك الوقت.. وصلتني تعليقات مهمة كثيرة  بخصوص موضوع الحجامة.. ولهذا لم أذكرهم في الحلقة..<br>:لعل من أهمهم:<br><br>1 - د #عمر_الريس وكتابه #فن_الحجامة<br>وهذا هو الرابط للمهتمين::<br>http://albahethlibrary.com/books/%D9%81%D9%86-%D8%A7%D9%84%D8%AD%D8%AC%D8%A7%D9%85%D8%A9-the-art-of-cupping-therapy/<br>و قد تواصل معي د. عمر الريس بأسلوب ينم عن رقيه واحترامه.. وقد قرأت الكتاب على مدار الاسابيع الماضية وهو كتاب مفصل.. جمع فيه د.عمر تقريبا اغلب ماقيل في الحجامة في تبويب وتتقسيم مفصل.. وهو جهد يشكر عليه.. ويثري المكتبات.. لكن الكتاب لا يحتوي على اي بحث علمي طبي يؤخذ منه اي نتيجة طبيةاو ينبني علي اي علاج.. وهذا لا يقلل من قيمة الكتاب.. لكنه طبعا لا يضيف اي قيمة علاجية للحجامة..<br>ورابط الكتاب وضعته لأي طبيب تعلم اساسيات البحث العلمي ليناقش الكتاب ان رأى غير ذلك..<br><br>2 - سلسلة فيديوهات: الحجامة اكتشاف علمي<br>ورابط الجزء الاول للمهتمين:<br>https://www.youtube.com/watch?v=mAtziDQQL9Q<br>وهذه الفيديوهات هي خلاصة تجارب قام بها عدد من الاطباء السوريين تقريبا منذ اكثر من 6 سنوات..<br>وانا اظن - ان كانت الفيديوهات صادقة - ان هذه التجربة كانت يمكن ان تكون نواة صالحة لبحث علمي حقيقي عن الحجامة كان من الممكن ان يؤدي الى بعض الاثباتات العلاجبية المفيدة.. لكن اصحابها لم يكملوا ولم ينشروا ايا من هذه الابحاث بطريقة سليمة او محايدة او في مصدر موثوق.. طبعا مع افتراض الصدق وحسن النية...<br><br>3 - فيديو غير محترم لأحد الحجامين الذي يسمي نفسه طبيباً.. سجل فيديوهات الواحد منها مدته ساعتين للرد على الفيديو الخاص بنا اللي مدته 35 دقيقة.. ولم يتفضل بمعلومة مفيدة خلال الساعات الطويلة غير انه اتهمني بالالحاد وما الى ذلك... فلن اذكر اسمه لكي لا ينال من الشهرة نصيباً يريده ولا يستحقه..<br><br> <br><br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br><br>وأخيرا..<br>تابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنساش.. شير الفيديو على قد ماتقدر.. وهات حبايبك يشتركو في القناة.. عشان اللي جاي هيعجبك ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br>بعض روابط الفيديوهات المذكورة في الفيديو::<br><br>قناة الحياة - بوضوح- الطب البديل| رأي الطب العلمي في الطب البديل بالاعشاب والحجامة والابر الصينية<br>youtube.com/watch?v=PgKKEWbSDYk&amp;t=160s<br>عدنان ابراهيم - عن دجاجلة " الرقية الشرعية " و " الطب النبوي "<br>https://www.youtube.com/watch?v=Bwk8pxOAkEc&amp;t=162s<br>الحجامة ... طب نبوي أم موروث اجتماعي ؟ - ندوة بنقابة الأطباء<br>https://www.youtube.com/watch?v=oqNlS3MRi-o&amp;t=79s<br>الحالة المأساوية: عملت حجامة وبعدها اضطرت لقطع رجلها ثم ربما توفيت حسب ماهو مكتوب بالتعليقات<br>https://www.youtube.com/watch?v=6GxbRPnIe5s&amp;t=271s	published	draft	video	,https://www.youtube.com/embed/rZQDxuPTR1k	PT18M21S	0	1	0	0	1	1	ar	\N	1	\N
47	أهلا بيك في قناة "الدكتور" 🌷🌷	أهلا بيك في قناة "الدكتور"القناة دي مختلفة عن اي قناة طبية تانية ممكن تكون حضرتك شفتها على الانترنت..لأن رسالتنا هنا هي توضيح الطب الحقيقي اللي ثبت	uploads/0jot2_tfSbh6r.jpg	El Doctor	vVbpgIw7WIU	2021-05-22 21:07:36.502+02	2021-05-22 21:07:36.9+02	2021-05-22 21:07:37.241+02	حلقتنا النهاردة من بريد العيادة هتكون دردشة في التعليقات بتاعتكم على حلقة: "الحجامة - طب ولا عك؟"<br>لو ماشفتش الحلقة.. اتفرج عليها الأول من هنا:<br>https://www.youtube.com/watch?v=IBf7pkUDXWw&amp;t=1018s<br><br>ولو دي أول حلقة لحضرتك عندنا.. مانصحكش تكمل الحلقة!!<br> ممكن تروح تشوف حلقة "الحجامة - طب ولا عك؟" الأول.. وبعدها تعال اتفرج على الحلقة دي.. والا مش هتعرف احنا بنتكلم عن إيه!<br>https://www.youtube.com/watch?v=IBf7pkUDXWw&amp;t=1018s<br><br><br>****************************************************************************نويه وتوضيح:<br>هذه الحلقة تم تسجيلها -كما ذكرت سابقاً- منذ أكثر من شهرين .. <br>ومنذ ذلك الوقت.. وصلتني تعليقات مهمة كثيرة  بخصوص موضوع الحجامة.. ولهذا لم أذكرهم في الحلقة..<br>:لعل من أهمهم:<br><br>1 - د #عمر_الريس وكتابه #فن_الحجامة<br>وهذا هو الرابط للمهتمين::<br>http://albahethlibrary.com/books/%D9%81%D9%86-%D8%A7%D9%84%D8%AD%D8%AC%D8%A7%D9%85%D8%A9-the-art-of-cupping-therapy/<br>و قد تواصل معي د. عمر الريس بأسلوب ينم عن رقيه واحترامه.. وقد قرأت الكتاب على مدار الاسابيع الماضية وهو كتاب مفصل.. جمع فيه د.عمر تقريبا اغلب ماقيل في الحجامة في تبويب وتتقسيم مفصل.. وهو جهد يشكر عليه.. ويثري المكتبات.. لكن الكتاب لا يحتوي على اي بحث علمي طبي يؤخذ منه اي نتيجة طبيةاو ينبني علي اي علاج.. وهذا لا يقلل من قيمة الكتاب.. لكنه طبعا لا يضيف اي قيمة علاجية للحجامة..<br>ورابط الكتاب وضعته لأي طبيب تعلم اساسيات البحث العلمي ليناقش الكتاب ان رأى غير ذلك..<br><br>2 - سلسلة فيديوهات: الحجامة اكتشاف علمي<br>ورابط الجزء الاول للمهتمين:<br>https://www.youtube.com/watch?v=mAtziDQQL9Q<br>وهذه الفيديوهات هي خلاصة تجارب قام بها عدد من الاطباء السوريين تقريبا منذ اكثر من 6 سنوات..<br>وانا اظن - ان كانت الفيديوهات صادقة - ان هذه التجربة كانت يمكن ان تكون نواة صالحة لبحث علمي حقيقي عن الحجامة كان من الممكن ان يؤدي الى بعض الاثباتات العلاجبية المفيدة.. لكن اصحابها لم يكملوا ولم ينشروا ايا من هذه الابحاث بطريقة سليمة او محايدة او في مصدر موثوق.. طبعا مع افتراض الصدق وحسن النية...<br><br>3 - فيديو غير محترم لأحد الحجامين الذي يسمي نفسه طبيباً.. سجل فيديوهات الواحد منها مدته ساعتين للرد على الفيديو الخاص بنا اللي مدته 35 دقيقة.. ولم يتفضل بمعلومة مفيدة خلال الساعات الطويلة غير انه اتهمني بالالحاد وما الى ذلك... فلن اذكر اسمه لكي لا ينال من الشهرة نصيباً يريده ولا يستحقه..<br><br> <br><br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br><br>وأخيرا..<br>تابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنساش.. شير الفيديو على قد ماتقدر.. وهات حبايبك يشتركو في القناة.. عشان اللي جاي هيعجبك ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br>بعض روابط الفيديوهات المذكورة في الفيديو::<br><br>قناة الحياة - بوضوح- الطب البديل| رأي الطب العلمي في الطب البديل بالاعشاب والحجامة والابر الصينية<br>youtube.com/watch?v=PgKKEWbSDYk&amp;t=160s<br>عدنان ابراهيم - عن دجاجلة " الرقية الشرعية " و " الطب النبوي "<br>https://www.youtube.com/watch?v=Bwk8pxOAkEc&amp;t=162s<br>الحجامة ... طب نبوي أم موروث اجتماعي ؟ - ندوة بنقابة الأطباء<br>https://www.youtube.com/watch?v=oqNlS3MRi-o&amp;t=79s<br>الحالة المأساوية: عملت حجامة وبعدها اضطرت لقطع رجلها ثم ربما توفيت حسب ماهو مكتوب بالتعليقات<br>https://www.youtube.com/watch?v=6GxbRPnIe5s&amp;t=271s	published	draft	video	,https://www.youtube.com/embed/vVbpgIw7WIU	PT2M41S	0	1	0	0	1	1	ar	\N	1	\N
8	التخسيس وأنواع الدايت - الكيتوجينيك دايت [حمية الكيتو] - خطوة بخطوة - كيف تخسر وزنك بسرعة	#كيتو_دايت #كيف_تخسر_وزنك_بسرعة #نزول_الوزن_بدون_تعب #أفضل_طريقة_لنزول_الوزن #نزول_الوزن_خطوة_بخطوة #حمية_الدهون #كيتو_دايت_وجبات #كيتو_للمبتدئين #حمي	uploads/0jot2_f0kAEEt.jpg	El Doctor	AP2o9nAtLzM	2021-05-22 19:43:43+02	2021-05-22 19:43:44.832+02	2021-05-22 19:46:14.263+02	#كيتو_دايت #كيف_تخسر_وزنك_بسرعة #نزول_الوزن_بدون_تعب #أفضل_طريقة_لنزول_الوزن #نزول_الوزن_خطوة_بخطوة #حمية_الدهون #كيتو_دايت_وجبات #كيتو_للمبتدئين #حمية_قليلة_السعرات #لو_كارب_دايت #الصيام_المتقطع<br><br>إيه رأيك في دايت البيض بالبسطرمة والسمنة البلدي؟؟! 😲😲😲<br>بكلمك بجد!!<br><br>🥕حلقتنا النهاردة عن التخسيس وأنواع الدايت وشرح مفصل للكيتوجينيك دايت على أساس علمي وطبي..<br><br><h2>إزاي تعرف ان زيادة وزنك دي بسبب مرض أو خلل في الهرمونات؟</h2>إيه أحسن أنواع الدايت؟<br>إيه أهم النصائح لنزول الوزن؟<br>ازاي تعرف إذا كان عندك مقاومة للإنسولين ولا لأ؟ <br>ازاي تعرف إذا كنت هتستفيد من الكيتوجينيك دايت ولالأ؟<br>يعني إيه الصيام المتقطع؟<br>ازاي تخس من غير ماتحس؟<br><br>🥕حوار شيق ومفيد مع د.محمد الصباغ - طبيب الغدد الصماء والسكر والتغذية في بريطانيا وأيرلاندا..<br><br>🥕حوار طويل شوية النهاردة.. لكن فيه كل الأساسيات اللي لازم تفهمها لو عايز تغير حياتك للأحسن وتعيش يومك بطريقة تخلي وزنك ينزل بدون جوع وبدون حرمان!<br><br>🥕ورقة وقلم.. وياللا بينا..<br><br><br>🥕ضيف الحلقة: <br>د.محمد الصباغ - طبيب السكر والغدد والتغذية<br>Endocrinology Higher Specialty Trainee at Airedale General Hospital<br>MRCP UK 2013 <br>SCE endocrinology and diabetes UK 2016 <br><br>🥕جروب "السمنة وأشياء أخرى": أنصحكم بالاشتراك لو جادين في اتباغ نظام الكيتوجينيك دايت:<br>https://www.facebook.com/groups/188569918438649/<br><br><br>🥕بعض مصادر الحلقة:<br><br>23 Studies on Low-Carb and Low-Fat Diets — Time to Retire The Fad:<br>https://www.healthline.com/nutrition/23-studies-on-low-carb-and-low-fat-diets<br><br>Effects of Low-Carbohydrate Diets Versus Low-Fat Diets on Metabolic Risk Factors: A Meta-Analysis of Randomized Controlled Clinical Trials:<br>https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3530364/<br><br>Dieting and gallstones:<br>https://www.niddk.nih.gov/health-information/digestive-diseases/gallstones/dieting<br><br>Evidence that supports the prescription of low-carbohydrate high-fat diets: a narrative review:<br>https://bjsm.bmj.com/content/51/2/133.info<br><br>Low-Carbohydrate Diets and All-Cause and Cause-Specific Mortality: Two Cohort Studies:<br>http://annals.org/aim/article-abstract/746013/low-carbohydrate-diets-all-cause-cause-specific-mortality-two-cohort?doi=10.7326%2F0003-4819-153-5-201009070-00003<br><br>Low‐carbohydrate diets: nutritional and physiological aspects:<br>https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1467-789X.2006.00222.x<br><br>Nutritional Ketosis for Weight Management and Reversal of Metabolic Syndrome:<br>https://link.springer.com/article/10.1007/s13668-018-0235-0<br><br>Carbohydrate restriction and Ketosis in Type2 Diabetics:<br>https://diabetes.jmir.org/2017/1/e5/<br><br>Cardiovascular disease risk factor responses to a type 2 diabetes care model including nutritional ketosis induced by sustained carbohydrate restriction at 1 year:<br>https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5928595/<br><br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. 4 م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل الفيديوهات والمعلومات وغيرها موجودة على موقع "الدكتور" على الانترنت<br>www.eldoctor.co.uk<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/AP2o9nAtLzM	PT38M40S	0	1	0	0	1	3	ar	\N	1	\N
33	هل انتي في علاقة مسيئة؟ ABUSIVE RELATIONSHIPS	حلقتنا اليوم مختلفة..هي تحذير وتنبيه لكل بنت أو سيدة ممكن تكون بيساء إليها أو بتستغل في علاقة مؤذية لها نفسياً أو جسدياً..ازاي تعرفي انك في علاقة م	uploads/0jot2_DPriv33.jpg	El Doctor	uiEx69rbBTM	2021-05-22 20:00:25.92+02	2021-05-22 20:00:26.338+02	2021-05-22 20:00:26.523+02	حلقتنا اليوم مختلفة..<br>هي تحذير وتنبيه لكل بنت أو سيدة ممكن تكون بيساء إليها أو بتستغل في علاقة مؤذية لها نفسياً أو جسدياً..<br><br>ازاي تعرفي انك في علاقة مسيئة؟<br>وازاي تخرجي منها بأقل الخسائر؟<br><br>ضيفتنا النهاردة:<br>د.هدى سراج الدين<br>أخصائية الطب النفسي و طب الأعصاب في كندا<br>@هدى_سراج_الدين<br>لمتابعة د.هدى سراج الدين على يوتيوب:<br>https://www.youtube.com/channel/UCgZSjhhlW_JkpuBIACVfTmw<br><br>شير الفيديو في كل مكان.. واعمل منشن لحد تعرفه ممكن يستفيد منه.. أو ابعته بينك وبين حبايبك على واتساب عشان تفيد الناس منه بشكل شخصي..<br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وأخيرا..<br>تابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنساش.. شير الفيديو على قد ماتقدر.. وهات حبايبك يشتركو في القناة.. عشان اللي جاي هيعجبك ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/uiEx69rbBTM	PT37M49S	0	1	0	0	1	1	ar	\N	1	\N
15	الحجامة - طب ولا عك؟ 😲😲😲	وأخيرا... بعد طول انتظار..الحجامة.. طب ولا عك؟؟إيه هي الحجامة وإيه تاريخها؟؟إيه الأمراض اللي بتعالجها؟؟هل هي فعلا سنة عن النبي عليه الصلاة والسل	uploads/0jot2_0cgKkex.jpg	El Doctor	IBf7pkUDXWw	2021-05-22 19:52:27.653+02	2021-05-22 19:52:28.108+02	2021-05-22 19:52:28.299+02	وأخيرا... بعد طول انتظار..<br><br>الحجامة.. طب ولا عك؟؟<br><br>إيه هي الحجامة وإيه تاريخها؟؟<br>إيه الأمراض اللي بتعالجها؟؟<br>هل هي فعلا سنة عن النبي عليه الصلاة والسلام؟؟<br>هل هي طب صحيح؟؟<br>إيه الأبحاث اللي اتعملت في العالم كله عن الحجامة؟؟ والأبحاث دي أثبتت إيه؟؟<br>ليه فيه رياضيين كتير بيعملوها؟؟<br>وحاجات تانية كتير...<br><br>اتفرج بعقل وقلب مفتوح..<br>وشارك الحلقة .. واعمل منشن لأي حد حبيبك عمل حجامة أو ممكن يعملها..<br>وتعالى نشوف سوا... <br> <br>*** من بريطانيا:<br>د.محمد منصور<br>مستشفى جامعة لستر<br><br>Camera:<br>Safaa Baagar<br><br>Post production: <br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br>عشان يوصلك معلومات طبية سليمة بانتظام.. تابع صفحة "الدكتور" على فيس بوك:<br>https://www.facebook.com/Eldoctooor/<br><br><br>*** بعض من شارك في الإعداد للحلقة:<br><br>- دكتور ع.م استشاري الأمراض الباطنة بمصر والسعودية وإمام وفقيه و  متخصص فيما يسمى "الطب النبوي"<br><br>- دكتور ا.ا استشاري الأنف والأذن بمصر والسعودية والمعالج السابق بالحجامة<br><br>- خ.ز أحد جمهور قناة الدكتور.. شارك بسؤال تعجيزي لمن يعالج بما يسمى بالطب النبوي.. ولكن المراجع الفقهي للحلقة قام بحذف السؤال بسبب المشاكل اللي ممكن يسببها<br><br>- ونشكر العديد من المعالجين بالحجامة الذين ارسلنا اليهم ليشاركونا الحلقة ولم يردو رغم أنهم بيردو في ثواني على أي حد يطلب منهم حجامة وهيدفع فلوس.. بنشكرهم لانهم أثبتوا ان ليس لديهم أي حجة أو دليل على اللي بيعملوه!<br><br><br>*** وبالنسبة للناس اللي مش بتتفرج على الفيديو كله.. وعايزة تشوف نقطة معينة:<br>00:00 مقدمة<br>03:49 أصل وتاريخ الحجامة - هل هي طب عربي؟<br>4:20 ازاي الحجامة بتتعمل؟<br>6:08 فوائد الحجامة كما يذكرها المعالجين بالحجامة<br>14:50 حوار مع دكتور (ع).. هل الحجامة طب نبوي؟<br>16:37 هل الحجامة سنة؟ والأدلة الشرعية على الحجامة<br>22:02 قصة النبي صلى الله عليه وسلم في علاج خاله سعد بن معاذ<br>25:03 هل الحجامة بتطلع الدم الفاسد؟<br>26:25 الحجامة بتجدد الدم وبتنشط نخاع العظام<br>28:05 الأبحاث العلمية التي تمت على الحجامة في العالم كله<br>31:22 الرياضيين والحجامة<br>33:32 ليه مفيش مواصلات نبوية ولبس نبوي وأكل نبوي وجو نبوي؟<br><br><br>*** الدافع الرئيسي لعمل هذه الحلقة هو حديث النبي صلى الله عليه وسلم: "من تطبب ولم يعلم منه طب فهو ضامن" رواه أبو داوود والنسائي وحسنه ابن حجر والسيوطي والألباني.<br><br>*** بعض مصادر الحلقة:<br><br>فيديو الشيخ مصطفى العدوي  في اثبات عصمة الرسول في تبليغ الوحي وبشريته فيما عدا ذلك:<br> https://youtu.be/bayjVL-vTlY <br>(شاهد من الدقيقة 2:25 الى الدقيقة 4:22 )<br><br>Hijama (cupping): a review of  the evidence:<br>https://onlinelibrary.wiley.com/doi/pdf/10.1111/j.2042-7166.2010.01060.x    <br><br> ﺷﺮﺡ ﺍﻟﻤﻌﺘﻤﺪ ﻓﻲ ﺃﺻﻮﻝ ﺍﻟﻔﻘﻪ:<br>PDFhttps://www.ahlalhdeeth.com › attachment <br> <br>تفسير القرطبي والطبري لسورة النجم الاية ٣<br>http://quran.ksu.edu.sa/tafseer/tabary/sura53-aya3.html<br>http://quran.ksu.edu.sa/tafseer/qortobi/sura53-aya3.html#qortobi<br><br>كتاب الطب النبوي بين الحقيقة والادعاء - د.عصام منصور<br>https://uploadfiles.io/l10br<br><br>كتاب الطب النبوي المنسوب لابن القيم (باب التداوي من كتاب زاد المعاد من هدي خير العباد)<br>https://download-health-medicine-pdf-ebooks.com/6157-free-book<br><br>An Updated Review of the Efficacy of Cupping Therapy - NCBI:<br>https://www.ncbi.nlm.nih.gov › articles <br><br> What Is Cupping Therapy? Uses, Benefits, Side Effects, and More - WebMD:<br>https://www.webmd.com/balance/guide/cupping-therapy<br><br>Traditional Chinese medicine for neck pain and low back pain: <br>a systematic review and meta-analysis:<br>https://www.ncbi.nlm.nih.gov/pubmed/25710765 <br> <br> Cupping therapy on wikipedia:<br> https://en.m.wikipedia.org/wiki/Cupping_therapy<br> <br>Cupping – Olympic Pseudoscience:<br> https://sciencebasedmedicine.org/cupping-olympic-pseudoscience/ <br><br> https://www.google.com/amp/s/globalnews.ca/news/4040713/olympic-athletes-doping-prescription-drugs/amp/ <br><br>History of cupping (Hijama): a narrative review of literature:<br> https://www.ncbi.nlm.nih.gov/m/pubmed/28494847/ <br><br><br>*** تخريج بعض الاحاديث التي ذكرت في الحلقة: <br>18:25 حديث "...إنما أنا بشر.." (صحيح البخاري)<br>19:10 حديث " ...أنتم أعلم بأمور دنياكم.." (صحيح مسلم)<br>19:35 حديث قصة الحباب بن المنذرفي غزوة بدر (تاريخ الطبري وأسد الغابة)<br>21:40 حديث "مر أمتك بالحجامة": قال ابن كثير: فيه غرائب عجيبة - و ضعفه ابن القيم والبوصيري وقال: إسناده ضعيف وله شاهد - وقال الألباني إسناده ضعيف - وذكره ابن عدي في "الكامل في الضعفاء" وقال: غير محفوظ.	published	draft	video	,https://www.youtube.com/embed/IBf7pkUDXWw	PT35M21S	0	1	0	0	1	1	ar	\N	1	\N
16	الانحيازات المعرفية وتأثير دانينج كروجر - ألف باء طب	ليه فيه ناس كتير بتقتنع وبتصدق علاجات غلط ومفيش عليها دليل؟وليه اللي بيعالجو بطرق غلط بيكونو واثقين في نفسهم جداً جداً جداً جداً جداً...... جداً؟!!	uploads/0jot2_qItPkxl.jpg	El Doctor	p2bkvzTMCrI	2021-05-22 19:52:50.12+02	2021-05-22 19:52:50.788+02	2021-05-22 19:52:50.968+02	وأخيرا... بعد طول انتظار..<br><br>الحجامة.. طب ولا عك؟؟<br><br>إيه هي الحجامة وإيه تاريخها؟؟<br>إيه الأمراض اللي بتعالجها؟؟<br>هل هي فعلا سنة عن النبي عليه الصلاة والسلام؟؟<br>هل هي طب صحيح؟؟<br>إيه الأبحاث اللي اتعملت في العالم كله عن الحجامة؟؟ والأبحاث دي أثبتت إيه؟؟<br>ليه فيه رياضيين كتير بيعملوها؟؟<br>وحاجات تانية كتير...<br><br>اتفرج بعقل وقلب مفتوح..<br>وشارك الحلقة .. واعمل منشن لأي حد حبيبك عمل حجامة أو ممكن يعملها..<br>وتعالى نشوف سوا... <br> <br>*** من بريطانيا:<br>د.محمد منصور<br>مستشفى جامعة لستر<br><br>Camera:<br>Safaa Baagar<br><br>Post production: <br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br>عشان يوصلك معلومات طبية سليمة بانتظام.. تابع صفحة "الدكتور" على فيس بوك:<br>https://www.facebook.com/Eldoctooor/<br><br><br>*** بعض من شارك في الإعداد للحلقة:<br><br>- دكتور ع.م استشاري الأمراض الباطنة بمصر والسعودية وإمام وفقيه و  متخصص فيما يسمى "الطب النبوي"<br><br>- دكتور ا.ا استشاري الأنف والأذن بمصر والسعودية والمعالج السابق بالحجامة<br><br>- خ.ز أحد جمهور قناة الدكتور.. شارك بسؤال تعجيزي لمن يعالج بما يسمى بالطب النبوي.. ولكن المراجع الفقهي للحلقة قام بحذف السؤال بسبب المشاكل اللي ممكن يسببها<br><br>- ونشكر العديد من المعالجين بالحجامة الذين ارسلنا اليهم ليشاركونا الحلقة ولم يردو رغم أنهم بيردو في ثواني على أي حد يطلب منهم حجامة وهيدفع فلوس.. بنشكرهم لانهم أثبتوا ان ليس لديهم أي حجة أو دليل على اللي بيعملوه!<br><br><br>*** وبالنسبة للناس اللي مش بتتفرج على الفيديو كله.. وعايزة تشوف نقطة معينة:<br>00:00 مقدمة<br>03:49 أصل وتاريخ الحجامة - هل هي طب عربي؟<br>4:20 ازاي الحجامة بتتعمل؟<br>6:08 فوائد الحجامة كما يذكرها المعالجين بالحجامة<br>14:50 حوار مع دكتور (ع).. هل الحجامة طب نبوي؟<br>16:37 هل الحجامة سنة؟ والأدلة الشرعية على الحجامة<br>22:02 قصة النبي صلى الله عليه وسلم في علاج خاله سعد بن معاذ<br>25:03 هل الحجامة بتطلع الدم الفاسد؟<br>26:25 الحجامة بتجدد الدم وبتنشط نخاع العظام<br>28:05 الأبحاث العلمية التي تمت على الحجامة في العالم كله<br>31:22 الرياضيين والحجامة<br>33:32 ليه مفيش مواصلات نبوية ولبس نبوي وأكل نبوي وجو نبوي؟<br><br><br>*** الدافع الرئيسي لعمل هذه الحلقة هو حديث النبي صلى الله عليه وسلم: "من تطبب ولم يعلم منه طب فهو ضامن" رواه أبو داوود والنسائي وحسنه ابن حجر والسيوطي والألباني.<br><br>*** بعض مصادر الحلقة:<br><br>فيديو الشيخ مصطفى العدوي  في اثبات عصمة الرسول في تبليغ الوحي وبشريته فيما عدا ذلك:<br> https://youtu.be/bayjVL-vTlY <br>(شاهد من الدقيقة 2:25 الى الدقيقة 4:22 )<br><br>Hijama (cupping): a review of  the evidence:<br>https://onlinelibrary.wiley.com/doi/pdf/10.1111/j.2042-7166.2010.01060.x    <br><br> ﺷﺮﺡ ﺍﻟﻤﻌﺘﻤﺪ ﻓﻲ ﺃﺻﻮﻝ ﺍﻟﻔﻘﻪ:<br>PDFhttps://www.ahlalhdeeth.com › attachment <br> <br>تفسير القرطبي والطبري لسورة النجم الاية ٣<br>http://quran.ksu.edu.sa/tafseer/tabary/sura53-aya3.html<br>http://quran.ksu.edu.sa/tafseer/qortobi/sura53-aya3.html#qortobi<br><br>كتاب الطب النبوي بين الحقيقة والادعاء - د.عصام منصور<br>https://uploadfiles.io/l10br<br><br>كتاب الطب النبوي المنسوب لابن القيم (باب التداوي من كتاب زاد المعاد من هدي خير العباد)<br>https://download-health-medicine-pdf-ebooks.com/6157-free-book<br><br>An Updated Review of the Efficacy of Cupping Therapy - NCBI:<br>https://www.ncbi.nlm.nih.gov › articles <br><br> What Is Cupping Therapy? Uses, Benefits, Side Effects, and More - WebMD:<br>https://www.webmd.com/balance/guide/cupping-therapy<br><br>Traditional Chinese medicine for neck pain and low back pain: <br>a systematic review and meta-analysis:<br>https://www.ncbi.nlm.nih.gov/pubmed/25710765 <br> <br> Cupping therapy on wikipedia:<br> https://en.m.wikipedia.org/wiki/Cupping_therapy<br> <br>Cupping – Olympic Pseudoscience:<br> https://sciencebasedmedicine.org/cupping-olympic-pseudoscience/ <br><br> https://www.google.com/amp/s/globalnews.ca/news/4040713/olympic-athletes-doping-prescription-drugs/amp/ <br><br>History of cupping (Hijama): a narrative review of literature:<br> https://www.ncbi.nlm.nih.gov/m/pubmed/28494847/ <br><br><br>*** تخريج بعض الاحاديث التي ذكرت في الحلقة: <br>18:25 حديث "...إنما أنا بشر.." (صحيح البخاري)<br>19:10 حديث " ...أنتم أعلم بأمور دنياكم.." (صحيح مسلم)<br>19:35 حديث قصة الحباب بن المنذرفي غزوة بدر (تاريخ الطبري وأسد الغابة)<br>21:40 حديث "مر أمتك بالحجامة": قال ابن كثير: فيه غرائب عجيبة - و ضعفه ابن القيم والبوصيري وقال: إسناده ضعيف وله شاهد - وقال الألباني إسناده ضعيف - وذكره ابن عدي في "الكامل في الضعفاء" وقال: غير محفوظ.	published	draft	video	,https://www.youtube.com/embed/p2bkvzTMCrI	PT14M27S	0	1	0	0	1	1	ar	\N	1	\N
122	حشو العصب | تسمم الزئبق | تسمم الفلورايد | مالا يقوله لك كريم علي و فكر تاني عن الأسنان وأصل الأمراض	#حشو_الأسنان يسبب #تسمم_الزئبقلابد أن تخلع ضروسك اللي فيها #حشو_عصب قبل ان تصاب بالسرطان!أطباء الأسنان مجرد تجار جشعين.. كل همهم يأخدو فلوس المرضى ب	uploads/0jot2_rJgNlCK.jpg	El Doctor	Pn_FAHOb4XM	2021-05-22 21:47:29.848+02	2021-05-22 21:47:30.305+02	2021-05-22 21:47:30.958+02	#حشو_الأسنان يسبب #تسمم_الزئبق<br>لابد أن تخلع ضروسك اللي فيها #حشو_عصب قبل ان تصاب بالسرطان!<br>أطباء الأسنان مجرد تجار جشعين.. كل همهم يأخدو فلوس المرضى بأي طريقة.. حتى لو تسببت في وفاة المرضى!<br>علاج كل امراضك مرتبط ب #خريطة_الأسنان<br>#حشو_الجذور يتسبب في #تسمم_البوتيوليزم<br>إذا كان فيه شخص تعرفه عنده سرطان متقدم.. خليه يخلع أسنانه وسيشفى تماما من السرطان حتى لو كان من الدرجة الرابعة!!<br><br>هذه الرسائل كانت خلاصة محتوى فيديو عظيم مدته أكثر من ساعة للخبير العبقري.. اللي بيفهم في كل حاجة .. #كربم_علي أو #محمد_جابر صاحب قناة #فكر_تاني.. <br>فهل الكلام ده #طب_ولا_عك؟<br><br>تعالو نشوف بالعقل والعلم والمنطق... مع كوكبة من العلماء والخبراء والمتخصصين.. <br>وهم بترتيب الظهور:<br><br>- ا.د. أحمد عبدالرحمن هاشم - أستاذ ورئيس قسم علاج الجذور بجامعات مصرية عريقة وعضو الاتحاد العالمي لمعالجة الجذور<br><br>- د. أمنية منصور - طبيبة الفم والأسنان - مصر<br>https://www.facebook.com/omniaamir.omniaamir<br><br>- د.محمد دمر أبو الغيط - أخصائي تركيبات الأسنان - السعودية<br>https://www.facebook.com/profile.php?id=100008616904430<br>https://www.youtube.com/channel/UC0J_IFsmjpLpr964j90UjgA<br><br>- د.محمد أبوالحسن - طبيب وجراح الفم والأسنان - السعودية<br>https://www.facebook.com/mohammad.aboelhassan.161<br>https://www.facebook.com/%D8%AF%D9%83%D8%AA%D9%88%D8%B1-%D8%A3%D8%B3%D9%86%D8%A7%D9%86-112410063873205/<br><br>- د.إسلام منصور - طبيب تقويم الأسنان - لندن<br>https://www.instagram.com/dr.eslam.mansour/<br>https://www.facebook.com/eslam.e.mansour<br><br>رابط الفيديو الكامل للأستاذ الدكتور أحمد عبد الرحمن هاشم على قناة د.إيهاب هيكل:<br>https://www.youtube.com/watch?v=IV-b0uW2jFs&amp;t=159s<br><br>رابط الفيديو الكامل لرد د.محمد دمر أبوالغيط:<br>https://www.youtube.com/watch?v=4wpbkP-ZuxE&amp;t=17s.<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/Pn_FAHOb4XM	PT26M37S	0	1	0	0	1	1	ar	\N	1	\N
159	الحلقة الثّانية من سلسلة الأدوية النّفسيّة.. 😎✌🏻حنتكلّم النّهاردة عن مضادّات الاكتئاب..	✔ قبل ما نشرح أدوية الاكتئاب خلونا نقول بسرعة كدا ايه اللي بيحصل أثناء الاكتئاب أو ايه التفسيرات البيولوجيّة ليه.. لازم نكون عارفين إنّ الاكتئاب شيء م	uploads/0jot2_tSh09kz.jpg	El Doctor	lhlk-lthny-mn-slsl-ladoy-lnfsy-hntklm-lnhrd-aan-md	2021-05-22 21:58:07.794+02	2021-05-22 21:58:08.357+02	2021-05-22 21:58:08.494+02	✔ قبل ما نشرح أدوية الاكتئاب خلونا نقول بسرعة كدا ايه اللي بيحصل أثناء الاكتئاب أو ايه التفسيرات البيولوجيّة ليه.. لازم نكون عارفين إنّ الاكتئاب شيء معقّد مش معتمد بس على سبب واحد واضح.. بل فيه أسباب كثير مُتداخلة.. أسباب جينيّة و أسباب بيئية و تربويّة و أسباب متعلقة بضغوطات الحياة اللي بيواجهها الإنسان و أخيراً أسباب بيولوجية.. أحد التفسيرات البيولوجية المطروحة هي إنّ الاكتئاب بيحصل نتيجة نقص في النواقل العصبية في المخ بالذّات مادّة السيروتونين.. و من هنا بدأنا نبحث عن أدوية ترفع مستوى السيروتونين في المخّ و جاءت أدوية الاكتئاب.. ✔ أدوية الاكتئاب نفسها متقسّمة مجموعات كثير مش حنثقّل عليكم بالكلام عن كل واحدة فيهم بس حنقول أهمّ ٣ مجموعات بيستخدموا دلوقتي: 🔴 مثبطات استرداد السيروتونين الانتقائية.. ما تشتغلوش بالكم بالاسم المعقد المهم إنّ طريقة عمل المجموعة دي زي ما قلنا من شوية.. بترفع مستوى السيروتونين.. و لإنّ شغلها انتقائي على السيروتونين أكثر من المجموعات القديمة فأعراضها الجانبية أقلّ و استخدامها أأمن و لذلك هي الاختيار الأول.. و منها أدوية آمنة للاستخدام في الأطفال و المُراهقين.. بعض أفرادها: 🔹 فلوكسيتين 🔹 سيتالوبرام 🔹 ايسيتالوبرام 🔹 باروكسيتين آثارها الجانبيّة: 🔹 قيء و غثيان 🔹صداع 🔹 نعاس 🔹زيادة الوزن 🔹مشاكل في الرغبة الجنسية 🔴 المجموعة الثانية هي مثبطات استرداد السيروتونين و النّور إبينيفرين.. شبه الأولى أيضًا.. و مفيدة في حالات الاكتئاب المُصاحَب بألم جسدي.. بعض أفرادها: 🔹 فينالافاكسين 🔹 دولوكسيتين آثارها الجانبيّة: 🔹 قيء و غثيان 🔹 نعاس و دروخة 🔹 مشاكل في الرغبة الجنسية 🔴 المجموعة الثالثة هي مضادات الاكتئاب الحلقيّة.. و دي مجموعة أقدم شوية من اللي فاتوا و لذلك في الأغلب مش بنبدأ بيها ( شغلها أقلّ انتقائية ) بعض أفرادها: 🔹 ايميبرامين 🔹 كلوميبرامين آثارها الجانبيّة: 🔹 جفاف في الفم 🔹 زغللة في الرؤية 🔹زيادة في الوزن 🔹 نعاس و دروخة ✔️ التعامل مع الآثار الجانبيّة: زيّ ما قلنا المرّة اللي فاتت الآثار الجانبيّة مش بتحصل لكلّ النّاس و لمّا بتحصل حدّتها بتختلف من شخص لشخص و في الغالب بتخفّ مع الوقت.. 🔴 في الغالب الطبيب بيبدأ معانا الدواء بجرعات صغيرة و بعدين بيزوّد الجرعة واحدة واحدة عشان يقلّل الآثار الجانبية.. 🔴 في حاجات ممكن احنا نعملها.. 🔹 زيّ ممارسة الرّياضة و اتباع نظام غذائي صحي لتجنب زيادة الوزن.. 🔹 الاهتمام بشرب كمية كبيرة من الماء لتجنب جفاف الفم.. 🔹 مراعاة عدم النهوض فجأة لتجنب الدوخة و الدوار.. ✔️ في سؤال دائمًا يُطرح و هو هل فعلاً مضادات الاكتئاب بتزوّد الأفكار الانتحاريّة و نسبة الانتحار..؟ الجواب مش آه و لا لأ.. حنشرح شوية.. احنا قلنا إنّ الاكتئاب عملية معقدة و ليه أعراض كثير غير مجرد الشعور بالحزن أو اضطراب المزاج.. من أعراض الاكتئاب نفسه الأفكار الانتحارية.. و كمان التعب و عدم القدرة على القيام بالأنشطة اليومية المعتادة.. فأحد التفسيرات بتقول إنّ دا بيحصل لإنّ لمّا بناخذ مضادات الاكتئاب أول عرض بيبدأ يتحسن معانا هو الطاقة و النّشاط مش المزاج.. فبيبدأ الشخص يحس إنه نشيط و عنده قدرة على العمل و الإنجاز بس لسة مزاجه مش متضبّط و بالتّالي لسة أفكاره زيّ ماهي.. فعشان كدا بنخاف إنّ التعب اللي كان ممكن يكون هو المانع من تطبيق الأفكار دي راح.. ممكن نتغلب على الموضوع دا بإنّنا نزاوِج ما بين أخذ الدّواء و جلسات العلاج النّفسي و نحاول نخلي البيئة الأُسريّة للشّخص داعمة.. ✔️ آخر حاجة نعرفها هي إنّ الدواء مش سحر و لكن مهمّ جدًّا.. الدّواء زيّ الأكل اللي بيدّينا طاقة عشان نلعب رياضة مثلاً.. لكن لو احنا كسّلنا نمارس الرّياضة الأكل دا مش حيفيدنا.. و في نفس الوقت لو كنا بنمارس الرياضة من غير ما ناكل كويس حنتعب و مش حنقدر.. و بالمِثل ما ينفعش دواء من غير ما نغيّر احنا أفكارنا و نظرتنا للعالم و أسلوب حياتنا و في نفس الوقت مش حنقدر نعمل كدا من غير دواء.. و ما ننساش نتّبع تعليمات الطّبيب لو فيه أي تحاليل مطلوبة لمُتابعة نسب الدّواء في الدّم أو لمتابعة وظائف الكلى أو الكبد و مانوقّفش الدّواء فجأة لإنّه بيقف بالتّدريج و بالطّبع تحت إشراف الطّبيب.. شاركوا البوست مع أصدقائِكُم و عائلاتِكُم و دمتم بألف صحة و عافية.. 😁🌸 #الدكتور #طب_ولا_عك #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
37	التخسيس وأنواع الدايت وشرح مفصل للكيتوجينيك دايت على أساس علمي وطبي	إيه رأيك في دايت البيض بالبسطرمة والسمنة البلدي؟؟! 😲😲😲 بكلمك بجد!!هل ممكن يكون هو ده أحسن دايت لك؟؟!! 🥕حلقتنا النهاردة عن التخسيس وأنواع الدايت و	uploads/0jot2_GtI7pkr.jpg	El Doctor	ltkhsys-oanoaa-ldyt-oshrh-mfsl-llkytogynyk-dyt-aal	2021-05-22 20:22:31+02	2021-05-22 20:22:31.975+02	2021-09-30 11:30:27.37435+02	<h2>إيه رأيك في دايت البيض بالبسطرمة والسمنة البلدي؟؟! 😲😲😲 بكلمك بجد!!</h2>هل ممكن يكون هو ده أحسن دايت لك؟؟!! 🥕حلقتنا النهاردة عن التخسيس وأنواع الدايت وشرح مفصل للكيتوجينيك دايت على أساس علمي وطبي.. إزاي تعرف ان زيادة وزنك دي بسبب مرض أو خلل في الهرمونات؟<br>إيه أحسن أنواع الدايت؟<br><h2>إيه أهم النصائح لنزول الوزن؟</h2>ازاي تعرف إذا كان عندك مقاومة للإنسولين ولا لأ؟<br><h2>ازاي تعرف إذا كنت هتستفيد من الكيتوجينيك دايت ولالأ؟</h2>يعني إيه الصيام المتقطع؟<br>ازاي تخس من غير ماتحس؟ 🥕حوار شيق ومفيد مع د.محمد الصباغ - طبيب الغدد الصماء والسكر والتغذية في بريطانيا وأيرلاندا.. 🥕حوار طويل شوية النهاردة.. بعتذرلكم مقدماً.. بس دي الأساسيات اللي لازم تفهمها لو عايز تغير حياتك للأحسن وتعيش يومك بطريقة تخلي وزنك ينزل بدون جوع وبدون حرمان! 🥕ورقة وقلم.. وياللا بينا.. (وزي ما اتعودنا.. لينك الحلقة على يوتيوب في أول كومنت)<br>(واللي عنده سؤال عن الدايت بشكل عام أو الكيتو دايت بشكل خاص يسأل في كومنت في القناة على يوتيوب.. وضيفنا الغالي د.محمد الصباغ هيحاول يرد على أكبر عدد ممكن من الاستفسارات 😊 ) (ماتنساش تشير الفيديو اذا استفدت منه 📷:) )<br>#أنواع_الدايت <br> #الدايت #الدكتور<br>#طب_ولا_عك<br>#الدايت	published	home	article	\N	\N	0	4	0	0	1	3	ar	\N	1	\N
164	هل حديث صوموا تصحوا صحيح؟ | متى يباح للمريض أن يفطر في رمضان؟	#shorts هل فعلاً الصوم مفيد لكل الناس؟وهل حديث "صومو تصحو" يصلح لكل الناس؟ وهل هو حديث صحيح أصلاً؟ماهي الحالات المرضية التي لا يجوز فيها الصيام؟مت	uploads/0jot2_5AgBVeY.jpg	El Doctor	1HMTbYL4jc0	2021-05-22 22:01:14.235+02	2021-05-22 22:01:15.209+02	2021-09-15 11:30:23.885011+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/1HMTbYL4jc0	PT57S	0	3	0	0	1	1	ar	\N	1	\N
103	العلاج السحري لكل الأمراض الجلدية | طب ولا عك | مع دكتور محمد الناظر	#كلام_في_الصميم #دكتور_محمد_الناظر #الأمراض_الجلدية #العلاج_بالليزر #تجميل #تفتيح_البشرة #الدكتور #محمد_منصور #طب_ولا_عكالحلقة دي هنفتح فيها عالم ال	uploads/0jot2_3DJ14Vv.jpg	El Doctor	tU_7vNlansc	2021-05-22 21:45:46.586+02	2021-05-22 21:45:47.541+02	2021-08-15 20:24:31.28711+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/tU_7vNlansc	PT28M21S	0	2	0	0	1	1	ar	\N	1	\N
32	علاج الاكتئاب في المنزل [كيف تحسن حالتك النفسية؟] خطوة بخطوة | المرجع الكامل	00:00 مقدمة - أهمية علاج الاكتئاب في المنزل03:03 العلاج المعرفي السلوكي04:28 كسر الدوائر المفرغة06:13 الحركة البدنية09:12 تواصل مع حد 5 دقايق كل ي	uploads/0jot2_i39d7Iz.jpg	El Doctor	HDZj_WQ1fw8	2021-05-22 20:00:18.944+02	2021-05-22 20:00:19.536+02	2021-05-22 20:00:19.959+02	00:00 مقدمة - أهمية علاج الاكتئاب في المنزل<br>03:03 العلاج المعرفي السلوكي<br>04:28 كسر الدوائر المفرغة<br>06:13 الحركة البدنية<br>09:12 تواصل مع حد 5 دقايق كل يوم<br>10:10 العطاء<br>9:12 حدد اهدافك و حققها بأصغر الخطوات<br>12:25 عناصر من الغذاء<br>13:15 السكريات<br>14:18 السمنة والاكتئاب<br>15:15 دور الدين / الجانب الروحي<br>19:23 الحسنات يذهبن السيئات<br>21:57 الامتنان<br>26:10 العلاج الادراكي<br>27:23  ورقة وقلم واكتب مشاكلك<br>اكتب الموقف – التغيرات الجسمانية – الاحاسيس والمشاعر -  الافكار – التصرف او رد الفعل<br>32:48 عيوب الادراك وازاي تعالجها <br>42:16 شنطة الاسعافات الاولية للأزمات والضغوط النفسية<br>كتير من الناس عندهم اكتئاب ومحتاجين يزورو طبيب نفسي.. <br>لكن زيارة طبيب نفسي أمر صعب بسبب ظروف اجتماعية أو اقتصادية أو ثقافية..<br><br>الفيديو ده مخصوص لكم.. وبيشرح بالتفصيل و خطوة بخطوة:<br>"ازاي تعالج نفسك من الاكتئاب وانت في البيت؟؟" 😊😊<br>طرق ووصفات ونصائح تنفذها لوحدك عشان تحسن حالتك النفسية!😇<br>"Cognitive behavioral therapy" (CBT)<br><br>الفيديو النهاردة طويييييييييييييييل جدا.. <br><br>اتفرج عليه على مرة واحدة أو على عدة مرات.. اكتب نقط.. لكن المهم.. تطلع منه بخطوات عملية لمحاربة الاكتئاب وتحسين مزاجك ومودك وصحتك النفسية عموماً.<br><br>ضيفتنا النهاردة:<br>د.هدى سراج الدين<br>أخصائية الطب النفسي و طب الأعصاب في كندا<br><br>لمتابعة د.هدى سراج الدين على يوتيوب:<br>https://www.youtube.com/channel/UCgZSjhhlW_JkpuBIACVfTmw<br><br>شير الفيديو في كل مكان.. واعمل منشن لحد تعرفه ممكن يستفيد منه.. أو ابعته بينك وبين حبايبك على واتساب عشان تفيد الناس منه بشكل شخصي..<br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل المعلومات والفيديوهات وأكثر ستجدها في موقع الدكتور على الانترنت:<br>www.eldoctor.co.uk<br><br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/HDZj_WQ1fw8	PT50M49S	0	1	0	0	1	1	ar	\N	1	\N
118	الطاعون جاي من الصين | الطاعون الدملي | هل ممكن يحصل وباء أو جائحة ثانية؟	ظهرت حالات من #الطاعون_الدملي / #الطاعون_الدبلي في اقليم #منغوليا في #الصين..هل ممكن تكون بداية ل #وباء آخر أو #جائحة عالمية مثل #كوفيد19 ؟في دقائق	uploads/0jot2_AiF17gd.jpg	El Doctor	o5PQVYlfP7Y	2021-05-22 21:47:08.698+02	2021-05-22 21:47:09.674+02	2021-05-22 21:47:09.902+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/o5PQVYlfP7Y	PT11M12S	0	1	0	0	1	1	ar	\N	1	\N
29	في دقيقتين - ١٠ علامات.. لو عندك يبقى لازم تزور طبيب نفساني 😮	هل صحتك النفسية سليمة؟؟طيب ازاي تعرف؟هل انت محتاج تتكلم مع  دكتور نفساني؟00:00 مقدمة00:27 الأركان الأساسية لصحة نفسية سليمة01:50 عشر علامات انك	uploads/0jot2_QEm0PRj.jpg	El Doctor	NQBJMNuGhsE	2021-05-22 19:59:27.566+02	2021-05-22 19:59:28.036+02	2021-05-22 19:59:28.569+02	هل صحتك النفسية سليمة؟؟<br>طيب ازاي تعرف؟<br>هل انت محتاج تتكلم مع  دكتور نفساني؟<br><br>00:00 مقدمة<br>00:27 الأركان الأساسية لصحة نفسية سليمة<br>01:50 عشر علامات انك محتاج تزور طبيب نفسي<br><br>الفيديو ده مختصر جداً عشان بس ينبهك ان لو عندك أي علامة من دول..  يبقى لازم تفكر انك تتكلم مع دكتور نفساني..<br><br>لولقيت عندك علامات من علامات الاكتئاب اللي اتكلمنا عنها.. تقدر تشوف الفيديو ده: (المرجع الكامل لعلاج الاكتئاب في المنزل - العلاج المعرفي السلوكي):<br>https://youtu.be/uiEx69rbBTM<br><br>وتقدر تستشير طبيب نفسي مجانا أونلاين عن طريق الفيديو ده:<br>https://youtu.be/yqg0BiMyKl0<br><br>ساعد في تجهيز مادة الحلقة دي.. وهيكون ضيفنا في عدد من الحلقات الجاية:<br>د.أحمد العوضي<br>أخصائي الطب النفسي - أكاديمي زائر في جامعة ووريك - وعضو الجمعية الملكية للأطباء النفسيين في بريطانيا<br>و مدير مؤسسة "لا تحزن" للاستشارات النفسية<br>https://www.facebook.com/LaTahzan.Centre/<br><br><br>شير الفيديو في كل مكان.. واعمل منشن لحد تعرفه ممكن يستفيد منه.. أو ابعته بينك وبين حبايبك على واتساب عشان تفيد الناس منه بشكل شخصي..<br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل المعلومات والفيديوهات وأكثر.. موجود على موقع الدكتور على الإنترنت:<br>www.eldoctor.co.uk<br><br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/NQBJMNuGhsE	PT4M43S	0	1	0	0	1	1	ar	\N	1	\N
58	أهم نصائح حقيقية للحفاظ على حياتك وصحتك وصحة أحبابك | الخلاصة	بتتابع قنوات طبية عشان تحافظ على صحتك؟بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟برافو عليك..لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟ركز معايا ك	uploads/0jot2_ejGACAY.jpg	El Doctor	fVjoVhWKpsA	2021-05-22 21:21:48.98+02	2021-05-22 21:21:49.415+02	2021-05-22 21:21:49.799+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/fVjoVhWKpsA	PT9M30S	0	1	0	0	1	1	ar	\N	1	\N
120	كيف تعالج نفسك من كورونا في البيت | روشتة علاج حقيقية لكوفيد19 | هل ضروري نروح مستشفى؟	00:00 مقدمة - هل يمكن لغير الطبيب أن يعالج كورونا؟ - ما الدليل04:00 كيف تقوي مناعتك لتحمي نفسك من كوفيد19 - المكملات الغذائية 05:24 أدوية علاج أعراض	uploads/0jot2_gPJ6q2Z.jpg	El Doctor	wnRuvXA_mGQ	2021-05-22 21:47:13.886+02	2021-05-22 21:47:14.821+02	2021-05-22 21:47:15.028+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/wnRuvXA_mGQ	PT16M30S	0	1	0	0	1	1	ar	\N	1	\N
80	بعض أطفالنا بنلاحظ إنّهم أشقياء أكثر من غيرهم.. 👧🏻	بعض أطفالنا بنلاحظ إنّهم أشقياء أكثر من غيرهم.. 👧🏻 يعني مثلًا ما يثبتش في مكانه.. 🤸🏻‍♂️ ما يحلّش الواجب.. 📚 ساعتها ممكن نفكّر إنّ دا طفل غير منضب	uploads/0jot2_aAJBAkW.jpg	El Doctor	baad-atfln-bnlhth-nhm-ashky-akthr-mn-ghyrhm	2021-05-22 21:38:45.107+02	2021-05-22 21:38:45.799+02	2021-05-22 21:38:45.939+02	بعض أطفالنا بنلاحظ إنّهم أشقياء أكثر من غيرهم.. 👧🏻 يعني مثلًا ما يثبتش في مكانه.. 🤸🏻‍♂️ ما يحلّش الواجب.. 📚 ساعتها ممكن نفكّر إنّ دا طفل غير منضبط و إنّ معاقبته هي السّبيل لتقويم سلوكيّاته الخاطئة .. لكن في الحقيقة ساعات الطّفل مش بيكون شقي و لا حاجة.. و إنّما بيكون مصاب باضطراب نقص الانتباه و فرط الحركة.. ✔️ اضطراب نقص الانتباه و فرط الحركة أكثر شيوعًا في الأطفال منه لدى البالغين.. ✔️ ٦٠٪؜ من الأطفال الأعراض عندهم بتختفي لمّا يوصلوا سنّ البلوغ.. و الـ ٤٠٪؜ الباقيين الأعراض بتكمّل معاهم و لكن بتقلّ و بتكون نقص انتباه فقط بدون فرط حركة.. طيب خلينا نتكلّم شويّة عن أعراض الاضطراب دا.. الـ DSM- 5 ( الدّليل التّشخيصي و الإحصائي للاضطرابات النّفسيّة ) قال لنا إنّ احنا حنلاقي يا إمّا نقص انتباه أكثر.. ( و دا نادر في الأطفال و أكثر في البالغين ) يا إمّا فرط حركة أكثر.. يا إمّا الاثنين مع بعض.. ( و النوعين دول هما الأكثر شيوعًا في الأطفال ) أمثلة على أعراض نقص الانتباه: 🔴 الطّفل غير قادر على التّركيز على التّفاصيل ( لو طريقة لعبة أو لو درس بيتشرح له في المدرسة مثلًا ) 🔴 سرحان لمّا بتكلّمه 🔴 صعوبة في تنظيم المهام ( مش بيعرف يرتّب غرفته بسهولة مثلًا ) 🔴 حتلاقيه مش بيحبّ الألعاب اللي محتاجة مجهود ذهني.. أو مش عارف يحلّ الواجب بتاعه مثلًا.. 🔴 يسهُل تشتيت انتباهه.. لو ماصدّقت تخلّيه يركّز معاك أخيرًا أبسط حاجة حتخليه يسرح منك ثاني.. أمثلة على أعراض فرط الحركة: 🔴 مش قاعد على بعضه.. بيفرك و هو قاعد.. 🔴 ما بيصدّق يلاقي فرصة يقوم من مكانه.. بالذّات في الفصل مثلاً.. 🔴 متسرّع في ردود أفعاله.. لو أنتَ بتسأله سؤال مش حيسيبك تكمّل و حتلاقيه بيقاطعك.. 🔴 مش بيستنّى دوره.. لو بيلعب مع زمايله لعبة بالدّور مثلًا حتلاقيه مش عايز يستنّى.. ✔️ بتبدأ الأعراض تبان في سنّ ٣-٤.. بداية سنين النّمو و التّعلّم لدى الطّفل.. ✔️ الاضطراب دا بينتج من عوامل جينيّة و تربويّة مع بعض.. عشان كدا من أهمّ سبل العلاج تدريب الأبوين من قبل مختص على طرق التّعامل مع الطّفل.. و توعيتهم إنّه مش شقي و لكن محتاج صبر شويّة عشان يكتسب المهارات و يتعلّم.. و طبعًا عندنا أدوية بتحسّن الأعراض كثير.. عشان كدا لازم اللجوء لطبيب سواءً عشان الدّواء او عشان العلاج السّلوكي.. و زيّ ما قلنا أغلب الحالات بترجع طبيعية عند سنّ البلوغ و الموضوع مفيش منه مشكلة لو تمّ التعامل معاه بشكل صحيح في سنوات الطّفولة.. شاركوا البوست و ساهموا في التّوعية بأهميّة الدّور التّربوي في الصّحة النّفسيّة لأطفالكم.. 🌸 و دمتم سالمين و أصحّاء.. 😊🌸 #طبّ_ولا_عك #الدكتور #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
100	فيروس كورونا وعدوى الجهاز التنفسي | إزاي تحمي نفسك؟	فايروس كورونا القادم من الصين؟ هل فعلاً هو نهاية العالم؟هل ده أخطر وباء أصاب العالم فعلا؟إيه الفرق بينه وبين نزلات البرد العادية؟هل له علاج؟وازاي	uploads/0jot2_1Z6BkWY.jpg	El Doctor	ZCT0EUHR_V0	2021-05-22 21:44:11+02	2021-05-22 21:44:12.139+02	2021-05-22 21:44:48.002+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/zCT0EuHr_V0	PT12M37S	0	1	0	0	1	1	ar	\N	1	\N
175	دور الصيدلي الحقيقي والصيادلة التجار على يوتيوب | د.باهر السعيد ود.مايكل جوده ود.محمد العزب وغيرهم	من أكثر المواضيع اللي طلبتوها مني..قنوات الصيادلة على يوتيوب..د.باهر السعيد و د.مايكل جودة ود.محمد العزب وغيرهم كتيييييير..إزاي نتعامل مع فيديوهات	uploads/0jot2_WXkG1P4.jpg	El Doctor	teLK68uu3V4	2021-05-22 22:05:22+02	2021-05-22 22:05:23.477+02	2021-09-30 11:30:36.44171+02	فيديو مهم جداً.. فيه علاج كل الأمراض:<br><br>00:00 لماذا دكتور جودة محمد عواد<br>04:38 د.جودة عواد يعالج فيروس الكبد سي<br>07:03 طريقة العلاج عند د.جودة<br>12:41 مريض يحكي قصته مع د.جودة عواد<br>17:45 كيف تعالج مريضك بدون تشخيص<br>22:33 علاج الأمراض المناعية<br>25:04 علاج مرض ارتفاع الضغط<br>26:39 علاج السرطان<br>27:07 المحمول وعلاج الصرع وفحص الثدي<br>30:25 علاج مرض السكر - الإنسولين الطبيعي<br>33:38 أمراض الكلى وسعر الكشف وبلاوي أخرى<br>35:31 رسالة مهمة لدكتور جودة عواد<br><br>من هو دكتور جودة محمد عواد؟<br>هل هو طبيب متخصص؟ هل يعالح جميع الأمراض فعلاً؟ هل هو ساحر؟<br>هل فعلا لديه الحل السحري لعلاج فيروس سي بدون دواء؟ و علاج الفشل الكلوي بدون غسيل؟<br>ماهي التركيبة السحرية التي يستعملها في المحاليل الوريدية التي يعالج مرضاه بها؟<br>وما هي الخلطة السحرية التي يستعملها لعمل المشروب الفضي و المشروب الذهبي و المشروب الماسي؟<br>ما هي حكاية مر البطارخ والقرنفل والراوند واللبان الدكر في علاج الأمراض الخطيرة؟<br>ما هي جائزة صناع الأمل ولماذا حصل عليها دكتور مجدي يعقوب؟<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br>*** بعض القراءات والفيديوهات المفيدة:<br><br>الأهرام: محمد بن راشد يكرم صناع الأمل.. وتبرعات ٨٨ مليون درهم لمستشفي مجدي يعقوب<br>https://gate.ahram.org.eg/News/2374278.aspx<br><br>Generic drugs - Depovit B12:<br>https://www.ndrugs.com/?s=depovit%20b12#doctor_dosage<br><br>Risk of Hepatocellular Cancer in HCV Patients Treated With Direct-Acting Antiviral Agents:<br>https://pubmed.ncbi.nlm.nih.gov/28642197/<br><br>لمشاهدة فيديو د.محمد ياسر: الرد علي الدكتور جودة محمد عواد || شوف بيعالج السرطان ازاي:<br>https://www.youtube.com/watch?v=bWerCJys3e0&amp;t=16s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(1)صاروخ الطب والهبد والتجارة:<br>https://www.youtube.com/watch?v=-CeoGVlXQuE&amp;t=13s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(2) وتتوالى ضحاياه وتتكرر روشتاته الموحدة لجميع الامراض ولجميع الاعمار<br>https://www.youtube.com/watch?v=-cgq_vUNz58	published	draft	video	,https://www.youtube.com/embed/teLK68uu3V4	PT21M29S	0	4	0	0	1	1	ar	1	1	\N
101	أسباب السرطان الحقيقية | رسالة مهمة جدا من الدكتور في اليوم العالمي للسرطان	هل الإندومي بيسبب السرطان؟ولا الميكروويف بيسبب السرطان؟المقلاية التيفال لما تتقشر؟البلوتوث؟ الموبايلات؟ الإيربودز؟ إيه هي الأسباب الحقيقية؟ وازاي	uploads/0jot2_s6GL4u4.jpg	El Doctor	ZwJGpRiz2A4	2021-05-22 21:45:34.498+02	2021-05-22 21:45:35.47+02	2021-05-22 21:45:35.712+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/ZwJGpRiz2A4	PT7M40S	0	1	0	0	1	1	ar	\N	1	\N
77	متلازمة داون	متلازمة داون......هى خلل چينى تحدث نتيجة انقسام غير طبيعى للخلايا ينتج عنه اضافة نسخه كاملة او جزئية (للكروموسوم ٢١)، و ده المسئول عن التغيرات الجسمان	uploads/0jot2_Hcoe6Km.jpg	El Doctor	mtlzm-don	2021-05-22 21:38:15.018+02	2021-05-22 21:38:15.471+02	2021-08-16 09:29:34.591473+02	التهاب الأذن الوسطى👂....بيكون سببه عدوى بكتيرية أو فيروسية و أحيانا بيكون عرض جانبى لمرض اخر مثل البرد؛الانفلونزا و الحساسية. بيحصل ان الفراغ خلف طبلة الأذن بيمتلئ بالهواء و ده بيسبب أعراض كتير بتختلف حسب العمر. بالنسبة للأطفال.... -الم فى الأذن خاصة فى وضعية الاستلقاء -صعوبة و تقطع النوم -كثرة و تكرار البكاء -مشاكل فى السمع و الأستجابة للاصوات -حمى و ارتفاع درجة الحرارة لأعلى من 38 درجة مئوية🥵 -صداع -فقدان الشهية و الشعور بعدم الإتزان -جفاف و تفريغ سوائل الاذن بالنسبة للاعراض فى البالغين... -الم فى الاذن و مشاكل فى السمع -جفاف السوائل فى الاذن 🔴يجب الرجوع للطبيب فى حالة ان -الأعراض استمرت لأكثر من يوم -لو طفلك عمره اقل من 6 أشهر -لو لاحظت خروج سوائل،صديد او دم من الأذن طيب ازاى تقدر تقى نفسك من التعرض للمرض ده؟ -الوقاية من البرد و النفلونزا و غيرها من الامراض التى يصاحبها التهاب الاذن الوسطى -تجنب الجلوس لفترات طويلة مع المدخنين -بالنسبة للاطفال الرضع يفضل الاعتماد على الرضاعة الطبيعية حتى 6 اشهر على الاقل لأن لبن الام يحتوى على كثير من المضادات التى تحمى الطفل من العدوى، فى حالة اللجوء الى زجاجات الرضاعة(الببرونة) 🍼تجنب ارضاع الطفل فى وضع النوم او الاستلقاء و يفضل ان يكون فى وضع الجلوس -اسال الطبيب المختص عن التطعيمات اللازمة لطفلك #زياد_منصور #طب_ولا_عك #شير_في_الخير #الدكتور	published	draft	article	\N	\N	0	2	0	0	4	1	ar	\N	1	\N
162	خبر وفاة اسرة في أوسيم بسبب استعمال خلطة تنظيف فيها مادة الكلور بسبب الخوف من الكورونا موضوع محزن جد	للاسف السيدة توفيت وأبناءها أصيبوا نتيجة ان ست البيت عملت خلطة عجيبة من مواد كيميائية خطيرة ظنا منها انها كده هتكون اقوي في التعقيم والتطهير ضد فيروس	uploads/0jot2_3HAWC6L.jpg	El Doctor	khbr-of-sr-fy-aosym-bsbb-staaml-khlt-tnthyf-fyh-md	2021-05-22 22:00:06.808+02	2021-05-22 22:00:07.445+02	2021-09-26 14:25:37.138617+02	للاسف السيدة توفيت وأبناءها أصيبوا نتيجة ان ست البيت عملت خلطة عجيبة من مواد كيميائية خطيرة ظنا منها انها كده هتكون اقوي في التعقيم والتطهير ضد فيروس كورونا<br>الست خلطت خل بكلور ومياة نار مع بعض اتكونت غازات سامة ادت لمقتل الاسرة جميعا<br>حبينا نحط سوا شوية خطوط فاستعمالنا للكلور تحديدا الايام دي:<br>(( مخاطر_الكلور))<br><br>الفتره دي اغلب الستات بدأوا يستعملوا الكلور في تنضيف كل حاجه تقريبا بسبب ڤايروس الكورونا وهو فعلا قاتل للڤايروس مقولناش لأ لكن نركز في الي جاي ..<br><br>مش معنى اني هقتل بيه الڤايروس اني اقتل بيه نفسي و ولادي !<br><br>❌ *ماتحطيش كلور في صابون المواعين 😗<br><br>اياكي ثم اياكي تخلطي ولو حتى نقطة كلور مع صابون المواعين و تغسلي بيه الاطباق و الكوبايات خطر جدا على الصحه و بيسبب الفشل الكبدي و تآكل الاغشيه المخاطيه مع التكرار و دخوله للجسم و ما تفتكريش ان الكوبايه مثلا مهما شطفتيها ان الكلور طلع منها ! لا الكلور بيفضل فيها و صعب يطلع الا مع مرور وقت و كميه كبيره جدا كمان من الميّه .. !<br><br>❌ *الكلور يمنع في اماكن الغذاء 😗<br>الكلور نستعمله في الحمامات او ارضيات المطابخ و ممكن مسح ارضيات البيت بنسبه بسيطه مخلوطه بكميه كبيره من الميّه لكن التحذير ان ما يتمسحش او يترش بيه مباشرة حتى لو مخفف ترابيزات الأكل او رخامة المطبخ او اي مكان ممكن تطوله مواد غذائيه او خضار و لحوم ، زي ما قلنا مادة الكلور سامه و غلط جدا تختلط بأي اكل الانسان ممكن ياكله ..<br><br>كمان بلاش ترابيزات الاطفال ارجوكم لان بيقع منهم ساعات حلويات و أكل عليها و ممكن تلقط الماده لا قدر الله ..<br><br>❌ *خطر استعمال الكلور مباشرة عالجلد 😗<br>اعتقد مفيش حد عاقل ممكن يستعمل الكلور ولو مخفف في تعقيم الإيدين !<br>انتي متخيله لو حطيتي نقطه من الكلور على ازازة ميه و رشيتي منها على ايديكي ممكن يحصل ايه ؟<br>التهاب في الجلد بنسبه عاليه و اكزيما و ياسلام بقا لو لمست ايدك عنيكي او انفك بيحصل تهيج و تآكل في الاغشيه المخاطيه الموجوده فيهم ! يبقا ليه يا بنت الناس !!<br>طبعا بديل تعقيم الايدين حصرا هو الكحول و الي تركيزه بالنسبه المسموح بيها (٧٠٪؜ او ٨٠٪؜) و يترش على مناديل مبلله او ممكن يترش مباشرة على الايد و يترك دقيقه و تشطفي ايدك بميه نضيفه قبل الاكل طبعا ..<br>و علشان كده لما آجي انضف حمامي بالكلور لازم استعمل جوانتي المهم جلدي ما يحتكش بالكلور ابدا ..<br><br>❌ *خطر استنشاق الكلور 😗<br>الكلور ماده ريحتها نفّاذه جدا الاقتراب منها بمسافه قصيره و التعامل معاها مباشرة بيعمل ضيق تنفس و هياج للأغشيه المخاطيه و التنفسيه الي هتخليكي غصب عنك تحسي بدوخه و غثيان و كحه ممكن توصل للإقياء و لإلتهاب الرئه !!<br>و المصيبه الستات الي بتخلط الكلور بمواد تانيه زي الفلاش و الديتول انواع المطهرات الاخرى !<br>انتي لما بتحطي الكلور على اي مواد تانيه اعرفي انك بتحضري قنبله تنفسيه في بيتك ممكن تؤدي لتوقف التنفس لو كنتي في مكان مقفول عليكي زي الحمام !!!<br>ارجوكي وانتي بتنضفي بيه افتحي شباك الحمام او الشفاط و اشطفي بعد كده بميه غزيره عشان تلامس جلد افراد البيت مع الاغراض في الحمامات ..<br><br>بعد كل ده طيب ازاي استعمل الكلور :<br>منظمة الصحه العالميه قالوا طالما عندك صابون و كحول ف هيتقتل ڤايرس الكورونا يعني بلاش مبالغات في تنضيف الجلد ولا تلجأي للكلور ابدا في التعامل المباشر مع الجلد .... الجللللللد تاني اهو ..<br>امسحي بيه الشقه مش مشكله لكن خففي الكلور قدر الامكان ويكون بعيد عن اماكن الغذاء ..<br>امسحي بيه امام مدخل الشقه صح جدا طبعا لانه اكتر مكان معرض للتلوث ..<br>اغسلي بيه مخفف بميّه حمامك و ارض المطبخ من مرتين ل ٣ في الاسبوع ..<br>البسي جوانتي ارجوكي و حاولي ما تشميش مادة الكلور من مسافة قريبه❤<br><br>(منقول للفائدة مع عدم معرفة المصدر - وصلني على واتساب لكن معلوماته صحيحة)<br><br>#الدكتور<br>#طب_ولا_عك<br>#كورونا #كوفيد19	published	draft	article	\N	\N	0	2	0	0	1	1	ar	\N	1	\N
87	د.أحمد الخطيب..مدرس مساعد طب الأطفال وحديثي الولادة.. قسم الجهاز الهضمي والكبد..من أفضل الأطباء	د.أحمد الخطيب..مدرس مساعد طب الأطفال وحديثي الولادة.. قسم الجهاز الهضمي والكبد..من أفضل الأطباء اللي انصح اي اب او ام مهتمين بصحة اولادهم بمتابعته..	uploads/0jot2_Zwe0IUB.jpg	El Doctor	dahmd-lkhtybmdrs-msaad-tb-latfl-ohdythy-lold-ksm-l	2021-05-22 21:40:35.214+02	2021-05-22 21:40:35.919+02	2021-05-22 21:40:36.027+02	د.أحمد الخطيب..<br>مدرس مساعد طب الأطفال وحديثي الولادة.. قسم الجهاز الهضمي والكبد..<br>من أفضل الأطباء اللي انصح اي اب او ام مهتمين بصحة اولادهم بمتابعته..<br>انسان وطبيب وعالم.. في زمن انتشر فيه النصابين واشباه الاطباء.. https://www.facebook.com/Khateeb.Clinic تحياتي..<br>د.محمد منصور<br>#طب_ولا_عك	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
113	السحر والمس وتلبس الجن | الحقيقة من وجهة نظر طبية | كيفية إخراج الجن في المستشفى	هل فعلاً البنت اللي بيجيلها نوبات صوتها بيتغير وعينها تتقلب وتقول كلام كفر رغم انها مؤمنة.. هل البنت دي لابسها جني؟طيب  ازاي نخرجه؟ماتنسوش تشتركو ف	uploads/0jot2_nYct0jO.jpg	El Doctor	dPDdpLA2dDI	2021-05-22 21:46:47.089+02	2021-05-22 21:46:47.926+02	2021-05-22 21:46:48.213+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/dPDdpLA2dDI	PT11M25S	0	1	0	0	1	1	ar	\N	1	\N
123	أدوار الفريق الطبي | أروح للدكتور ولا الصيدلي ولا المعالج الطبيعي | ما فائدة التخصصات الطبية؟	إذا حصلت لك مشكلة طبية طارئة.. هل الصح انك تروح للطوارئ أو استقبال المستشفى؟ ولا الصح انك تروح للطبيب العام؟ ولا لعيادة الأخصائي؟امتى ممكن الصيدلي يع	uploads/0jot2_scfBa0r.jpg	El Doctor	Sm9FWXQHX3A	2021-05-22 21:47:34.523+02	2021-05-22 21:47:35.18+02	2021-05-22 21:47:35.389+02	#حشو_الأسنان يسبب #تسمم_الزئبق<br>لابد أن تخلع ضروسك اللي فيها #حشو_عصب قبل ان تصاب بالسرطان!<br>أطباء الأسنان مجرد تجار جشعين.. كل همهم يأخدو فلوس المرضى بأي طريقة.. حتى لو تسببت في وفاة المرضى!<br>علاج كل امراضك مرتبط ب #خريطة_الأسنان<br>#حشو_الجذور يتسبب في #تسمم_البوتيوليزم<br>إذا كان فيه شخص تعرفه عنده سرطان متقدم.. خليه يخلع أسنانه وسيشفى تماما من السرطان حتى لو كان من الدرجة الرابعة!!<br><br>هذه الرسائل كانت خلاصة محتوى فيديو عظيم مدته أكثر من ساعة للخبير العبقري.. اللي بيفهم في كل حاجة .. #كربم_علي أو #محمد_جابر صاحب قناة #فكر_تاني.. <br>فهل الكلام ده #طب_ولا_عك؟<br><br>تعالو نشوف بالعقل والعلم والمنطق... مع كوكبة من العلماء والخبراء والمتخصصين.. <br>وهم بترتيب الظهور:<br><br>- ا.د. أحمد عبدالرحمن هاشم - أستاذ ورئيس قسم علاج الجذور بجامعات مصرية عريقة وعضو الاتحاد العالمي لمعالجة الجذور<br><br>- د. أمنية منصور - طبيبة الفم والأسنان - مصر<br>https://www.facebook.com/omniaamir.omniaamir<br><br>- د.محمد دمر أبو الغيط - أخصائي تركيبات الأسنان - السعودية<br>https://www.facebook.com/profile.php?id=100008616904430<br>https://www.youtube.com/channel/UC0J_IFsmjpLpr964j90UjgA<br><br>- د.محمد أبوالحسن - طبيب وجراح الفم والأسنان - السعودية<br>https://www.facebook.com/mohammad.aboelhassan.161<br>https://www.facebook.com/%D8%AF%D9%83%D8%AA%D9%88%D8%B1-%D8%A3%D8%B3%D9%86%D8%A7%D9%86-112410063873205/<br><br>- د.إسلام منصور - طبيب تقويم الأسنان - لندن<br>https://www.instagram.com/dr.eslam.mansour/<br>https://www.facebook.com/eslam.e.mansour<br><br>رابط الفيديو الكامل للأستاذ الدكتور أحمد عبد الرحمن هاشم على قناة د.إيهاب هيكل:<br>https://www.youtube.com/watch?v=IV-b0uW2jFs&amp;t=159s<br><br>رابط الفيديو الكامل لرد د.محمد دمر أبوالغيط:<br>https://www.youtube.com/watch?v=4wpbkP-ZuxE&amp;t=17s.<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/Sm9FWXQHX3A	PT11M19S	0	1	0	0	1	1	ar	\N	1	\N
26	وأخيراً رجعنا 🤩🤩	وأخيراً رجعنا.. بعد غياب شهرين.. وعدم انتظام سنة.. وبانتظام ان شاء الله.. كل يوم ثلاثاء..٦ م بتوقيت القاهرة..٥ م بتوقيت لندن..لو حابب تشاركنا ا	uploads/0jot2_5jbpe0I.jpg	El Doctor	_5tGa9JyOEw	2021-05-22 19:58:58.618+02	2021-05-22 19:58:58.974+02	2021-05-22 19:58:59.237+02	اتفرجت على برنامج #باسم_يوسف؟<br>#Plant_B_TV<br><br>طيب أخبارك إيه؟<br>#نباتي ولا حيواني؟ <br><br>اتفرج على الحلقة دي وماتبخلش عليا بعدها بكومنت تقول لي رأيك في الموضوع..<br><br>ولو تعرف حد - والعياذ بالله - نباتي.. وفاكر انه كده بيحافظ على صحته.. وبيحمي الحيوانات والطيور الكيوت الجميلة المسكينة.. ابعتله الحلقة دي عالواتساب أو شيرها على صفحته عالفيس!<br><br><br>من بريطانيا:<br>#د_محمد_منصور<br>طبيب الأمراض الباطنة وأمراض الكلى<br>مستشفى جامعة #لستر<br><br>Media Partner:<br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br>و عشان يوصلك معلومات طبية سليمة بانتظام.. تابع صفحة "الدكتور" على فيس بوك:<br>https://www.facebook.com/Eldoctooor/<br><br><br>بعض مصادر الموضوع:<br><br>Adult Obesity Causes &amp; Consequences - Centres for Disease Control and Prevention<br>https://www.cdc.gov/obesity/adult/causes.html<br><br>The Epidemiology of Obesity: A Big Picture - PMC<br>https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4859313/<br><br>Q&amp;A on the carcinogenicity of the consumption of red meat and processed meat - World Health Organisation<br>https://www.who.int/features/qa/cancer-red-meat/en/<br><br>The sweet danger of sugar - Harvard Medical School<br>https://www.health.harvard.edu/heart-health/the-sweet-danger-of-sugar<br><br><br>Song: MBB - Palm Trees (Vlog No Copyright Music)<br>Music provided by Vlog No Copyright Music.<br>Video Link: https://youtu.be/jr0e9XzOPn4	published	draft	video	,https://www.youtube.com/embed/_5tGa9JyOEw	PT7M56S	0	1	0	0	1	1	ar	\N	1	\N
163	هل تظن إنك أصبت بفيروس كورونا الجديد (كوفيد19) خلال الفترة اللي فاتت؟	شاركنا برأيك.. هل تظن إنك أصبت بفيروس كورونا الجديد (كوفيد19) خلال الفترة اللي فاتت؟لو كانت إجابتك بنعم..احكيلنا ليه انت حاسس بكده؟ إيه الأعراض ال	uploads/0jot2_VOX8GIe.jpg	El Doctor	hl-tthn-nk-asbt-bfyros-koron-lgdyd-kofyd19-khll-lf	2021-05-22 22:00:36.173+02	2021-05-22 22:00:36.795+02	2021-09-26 12:12:49.603033+02	شاركنا برأيك.. هل تظن إنك أصبت بفيروس كورونا الجديد (كوفيد19) خلال الفترة اللي فاتت؟<br><br>لو كانت إجابتك بنعم..<br><br>احكيلنا ليه انت حاسس بكده؟ إيه الأعراض اللي جات لك؟<br><br>وهل عملت تحليل وطلع إيجابي؟ ولا ده كان بدون تحليل؟<br><br>وإيه نصيحتك لغيرك؟<br><br>(ممكن تعمل منشن لحد عنده حاجة حابب يحكيها)<br><br>(رجاءاًً ماحدش يتكلم عن أي شخص تاني بدون إذنه لعدم إفشاء أي أسرار مرضية.. اللي حابب يحكي عن تجربته مع اشتباه المرض لابد يكون بإرادته هو شخصياً)<br><br>#شاركنا_برأيك<br>#الدكتور_مشغول_في_المستشفى_واحنا_بنتسلى<br>#خليك_في_البيت<br>#طب_ولا_عك<br>#كورونا #كوفيد19	published	draft	article	\N	\N	0	2	0	0	1	1	ar	\N	1	\N
28	السرطان بيهرب من الثوم وبيجري ناحية الذهب !!!😮😮 - طب ولا عك؟	مين فينا ماشافش الفيديو الرهيب ده على فيسبوك أو واتساب أو يوتيوب؟؟قرآن شغال.. وشخص بيقرب الثوم لورم سرطاني.. فيهرب منه.. ويقرب خاتم ذهب.. فالسرطان ي	uploads/0jot2_aofMkLG.jpg	El Doctor	vbNSZ7mMOg4	2021-05-22 19:59:18.495+02	2021-05-22 19:59:18.921+02	2021-05-22 19:59:19.195+02	مين فينا ماشافش الفيديو الرهيب ده على فيسبوك أو واتساب أو يوتيوب؟؟<br><br>قرآن شغال.. وشخص بيقرب الثوم لورم سرطاني.. فيهرب منه.. ويقرب خاتم ذهب.. فالسرطان يجري ناحيته!!<br><br>لا تخرج قبل أن تقول سبحان الله!<br>وشير يامؤمن عشان الناس تشوف المعجزات!!<br><br>هل الفيديو ده حقيقي؟<br>طيب إيه تفسيره؟<br><br>شير الفيديو في كل مكان.. واعمل منشن لحد تعرفه بينشر حاجات زي دي 😂😂!!<br><br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br><br>وتابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل الفيديوهات والمعلومات وغيرها موجودة على موقع "الدكتور" على الانترنت<br>www.eldoctor.co.uk<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br><br>الفيديو الأصلي للثوم والذهب:<br>https://youtu.be/QRDcgOq6UzE<br><br>رابط فيديو لكيفية عمل سائل الحديد المغناطيسي وبعض التجارب البسيطة عليه:<br>https://youtu.be/i6-LkxjVB4I<br><br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/vbNSZ7mMOg4	PT5M58S	0	1	0	0	1	1	ar	\N	1	\N
17	العلاج بالوهم والإيحاء | بلاسيبو و نوسيبو | ألف باء طب	ليه ساعات بتاخد دوا معروف والدكتور وصفهولك ومابتتحسنش؟؟وليه ساعات تاخد أعشاب أو تعمل حجامة أو وصفة قديمة وتحس بعدها إنك اتحسنت أو خفيت؟؟إيه هم البل	uploads/0jot2_Bi0rLiN.jpg	El Doctor	HGPORXKqq-8	2021-05-22 19:53:53.344+02	2021-05-22 19:53:53.803+02	2021-05-22 19:53:54.032+02	ليه ساعات بتاخد دوا معروف والدكتور وصفهولك ومابتتحسنش؟؟<br>وليه ساعات تاخد أعشاب أو تعمل حجامة أو وصفة قديمة وتحس بعدها إنك اتحسنت أو خفيت؟؟<br><br>إيه هم البلاسيبو و النوسيبو؟ <br><br>من بريطانيا:<br>د.محمد منصور<br>طبيب الأمراض الباطنة والكلى - مستشفى جامعة لستر<br><br>Camera:<br>Safaa Baagar<br><br>Post production: <br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br>عشان يوصلك معلومات طبية سليمة بانتظام.. تابع صفحة "الدكتور" على فيس بوك:<br>https://www.facebook.com/Eldoctooor/<br><br>بعض المصادر:<br><br>The remarkable power of the placebo: Patients who had FAKE surgery for a broken back recovered just as well, documentary reveals<br>https://www.dailymail.co.uk/health/article-2558438/The-remarkable-power-PLACEBO-effect-Patients-FAKE-surgery-broken-recovered-just-documentary-reveals.html<br><br>Placebo and nocebo effect: a mini-review.<br>https://www.ncbi.nlm.nih.gov/pubmed/24909245<br><br>Nocebo - Placebo<br>https://www.sciencedaily.com/terms/nocebo.htm<br><br>Implications of Placebo and Nocebo Effects for Clinical Practice: Expert Consensus<br>https://www.karger.com/Article/FullText/490354<br><br>Evidence for Cognitive Placebo and Nocebo Effects in Healthy Individuals<br>https://www.nature.com/articles/s41598-018-35124-w	published	draft	video	,https://www.youtube.com/embed/HGPORXKqq-8	PT11M7S	0	1	0	0	1	1	ar	\N	1	\N
90	ميديكاتون د.احمد حامد.. بيعمل فيديوهات كارتون بسيطة وقصيرة ومسلية تعرفك اساسيات طبية انت محتاج	ميديكاتون.. من الصفحات الطبية الجميلة اللي تستاهل متابعتك على فيس بوك.. د.احمد حامد.. بيعمل فيديوهات كارتون بسيطة وقصيرة ومسلية تعرفك اساسيات طبية انت	uploads/0jot2_ZxbqTc8.jpg	El Doctor	mydykton-dhmd-hmd-byaaml-fydyoht-krton-bsyt-oksyr	2021-05-22 21:40:57.944+02	2021-05-22 21:40:58.37+02	2021-05-22 21:40:58.484+02	ميديكاتون.. من الصفحات الطبية الجميلة اللي تستاهل متابعتك على فيس بوك.. د.احمد حامد.. بيعمل فيديوهات كارتون بسيطة وقصيرة ومسلية تعرفك اساسيات طبية انت محتاج تعرفها.. شغل فني جميل واسلوب علمي راقي بيحارب الخرافة.. https://www.facebook.com/medicatoon تحياتي.. د.محمد منصور #طب_ولا_عك	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
44	انتشرت المعلومة الخاطئة دي .. اللي ليس لها أي اساس على بعض صفحات الفيس بوك وبتتبعت على الواتساب	انتشرت المعلومة الخاطئة دي .. اللي ليس لها أي اساس على بعض صفحات الفيس بوك وبتتبعت على الواتساب.. بغض النظر عن انه فيه أكثر من ١٠ الاف دكتور جوبتا في	uploads/0jot2_NCiBUTP.jpg	El Doctor	ntshrt-lmaalom-lkht-dy-lly-lys-lh-ay-ss-aal-baad-s	2021-05-22 21:04:39.752+02	2021-05-22 21:04:40.291+02	2021-05-22 21:04:40.552+02	انتشرت المعلومة الخاطئة دي .. اللي ليس لها أي اساس على بعض صفحات الفيس بوك وبتتبعت على الواتساب.. بغض النظر عن انه فيه أكثر من ١٠ الاف دكتور جوبتا في العالم.. والله أعلم دي صورة مين منهم او من غيرهم.. فلا مزج الليمون او اي فاكهة بالماء (او مايسمى بالديتوكس) ثبت له اي فايدة حقيقية بناءا على اي دراسة معتبرة!! ولا زيت جوز الهند ثبت له دور واضح في محاربة خلايا السرطان! الاثنين لهم فوائد طبعا.. لكن ليس لها علاقة واضحة بالسرطانات.. غير طبعا ان البوست بيديك ضمانه بعدم حدوث السرطان لو بتعمل كده.. مع ان الشخص اللي مالف البوست ممكن يكون حاليا محجوز في مستشفى بيتعالج من سرطان!! ومفيش أي شيء في العالم - حاليا - يضمن لك عدم حدوث سرطان! ربنا يعافينا ويعافيكم.. من الأمراض.. ومن الجهل 🙂 #طب_ولا_عك<br>#الدكتور<br>#محمد_منصور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
48	٦ أسباب لانتشار العك في بلادنا - ألف باء طب	ماسألتش نفسك قبل كده:ليه النصابين واللي بيتاجرو بآلام الناس وصحتهم هم اللي بيتشهرو.. وتتفتح لهم الشاشات والقنوات.. و يتابعهم الملايين.. وتلاقي لهم مع	uploads/0jot2_g708rWI.jpg	El Doctor	BAD0EDSMoM8	2021-05-22 21:07:47.045+02	2021-05-22 21:07:47.746+02	2021-05-22 21:07:47.976+02	ماسألتش نفسك قبل كده:<br>ليه النصابين واللي بيتاجرو بآلام الناس وصحتهم هم اللي بيتشهرو.. وتتفتح لهم الشاشات والقنوات.. و يتابعهم الملايين.. وتلاقي لهم معجبين ومتابعين وناس بتدافع عنهم وماعندهمش استعداد يقبلو أي نقد لهم؟؟<br><br>الأسباب كتير.. بس في الحلقة دي.. هنفتح الموضوع بإني أقول لك ست أسباب بس كبداية..<br><br>من الحلقة الجاية.. هنبدأ نتكلم عن العكاكين دول واحد واحد.. <br>وهنعمل حلقات نفند فيها مزاعمهم وادعاءاتهم الطبية بشكل مفصل..<br>تابع معانا.. وقل لي رأيك في التعليقات..<br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>تابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنساش.. شير الفيديو على قد ماتقدر.. وهات حبايبك يشتركو في القناة.. عشان اللي جاي هيعجبك ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/BAD0EDSMoM8	PT6M9S	0	1	0	0	1	1	ar	\N	1	\N
49	فايروس سي بقى يعتبر مرض بيتعالج وبيخف تماما في العالم كله..	فيه بوستات منتشرة على فيسبوك عن دكاترة (بيتقال انهم متخصصين - بدون أسماء) بيحذرو من علاج #فايروس_سي اللي بيستعمل في مصر إنه بيتسبب في #سرطان_الكبد.. و	uploads/0jot2_4HBtzx8.jpg	El Doctor	tbyb-lklb-lmzyf-rmy-smaayl-mrtdy-mnsor-ltb-ydyo-bd	2021-05-22 21:07:52.202+02	2021-05-22 21:07:52.534+02	2021-05-22 21:07:52.718+02	السلام عليكم ورحمة الله وبركاته قعدت وقت طويل أفكر أكتب عن ايه واختيار الموضوع شيء بالنسبة لي أشوفه صعب فممكن بعد كدا ان شاء الله قبل ما أبتدي في كتابة موضوع أعمل استفتاء صغير كدا تشاركونا فيه كالعادة تختاروا فيه موضوع الشهر من بين مواضيع أكون محتار ايه ممكن يفيدكم أكتر .... ديموقراطية وكدا يعني 😁 وبما اني قضيت وقت كتير في التفكير فالمرة دي هستأذنكم هكتب في موضوع انا شخصيا اتعرضت لشيء مشابه له في الفترة الأخيرة .... اذا انت فوق سن ال 18 سنة ولم تصنف بعد من كبار السن (بلاش الابتسامة دي وما تفهم غلط ) وعمرك ما قست ضغطك ولا مرة ... ركز معايا اذا كنت : · بتدخن . · عندك سمنة او زيادة وزن. · اعمالك مكتبية وقليل الحركة وبتبعت حد يجيب لك ريموت التليفزيون زي حالاتي. · عندك في اسرتك حد بيتعالج من ضغط الدم المرتفع. · بتتعالج من اي مرض مزمن زي مثلا مرض السكرى . · طول ما انت ماشي عمال تاكل اكل جاهز مليء بالصوديوم. واذا حتي مش عندك كل ده فركز معايا برضه لانك اكيد تعرف حد يهمك وعاوز تفيده بأي معلومة. من قبل سنوات كانت المنظمات العالمية المعتمدة المهتمة بأمراض ضغط الدم تقسم الناس الي قسمين : · مريض بضغط الدم المرتفع فيبتدى له علاج اذا كان ضغطه الاول (الانقباضي) وده الرقم اللي فوق وده بيقيس الضغط في شرايينك لما يدق قلبك اكتر من 140 ملليمترا زئبقيا (مم زئبق) او ان ضغطه الثاني (الانبساطى) وده الرقم اللي تحت وده بيقيس ضغط الدم قي شرايينك ما بين دقات قلبك ودى الفترة نفسها اللي بتتغذي فيها عضلة القلب يكون اكثر من 90 ملليمترا زئبقيا (مم زئبق) او ان الاتنين مع بعض يكونوا مرتفعين فوق الارقام دى وده يبتدى علاج غير دوائي مع او بدون علاج دوائي. · انسان طبيعي ضغوطه الاثنين تحت الارقام المذكورة دي. بس للأسف مع الوقت نفس المنظمات دي اكتشفت بناءا علي دراسات قعدت سنين ان فيه مجموعة من الناس الاصحاء من القسم الاول بيكون ضغطهم اعلي شوية من غيرهم بيصابوا بمرض فرط ارتفاع ضغط الدم مع الوقت فظهر ما يعرف بمصطلح " ما قبل ارتفاع ضغط الدم". ما قبل ارتفاع ضغط الدم هو ان الضغط الانقباضي يتراوح ما بين 120 الي 139 مم زئبق أو ان الضغط الانبساطي يتراوح ما بين 80 الي 89 مم زئبق وفي الغالب بيتم اكتشافه بالصدفة أثناء كشف عند طبيب لسبب اخر او حتي قياسه في صيدلية (احنا مش هنجيب سيرة المرافقين عشاق قياس الضغط هنا J ) وعلي فكرة حتي مرض ضغط الدم المرتفع بذات نفسه في اغلب الاحيان ماله اعراض وبيتم اكتشافه صدفة وده بيخلي كتير من الناس للاسف تيجي بمضاعفاته بعد كدا بدون ما تكون عارفه اصلا ان عندها فرط ارتفاع ضغط الدم. عوامل الخطورة المرتبطة بظهور ما قبل ارتفاع ضغط الدم او ضغط الدم المرتفع قلناها فوق بس نعيدها لان في الاعادة افادة : · التدخين. · النساء بعد سن 65 سنة والرجال في منتصف العمر. النساء طول ما عندها الدورة الشهرية هرمون الاستروجين شغال وبيحمي القلب والشرايين وبالتالي بيكونوا اقل عرضه لامراض القلب وضغط الدم المرتفع . · اصحاب البشرة السوداء ...للاسف الناس دي بيبقي عندها النظام اللي بيحافظ علي ضغط دمنا اذا لا قدر الله انخفض ونسبة الميه في دمنا اذا لا قدر الله قلت لاي سبب نشيط اكثر من اللازم فالدراسات اكدت ان ذوي البشرى السمراء بيجيلهم ضغط اكتر وفي سن اصغر من اصحاب البشرة البيضاء. · تاريخ عائلي بالاصابة بضغط الدم المرتفع في الاسرة الواحدة يعني اذا الاب او الام او الاخ او الاخت. · زيادة الوزن والسمنة وقلة الحركة ....نداء الي اصحاب الكروش المتينة ....نزل كرشك لو سمحت مش تشفطه لا نزله بالرياضة والنظام الغذائي الصحيح ...فواكه وخضراوات كتير كربوهيرات ودهون اقل (راجع الجروب عن موضوع الدايت). الموضوع بسيط اذا كتلة جسمك زادت فانسجتك هتحتاج اكسجين اكتر فالدم هيندفع في شرايينك بشكل اقوي ويبقي فيه ضغط اكبر علي جدران شرايينك والجدران دي مش هتسكت لازم تنشف كدا وتسترجل في مواجهة الضغط ده وبالتالي يحصل تصلب الشرايين وبعدين الضغط يبدأ يعلى. · النظام الغذائي كثير الملح (الصوديوم) .... العالم كله رايح دلوقت في سكة ان حتي الميه تبقي قليلة الصوديوم. · بعض الامراض المزمنة زي امراض الكلى والسكرى او انقطاع النفس اثناء النوم او امراض الغدة الدرقية (غدة بالرقبة تفرز هرمون النشاط) او الكظرية (غدة فوق الكلي بتفرز مجموعة مهمة من الهرمونات منها الكورتيزون) او تصلب الشرايين نتيجة الدهون الزايدة. · بعض الادوية اللي بتستخدم بدون اي وعي زي مسكنات الالم ومضادات الاحتقان. ومن الادوية المشهورة كمان حبوب منع الحمل . السؤال المهم ليه مهم اكتشاف مرحلة ما قبل ارتفاع ضغط الدم ؟؟؟ الحقيقة ان ما قبل ارتفاع ضغط الدم لا يسبب مضاعفات انما هو جرس انذار لتغيير نظام الحياة الي نظام صحي والا بيتطور الي فرط ارتفاع ضغط الدم وممكن بدون ما يشعر الشخص يدخل في مضاعفات ارتفاع ضغط الدم من نوبات قلبية وفشل القلب والسكتة الدمغية والفشل الكلوي. نصيحتي لك · بطل تدخين . · العب رياضة او اتحرك . · كل صح وقلل الملح. · حافظ علي وزن صحي او نزل وزنك. · الدوا اللي تاخده باشراف طبيب. · قيس ضغطك كل سنتين مرة لو ما عندك ما قبل ارتفاع ضغط الدم ولو عندك او عندك اي مرض مزمن خلي القياسات متكررة علي فترات متقاربة. اذا عجبك الموضوع دوس لايك وشاركه واذا ما عجبك قلنا اقتراحك عشان يعجبك المرة الجاية #حافظ_علي_ضغط_دمك<br>#طب_ولا_عك<br>#الدكتور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
116	الكمامة اللي جننتنا معاها | هل بتحمي من المرض ولا بتسببه | خلاصة الكلام في لبس الكمامة	الكلام متناقض بخصوص ارتداء الكمامة..منظمة الصحة العالمية بتقول ماتلبسش الكمامة..لكن مركز مكافحة الأمراض والأوبئة الأمريكي بيقول إلبس الكمامة..كمام	uploads/0jot2_15IYrU4.jpg	El Doctor	PEz4IWwlomo	2021-05-22 21:46:57.37+02	2021-05-22 21:46:57.953+02	2021-05-22 21:46:58.15+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/PEz4IWwlomo	PT12M47S	0	1	0	0	1	1	ar	\N	1	\N
51	الطب الشمولي والطب الوظيفي والطب التكاملي | طب ولا عك	الأطباء التقليديين عايزين الناس تعيش على الأدوية.. وده منطقي.. لأنهم بياخدو فلوس من شركات الأدوية عشان يصرفوها للناس..وكل مريض يخف تماما من المرض بي	uploads/0jot2_dJ1spDm.jpg	El Doctor	9gzFq-ocCgY	2021-05-22 21:13:59.715+02	2021-05-22 21:14:01.345+02	2021-05-22 21:14:01.931+02	النهاردة هنتفرج سوا على فيديو رائع عملته قناة ميدان ونطلع منه بنقط ودروس مهمة جداً..<br><br>قولولي في التعليقات لو طريقة الفيديو ده عجبتكم.. ممكن نعمل منها كل فترة..<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/9gzFq-ocCgY	PT29M52S	0	1	0	0	1	1	ar	\N	1	\N
155	شرفتنا منصة "صوت" بتحويل كل فيديوهات سلسلتي "طب ولا عك" و"في دقيقتين" الى ملفات صوتية	شرفتنا منصة "صوت" بتحويل كل فيديوهات سلسلتي "طب ولا عك" و"في دقيقتين" الى ملفات صوتية وقاموا برفعها على ساوند كلاود لمن يود الاستماع اليها بدون تشغيل	uploads/0jot2_qeBu3fU.jpg	El Doctor	shrftn-mns-sot-bthoyl-kl-fydyoht-slslty-tb-ol-aak	2021-05-22 21:54:04.351+02	2021-05-22 21:54:05.364+02	2021-05-22 21:54:05.524+02	..... الذبحة هو نوع من أنواع الم الصدر الشديد الناتج عن ضعف تدفق الدم الى القلب.<br>و الذبحة عرض من اعراض امراض شريان القلب التاجى.<br>الالم الناتج عن الذبحة الصدرية بيكون شبيه بوجود حمل ثقيل على الصدر او الشعور بعصر منطقة الصدر.<br>بالرغم من كثرة تكرار حدوث الذبحة الا انه يصعب تمييزها عن باقى الام الصدر حتى الان،لذلك يفضل سرعة استشارة الطبيب فى حالة الشعور بألم مستمر فى الصدر. طب ايه الأعراض؟<br>⁦1️⃣⁩ألم شديد و حرقان فى منطقة الصدر<br>⁦2️⃣⁩الم فى الذراعين و الرقبة واحيانا يمتد الالم للظهر<br>⁦3️⃣⁩صعوبة التنفس<br>⁦4️⃣⁩الشعور بالدوخة و الدوران<br>⁦5️⃣⁩التعرق المستمر ايه انواع الذبحة؟<br>⁦1️⃣⁩الذبحة المستقرة<br>⁦2️⃣⁩الذبحة الغير مستقرة<br>⁦3️⃣⁩الذبحة الغير معتادة الذبحة المستقرة⁦‼️⁩<br>-تحدث نتيجة بذل مجهود كبير و التحميل الزائد على عضلة القلب<br>-تستمر لمدة قصيرة(5 دقائق او اقل)<br>-يختفى الألم و الاعراض بالراحة دون الحاجة للأدوية الذبحة الغير مستقرة⁦‼️⁩<br>-غير متوقعة الحدوث<br>-تحدث اثناء الراحة<br>-أشد خطورة من الذبحة المستقرة و تستمر لمدة اطول(30 دقيقة او اكثر)<br>-احيانا ما تتسبب فى نوبة قلبية ايه اسباب الذبحة؟<br>عرفنا انها بتحصل نتجية انخفاض معدل تدفق الدم الى القلب، الدم مسئول عن نقل الاكسجين الى القلب، وصول كمية غير كافية من الاكسجين تتسبب فى حدوث حالة مرضية تعرف ب الاقفار.(الاسكيميا)<br>انخفاض تدفق الدم ده سببه ضيق فى الشرايين نتجية بعض الترسبات بها و الذى يعرف ب تصلب الشرايين مما يؤدى لانخفاض مستوى الاكسجين فى القلب و عدم وجود فرصة لعضلة القلب أن تستريح. ايه العوامل المساعدة لحدوث الذبحة؟<br>⁦1️⃣⁩التدخين و الافراط فى المشروبات الكحولية<br>⁦2️⃣⁩مرض السكر<br>⁦3️⃣⁩ارتفاع ضغط الدم<br>⁦4️⃣⁩ارتفاع مستوى الكوليستيرول فى الدم<br>⁦5️⃣⁩وجود تاريخ وراثى لأمراض القلب فى العائلة<br>⁦6️⃣⁩التقدم فى العمر<br>⁦7️⃣⁩زيادة الضغط العصبى و التوتر<br>⁦8️⃣⁩السمنة المفرطة<br>⁦9️⃣⁩غياب العامل الرياضى و النشاط من حياتنا اليومية ازاى نقدر نتجنب الاصابة بالذبحة؟<br>-الاقلاع عن التدخين و الحد من المشروبات الكحولية🥃🚬🚫<br>-مراقبة و ضبط ضغط الدم و معدل السكر و الكوليستيرول فى الدم<br>-تناول طعام صحى لتجنب زيادة الوزن🍔🌭🥪❌<br>-ممارسة الرياضه يوميا دون ارهاق عضلة القلب🚴🏃<br>-الابتعاد عن التوتر و العصبية #طب_ولا_عك<br>#الدكتور<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
76	التهاب الأذن الوسطى👂....بيكون سببه عدوى بكتيرية أو فيروسية و أحيانا بيكون عرض جانبى لمرض اخر مثل ال	التهاب الأذن الوسطى👂....بيكون سببه عدوى بكتيرية أو فيروسية و أحيانا بيكون عرض جانبى لمرض اخر مثل البرد؛الانفلونزا و الحساسية. بيحصل ان الفراغ خلف طبل	uploads/0jot2_MJu4ofr.jpg	El Doctor	lthb-lathn-lostbykon-sbbh-aado-bktyry-ao-fyrosy-o	2021-05-22 21:38:00.059+02	2021-05-22 21:38:00.494+02	2021-05-22 21:38:00.634+02	التهاب الأذن الوسطى👂....بيكون سببه عدوى بكتيرية أو فيروسية و أحيانا بيكون عرض جانبى لمرض اخر مثل البرد؛الانفلونزا و الحساسية. بيحصل ان الفراغ خلف طبلة الأذن بيمتلئ بالهواء و ده بيسبب أعراض كتير بتختلف حسب العمر. بالنسبة للأطفال.... -الم فى الأذن خاصة فى وضعية الاستلقاء -صعوبة و تقطع النوم -كثرة و تكرار البكاء -مشاكل فى السمع و الأستجابة للاصوات -حمى و ارتفاع درجة الحرارة لأعلى من 38 درجة مئوية🥵 -صداع -فقدان الشهية و الشعور بعدم الإتزان -جفاف و تفريغ سوائل الاذن بالنسبة للاعراض فى البالغين... -الم فى الاذن و مشاكل فى السمع -جفاف السوائل فى الاذن 🔴يجب الرجوع للطبيب فى حالة ان -الأعراض استمرت لأكثر من يوم -لو طفلك عمره اقل من 6 أشهر -لو لاحظت خروج سوائل،صديد او دم من الأذن طيب ازاى تقدر تقى نفسك من التعرض للمرض ده؟ -الوقاية من البرد و النفلونزا و غيرها من الامراض التى يصاحبها التهاب الاذن الوسطى -تجنب الجلوس لفترات طويلة مع المدخنين -بالنسبة للاطفال الرضع يفضل الاعتماد على الرضاعة الطبيعية حتى 6 اشهر على الاقل لأن لبن الام يحتوى على كثير من المضادات التى تحمى الطفل من العدوى، فى حالة اللجوء الى زجاجات الرضاعة(الببرونة) 🍼تجنب ارضاع الطفل فى وضع النوم او الاستلقاء و يفضل ان يكون فى وضع الجلوس -اسال الطبيب المختص عن التطعيمات اللازمة لطفلك #زياد_منصور #طب_ولا_عك #شير_في_الخير #الدكتور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
94	*انا عندى اكتئاب* مننا بيقولها على محمل الهزار، لكن فى الواقع الكلمة دى اخطر من كده بكثير‼️	*انا عندى اكتئاب* الجملة دى انتشرت بشكل كبير بين الناس و على مواقع السوشيال ميديا و كثير مننا بيقولها على محمل الهزار، لكن فى الواقع الكلمة دى اخطر من	uploads/0jot2_OIIc8dj.jpg	El Doctor	n-aand-ktb-mnn-bykolh-aal-mhml-lhzr-lkn-f-lokaa-lk	2021-05-22 21:42:45.137+02	2021-05-22 21:42:45.652+02	2021-05-22 21:42:45.822+02	*انا عندى اكتئاب* الجملة دى انتشرت بشكل كبير بين الناس و على مواقع السوشيال ميديا و كثير مننا بيقولها على محمل الهزار، لكن فى الواقع الكلمة دى اخطر من كده بكثير‼️ يعنى ايه اكتئاب؟<br>الاكتئاب ده مرض نفسى يتمثل فى حالة مستمرة من الحزن و فقدان الحماس و الرغبة تجاه النشاطات اليومية، و تقدر تلاحظ تغير كبير فى طريقه تفكير و تصرفات المريض و عدم القدرة على القيام بالنشاطات و المهام اليومية.<br><br>طيب ايه أعراض الاكتئاب<br>1️⃣الشعور بالحزن و فقدان الأمل<br>2️⃣عدم انتظام النوم....فالمريض يعانى اما من الارق الشديد او النوم لفترات طويلة<br>3️⃣الشعور بالتعب و الارهاق<br>4️⃣التوتر المستمر و عدم الارتياح<br>5️⃣بطء التفكير و الكلام و حركة الجسم<br>6️⃣التفكير فى الانتحار و الرغبة فى الموت<br>7️⃣بعض المشاكل الصحية دون سبب وجيه مثل(الام الظهر و الصداع)<br>8️⃣الميل الى العزلة و عدم الاختلاط بالغير<br>9️⃣صعوبة التذكر أسباب الاكتئاب..<br>1-تغير فى كيمياء المخ و المستقبلات الموجودة فيه و طرق استجابتها للاشارات الواردة اليه<br>2-خلل فى توازن هرمونات الجسم و الذى قد ينتج عن عدة مشاكل صحية مثل خلل فى افرازات الغدة النخامية<br>3-العامل الوراثى ايه العوامل التى تساعد على المرض؟<br>🔴تراجع الثقة فى النفس و الاعتماد التام على الأخرين فى اتخاذ القرارات الشخصية<br>🔴التعرض للضغوط النفسية و الاحداث الصادمة<br>🔴الافراط فى شرب الكحوليات و المخدرات<br>🔴بعض الامراض المزمنة مثل السرطان (لما تسببه من اثر نفسى) مفيش طريقة صريحة لتجنب المرض لكن تقدر تساعد نفسك عن طريق:<br>-الاختلاط بالعائلة و الاصدقاء و تجنب العزلة👨‍👩‍👧‍👦<br>-التعامل مع الضغوطات و الاضطرابات النفسية و طلب المساعدة عند الحاجه<br>-سرعة زيارة الطبيب👨‍⚕️ فى حالة ملاحظة اى من الاعراض السابقه و البدء فى العلاج قبل ان تسوء الحالة للأطلاع على المواضيع ذات الصلة يرجى الدخول على اللينك فى أول تعليق⬇️ #طب_ولا_عك<br>#شير_في_الخير<br>#الدكتور<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
52	ليه بتدافع عن الأدوية | زانتاك بيسبب السرطان | ألف باء طب	بتجيلي كتير أسئلة من النوعية دي:"زانتاك اللي الناس بتاخده نهار وليل بقالها 20 سنة اتسحب من السوق عشان طلع بيسبب السرطان!!!""شفت اللي أخدناه من أدو	uploads/0jot2_F7fDImW.jpg	El Doctor	XJjk-3mkmFI	2021-05-22 21:14:09.346+02	2021-05-22 21:14:10.019+02	2021-05-22 21:14:10.262+02	النهاردة هنتفرج سوا على فيديو رائع عملته قناة ميدان ونطلع منه بنقط ودروس مهمة جداً..<br><br>قولولي في التعليقات لو طريقة الفيديو ده عجبتكم.. ممكن نعمل منها كل فترة..<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/XJjk-3mkmFI	PT12M2S	0	1	0	0	1	1	ar	\N	1	\N
55	هل أول مايجيلك سخونية (حمى).. لازم تلحق تتعالج بدري وتاخد مضاد حيوي قوي عشان تخف بسرعة..صح	أول مايجيلك سخونية (حمى).. لازم تلحق تتعالج بدري وتاخد مضاد حيوي قوي عشان تخف بسرعة.. صح؟؟ لأ .. طبعاً غلط!!🙂 لأن في أغلب الأحيان.. سبب الحمى بيكون ف	uploads/0jot2_ZY7xCri.jpg	El Doctor	hl-aol-mygylk-skhony-hm-lzm-tlhk-ttaalg-bdry-otkhd	2021-05-22 21:18:47.688+02	2021-05-22 21:18:48.36+02	2021-05-22 21:18:48.499+02	#الزهايمر..🤦‍♂️ كلمة بنستخدمها كتير فى حياتنا اليومية.. نسيت مفاتيح العربية.. او نسيت تبعت رسالة لحد.. بتقول انا عندى #زهايمر! بس فى الحقيقة الموضوع اخطر من كده بكثير!! مرض الزهايمر ده بيدمر خلايا المخ تدريجيا و بيتسبب فى موتها.. و الزهايمر من اهم اسباب ما يسمى ب #الخرف أهم عرض بنلاحظه على مريض الزهايمر هو فقدان و اضطراب فى الذاكرة و خصوصا للمواقف و النقاشات الحديثة.. ينسى هو أكل إيه أو عمل ايه الصبح أو حط هدومه أو مفاتيحه فين.. بالاضافة الى عدم اتزان الفكروعدم القدرة على اتخاذ قرارات صائبة.. وبيبدأ يحصل تغير ملحوظ فى تصرفات المريض و تعاملاته الاجتماعية.. لحد ما يفقد قدرته على الحفاظ على وضعه الاجتماعي.. فممكن يبدأ يلبس لبس مش مظبوط أو يقوم بأفعال غير لائقة.. مرض الزهايمر ليس له سبب واضح و صريح و لكن هناك عدة عوامل تؤدى لحدوث المرض و من اهمها: 1- العمر (وفقا لاخر دراسات منظمة الصحة العالمية) ثبت ان من كل 1000 شخص يتراوح عمرهم بين (74-65) عاما يتم تشخيص حالتين (84-75) عاما يتم تشخيص 11 حالة (اكثر من 85) عاما يتم تشخيص 37 حالة 2- العامل الوراثى - جينات معينة في عائلات معينة! 3- اصابات الرأس - وخصوصاً الخبطات المتكررة.. 4- بعض امراض القلب الصورة دى بتوضح الفرق بين مخ انسان طبيعى على يسار الصورة و مخ انسان مصاب بمرض الزهايمر و الذى سبب له ضمور فى خلايا المخ على يمين الصورة اخيرا بقا احنا منقدرش نمنع المرض ده بس نقدر نقلل نسبة حدوثه و ده ال هنعرفه بالتفصيل فى بوست قادم ان شاء الله 👨‍🔬 #الدكتور #طب_ولا_عك #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
98	لازم تعمل اختبار حساسية قبل حقنة المضاد الحيوي..؟ 🤔💉	لازم تعمل اختبار حساسية قبل حقنة المضاد الحيوي..؟ 🤔💉 ✔️ الأوّل ايه هي الحساسية و بتحصل ليه..؟الحساسية دي بتبقى عبارة عن استجابة مناعيّة ضدّ الدّواء	uploads/0jot2_n96V6Ub.jpg	El Doctor	lzm-taaml-khtbr-hssy-kbl-hkn-lmdd-lhyoy	2021-05-22 21:43:43.684+02	2021-05-22 21:43:44.212+02	2021-05-22 21:43:44.346+02	لازم تعمل اختبار حساسية قبل حقنة المضاد الحيوي..؟ 🤔💉 ✔️ الأوّل ايه هي الحساسية و بتحصل ليه..؟<br>الحساسية دي بتبقى عبارة عن استجابة مناعيّة ضدّ الدّواء اللي داخل للجسم.. و دا شيء غير طبيعي مش المفروض يحصل.. و لكن الجهاز المناعي بيقرّر يشوف الدّواء اللي داخل له دا على إنّه جسم ضارّ ( زيّ الفايرس أو البكتيريا ).. و بيقرّر يهاجمه.. العمليّة دي بتُفرز فيها موادّ كيميائيّة ( الهيستامين ) هي المسؤولة عن أعراض الحساسية..<br>✔️ الموضوع دا ممكن يحصل من أيّ دواء و لكن في أدوية بتعمل كدا أكثر من غيرها زيّ بعض المضادات الحيوية و أشهرها البنسلين ( حساسية البنسلين.. )<br>✔️ البنسلين ينتمي إلى عائلة من المضادات الحيويّة اسمها البيتا لاكتام.. و دي عائلة كبيرة فيها مضادات حيويّة أخرى.. لذلك لو حدّ عنده حساسية من البنسلين احتمال تجيله حساسية من مضادات حيوية تنتمي إلى نفس العائلة ..<br>✔️ ايه هي المضادات الحيوية دي؟<br>🔷 البنسيلينات الأخرى الأحدث زي:<br>🔴 أمبيسيلين ( يونيكتام )<br>🔴 أموكسيسيلين و فلوكلوكساسيلين ( فلوموكس ) 🔷 المضادات الحيوية من عائلة السيفالوسبورن زي:<br>🔴 سيفترياكسون ( سيفاكسون و مثايله )<br>🔴 سيفتازيديم ( فورتم و مثايله )<br>🔴 سيفوتاكسيم ( سيفوتاكس و مثايله ) ✔️ أعراض الحساسية في الحالات البسيطة تشمل:<br>🔴 طفح جلدي أو حبوب حمراء على سطح الجلد<br>🔴 حكة في الجلد<br>🔴 تورّم<br>🔴 كحة أو عطس أو أزمة صدرية<br>🔴 حكة أو احمرار في العين<br>🔴 سيلان في الأنف<br>🔴 ارتفاع في درجة الحرارة ✔️ في حالات بتوصل فيها الحساسية لحالة شديدة اسمها الصدمة التحسسية ( anaphylactic shock )<br>و دي بتكون أعراضها أخطر:<br>🔴 قيء أو إسهال<br>🔴 زيادة نبضات القلب<br>🔴 انخفاض ضغط الدم<br>🔴 دوخة و قد تصل لفقدان الوعي ✔️ يمكن علاج أعراض الحساسية بمضادات الحساسية و الكورتيزونات.. أمّا في حالة الصدمة التحسسية فلازم يتم التعامل معاها في مكان مجهّز ( مستشفى ).. ✔️ لو عندك حساسية من البنسيلين لازم تعرّف الطّبيب/الصّيدلي..<br>✔️ اختبار الحساسية بيكون عبارة عن حقن جزء صغير من الجرعة تحت الجلد و الانتظار لمدّة تتراوح من ١٠-١٥ دقيقة.. في حالة ظهور احمرار و حكة في الجلد فدي نتيجة إيجابية تشير إلى احتمالية حدوث حساسية من هذه الجرعة.. شاركوا البوست مع صحابكم و دمتم سالمين و أصحاء.. 😁🌸 #الدكتور<br>#طب_ولا_عك<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
30	الطب النفسي حقيقة ولا وهم؟ 🤔 - حوار مع دكتور	معروف طبعاً ان الأطباء النفسيين دول مجرد مجموعة من النصابين وعملاء شركات الأدوية..وكل هدفهم انهم يشخصو الانسان بمرض نفسي عشان يبدأوه على أدوية مالهاش	uploads/0jot2_VLaT6wf.jpg	El Doctor	E1zavzv_W70	2021-05-22 20:00:06.535+02	2021-05-22 20:00:07.073+02	2021-05-22 20:00:07.281+02	هل صحتك النفسية سليمة؟؟<br>طيب ازاي تعرف؟<br>هل انت محتاج تتكلم مع  دكتور نفساني؟<br><br>00:00 مقدمة<br>00:27 الأركان الأساسية لصحة نفسية سليمة<br>01:50 عشر علامات انك محتاج تزور طبيب نفسي<br><br>الفيديو ده مختصر جداً عشان بس ينبهك ان لو عندك أي علامة من دول..  يبقى لازم تفكر انك تتكلم مع دكتور نفساني..<br><br>لولقيت عندك علامات من علامات الاكتئاب اللي اتكلمنا عنها.. تقدر تشوف الفيديو ده: (المرجع الكامل لعلاج الاكتئاب في المنزل - العلاج المعرفي السلوكي):<br>https://youtu.be/uiEx69rbBTM<br><br>وتقدر تستشير طبيب نفسي مجانا أونلاين عن طريق الفيديو ده:<br>https://youtu.be/yqg0BiMyKl0<br><br>ساعد في تجهيز مادة الحلقة دي.. وهيكون ضيفنا في عدد من الحلقات الجاية:<br>د.أحمد العوضي<br>أخصائي الطب النفسي - أكاديمي زائر في جامعة ووريك - وعضو الجمعية الملكية للأطباء النفسيين في بريطانيا<br>و مدير مؤسسة "لا تحزن" للاستشارات النفسية<br>https://www.facebook.com/LaTahzan.Centre/<br><br><br>شير الفيديو في كل مكان.. واعمل منشن لحد تعرفه ممكن يستفيد منه.. أو ابعته بينك وبين حبايبك على واتساب عشان تفيد الناس منه بشكل شخصي..<br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل المعلومات والفيديوهات وأكثر.. موجود على موقع الدكتور على الإنترنت:<br>www.eldoctor.co.uk<br><br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/E1zavzv_W70	PT28M26S	0	1	0	0	1	1	ar	\N	1	\N
57	مفيش حاجة اسمها سرطان | فيتامين ب ١٧ | طب ولا عك 🤔	الحمد لله!! طلع مفيش حاجة اسمها سرطان!!طلعت كلها مجرد خدعة بتقوم بيها الدول الإستعمارية والغرب المجرم..مش مصدقني؟؟ تعال شوف!!ماتنسوش تشتركو في	uploads/0jot2_s4yi1wV.jpg	El Doctor	kXX75bd5OnU	2021-05-22 21:21:42.02+02	2021-05-22 21:21:42.926+02	2021-05-22 21:21:43.435+02	الحمد لله!! طلع مفيش حاجة اسمها سرطان!!<br><br>طلعت كلها مجرد خدعة بتقوم بيها الدول الإستعمارية والغرب المجرم..<br><br>مش مصدقني؟؟ تعال شوف!!<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>رابط قناة "ميديكاتون": #Medicatoon <br>https://www.youtube.com/channel/UCxy1aPBZVU0jshyC1COl_8Q<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/SamyRezkBlue<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة لستر - بريطانيا	published	draft	video	,https://www.youtube.com/embed/kXX75bd5OnU	PT10M8S	0	1	0	0	1	1	ar	\N	1	\N
96	قرحة الفم من المشاكِل البسيطة و لكن المُؤلِمَة ايه هي قرحة الفم؟	قرحة الفم من المشاكِل البسيطة و لكن المُؤلِمَة ..✔️ ايه هي قرحة الفم؟هي قرحة صغيرة لونها أبيض في المُنتصف و حمراء في الأطراف.. و بتكون دائريّة أو بي	uploads/0jot2_XtXXcN5.jpg	El Doctor	krh-lfm-mn-lmshkl-lbsyt-o-lkn-lmlm-yh-hy-krh-lfm	2021-05-22 21:43:02.873+02	2021-05-22 21:43:03.682+02	2021-05-22 21:43:03.81+02	قرحة الفم من المشاكِل البسيطة و لكن المُؤلِمَة ..<br>✔️ ايه هي قرحة الفم؟<br>هي قرحة صغيرة لونها أبيض في المُنتصف و حمراء في الأطراف.. و بتكون دائريّة أو بيضاويّة الشّكل.. و بتكون مؤلمة بالذّات أثناء الأكل.. و بتظهر تحت اللسان أو داخل الشّفتين أو الخدّين أو على قاعدة اللثة.. و بتقعد من أسبوع لأسبوعين و بتروح لوحدها و مفيش منها مشاكل خالص.. مشكلتها الوحيدة هي الألم اللي قد يُسبب إزعاج للبعض..<br>✔️ طيب هي بتحصل ليه..؟<br>مفيش سبب مُحدّد و لكن فيه بعض العوامل..<br>🔴 أيّ إصابة داخل الفم.. زيّ مثلاً لو حدّ عضّ لسانه أو عضّ خدّه.. أيضًا فرشاة الأسنان أو الأدوات المستخدمة في عيادات الأسنان قد تُحدِث إصابات طفيفة داخل الفم..<br>🔴 عوامل جينيّة.. الناس اللي عندها حدّ في أهلها بتجي له قرح كثير حيكون أكثر عرضة للإصابة بالقُرَح..<br>🔴 التّغيُّر الهرموني أثناء فترة الحيض..<br>🔴 التوتّر النّفسي..<br>🔴 نقص بعض العناصر الغذائية زي فيتامين ب١٢ و الفوليك أسيد و الحديد و الزنك.. ✔️ زيّ ما قلنا قرحة الفم مُشكلة بسيطة و بتروح لوحدها..<br>ممكن فقط استخدام جيل مُخدِّر موضعي لتخفيف الألم.. ( زيّ اوراكيور جيل )<br>و ممكن برضو نعمل الحاجات دي كإجراءات وقائية لو الموضوع بيتكرّر كثير:<br>🔴 نحاول نقلّل من الأطعمة التي قد تُسبّب تهيُّج للفم.. زيّ التوابل و الأكل المالح و الفواكه الحمضية ( البرتقال، الليمون )<br>🔴 ناكل أطعمة غنية بفيتامين ب١٢ و حمض الفوليك و الزنك و الحديد ( الفواكه و الخضروات )..<br>🔴 المحافظة على نظافة الفم و غسل الأسنان بانتظام و استخدام فرشاة أسنان ناعمة لو اللثة حسّاسة.. و طبعًا نحاول نخفّف من الضّغط النّفسي و نحظى بقدر كافي من النّوم و نشارك البوست مع صحابنا لتعُمَّ الفائدة.. ✌🏻<br>و دمتم سالمين و أصحّاء.. 😄🌸 (طبعا الكلام ده ☝️☝️ يخص قرح الفم البسيطة..<br>⚠️⚠️ في حالة ان القرحة استمرت اكثر من ٥ أيام او كانت غير مؤلمة او صاحبها ظهور غدد ليمفاوية بالوجه او الرقبة او نزول للوزن او اعراض عامة تدل على تغير الصحة.. فلابد من مراجعة الطبيب لاستبعاد انواع أخرى خطيرة ) #الدكتور<br>#طب_ولا_عك<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
64	ياترى قلبك عنده كام سنة	ياترى قلبك ♥ عنده كام سنة؟🤔🤔 عمرك سألت نفسك ليه لما بتشوف حد زايد جدا في الوزن بتحس كإنه كبير في السن؟ وليه لما بتشوف جلد او اسنان حد بيدخن بتحس انه	uploads/0jot2_elQD8Vg.jpg	El Doctor	ytr-klbk-aandh-km-sn	2021-05-22 21:27:27.221+02	2021-05-22 21:27:27.515+02	2021-05-22 21:27:27.677+02	ياترى قلبك ♥ عنده كام سنة؟🤔🤔 عمرك سألت نفسك ليه لما بتشوف حد زايد جدا في الوزن بتحس كإنه كبير في السن؟ وليه لما بتشوف جلد او اسنان حد بيدخن بتحس انه اكبر بكتير من عمره؟ كأن اسنانه اسنان واحد عجوز او جلده ناشف ومشقق وشكله عامة كبير .. مع ان سنه صغير؟ ببساطة.. لأن هي دي الحقيقة!! 😬 الشخص ده.. عمره البيولوجي (عمر خلاياه وأجهزة جسمه) كبر جدا عن الطبيعي .. وقرب من الموت اكتر بكتير من اللي في نفس عمره السني.. ولو نزل في الوزن او بطل #التدخين.. عمره بيرجع ورا كتير وبيصغر في السن البيولوجي.. عمر قلبك وخلايا جسمك بيتأثرجدا بزيادة #الوزن وبالتدخين وترسب #الدهون.. زي بالظبط لو انت واخوك اشتريتو عربيتين 🚗🚗في نفس السنة..<br>هو اهتم بعربيته وصيانتها وحافظ عليها..<br>وانت اهملتها وبهدلتها..<br>هل بعد خمس سنين هتلاقي العربيتين زي بعض؟؟!🤨 الاثنين اللي في الصورة دي.. أختين.. توأم متماثل... الفرق الوحيد بينهم.. ان واحدة بتدخن والثانية لأ!! وقف #التدخين.. العب #رياضة.. نزل #وزنك.. اجري.. كل أكل #صحي.. وهتشوف الفرق! في أول كومنت هتلاقي موقع تابع للصحة البريطانية بيقيس عمر قلبك التقريبي بناءا على عاداتك الصحية.. #شير_في_الخير<br>#الدكتور<br>#محمد_منصور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
66	عموماً لسه فيه فرصة حتى لو بتدخن بقالك 30 سنة	بمناسبة ان الفيس بوك اليومين دول كله صور للناس بعد ما يكبرو في العمر 20 أو 30 سنة.. بفضل التطبيق المبتكر: #Face_App حبيت أقولكم ان ده مش اختراع جديد و	uploads/0jot2_Xd76AWZ.jpg	El Doctor	aamom-lsh-fyh-frs-ht-lo-btdkhn-bklk-30-sn	2021-05-22 21:27:55.513+02	2021-05-22 21:27:55.946+02	2021-05-22 21:27:56.13+02	بمناسبة ان الفيس بوك اليومين دول كله صور للناس بعد ما يكبرو في العمر 20 أو 30 سنة.. بفضل التطبيق المبتكر: #Face_App حبيت أقولكم ان ده مش اختراع جديد ولا حاجة.. وان كتير من الناس عارفة شكلها لما تكبر 20 سنة المفروض يكون ازاي.. لأنه هو ده شكلها دلوقت!!! الناس دول للأسف هم المدخنين! #التدخين.. و #الكحوليات.. و #المخدرات.. بتكبر العمر أكتر من كده كمان.. والعمر الكبير ده مش بيبان بس في كرمشة الجلد وتهدل الوش وكبر الملامح.. لأ.. ده بيبان كمان في الضعف الجسدي.. والكحة المتواصلة.. وتكرار العدوى.. وضعف #المناعة.. وكثرة التعرض لجلطات #القلب والمخ.. وطبعاً #الضعف_الجنسي.. أتمنى من كل قلبي ان يكون التطبيق ده خلاك لأول مرة تشوف شكلك لما تكبر في السن.. وماتكونش في الحقيقة -بسبب التدخين أو غيره- شايل وش مش بتاعك.. ولكن بتاع الشخص الكبير في السن اللي المفروض تكونه بعد 20 أو 30 سنة! عموماً.. لسه فيه فرصة حتى لو بتدخن بقالك 30 سنة.. أول ما بتسيب السيجارة.. بتبدأ في التحسن.. فيه مراكز كتير شغلتها انها تساعد اللي محتاج يبطل تدخين أو مخدرات أو كحوليات.. اتصل بيهم عشان يساعدوك تنجح في الخطوة دي.. وأهم حاجة.. تبعد عن شركاء العادة السيئة أيا كانت.. تدخين.. مخدرات.. أو كحوليات.. ماتسيبش عمرك يروح منك.. #الدكتور #محمد_منصور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
67	تعرفوا لو استخدمتوا دواء بدون تعليمات الطّبيب ايه ممكن يحصل ؟ اسمعوا القصّة دي	تعرفوا لو استخدمتوا دواء بدون تعليمات الطّبيب/الصّيدلي ايه ممكن يحصل..؟ اسمعوا القصّة دي.. سنة 1957 شركة ألمانيّة لطيفة اسمها: ‏( Chemie Grünenthal Gm	uploads/0jot2_yfkDtaQ.jpg	El Doctor	taarfo-lo-stkhdmto-do-bdon-taalymt-ltbyb-yh-mmkn-y	2021-05-22 21:28:21.339+02	2021-05-22 21:28:21.896+02	2021-05-22 21:28:22.035+02	تعرفوا لو استخدمتوا دواء بدون تعليمات الطّبيب/الصّيدلي ايه ممكن يحصل..؟ اسمعوا القصّة دي.. سنة 1957 شركة ألمانيّة لطيفة اسمها: ‏( Chemie Grünenthal GmbH ) نزّلت دواء لطيف اسمه ثاليدومايد.. الشّركة ادّعت إنّه آمن تمامًا و مُناسِب لكُلِّ حد.. 😵 و قالت إنّهم أثناء الاختبارات على الفئران ما قدروش يلاقوا جرعة من الدواء دا تمّوت الفئران.. بيزوّدوا الجرعة كل شوية و برضو الفار ما بيموتش.. من كُثر ما الدّواء آمن.. النّاس كُلّها بدأت تاخذ الدّواء دا اللي استخدامه الأساسي كان كمُهدِّئ.. خصوصًا و إنّ المُهدِّئات لها آثار جانبيّة و تفاعُلات دوائية و أعراض انسحاب لو تمّ استخدامها بشكل خاطِئ.. فلازم تتاخذ تحت إشراف طبيب مُتخصّص.. المهم النّاس فرحت بالمُهدِّئ الآمن الجميل دا لغاية ما حصلت الكارثة.. 😰 سنة 1962.. السيّدات اللي أخذوا الثاليدومايد و همّا حوامِل وضعوا أطفال مشوّهين.. المُهدِّئ الآمن طلع بيشوّه الأجنّة.. 💔 رغم إنّ دي كانت كارثة بكل المقاييس و الدّواء اتسحب و الشّركة خسرت ملايين لإنّ هيئة الدّواء و الغذاء أجبرتها تقدّم تعويضات ماديّة للضّحايا إلّا إنّ العالم كله اتعلّم من الكارثة دي.. و المراحل اللي الدّواء بقى يمرّ بيها دلوقتي عشان ينزل السّوق بقت أكثر تعقيدًا.. و عرفنا إنّ بعض الأدوية ما تنفعش للسيدات الحوامل أو المُرضِعات.. و بقينا أكثر وعيًا بآثار الدّواء الجانبيّة و أكثر قدرة على تلافيها.. سواءً كمُختصّين في الرّعاية الصّحية أو كمُتلقّين لها.. لذلك حقول لكم على بعض الأمثلة.. لأدوية لها آثار جانبيّة و ازاي المفروض نتلافاها.. 🔴 لو الطّبيب كتب أدوية سلفا وماقلش للمريض يشرب مية كتير أثناء فترة العلاج لإنّ مركبات السلفا بتتركز في الكلي وممكن تسبب التهاب كلوي وحصوات.. 🔴 لو كتبله مضاد حيوي من مجموعة سيبروفلوكساسين ونسي يحذره من الخروج والتعرض للشمس أثناء الظهيرة أو استخدام واقي شمس لإنّ أثناء فترة العلاج بالأدوية دي بيكون المريض عنده حساسية لضوء الشمس وممكن تسبب له حروق في الوجه والجلد وتؤذي العين.. 🔴 لو كتبله مضاد حيوي اسمه زيثروكان أو زيسروسين أو أزيثرومايسين ونسي يقوله تاخدها بعد الأكل بساعتين لإنّه لو أخذها بعد الأكل مباشرة حيفسد مفعولها.. 🔴 لو كتب لابنك مضاد حيوي زي هاي بيوتك أو اوجمنتين شراب أو أيّ حاجه بنفس تركيبتهم ونسي يقولك احفظه في التلاجه مباشرة بعد الحل لإنّك لو نسيته برا التلاجة حيبوظ على طول ولازم ترميه أول مالونه يتحول من الأبيض للأصفر الغامق.. 🔴 لو كتبلك أقراص مضادة للالتهابات بيكتبها كتير أطبّاء الأسنان والعظام وتخصصات أخرى اسمها الفنترن أو أمبيزيم ونسي يقولك تاخدها قبل الأكل بساعة أو بعد الأكل بساعتين لإنّ أقلّ من كدا مش حتستفيد منها نهائياً لإنّها إذا اتاخدت مع الأكل حتحلل البروتينات اللي في الأكل بدل من البروتينات المسببة للورم فلازم تكون المعدة خالية.. 🔴 لو الدكتور أو الصيدلي أعطاكِ حاجة مسكنة للألم والصداع من مجموعة ديكلوفيناك زي كتافلام أو مجموعة كيتوبروفين زي باي الكوفان ونسي أنك بترضعي وخصوصا لو طفل حديث الولادة لإنّ الأدوية دي حتسبب لابنك ارتجاع و حرقان و مغص و انتفاخ و حيفضل يعيّط كلّ ما ترضّعيه و حتدوخي عشان تعرفي ايه السّبب و الدّواء بتاعك هو السبب.. 🔴 لو كتبلك دواء مسكن بروفين ونسي يسألك هل بتاخد أي نوع أسبرين للسيولة أم لا لإنّ البروفين بيلغي تأثير الأسبرين فلو كنت مريض بالقلب أو الضغط ومحتاج تأثير الأسبرين ما تاخدش معاه بروفين في نفس الوقت.. ‎ /لو تعرفوا حدّ بياخذ أدوية بدون مُراجعة الطّبيب ‎الصّيدلي.. أو حد كبير في السنّ و بياخذ أدوية كثير في نفس الوقت أو عنده مشاكل في الكبد/الكلى أو سيدة حامل شاركوا معاهم البوست دا.. و انصحوهم يراجعوا أدويتهم باستمرار مع مختصّ.. و دمتم سالمين و أصحّاءَ دومًا.. 🌸 #طب_ولا_عك #شير_في_الخير #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
68	هل أنتَ من الأشخاص اللي بياخذوا مسكنات بإفراط	هل أنتَ من الأشخاص اللي بياخذوا مسكنات بإفراط ..؟ لو أنتَ كلّ ما تصدّع بتروح تاخذ حباية الصّداع الصّفراء فالبوست دا ليك.. ✋🏻 المُسكّنات بشكل عام آمنة	uploads/0jot2_uCuCgKy.jpg	El Doctor	hl-ant-mn-lashkhs-lly-bykhtho-msknt-bfrt	2021-05-22 21:28:36.633+02	2021-05-22 21:28:37.053+02	2021-05-22 21:28:37.167+02	تعرفوا لو استخدمتوا دواء بدون تعليمات الطّبيب/الصّيدلي ايه ممكن يحصل..؟ اسمعوا القصّة دي.. سنة 1957 شركة ألمانيّة لطيفة اسمها: ‏( Chemie Grünenthal GmbH ) نزّلت دواء لطيف اسمه ثاليدومايد.. الشّركة ادّعت إنّه آمن تمامًا و مُناسِب لكُلِّ حد.. 😵 و قالت إنّهم أثناء الاختبارات على الفئران ما قدروش يلاقوا جرعة من الدواء دا تمّوت الفئران.. بيزوّدوا الجرعة كل شوية و برضو الفار ما بيموتش.. من كُثر ما الدّواء آمن.. النّاس كُلّها بدأت تاخذ الدّواء دا اللي استخدامه الأساسي كان كمُهدِّئ.. خصوصًا و إنّ المُهدِّئات لها آثار جانبيّة و تفاعُلات دوائية و أعراض انسحاب لو تمّ استخدامها بشكل خاطِئ.. فلازم تتاخذ تحت إشراف طبيب مُتخصّص.. المهم النّاس فرحت بالمُهدِّئ الآمن الجميل دا لغاية ما حصلت الكارثة.. 😰 سنة 1962.. السيّدات اللي أخذوا الثاليدومايد و همّا حوامِل وضعوا أطفال مشوّهين.. المُهدِّئ الآمن طلع بيشوّه الأجنّة.. 💔 رغم إنّ دي كانت كارثة بكل المقاييس و الدّواء اتسحب و الشّركة خسرت ملايين لإنّ هيئة الدّواء و الغذاء أجبرتها تقدّم تعويضات ماديّة للضّحايا إلّا إنّ العالم كله اتعلّم من الكارثة دي.. و المراحل اللي الدّواء بقى يمرّ بيها دلوقتي عشان ينزل السّوق بقت أكثر تعقيدًا.. و عرفنا إنّ بعض الأدوية ما تنفعش للسيدات الحوامل أو المُرضِعات.. و بقينا أكثر وعيًا بآثار الدّواء الجانبيّة و أكثر قدرة على تلافيها.. سواءً كمُختصّين في الرّعاية الصّحية أو كمُتلقّين لها.. لذلك حقول لكم على بعض الأمثلة.. لأدوية لها آثار جانبيّة و ازاي المفروض نتلافاها.. 🔴 لو الطّبيب كتب أدوية سلفا وماقلش للمريض يشرب مية كتير أثناء فترة العلاج لإنّ مركبات السلفا بتتركز في الكلي وممكن تسبب التهاب كلوي وحصوات.. 🔴 لو كتبله مضاد حيوي من مجموعة سيبروفلوكساسين ونسي يحذره من الخروج والتعرض للشمس أثناء الظهيرة أو استخدام واقي شمس لإنّ أثناء فترة العلاج بالأدوية دي بيكون المريض عنده حساسية لضوء الشمس وممكن تسبب له حروق في الوجه والجلد وتؤذي العين.. 🔴 لو كتبله مضاد حيوي اسمه زيثروكان أو زيسروسين أو أزيثرومايسين ونسي يقوله تاخدها بعد الأكل بساعتين لإنّه لو أخذها بعد الأكل مباشرة حيفسد مفعولها.. 🔴 لو كتب لابنك مضاد حيوي زي هاي بيوتك أو اوجمنتين شراب أو أيّ حاجه بنفس تركيبتهم ونسي يقولك احفظه في التلاجه مباشرة بعد الحل لإنّك لو نسيته برا التلاجة حيبوظ على طول ولازم ترميه أول مالونه يتحول من الأبيض للأصفر الغامق.. 🔴 لو كتبلك أقراص مضادة للالتهابات بيكتبها كتير أطبّاء الأسنان والعظام وتخصصات أخرى اسمها الفنترن أو أمبيزيم ونسي يقولك تاخدها قبل الأكل بساعة أو بعد الأكل بساعتين لإنّ أقلّ من كدا مش حتستفيد منها نهائياً لإنّها إذا اتاخدت مع الأكل حتحلل البروتينات اللي في الأكل بدل من البروتينات المسببة للورم فلازم تكون المعدة خالية.. 🔴 لو الدكتور أو الصيدلي أعطاكِ حاجة مسكنة للألم والصداع من مجموعة ديكلوفيناك زي كتافلام أو مجموعة كيتوبروفين زي باي الكوفان ونسي أنك بترضعي وخصوصا لو طفل حديث الولادة لإنّ الأدوية دي حتسبب لابنك ارتجاع و حرقان و مغص و انتفاخ و حيفضل يعيّط كلّ ما ترضّعيه و حتدوخي عشان تعرفي ايه السّبب و الدّواء بتاعك هو السبب.. 🔴 لو كتبلك دواء مسكن بروفين ونسي يسألك هل بتاخد أي نوع أسبرين للسيولة أم لا لإنّ البروفين بيلغي تأثير الأسبرين فلو كنت مريض بالقلب أو الضغط ومحتاج تأثير الأسبرين ما تاخدش معاه بروفين في نفس الوقت.. ‎ /لو تعرفوا حدّ بياخذ أدوية بدون مُراجعة الطّبيب ‎الصّيدلي.. أو حد كبير في السنّ و بياخذ أدوية كثير في نفس الوقت أو عنده مشاكل في الكبد/الكلى أو سيدة حامل شاركوا معاهم البوست دا.. و انصحوهم يراجعوا أدويتهم باستمرار مع مختصّ.. و دمتم سالمين و أصحّاءَ دومًا.. 🌸 #طب_ولا_عك #شير_في_الخير #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
31	هل انت مكتئب؟😔 - الحزن والزعل والإكتئاب والبايبولار وأشياء أخرى - حوار مع دكتور	حاسس انك مضغوط نفسياً ومكتئب الفترة دي من حياتك؟بتجيلك فترات تقفل على نفسك وتقعد تعيط؟ أو تقعدي تعيطي؟حاسس انك وحيد او منعزل او الناس مش فاهماك؟ حاس	uploads/0jot2_UgnqxeE.jpg	El Doctor	MjB3eZQ9jJc	2021-05-22 20:00:12.365+02	2021-05-22 20:00:13.014+02	2021-05-22 20:00:13.238+02	حاسس انك مضغوط نفسياً ومكتئب الفترة دي من حياتك؟<br>بتجيلك فترات تقفل على نفسك وتقعد تعيط؟ أو تقعدي تعيطي؟<br>حاسس انك وحيد او منعزل او الناس مش فاهماك؟ حاسس بالغربة؟ أو انت فعلاً في غربة؟<br><br>يبقى انت كده عنك اكتئاب ومحتاج علاج؟<br><br>تعالو نشوف..<br><br>ضيفنا النهاردة:<br>د.أحمد العوضي<br>أخصائي الطب النفسي - أكاديمي زائر في جامعة ووريك - وعضو الجمعية الملكية للأطباء النفسيين في بريطانيا<br>و مدير مؤسسة "لا تحزن" للاستشارات النفسية<br>https://www.facebook.com/LaTahzan.Centre/<br><br><br>شير الفيديو في كل مكان.. واعمل منشن لحد تعرفه ممكن يستفيد منه.. أو ابعته بينك وبين حبايبك على واتساب عشان تفيد الناس منه بشكل شخصي..<br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>لو حضرتك  دكتور او في مهنة صحية او طالب في كلية طبية.. <br>نتشرف باشتراكك في القناة الجديدة "للدكاترة فقط"..<br>https://www.youtube.com/channel/UCl2w97N1-Knk4ZI_IPCS9WQ<br>وهناك.. اختار ايه يكون الفيديو الجاي..<br><br>الفيديو سيتم عرضه في نفس الوقت على قناة "الدكاترة".. وتقدر تشوفه هنا أو هناك مؤقتاً.. بعد كده كل فيديوهات الحوارات مع الأطباء "إسأل الخبير" هتكون على قناة "الدكاترة" فقط..<br>فرجاءاً.. اشترك في قناة الدكاترة لو لسه ماشتركتش:<br>https://www.youtube.com/channel/UCw-BsooDwtOWVWorGzm1QWQ<br><br>وأخيرا..<br>تابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنساش.. شير الفيديو على قد ماتقدر.. وهات حبايبك يشتركو في القناة.. عشان اللي جاي هيعجبك ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/MjB3eZQ9jJc	PT24M28S	0	1	0	0	1	1	ar	\N	1	\N
107	احمي نفسك من فيروس كورونا | فيديو 360 درجة | يفضل المشاهدة بنظارات الواقع الافتراضي	كيف تحمي نفسك من فيروس كورونا الجديد - كوفيد19؟؟رسالة مبسطة في دقيقتين.. في أول فيديو تعليمي طبي عربي بتقنية الواقع الافتراضي.. جزيل الشكر لشركة بر	uploads/0jot2_yH8RVH7.jpg	El Doctor	2mIOaJUelp0	2021-05-22 21:46:06.433+02	2021-05-22 21:46:07.421+02	2021-08-16 09:31:57.119536+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/2mIOaJUelp0	PT2M18S	0	2	0	0	1	1	ar	\N	1	\N
71	ازاي نحافظ على معدّل كويس من فيتامين دال في جسمنا و نتجنّب نقصه	تعرفوا إنّ نقص فيتامين دال ممكن يكون سبب في الشّعور بالإرهاق و الاكتئاب و تساقط الشّعر و آلام العضلات مش بسّ هشاشة العظام..؟ وظيفة فيتامين دال الرّئيس	uploads/0jot2_laKwOp3.jpg	El Doctor	zy-nhfth-aal-maadl-koys-mn-fytmyn-dl-fy-gsmn-o-ntg	2021-05-22 21:29:28.152+02	2021-05-22 21:29:28.695+02	2021-05-22 21:29:28.89+02	تعرفوا إنّ نقص فيتامين دال ممكن يكون سبب في الشّعور بالإرهاق و الاكتئاب و تساقط الشّعر و آلام العضلات مش بسّ هشاشة العظام..؟ وظيفة فيتامين دال الرّئيسيّة هي المحافظة على سلامة العظام.. لإنّه بيزوّد امتصاص الكالسيوم من الأمعاء و ترسّبه في العظام و بالتّالي نموّ العظام بشكل سليم عند الأطفال و المُحافظة على نسب الكالسيوم فيها عند البالغين.. لكن دا مش الدّور الوحيد.. فيتامين دال مهمّ جدًّا في حاجات ثانية كثير.. زيّ إنّه بيقوّي الجهاز المناعي و كمان ليه دور في الحفاظ على سلامة العضلات و اعتدال المود و نموّ الشّعر.. طيب.. ازاي نحافظ على معدّل كويس من فيتامين دال في جسمنا و نتجنّب نقصه..؟ إليكم شوية حاجات لطيفة ممكن نعملها 🔴 نتعرض للشّمس يوميًّا لمدّة 10-15 دقيقة.. 🔴 ناكل الأطعمة الغنيّة بفيتامين دال زيّ التونة و السلمون و السردين و المشروم و صفار البيض.. 🔴 بعض الأطعمة المُعلَّبة بينضاف لها فيتامين دال زي الحليب و الزّبادي و عصير البرتقال.. لو عايزين تعرفوا المنتج اللي حتشتروه مضاف ليه فيتامين دال و لا لأ بصوا على المكوّنات.. 🔴 ممكن ناخذ مكمّلات غذائيّة تحتوي على فيتامين دال لو بدأنا نشتكي من أعراض و لقينا النّسبة قليلة فعلاً.. لذلك يُنصح بالمُتابعة مع مختصّ في حالة أخذ المكمّلات الغذائية.. حافظوا على صحّتكم و شاركوا البوست دا مع أيّ حدّ تعرفوه مش بيحب يخرج في الشمس.. و دمتم أصحاء و سالمين.. 🌸 #طب_ولا_عك #شير_في_الخير #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
78	مشاكل العين كثيرة جدا من اشهرها و اكثرها حدوثا الماء الأبيض	مشاكل العين كثيرة جدا من اشهرها و اكثرها حدوثا ال....... Cataracts و المعروف بالماء الأبيض بيكون عبارة عن غيامة او عتمة على عدسة العين، و تكون رؤية ال	uploads/0jot2_rqJ4sGQ.jpg	El Doctor	mshkl-laayn-kthyr-gd-mn-shhrh-o-kthrh-hdoth-lm-lab	2021-05-22 21:38:23.277+02	2021-05-22 21:38:23.955+02	2021-05-22 21:38:24.061+02	مشاكل العين كثيرة جدا من اشهرها و اكثرها حدوثا ال....... Cataracts و المعروف بالماء الأبيض بيكون عبارة عن غيامة او عتمة على عدسة العين، و تكون رؤية المريض رؤية ضبابية أشبه بالرؤية من خلال زجاج معتم أو غير شفاف و ده بيكون السبب فى المشاكل التى تواجه المريض فى القراءة، قيادة السيارة و رؤية التفاصيل الصغيرة. الماء الأبيض بيأثر على العين تدريجيا، فى البداية يمكن للنظارات الطبية و الأضاءة الجيدة أن تساعد على التعايش مع المرض، لكن احيانا يتطلب تدخل جراحى. طيب ... ايه هى الاعراض؟ -تشويش فى الرؤية -صعوبة الرؤية فى الظلام -حساسية العين و تأثرها بالاضاءة -هالات سوداء حول الاضاءة غالبا ما يكون السبب فى هذا المرض هو خلل فى الخلايا المسئولة عن تكوين عدسة العين نتيجة اصابة، الشيخوخة أو بعض المشاكل الوراثية و الصحية مثل مرض السكر. عرفنا السبب المسئول عن المرض ده...لكن يوجد عوامل عديدة تسهل حدوث المرض مثل -التقدم فى العمر -مرض السكر -التدخين -السمنة - ارتفاع ضغط الدم -الافراط فى شرب المواد الكحولية -استخدام الكورتيزون فى العلاج لقترة طويلة -كثرة التعرض لأشعة الشمس طب مفيش طريقة تمنع بيها حدوث المرض؟؟ للاسف لا لكن تقدر تقلل من نسبة حدوثه باتباع ما يلى... -الفحص المتكرر للعين -الاقلاع عن التدخين -الابتعاد عن شرب الكحوليات -ارتداء نظارات واقية من الشمس #طب_ولا_عك #شير_في_الخير #الدكتور #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
79	الجديرى أو جدرى الماء.....مرض يحدث نتيجة عدوى فيروسية يسببهاvaricella-zoster virus	الجديرى أو جدرى الماء.....مرض يحدث نتيجة عدوى فيروسية يسببها varicella-zoster virus يتميز المرض ده بظهور طفح جلدى و حويصلات تحتوى على سائل، و بيكون مع	uploads/0jot2_QSrLVno.jpg	El Doctor	lgdyr-ao-gdr-lmmrd-yhdth-ntyg-aado-fyrosy-ysbbhvar	2021-05-22 21:38:29.377+02	2021-05-22 21:38:30.073+02	2021-05-22 21:38:30.218+02	مشاكل العين كثيرة جدا من اشهرها و اكثرها حدوثا ال....... Cataracts و المعروف بالماء الأبيض بيكون عبارة عن غيامة او عتمة على عدسة العين، و تكون رؤية المريض رؤية ضبابية أشبه بالرؤية من خلال زجاج معتم أو غير شفاف و ده بيكون السبب فى المشاكل التى تواجه المريض فى القراءة، قيادة السيارة و رؤية التفاصيل الصغيرة. الماء الأبيض بيأثر على العين تدريجيا، فى البداية يمكن للنظارات الطبية و الأضاءة الجيدة أن تساعد على التعايش مع المرض، لكن احيانا يتطلب تدخل جراحى. طيب ... ايه هى الاعراض؟ -تشويش فى الرؤية -صعوبة الرؤية فى الظلام -حساسية العين و تأثرها بالاضاءة -هالات سوداء حول الاضاءة غالبا ما يكون السبب فى هذا المرض هو خلل فى الخلايا المسئولة عن تكوين عدسة العين نتيجة اصابة، الشيخوخة أو بعض المشاكل الوراثية و الصحية مثل مرض السكر. عرفنا السبب المسئول عن المرض ده...لكن يوجد عوامل عديدة تسهل حدوث المرض مثل -التقدم فى العمر -مرض السكر -التدخين -السمنة - ارتفاع ضغط الدم -الافراط فى شرب المواد الكحولية -استخدام الكورتيزون فى العلاج لقترة طويلة -كثرة التعرض لأشعة الشمس طب مفيش طريقة تمنع بيها حدوث المرض؟؟ للاسف لا لكن تقدر تقلل من نسبة حدوثه باتباع ما يلى... -الفحص المتكرر للعين -الاقلاع عن التدخين -الابتعاد عن شرب الكحوليات -ارتداء نظارات واقية من الشمس #طب_ولا_عك #شير_في_الخير #الدكتور #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
82	هنتكلم النهاردة عن الحروق و ازاى تتصرف بشكل صحيح فى حالة تعرضك او تعرض من حولك للاصابة بحرق.	هنتكلم النهاردة عن الحروق و ازاى تتصرف بشكل صحيح فى حالة تعرضك او تعرض من حولك للاصابة بحرق.الحروق هى واحدة من أكثر الحوادث و الاصابات التى تحدث فى ا	uploads/0jot2_y11YmKL.jpg	El Doctor	hntklm-lnhrd-aan-lhrok-o-z-ttsrf-bshkl-shyh-f-hl-t	2021-05-22 21:39:07.234+02	2021-05-22 21:39:07.845+02	2021-05-22 21:39:07.971+02	هنتكلم النهاردة عن الحروق و ازاى تتصرف بشكل صحيح فى حالة تعرضك او تعرض من حولك للاصابة بحرق.<br>الحروق هى واحدة من أكثر الحوادث و الاصابات التى تحدث فى المنازل خاصة للأطفال، و كلمة حرق مش بس معناها احساس بالألم لكن بيحصل تلف فى انسجة الجلد و بيختلف نوع الحرق حسب درجة و شدة التلف. فى 3 انواع او درجات من الحروق بتختلف حسب شدتها من الدرجة الاولى و الثانية و الثالثة الى اشدهم ضرر و خطورة و هى الحروق من الدرجة الرابعة.<br>الدرجة الاولى: احمرار الجلد فقط (لا تتكون فقاعات)<br>الدرجة الثانية: فقاعات و زيادة سمك الجلد فى بعض المناطق<br>الدرجة الثالثة: جفاف الجلد و ميله الى اللون الابيض<br>الدرجة الرابعة: نفس أعراض الدرجة الثالثة لكنها تمتد تحت الجلد لتأثر على الاوتار و العظام فى اسباب كتير مسئولة عن حدوث الحروق و هى<br>-السوائل الساخنة ( درجة الغليان)<br>- مواد كيميائية<br>- تيار كهربى<br>- اى مصدر للنار و اللهب<br>- و ممكن نتيجة التعرض الزائد لأشعة الشمس طيب نقدر نتصرف ازاى مع الحروق؟<br>1-عزل المصدر المسئول عن الحرق باسرع طريقة ممكنة<br>2- خلع الملابس و المجوهرات (خاتم، دبلة،اساور،ساعة....) حول منطقة الحرق مع تجنب حدوث اى احتكاك<br>3-تعريض المنطقة المصابة للمياه الجارية لمده لا تقل عن 15 دقيقة ( لا نستخدم الثلج ابدااااا)<br>4-تغطية الحرق بلزقة طبية لمنع الاحتكاك<br>5-فى حالة ان الألم غير محتمل بنستخدم بعض المسكنات و افضلهم<br>Paracetamol Or Ibuprofen<br>6-فى حالة ان الحرق حصل فى منطقة الوجه يفضل الجلوس عن الاستلقاء لأن ده بيساعد فى الحد من الورم طيب بعد ما تعمل الخطوات السابقة تبدأ تشوف...هل لازم تروح المستشفى ولا لأ؟<br>يتوجب الذهاب للمستشفى فى الحالات الاتية<br>-لو مساحة الحرق اكبر من كف اليد<br>-تغير لون الجلد الى الابيض او الاسود<br>-فى حالة تكون فقاعات بها سائل<br>-فى جميع حالات الحروق الكيميائية او الكهربية و يفضل الاستشارة الطبية فى حالة ان المصاب عمره تجاوز ال 60 عام او طفل تحت سن ال 5اعوام او فى حالة الحمل, اخيرا... نرجو الانتباه على اطفالنا و ابعادهم عن اى مصدر للنار سواء اعواد الثقاب، الولاعات، الشمع و غيرها و كذلك تغطية فتحات الكهرباء الغير مستخدمة و سهل الوصول اليها. #الدكتور<br>#طب_ولا_عك<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
27	في دقيقتين: 7 صفات لو شفتها في دكتور .. ماتسمعش كلامه!!	ناس كتير بتسأل عن قنوات طبية.. وعايزين يعرفو.. الدكتور "فلان" بيقول طب ولا عك؟خلينا نتفق على 7 حاجات.. لو شفتهم في دكتور.. اعرف انه بيعك.. وبيألف..	uploads/0jot2_wMqg9Qx.jpg	El Doctor	uHGSCvPYnLM	2021-05-22 19:59:08.432+02	2021-05-22 19:59:08.894+02	2021-05-22 19:59:09.087+02	ناس كتير بتسأل عن قنوات طبية.. وعايزين يعرفو.. الدكتور "فلان" بيقول طب ولا عك؟<br><br>خلينا نتفق على 7 حاجات.. لو شفتهم في دكتور.. اعرف انه بيعك.. وبيألف.. وبينصب.. وابعد عنه فوراً!!<br><br>شير الفيديو في كل مكان.. واعمل منشن لحد تعرفه بيتابع دكتور من دول!!<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br>اشترك في القناة.. واضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>تابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم بيعدها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنساش.. شير الفيديو على قد ماتقدر.. وهات حبايبك يشتركو في القناة.. عشان اللي جاي هيعجبك ان شاء الله 🙂<br><br>ساعدت في تجهيز الفيديو ده الأخت العزيزة أسماء الشريف <br>@Esma_Elsherif<br>https://www.youtube.com/channel/UCsggVchETQP56U2hPCTBIYQ<br><br>كل الشكر للأخت الكريمة مروة محي لترجمة الفيديو الى اللغة الانجليزية<br>https://www.facebook.com/marwa.elmazeny<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA	published	draft	video	,https://www.youtube.com/embed/uHGSCvPYnLM	PT7M52S	0	1	0	0	1	1	ar	\N	1	\N
84	الحصبة....مرض شديد العدوى ناتج عن الاصابة بفيروس اسمه Rubeola Virus	الحصبة....مرض شديد العدوى ناتج عن الاصابة بفيروس اسمه Rubeola Virus و الجميع عرضة للاصابة بالمرض بغض النظر عن العمر ما لم يتعرضوا له من قبل او لم يتلق	uploads/0jot2_bwxvILo.jpg	El Doctor	lhsbmrd-shdyd-laado-ntg-aan-lsb-bfyros-smh-rubeola	2021-05-22 21:39:38.328+02	2021-05-22 21:39:38.764+02	2021-05-22 21:39:38.881+02	الحصبة....مرض شديد العدوى ناتج عن الاصابة بفيروس اسمه Rubeola Virus و الجميع عرضة للاصابة بالمرض بغض النظر عن العمر ما لم يتعرضوا له من قبل او لم يتلقوا المصل(التطعيم) الخاص بالمرض، لكن معظم الاصابات تحدث للاطفال فى السن المبكر. تبدأ الأعراض بالظهور فى خلال 10 ايام من التعرض للاصابة و تتمثل الأعراض فيما يلى... -أعراض البرد العادى (العطس و الكحة و سريان الأنف) -فقدان الشهية -احساس بالتعب و الارهاق -التهاب و احمرار العين و حساسيتها للضوء -ارتفاع درجة الحرارة و التى قد تصل الى 40 درجة مئوية - ظهور بقع رمادية اللون فى الفم (مقابلة لمنطقة الخدين) عادة تظهر قبل الطفح الجلدى بيوم او اثنين بعد ملاحظة الأعراض السابقة ب 2-4 ايام يبدا الطفح الجلدى بالظهور(بقع حمراء او بنية اللون) ابتداءا بالوجه و اعلى الرقبة الى ان ينتشر فى باقى اجزاء الجسم. طيب لو اتأكدت انك مصاب بالحصبة تعمل ايه؟؟؟ اول حاجه لازم تعزل نفسك عن الناس خاصة الاطفال و الحوامل لمدة لا تقل عن 4 ايام بعد ظهور الطفح لا يوجد علاج محدد للحصبة حيث تتحسن الحالة في غضون 7 إلى 10 أيام، لكن نقدر ناخد علاج للحد من الاعراض و تخفيفها.... ازاى؟؟ -مسكن للالم و خافض للحرارة .... Paracetamol or Ibuprofen -الاكثار من شرب السوائل لتجنب الجفاف -المشروبات الساخنة خاصة التى تحتوى على العسل و الليمون للحد من اعراض البرد فى بعض الحالات اذا لاحظت الاعراض الاتية يجب التوجه لأقرب مؤسسة صحية.. -قصر النفس -الم حاد فى منطقة الصدر -خروج دم مع الكحة اخيرا ازاى تحمى اطفالك من الحصبة؟ MMR vaccine ده مصل لازم لجميع الاطفال فى سن 12-13 شهر و تعاد الجرعة مرة اخرى عند سن ثلاث سنوات و اربعة اشهر #الدكتور #طب_ولا_عك #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
62	من تراث العراب د.أحمد خالد توفيق الأستاذ بكلية طب طنطا والأديب الذي لن يتكرر	يحكي صديقي أستاذ جراحة العظام عن قريبه المسن المشلول حبيس الفراش منذ أعوام، وكيف أن ابن الرجل طلب رأي أحد أصدقائه من طلبة الشريعة بصدد عمل حجامة لأبيه	uploads/0jot2_954CfSk.jpg	El Doctor	mn-trth-laarb-dahmd-khld-tofyk-lastth-bkly-tb-tnt	2021-05-22 21:26:59.281+02	2021-05-22 21:27:00.37+02	2021-05-22 21:27:00.508+02	إنهم مستمرون ‍ إنهم مستمرون!... أكتب هذه الكلمات في غرفة مغلقة، وبرغم هذا يتسلل دخان قش الارز اللعين إلى كل ركن فلو خرجت إلى الشرفة لأصابك الهلع. نعم يا سادة .. محافظة الغربية أيضًا تعاني من حرق قش الأرز لكن أحدًا لا يتكلم عنها، فهي مجرد محطة استعداد وتدريب كي يصير محافظها محافظ الجيزة لا أكثر.. عندها تبدأ مشاكله مع تلك المحافظة عالية الصوت. أحمد الله على أنني لست مصابًا بالربو وإلإ لقضيت نحبي منذ أسبوع. أما مرضى الربو فلهم الله .. إن المستشفيات تعج بهم. في أوائل السبعينات ظهرت تقليعة في طوكيو – حيث معدلات التلوث الأعلى - هي زجاجة بها أكسجين نقي تشتريها من البائع لتشم الهواء بضع دقائق. أي أنك تقف هناك مع أصدقائك وترش رشة أكسجين جريئة. يبدو أن هذه الظاهرة ستبدأ عندنا وعندها تكون مصر أول دولة تبيع الهواء في زجاجات فعلاً، ولسوف يصير شراء الهواء من البقال جزءًا من نشاطك اليومي. في عصر الاهتمام بالبيئة وكل هذه المؤتمرات واللافتات في كل مكان تنذرني بخراب بيتي لو أشعلت لفافة تبغ، يتساءل المرء عما إذا كان دخان حرق الأرز هذا أكثر أمنًا وتحضرًا من السجائر فعلاً. في الكتب التي تتكلم عن علامات الساعة تجد علامة الضباب الأبيض الذي يتسلل للبيوت فيعمي العيون، ويختنق به الكفار والعصاة أما المؤمنون فلا يلاحظونه. سوف تزعم الحكومة إذن أنه لا يوجد ضباب ولا حاجة، وأنها تشك في إيماننا .. لا عجب، فهؤلاء القوم مستمرون للأبد ولن يعوقهم شيء .. وسط هذا الجو الخانق الكئيب تشعر بأنه لا لزوم للماضي ولا جدوى من الغد، وأن الموت هو الحل الوحيد أمامك، لكنك تعرف أنهم لن يتركوك في سلام .. سيفتحون القبر ويدفنون فوقك واحدًا من قيادات المجالس المحلية أو الحزب الوطني.. لا غرابة فهم مستمرون. مع كل هذه الكآبة والقرف، تفتح البريد الالكتروني لتجد هذا الخبر العظيم الذي تم توزيعه على 58468 عنوانًا على الأقل: "طبيب سوداني بإنجلترا يكتشف علاجاً لمرض السكري وداء الصرع ! العقار الجديد يقضي على السكري نهائياً خلال 2- 6 أشهر فقط!! " السكري والصرع معًا ؟..نهائيًا ؟.. مش واسعة شوية ؟..كأن هذا كان ينقصك !.. ثم منذ متى يمكن علاج السكري نهائيًا ؟.. أفضل الحلول الموجودة قائمة على تعويض الهرمون .. يعني العلاج مدى الحياة .. تقرأ الخبر بعناية فتجد أن طبيبًا سودانيًا يدعى (طارق أرباب) بمستشفى همر سميث التابع لكلية الطب جامعة لندن، نجح في اختراع أول عقار في العالم لعلاج مرض السكري بصورة نهائية، وحصل على براءة اختراع من كل من بريطانيا والولايات المتحدة الأمريكية اللتين سجل بهما الاختراع تحت الرقم (4065834). الحوار مع هذا الطبيب الظاهرة يقول إنه اكتشف أن إنزيم الأميليز يحول النشا إلى سكر ، وهذا يمكن إثباته عن طريق اليود ‍!.. هذه التجربة يعرفها كل طالب ابتدائي على كل حال. استطاع أرباب تحويل الأميليز إلى عقار شاف (نهائيًا) للسكر . يقول إن مرضى السكري يعانون من نقص في المادة اللعابية التي تهضم السكر والنشا. لا أريد أن أبدو متعصبًا وغراب بين، لكنني عدت إلى العلامات المؤكدة على العلم الزائف التي وضعها روبرت بارك أستاذ الفيزياء بجامعة ميريلاند صاحب كتاب (علم الفودوو: الطريق من الحماقة إلى الخديعة) وهو كتاب شهير جدًا: العلامة الأولى: المكتشف يقدم إدعاءاته لوسائل الإعلام مباشرة: العلم يعتمد على أن يقدم العالم أفكاره الجديدة لتدقيق العلماء الآخرين؛ إذ يتوقع العلماء أن يقدم زملاؤهم الأفكار لهم أولاً. بالفعل تجد أن الأخ أرباب يقدم بحثه لمجلة سودانية شهيرة، لكنك لا تجد شيئًا عن أبحاثه في أية مجلة طبية. لقد زعم أن المجلة الطبية البريطانية BMJ قبلت بحثه لكن هذا لم يحدث كما سنرى حالاً. العلامة الثانية:المكتشف يقول إن المؤسسات الكبرى تحاول حجب عمله: هذا الباحث يؤكد أنه سجل اختراعه في الولايات المتحدة خشية من أن تسرقه الشركات الكبرى. العلامة الثالثة: المكتشف أجرى أبحاثه وحده: صورة العالم العبقري الذي يسهر الليل وحده في قبو هي صورة تناسب أفلام هوليوود للخيال العلمي، لكن لا يمكن أن تتحقق في الواقع. العلامة الرابعة: المكتشف مضطر لأن يصمم قوانين طبيعة جديدة يفسر بها الظاهرة: يلقي العالم ذنب انتشار السكري على تغيير المواد الغذائية، وتخزين الغذاء لفترات طويلة في الثلاجات، واستخدام المواد الكيمائية في الحفاظ على المواد الغذائية. ويقول إن الدقيق صعب الهضم، و إذا لم يُهضم يترسب في الأنسجة والشرايين الدقيقة والكبيرة داخل الجسم، فيكون الشخص عرضة لأمراض القلب والفشل الكلوي وأمراض الدماغ بالاضافة الى السكري. وهذا يمكن حله بإضافة بعض كربونات الصوديوم التي تحلل الدقيق في الجسم لأجزاء صغيرة . ما هذا الكلام ؟.. يبدو مهمًا منطقيًا لكنه ليس كذلك، ولن يرضى أي كيميائي حيوي عن هذا الكلام الفارغ .. وبنفس المنطق الغريب يقول أرباب: البحوث المعملية الحديثة أثبتت أن هناك علاقة شبه قوية بين ضيق الشرايين الذي يصيب القلب ومرض الصرع الذي يحدث نتيجة ضيق في شرايين الدماغ ، وليس نتيجة شحنات كهربائية في الدماغ كما كان يعتقد في السابق. ولذلك بعد الاكتشاف الجديد لحقيقة مرض الصرع، ابتكرت عملية جراحية جديدة لمعالجة الصرع تعتمد على توسيع شرايين الدم داخل الدماغ !. أي طبيب يعرف أن هذا كلام عجيب .. هكذا وجدت أن هذا العالم حقق أربعًا من آيات العلم الزائف من سبع وضعها (بارك). على أنني قررت أن أبحث عن اسمه أكثر في الإنترنت، فوجدت موقعًا سودانيًا محترمًا عقلانيًا يذكر هذه الحقائق: 1- اتصلوا بمستشفى هامر سميث يسألون عن (أرباب) هذا فكان الرد أنه لا يوجد أحد بهذا الاسم عندهم !.. ثم تذكروا في خطاب آخر أن هناك واحدًا لكنه يعمل بعقد شرفي وهو على الأرجح ممارس عام. 2- رقم براءة الاختراع المذكورة هي لـ (أستيك ساعة) ! لا أعتقد أنها الطريقة المثلى لعلاج السكري والصرع. 3- المجلة الطبية البريطانية لم تنشر أي بحث لطبيب اسمه أرباب. أنهيت قراءة هذه المعلومات ، وفتحت النافذة لأستنشق المزيد من السحابة السوداء التي لم تعد بهذا السوء.. هؤلاء القوم مستمرون .. مستمرون .. نفس الأكاذيب والادعاءات والتلفيق.. لا ألوم المجلة لحظة؛ فمن أين يعرف غير المتخصص الحقيقة وسط هذا الكلام الكبير كله؟.. وقد رأينا جريدة الشعب عندنا تقع في ذات الخطأ، ورأينا أخبار اليوم وغيرها .. كنت أعتقد أن الأخوة السودانيين أفلتوا من معظم تلك الأمراض المصرية لكن اتضح أن هذا داء عربي أصيل كما يبدو. لقاءات صحفية وأمل زائف لمرضى الصرع والسكري ومنطق مغلوط، وهذا الرجل يعرف أنه يكذب .. ولو لم يكن يعرف أنه يكذب فهو مخبول تمامًا. المهم أننا نستحق ما يحدث لنا.. نستحق السحابة السوداء ونستحق حكوماتنا بالتأكيد، فلا أمل في الخلاص ما لم نتغير أولاً. (من مقالات أستاذ هذا الجيل.. العبقري الدكتور أحمد خالد توفيق رحمه الله) #العراب #احمد_خالد_توفيق #الدكتور #محمد_منصور #الأعشاب #الطب_البديل #طب_ولا_عك	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
146	أنا أكره الأدوية النفسية | أضرار علاجات الطب النفسي | في دقيقتين	هل فيه حد عاقل يقبل ياخد أدوية نفسية تتحكم فيه؟كلنا عارفين أضرار الأدوية النفسية و خصوصاً لما الواحد يمشي عليها طول العمر!ركز معايا دقيقتين وقل لي ر	uploads/0jot2_98foiWf.jpg	El Doctor	duMgFUq8Qgc	2021-05-22 21:52:54.759+02	2021-05-22 21:52:55.75+02	2021-09-26 12:14:16.175129+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/duMgFUq8Qgc	PT2M4S	0	2	0	0	1	1	ar	\N	1	\N
85	القشرة من أكثر مشاكل الشعرالمُنتشرة و بتسبب الحرج لو ما اتعالجتش	حنتكلّم النّهارة عن مشكلة بيعاني منها كثير منّنا و بتسبب الحرج لو ما اتعالجتش.. 😖 القشرة.. من أكثر مشاكل الشعر المُنتشرة.. طيب ايه سببها..؟ لغاية دلو	uploads/0jot2_YwJEdvV.jpg	El Doctor	lkshr-mn-akthr-mshkl-lshaarlmntshr-o-btsbb-lhrg-lo	2021-05-22 21:39:47.304+02	2021-05-22 21:39:47.66+02	2021-05-22 21:39:47.754+02	الحصبة....مرض شديد العدوى ناتج عن الاصابة بفيروس اسمه Rubeola Virus و الجميع عرضة للاصابة بالمرض بغض النظر عن العمر ما لم يتعرضوا له من قبل او لم يتلقوا المصل(التطعيم) الخاص بالمرض، لكن معظم الاصابات تحدث للاطفال فى السن المبكر. تبدأ الأعراض بالظهور فى خلال 10 ايام من التعرض للاصابة و تتمثل الأعراض فيما يلى... -أعراض البرد العادى (العطس و الكحة و سريان الأنف) -فقدان الشهية -احساس بالتعب و الارهاق -التهاب و احمرار العين و حساسيتها للضوء -ارتفاع درجة الحرارة و التى قد تصل الى 40 درجة مئوية - ظهور بقع رمادية اللون فى الفم (مقابلة لمنطقة الخدين) عادة تظهر قبل الطفح الجلدى بيوم او اثنين بعد ملاحظة الأعراض السابقة ب 2-4 ايام يبدا الطفح الجلدى بالظهور(بقع حمراء او بنية اللون) ابتداءا بالوجه و اعلى الرقبة الى ان ينتشر فى باقى اجزاء الجسم. طيب لو اتأكدت انك مصاب بالحصبة تعمل ايه؟؟؟ اول حاجه لازم تعزل نفسك عن الناس خاصة الاطفال و الحوامل لمدة لا تقل عن 4 ايام بعد ظهور الطفح لا يوجد علاج محدد للحصبة حيث تتحسن الحالة في غضون 7 إلى 10 أيام، لكن نقدر ناخد علاج للحد من الاعراض و تخفيفها.... ازاى؟؟ -مسكن للالم و خافض للحرارة .... Paracetamol or Ibuprofen -الاكثار من شرب السوائل لتجنب الجفاف -المشروبات الساخنة خاصة التى تحتوى على العسل و الليمون للحد من اعراض البرد فى بعض الحالات اذا لاحظت الاعراض الاتية يجب التوجه لأقرب مؤسسة صحية.. -قصر النفس -الم حاد فى منطقة الصدر -خروج دم مع الكحة اخيرا ازاى تحمى اطفالك من الحصبة؟ MMR vaccine ده مصل لازم لجميع الاطفال فى سن 12-13 شهر و تعاد الجرعة مرة اخرى عند سن ثلاث سنوات و اربعة اشهر #الدكتور #طب_ولا_عك #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
112	الحمية وزيادة الوزن | طريقة نزول الوزن في رمضان | هل بسبب وزنك الزائد ممكن الأطباء يرفضو علاجك؟	الموضوع خطير فعلاً.. واعتذر انه قد يكون صادم للبعض.. لكنها الحقيقة..وفرصتك في الحياة بتقل لمجرد ان وزنك زايد!!انا هنا مش بتكلم عن مضاعفات السمنة ال	uploads/0jot2_rUkGoq8.jpg	El Doctor	zaHfIHf-fOk	2021-05-22 21:46:39.531+02	2021-05-22 21:46:40.603+02	2021-05-22 21:46:40.826+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/zaHfIHf-fOk	PT12M18S	0	1	0	0	1	1	ar	\N	1	\N
115	🌷 وافعلوا الخير | هدية الأطباء للمرضى في العشر الأواخر من رمضان | علاج الحالات الصعبة المحتاجة مجانا	بمناسبة العشر الأواخر من رمضان.. تبرع عدد من الأطباء المتخصصين والاستشاريين في عدد من التخصصات بعلاج الحالات الصعبة التي لا تستطيع أن تصل إلى التشخيص	uploads/0jot2_8o4MdSa.jpg	El Doctor	HHNZksrUwPY	2021-05-22 21:46:52.359+02	2021-05-22 21:46:53.381+02	2021-05-22 21:46:53.574+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/HHNZksrUwPY	PT5M26S	0	1	0	0	1	1	ar	\N	1	\N
92	لو حصل لنا نزيف من الأنف نعمل ايه..؟ 🤧طب نرجع راسنا لورا و لا نحنيها لقدام..؟ 🤔أوّل حاجة تعالوا	لو حصل لنا نزيف من الأنف نعمل ايه..؟ 🤧 طب نرجع راسنا لورا و لا نحنيها لقدام..؟ 🤔أوّل حاجة تعالوا نعرف النّزيف دا بيحصل ليه..الرُّعاف أو نزيف الأنف	uploads/0jot2_6ds8KCK.jpg	El Doctor	lo-hsl-ln-nzyf-mn-lanf-naaml-yh-tb-nrgaa-rsn-lor-o	2021-05-22 21:42:24.65+02	2021-05-22 21:42:26.348+02	2021-05-22 21:42:26.476+02	لو حصل لنا نزيف من الأنف نعمل ايه..؟ 🤧 طب نرجع راسنا لورا و لا نحنيها لقدام..؟ 🤔<br>أوّل حاجة تعالوا نعرف النّزيف دا بيحصل ليه..<br>الرُّعاف أو نزيف الأنف..<br>✔️ بيحصل أكثر في الأطفال ( بالذّات من سنتين لغاية سنّ البلوغ كدا ) و أيضًا كبار السنّ..<br>✔️ أغلب حالات الرُّعاف بتكون من الأوعية الدّموية في الجزء الأمامي من الأنف ( نزيف أمامي ).. و دي ممكن نتعامل معاها ببعض الإسعافات الأولّية اللي حنقولها دلوقتي..<br>✔️ نادرًا ما بيكون النّزيف خلفي ( الدّم جاي من الأوعية الدموية في الجُزء الخلفي للأنف و بينزل على الحلق و دا أصعب في التعامل معاه و بيحتاج علاج في المستشفى.. )<br>✔️ ايه أشهر أسباب الرُّعاف..؟<br>🔴 ضعف الأوعية الدّموية في الغشاء المُبطِّن للأنف..<br>🔴 تعرُّض هذه الأوعية للخدش إمّا بسبب جسم غريب أو بسبب رضّة ( خبطة )..<br>🔴 جفاف الأنف و دا بيحصل لمّا الجو ما يكونش فيه رطوبة..<br>🔴 التهاب الجيوب الأنفية و حساسية الأنف قد تُسبب رُعاف بسبب الرّشح المُستمرّ..<br>🔴 أمراض سيولة الدّم ( زيّ الهيموفيليا )..<br>🔴 ممكن يحصل من الأدوية المانعة للتجلّط ( زيّ الماريفان )<br>🔴 اللحمية أو وجود ورم في الأنف.. لو مافيش حالة مُسببة للنّزيف دا تستدعي الانتباه و الموضوع مش بيتكرّر كثير حعمل بعض الإسعافات الأوليّة:<br>🔴 نحني الرّأس للأمام مش للخلف.. لإنّ لو رجّعت رأس المصاب للخلف ممكن تعرّضه لإنّه يبلع الدّم و دا غلط..<br>🔴 نضغط على فتحتي الأنف لمدّة من ٥-١٠ دقائق..<br>🔴 ممكن أيضًا استخدام بخاخة قابضة للأوعية الدّموية ( زي اوترفين ).. ✔️ بعد كدا كإجراء وقائي ممكن نستخدم بخاخة بيبي سالاين لترطيب الأنف و ممكن ناخذ دواء مقوّي للأوعية الدّموية.. في نهاية البوست كالعادة شاركوه مع العائلة و الأصدقاء و دمتم سالمين و أصحاء.. 😄🌸 #الدكتور<br>#طب_ولا_عك<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
93	نتصرّف ازاي لو طفلنا بيجي له التهابات من الحفاضات..؟ 👶🏻✔️ التهاب الحفاضات من أكثر المشاكل شيوعًا	نتصرّف ازاي لو طفلنا بيجي له التهابات من الحفاضات..؟ 👶🏻 ✔️ التهاب الحفاضات من أكثر المشاكل شيوعًا عند الأطفال.. و ممكن يكون ليه كذا سبب:🔴 التهاب ج	uploads/0jot2_qM90Txz.jpg	El Doctor	ntsrf-zy-lo-tfln-bygy-lh-lthbt-mn-lhfdt-lthb-lhfdt	2021-05-22 21:42:30.008+02	2021-05-22 21:42:30.674+02	2021-05-22 21:42:30.821+02	لو حصل لنا نزيف من الأنف نعمل ايه..؟ 🤧 طب نرجع راسنا لورا و لا نحنيها لقدام..؟ 🤔<br>أوّل حاجة تعالوا نعرف النّزيف دا بيحصل ليه..<br>الرُّعاف أو نزيف الأنف..<br>✔️ بيحصل أكثر في الأطفال ( بالذّات من سنتين لغاية سنّ البلوغ كدا ) و أيضًا كبار السنّ..<br>✔️ أغلب حالات الرُّعاف بتكون من الأوعية الدّموية في الجزء الأمامي من الأنف ( نزيف أمامي ).. و دي ممكن نتعامل معاها ببعض الإسعافات الأولّية اللي حنقولها دلوقتي..<br>✔️ نادرًا ما بيكون النّزيف خلفي ( الدّم جاي من الأوعية الدموية في الجُزء الخلفي للأنف و بينزل على الحلق و دا أصعب في التعامل معاه و بيحتاج علاج في المستشفى.. )<br>✔️ ايه أشهر أسباب الرُّعاف..؟<br>🔴 ضعف الأوعية الدّموية في الغشاء المُبطِّن للأنف..<br>🔴 تعرُّض هذه الأوعية للخدش إمّا بسبب جسم غريب أو بسبب رضّة ( خبطة )..<br>🔴 جفاف الأنف و دا بيحصل لمّا الجو ما يكونش فيه رطوبة..<br>🔴 التهاب الجيوب الأنفية و حساسية الأنف قد تُسبب رُعاف بسبب الرّشح المُستمرّ..<br>🔴 أمراض سيولة الدّم ( زيّ الهيموفيليا )..<br>🔴 ممكن يحصل من الأدوية المانعة للتجلّط ( زيّ الماريفان )<br>🔴 اللحمية أو وجود ورم في الأنف.. لو مافيش حالة مُسببة للنّزيف دا تستدعي الانتباه و الموضوع مش بيتكرّر كثير حعمل بعض الإسعافات الأوليّة:<br>🔴 نحني الرّأس للأمام مش للخلف.. لإنّ لو رجّعت رأس المصاب للخلف ممكن تعرّضه لإنّه يبلع الدّم و دا غلط..<br>🔴 نضغط على فتحتي الأنف لمدّة من ٥-١٠ دقائق..<br>🔴 ممكن أيضًا استخدام بخاخة قابضة للأوعية الدّموية ( زي اوترفين ).. ✔️ بعد كدا كإجراء وقائي ممكن نستخدم بخاخة بيبي سالاين لترطيب الأنف و ممكن ناخذ دواء مقوّي للأوعية الدّموية.. في نهاية البوست كالعادة شاركوه مع العائلة و الأصدقاء و دمتم سالمين و أصحاء.. 😄🌸 #الدكتور<br>#طب_ولا_عك<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
99	هنتكلم النهاردة عن الذبحة الصدرية	..... الذبحة هو نوع من أنواع الم الصدر الشديد الناتج عن ضعف تدفق الدم الى القلب.و الذبحة عرض من اعراض امراض شريان القلب التاجى.الالم الناتج عن الذبح	uploads/0jot2_K6Kd1I3.jpg	El Doctor	hntklm-lnhrd-aan-lthbh-lsdry	2021-05-22 21:43:54.138+02	2021-05-22 21:43:54.689+02	2021-05-22 21:43:54.819+02	..... الذبحة هو نوع من أنواع الم الصدر الشديد الناتج عن ضعف تدفق الدم الى القلب.<br>و الذبحة عرض من اعراض امراض شريان القلب التاجى.<br>الالم الناتج عن الذبحة الصدرية بيكون شبيه بوجود حمل ثقيل على الصدر او الشعور بعصر منطقة الصدر.<br>بالرغم من كثرة تكرار حدوث الذبحة الا انه يصعب تمييزها عن باقى الام الصدر حتى الان،لذلك يفضل سرعة استشارة الطبيب فى حالة الشعور بألم مستمر فى الصدر. طب ايه الأعراض؟<br>⁦1️⃣⁩ألم شديد و حرقان فى منطقة الصدر<br>⁦2️⃣⁩الم فى الذراعين و الرقبة واحيانا يمتد الالم للظهر<br>⁦3️⃣⁩صعوبة التنفس<br>⁦4️⃣⁩الشعور بالدوخة و الدوران<br>⁦5️⃣⁩التعرق المستمر ايه انواع الذبحة؟<br>⁦1️⃣⁩الذبحة المستقرة<br>⁦2️⃣⁩الذبحة الغير مستقرة<br>⁦3️⃣⁩الذبحة الغير معتادة الذبحة المستقرة⁦‼️⁩<br>-تحدث نتيجة بذل مجهود كبير و التحميل الزائد على عضلة القلب<br>-تستمر لمدة قصيرة(5 دقائق او اقل)<br>-يختفى الألم و الاعراض بالراحة دون الحاجة للأدوية الذبحة الغير مستقرة⁦‼️⁩<br>-غير متوقعة الحدوث<br>-تحدث اثناء الراحة<br>-أشد خطورة من الذبحة المستقرة و تستمر لمدة اطول(30 دقيقة او اكثر)<br>-احيانا ما تتسبب فى نوبة قلبية ايه اسباب الذبحة؟<br>عرفنا انها بتحصل نتجية انخفاض معدل تدفق الدم الى القلب، الدم مسئول عن نقل الاكسجين الى القلب، وصول كمية غير كافية من الاكسجين تتسبب فى حدوث حالة مرضية تعرف ب الاقفار.(الاسكيميا)<br>انخفاض تدفق الدم ده سببه ضيق فى الشرايين نتجية بعض الترسبات بها و الذى يعرف ب تصلب الشرايين مما يؤدى لانخفاض مستوى الاكسجين فى القلب و عدم وجود فرصة لعضلة القلب أن تستريح. ايه العوامل المساعدة لحدوث الذبحة؟<br>⁦1️⃣⁩التدخين و الافراط فى المشروبات الكحولية<br>⁦2️⃣⁩مرض السكر<br>⁦3️⃣⁩ارتفاع ضغط الدم<br>⁦4️⃣⁩ارتفاع مستوى الكوليستيرول فى الدم<br>⁦5️⃣⁩وجود تاريخ وراثى لأمراض القلب فى العائلة<br>⁦6️⃣⁩التقدم فى العمر<br>⁦7️⃣⁩زيادة الضغط العصبى و التوتر<br>⁦8️⃣⁩السمنة المفرطة<br>⁦9️⃣⁩غياب العامل الرياضى و النشاط من حياتنا اليومية ازاى نقدر نتجنب الاصابة بالذبحة؟<br>-الاقلاع عن التدخين و الحد من المشروبات الكحولية🥃🚬🚫<br>-مراقبة و ضبط ضغط الدم و معدل السكر و الكوليستيرول فى الدم<br>-تناول طعام صحى لتجنب زيادة الوزن🍔🌭🥪❌<br>-ممارسة الرياضه يوميا دون ارهاق عضلة القلب🚴🏃<br>-الابتعاد عن التوتر و العصبية #طب_ولا_عك<br>#الدكتور<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
117	القنوات الطبية و واتساب جروب العيلة | الناس كلها بقت دكاترة	لأول مرة في التاريخ .. مابقاش فيه مشكلة في توفر المعلومات الطبية..المشكلة كلها في صحة المعلومات دي!القنوات الطبية كتير.. بس مين فيها صح و مين غلط؟	uploads/0jot2_5nE6pN5.jpg	El Doctor	Gt4KZA9FubQ	2021-05-22 21:47:03.494+02	2021-05-22 21:47:04.1+02	2021-05-22 21:47:04.373+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/Gt4KZA9FubQ	PT5M37S	0	1	0	0	1	1	ar	\N	1	\N
34	النصايح العشرة عشان تحافظ على كليتك	إنت عارف ان الكلية الواحدة دلوقت وصلت ربع مليون جنيه؟؟!! 1 اشرب مياه كتير 2 ماتاخدش مسكنات غير الباراسيتامول - بانادول وآدول وكده 3 ماتاخدش مضادات حيو	uploads/0jot2_42b9zNC.jpg	El Doctor	lnsyh-laashr-aashn-thfth-aal-klytk	2021-05-22 20:03:40+02	2021-05-22 20:03:40.951+02	2021-05-22 20:19:58.039+02	<p>إنت عارف ان الكلية الواحدة دلوقت وصلت ربع مليون جنيه؟؟!! </p><p>1 اشرب مياه كتير</p><p> 2 ماتاخدش مسكنات غير الباراسيتامول - بانادول وآدول وكده</p><p> 3 ماتاخدش مضادات حيوية من غير داعي</p><p> 4 اشرب مياه كتير! </p><p>5 أول ماتحس بأعراض التهابات في البول (حرقان أو تقطيع أو بتدخل الحمام كل شوية): حلل بول .. واتعالج لو طلع فيه حاجة</p><p> 6 لو عندك سكر أو ضغط.. أظبطهم عالمسطرة! - مفيش هزار في دي!</p><p> 7 اشرب مياه كتير!</p><p> 8 ممنوع منعا باتا أي مسكنات غير الباراسيتامول! </p><p>9 إن شفت دم أو رغوة في البول: تجري على دكتور وتحلل بول.</p><p> 10 لو عندك حد في الأسرة بيغسل كلى.. لازم تتطمن على نفسك عشان فيه أمراض كتير وراثية واحتمال تحتاج أشعة تليفزيونية للإطمئنان وبعد العشرة دول.. نقول تاني: إشرب مياه كتير.. وممنوع أي مسكنات! عشان تعرف أكتر عن صحتك.. تابع قناة "الدكتور" وبرنامج "طب ولا عك؟" https://www.youtube.com/user/mohamedemansour #الباراسيتامول #شير_في_الخير #حافظ_على_كليتك #الدكتور #محمد_منصور</p>	published	draft	article	\N	\N	0	1	0	0	1	2	ar	\N	1	\N
126	حمض المعدة و خل التفاح | طب ولا عك؟ | قرحة المعدة | ارتجاع المريء | عسر الهضم | العلاج الحقيقي	هل يمكن أن يكون ألم المعدة أو الحموضة والإرتجاع الذي تعاني منه هو أعراض لمرض خطير لا قدر الله؟ماهي قرحة المعدة؟ وما هي أعراضها؟ وكيف يمكن علاجها؟ما	uploads/0jot2_7DQyiUH.jpg	El Doctor	9aOsRbS_txM	2021-05-22 21:47:53.795+02	2021-05-22 21:47:54.327+02	2021-05-22 21:47:54.577+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/9aOsRbS_txM	PT23M22S	0	1	0	0	1	1	ar	\N	1	\N
127	رسالة هامة جداً لعائلة فكر تاني ومتابعي دكتور كريم علي من أطباء متخصصين حول العالم و رد د.كريم علي	رسالة هامة جداً #فكر_تاني #عائلة_فكر_تاني #كريم_علي #دكتور_كريم_علي #مهم_وعاجلالفيديو ده لأفراد عائلة فكر تاني فقط!إذا كنت حضرتك من عائلة فكر تاني	uploads/0jot2_jbEz4Ms.jpg	El Doctor	fLJmpv9n2Yg	2021-05-22 21:47:58.369+02	2021-05-22 21:47:59.322+02	2021-05-22 21:47:59.578+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/fLJmpv9n2Yg	PT33M41S	0	1	0	0	1	1	ar	\N	1	\N
137	حقيقة لقاح كورونا | أهم 10 حاجات لازم تعرفها قبل ما تفكر تاخد تطعيم كوفيد | لماذا لم آخذ التطعيم؟	00:00 مقدمة01:40 قرارك انك تاخد التطعيم هو قرار مصيري03:24 هل كوفيد مؤامرة - هل اللقاح يمكن أن يسيطر على الناس03:48 الخوف من التطعيمات04:19 لماذا	uploads/0jot2_7JU48As.jpg	El Doctor	tMpKttAMM-Y	2021-05-22 21:50:22.867+02	2021-05-22 21:50:24.144+02	2021-05-22 21:50:24.452+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/tMpKttAMM-Y	PT24M21S	0	1	0	0	1	1	ar	\N	1	\N
56	ايه علاقة #التوتّر بالقولون؟ 🤕و ايه هو #القولون أصلًا؟ و ايه اللي بيحصل بالضبط؟	ايه علاقة #التوتّر بالقولون؟ 🤕و ايه هو #القولون أصلًا؟ و ايه اللي بيحصل بالضبط؟ متلازمة #القولون_العصبي أو "القولون" اختصاراً هي مجموعة من الأعراض ا	uploads/0jot2_jqO7jBM.jpg	El Doctor	yh-aalk-ltotr-blkolon-o-yh-ho-lkolon-asl-o-yh-lly	2021-05-22 21:19:10+02	2021-05-22 21:19:10.615+02	2021-05-22 21:21:17.801+02	ايه علاقة #التوتّر بالقولون؟ 🤕<br>و ايه هو #القولون أصلًا؟ و ايه اللي بيحصل بالضبط؟ متلازمة #القولون_العصبي أو "القولون" اختصاراً هي مجموعة من الأعراض المُزمنة اللي بتيجي و تروح على فترات.. مُتأثّرةً ببعض العوامل اللي حنقولها دلوقتي..<br><br>✔️ الأوّل كدا نعرف الأعراض دي عبارة عن ايه.. 🤔 🔴 آلام في البطن و تقلّصات أو مغص بيرتاح غالباً بعد دخول الحمّام..<br>🔴 انتفاخ مزمن و غازات زائدة..<br>🔴 أحياناً إسهال وأحياناً إمساك و أحيانًا الاثنين مع بعض بالتّبادل..<br>🔴 الأعراض بتزيد في فترات الضغوط النفسية أو التوتر.. ✔️ طيب.. ليه الموضوع دا بيحصل..؟ ✋🏻 الحقيقة مافيش حاجة واضحة نقدر نقول إنّها السبب.. لإنّ في القولون العصبي.. جهاز القولون ( الأمعاء الغليظة ) بتكون سليمة في بنيتها.. على عكس أمراض ثانية أخطر زيّ مرض التهاب الأمعاء ( IBD )..<br>المشكلة في القولون العصبي بتكون في انقباض عضلات الأمعاء.. لإنّ الانقباضات دي هي اللي بتحرّك الأكل في الأمعاء.. فلمّا الانقباضة بتكون طويلة شوية بتأخر حركة الأمعاء و ساعتها يحصل الإمساك و الشعور بالتقلصات و الألم.. و لمّا تبقى قصيرة بتسرّع حركة الأمعاء فيحصل إسهال مع التقلّصات و الألم كمان.. طبعًا فيه عوامل أخرى كثير قد تكون مشاركة في حدوث القولون العصبي و لكن مش حنطوّل عليكم.. ✔️ التوتّر بقى و كمان بعض الأطعمة زيّ منتجات الألبان و الملفوف و القرنبيط و البروكلي و القمح و الأرزّ و الحبوب الكاملة ممكن تجعل الأعراض دي أكثر سوءاً في فترة حدوثها.. بس زي ما عرفنا مش هي اللي بتسببها.. هي فقط مُثيرات.. والمثيرات دي بتختلف من انسان للتاني.. وكل واحد بيكون غالباً عارف ايه اللي بيتعبه.. 🔴 عشان كدا يُنصح دائمًا بتعديل النظام الغذائي في فترة حدوث الأعراض.. نبعد عن الأطعمة اللي بتتعب..<br>🔴 و نكثّر من السّوائل و الأطعمة الغنيّة بالألياف..<br>🔴 و الطّبيب المختص حيوصف لنا دواء حسب العرض اللي بنعاني منه..<br>🔴 و أخيراً ما تنسوش تمارسوا الرّياضة و تحصلوا على قدر كافي من النوم عشان تهدّوا التوتّر و القلق.. 😴💤 و دمتم أصحّاءَ و سالمين.. 🌸 #شير_في_الخير<br>#طب_ولا_عك<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
121	العلاج بلسع النحل | قرص النحل | هل يمكن العلاج به؟ | ما الأمراض التي يعالجها؟ | سم النحل- طب ولا عك؟	أول فيديو على الإنترنت العربي يوضح حقيقة #سم_النحل و حقيقة العلاج ب #قرص_النحل أو #لدغ_النحل.. ما هي #الأمراض التي يعالجها؟هل هو فعلاً علاج آمن؟ وهل	uploads/0jot2_7ndnA6A.jpg	El Doctor	GQl9zRuV_XU	2021-05-22 21:47:21.161+02	2021-05-22 21:47:21.756+02	2021-05-22 21:47:21.993+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/GQl9zRuV_XU	PT24M2S	0	1	0	0	1	1	ar	\N	1	\N
128	كيف تبحث عن معلومة طبية أونلاين؟ | أفضل المواقع الطبية على الإنترنت | خلاصة الكلام من طبيب متخصص	ما هي أفضل مواقع طبية على الإنترنت؟هل يمكن البحث عن المعلومات الطبية عن طريق محركات البحث العادية مثل جوجل؟كيف يمكنك ترجمة المواقع الطبية المكتوبة ب	uploads/0jot2_hTyRoeX.jpg	El Doctor	mggzlxTbzHg	2021-05-22 21:48:03.22+02	2021-05-22 21:48:03.84+02	2021-05-22 21:48:04.001+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/mggzlxTbzHg	PT24M21S	0	1	0	0	1	1	ar	\N	1	\N
53	كل يوم بنسمع عن مريض توفى بسبب سكتة قلبية	-كل يوم بنسمع عن مريض توفى بسبب سكتة قلبية -طب هى ايه السكتة القلبية ؟🤔 -دى حالة مرضية نتيجه اضطرابات فى كهرباء القلب تتسبب فى توقف وظائف القلب و الت	uploads/0jot2_b8JCB9G.jpg	El Doctor	kl-yom-bnsmaa-aan-mryd-tof-bsbb-skt-klby	2021-05-22 21:16:40+02	2021-05-22 21:16:41.009+02	2021-05-22 21:17:04.371+02	-كل يوم بنسمع عن مريض توفى بسبب سكتة قلبية -طب هى ايه السكتة القلبية ؟🤔 -دى حالة مرضية نتيجه اضطرابات فى كهرباء القلب تتسبب فى توقف وظائف القلب و التنفس و فقدان الوعى -السكتة القلبية دى من الحالات التى تستلزم التعامل معها بأسرع شكل عن طريق ال Cardiopulmonary resuscitation (CPR) لأنعاش القلب و الرئه و ده بيتم عن طريق الضغط على منطقة الصدر عدة مرات و الهدف الاساسى منه هو الحفاظ على سريان الدم للوصول الى المخ و اعادة التنفس للمريض -السكتة القلبية عادة بتحصل فجأة بس احيانا بيكون فى اعراض تدل عليها زى ايه؟؟؟ 1-ألم شديد فى منطقة الصدر 2-عدم انتظام النبض 3-النفس القصير 4-دوخة او اغماء بالتالى لو لاحظت اى عرض من الأعراض دى على نفسك او على شخص اخر اتصل بالاسعاف فى لحظتها و اعرف من اللينك فى اول تعليق ازاى تعمل الانعاش القلبى الرئوى -هتسأل نفسك.. ايه الفائدة من الكلام ده.....؟🤔🤔ببساطه تخيل انك من معلومة بسيطه زى دى ممكن تكون سبب فى انقاذ حياة انسان؛و الانسان ده ممكن يكون شخص قريب منك جدا و عزيز عليك شير و خلى غيرك يستفيد... #الدكتور #طب_ولا_عك #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
63	من مقالات العراب الدكتور أحمد خالد توفيق الله يرحمك يا أستاذنا.. العلم والطب والأدب خسروا بعدك كثيرا	عن العلم وشبه العلم كتاب أنيق هو يحمل ذات الطابع (ابن الناس) الموحي بالثقة لدار المعارف، تلك التي بدأنا القراءة مع سلسلتها (كل شيء عن)... سلسلة علمية	uploads/0jot2_EqESgE0.jpg	El Doctor	mn-mklt-laarb-ldktor-ahmd-khld-tofyk-llh-yrhmk-y-a	2021-05-22 21:27:14.383+02	2021-05-22 21:27:14.823+02	2021-05-22 21:27:14.937+02	عن العلم وشبه العلم كتاب أنيق هو يحمل ذات الطابع (ابن الناس) الموحي بالثقة لدار المعارف، تلك التي بدأنا القراءة مع سلسلتها (كل شيء عن)... سلسلة علمية صدرت في الزمن الجميل كتبها عالم أمريكي محترم وترجمها عالم مصري محترم، والتي لم أندهش عندما وجدت أن عدد طبعات أجزاء منها تجاوز التسع, ثم كبرنا فعرفنا سلسلة (إقرأ) التي قدمت لنا المعلومة والأدب الراقي. لهذا كان لي الحق كل الحق أن أتحمس لشراء هذا الكتاب الذي يحمل اسم (أسرار الوحوش الخفية والإنسان العملاق - 1999) للدكتور (علي علي السكري) وهو من المهتمين بمفهوم العلم من الناحية الإسلامية كما تدل على ذلك مؤلفاته السابقة. الصورة على الغلاف لديناصورات تتصارع، وهي منسوخة من غلاف سلسلة أخرى هي (الكتب العلمية المبسطة)، وبرغم هذا هناك اسم لمصمم الغلاف.. أما عن محتوى الكتاب نفسه فيلخصه المؤلف في المقدمة بقوله (الغرض من هذا الكتاب إثبات وجود الديناصور والرخ والصناجة والتنين وغيرها) .. تبدو العبارة غريبة طموحًا لكن لا توجد أحكام مسبقة في العلم. المهم هي طريقته العلمية في إثبات ذلك. يقول إنه اعتمد على كتابات القدماء مثل القزويني والدمشقي وسواهم. ويقول (الواقع أن ما حكاه هؤلاء ليس أساطير لأنها رؤيت رؤية العين وتم التعرف عليها وقياس أبعادها). ثم يحدد الدكتور منهجه العلمي منذ البداية: "يقول العقاد في كتابه (الإنسان في القرآن): لعل الكشوف الكثيرة قد أقنعت أكثر الباحثين بأن الرفض بغير برهان أضر بالبحث من القبول بغير برهان"... طبعًا العقاد يتكلم عن القرآن الكريم وهو حالة خاصة جدًا، وقد استخدم الدكتور هذه العبارة ببراعة ليوحي بأن من يرفض مقولاته العلمية يمكن أن يرفض أشياء أخرى أكثر قداسة. لكن ما علاقة كلام العقاد بقصص حكاها القزويني والدمشقي ؟... لقد رسم البحارة في القرون الوسطى رجالاً في الهند لهم قدم واحدة يتواثبون عليها ويرفعونها في المطر لتحميهم، ووصفوا قومًا لهم رءوس كلاب يعيشون حول دلتا الجانج، ووصفوا ناسًا بلا رءوس عيونهم في صدورهم يعيشون في افريقيا، مع عمالقة لهم آذان عملاقة يمكن أن يتغطوا بها كالبطانية عند النوم... كل هذا معروف وموثق وهناك خرائط كاملة عليها هذه الرسوم. بمنطق الدكتور يجب علي أن أنفي وجود هذه الكائنات وإلا فهي موجودة .. منطق غريب جدًا .. المفترض أن البينة على من ادعى .. وهو ذات منطق الولايات المتحدة في بدء الحرب على العراق: على صدام أن يثبت أنه لا يملك أسلحة دمار شامل .. طيب لماذا لا تثبتون أنتم أنها عنده ؟ ينتقل الدكتور إلى مقدمة علمية رصينة جدًا عن الديناصور يختمها بالسؤال: هل اندثر الديناصور حقًا ؟ .. ثم يختمها بمقتطف من كلمات الإمام القزويني يحكي عن ظهور تنين عظيم في حلب عام 1226 ميلادية و426 هجرية، ويخرج من فمه نارًا تحرق الشجر والنبات. فاستغاث الناس بالله تعالى فأرسل سحابة حملته. يحلل الدكتور المعطيات بدقة ليصل إلى أن هذه الصفات تنطبق على ديناصور.. هكذا توصل الدكتور إلى وجود ديناصورات حية في حلب عام 1226 م، ومعنى هذا أن الديناصورات لم تنقرض مع نهاية العصر الطباشيري منذ سبعين مليون سنة. كل هذا التراث العلمي الجيولوجي والباليو إيكولوجي يهدمه الدكتور بضربة لازب، والسؤال هنا هو ماذا كان هذا الديناصور يعمل طيلة سبعين مليون سنة فلم يظهر إلا في ذلك العصر ؟.. لماذا لم يحك عنه مؤرخ آخر ؟.. أين آثاره ؟.. لكني لست متعصبًا يا سيدي .. لو أتيت لي من (حلب) بعظام ديناصور يثبت الكربون المشع أنها تمت للقرن الثالث عشر فلسوف أصدقك وأنحني احترامًا لك والقزويني معًا. ثم ينتقل الدكتور إلى هدم نظرية فناء الديناصورات مستخدمًا كلامًا علميًا موثقًا.. هكذا تبتلع أنت شبه العلم وسط العلم الحقيقي، على طريقة قشر البطيخ الذي يقلونه مع السمك في الموالد، من ثم يأكل الطاعمون هذا الخليط على أنه سمك.<br>لكن وحوش الدكتور لا تكف عن الظهور مما يوحي بأن العالم العربي في العصرين الأموي والعباسي كان حديقة ديناصورات تتحدى حديقة (مايكل كرايتون) .. تنين آخر يظهر في نابلس يبدو من وصفه أنه فيل عملاق من نوع الماموث.. وقد كسر الأهالي نابه لذا سموه بلدتهم (نابلس) أي (ناب بدون)، على الطريقة الإنجليزية في إلصاق less بنهاية الكلمات بمعنى (بلا).. ثم يقتطف مقالاً علميًا يحكي عن احتمال وجود أفيال عملاقة في أصقاع سيبيريا .. هذا ممكن يا دكتور في الأماكن غير المطروقة .. هناك ألغاز كثيرة على وجه الأرض، وهناك وحوش عديدة لم نرها من قبل، بل لا أستبعد وجود ديناصورات لم تنقرض بعد، لكن لا تقل لي إن هذا الماموث قد ظهر في نابلس فلم يره ويحك عنه إلا القزويني. هناك كتب كاملة عن رجل الثلوج المخيف (الياتي) و(الساسكواش) لكن العلم لا ينظر لهذه الأمور بجدية ما لم يجد رجل جليد كاملاً ويشرحه ويعرف كل شيء عنه، ولم يتخذها ذريعة لإصدار كتاب يؤكد أن الإنسان أصله قرد مثلاً. الآن ننتقل إلى حيوان الصناجة، الذي ليس هناك حيوان أكبر منه والذي عاش في أرض التبت، والذي ما أن ينظر لحيوان آخر حتى يموت الحيوان، وإذا رآه حيوان آخر مات الصناجة. تصور هذا !.. حيوان حياته تتوقف على ألا يراه حيوان آخر !.. طيب وعايش إزاي ؟..وكيف يبحث عن رزقه ؟.. هنا يرى الدكتور أن الكلام دليل قاطع على وجود ديناصور في التبت.. هناك قصة أخرى حكاها (ابن أثير) عن الطائر الضخم الذي ظهر بعمان عام 985 م ووقف على تل وصاح بلسان فصيح: قد قرب .. قد قرب .. ثم غاص في البحر .. هذه القصة يأخذها الدكتور كحقيقة لا شك فيها على وجود ديناصورات مجنحة منذ ألف سنة ثم انقرضت .. طيب من قال إنها انقرضت ؟.. ربما هي ما زالت بيننا تبعًا لمنطقك ؟ ... أثبت لي أنها غير موجودة ... هناك فصل كامل عن الرخ، وفصل كامل عن الناس الذين هم مشقوقون إلى نصف إنسان لأنهم من نسل النسناس (بن أميم بن لاوذ)، لكنهم يتكلمون ويقولون الشعر .. وهناك نساء بثدي واحد في جزر البحر الهندي وهي صفة تورث كما هو واضح .. وبعد كل قصة يقول: "هذه القصة تؤكد بما لا يدع مجالاً للشك على وجود كذا وكذا ......"<br>ثم ينتهي الكتاب بمجموعة هائلة من المراجع .. لماذا اهتممت بهذا الكتاب ومثله بالآلاف ؟.. السبب أنه لا ينتمي لتلك الكتب الصُفر الرخيصة، فناشره دار محترمة أثق بكل ما تنشره، ومؤلفه رجل علم قد بحث بحثًا مرهقًا بلا شك. من هنا مكمن الخطر لأنه كتاب يجيد التخفي في صورة كتاب علم., لقد بذل المؤلف كل هذا الجهد ليبرهن لنا على أن كل حرف قاله الأقدمون صحيح.. قد أقبل هذا بالنسبة لتفسير ديني أو فقهي، لكني لا أقبله بالنسبة لحقائق علمية تتعلق بالرخ والتنين الذي ظهر في حلب في القرن الثالث عشر .. خاصة إذا استخدم مؤلفه كل حجة علمية يملكها لإثبات أن هذا صحيح. على طريقة (سرعة الصوت هي ثلث كيلومتر في الثانية .. وهذا يثبت بما لا يدع مجالاً للشك أن أبو رجل مسلوخة وجد في عصور تاريخية معينة) .. هذا يعطي القارئ ثقة بالكلام .. من المؤكد أنه كلام محترم مادام يقول (سرعة الصوت) وما إلى ذلك .. المشكلة أن هذا بالنسبة لأكثرنا هذا هو العلم ولا علم سواه .. في فيلم الأب الروحي مشهد يمسك فيه بابا الفاتيكان بقطعة حجر مبتلة فيهشمها، ويقول لآل باشينو: "هذا الحجر مثل أوروبا .. مبتل بالماء من الخارج لكن الماء لم يبلغ قلبه .. هكذا اوروبا لم تبلغ المسيحية منها موضع القلب برغم كل هذه القرون".. نحن كذلك عندنا شهادات عالية جدًا ولدينا أبحاث تحمل أسماء براقة .. لكن التفكير العلمي الممنطق الذي أهداه لأوروبا ديكارت وكانط بلل عقولنا من الخارج لكنه لم يبلغها قط من الداخل. من مقالات العراب الدكتور أحمد خالد توفيق..<br>الله يرحمك يا أستاذنا.. العلم والطب والأدب خسروا بعدك كثيرا.. #العراب<br>#احمد_خالد_توفيق #الدكتور<br>#محمد_منصور #طب_ولا_عك<br>#العلوم_الزائفة<br>#أشباه_العلوم	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
129	بريد العيادة | ليه يوتيوب بيسيب فيديوهات النصابين؟ | الطب العربي ولا الطب الغربي؟	فيديو تافه وسخيف وممل ولا يحتوي على اي معلومات مفيدة!لا يُنصَح بمشاهدته إلا لمن يعرفني جيداً ويتابعني باستمرار.. ولّا اقول لكم.. لا يُنصَح بمشاهدته	uploads/0jot2_2OkTdxV.jpg	El Doctor	YzorfjHUkuw	2021-05-22 21:49:27.724+02	2021-05-22 21:49:28.715+02	2021-05-22 21:49:28.912+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/YzorfjHUkuw	PT23M29S	0	1	0	0	1	1	ar	\N	1	\N
130	بريد العيادة | إعمل فيديوهات لايف | فيديو ثاني عن الحجامة | الطب في مصر ولا انجلترا؟	فيديو كمان للرد على تعليقاتكم وأسئلتكم..لا أنصح أي أحد أن يشاهده إلا إذا كان متابعاً للقناة منذ مدة..بعض الأسئلة التي أجبت عنها في الفيديو:س: ليه	uploads/0jot2_Djom319.jpg	El Doctor	_NzDfc2qFE4	2021-05-22 21:49:42.352+02	2021-05-22 21:49:43.276+02	2021-05-22 21:49:44.956+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/_NzDfc2qFE4	PT18M36S	0	1	0	0	1	1	ar	\N	1	\N
54	كلمةبنستخدمها كتيرفى حياتنا اليوميةنسيت مفاتيح العربيةاو نسيت تبعت رسالة لحد بتقول انا عندى زهايمر!	#الزهايمر..🤦‍♂️ كلمة بنستخدمها كتير فى حياتنا اليومية.. نسيت مفاتيح العربية.. او نسيت تبعت رسالة لحد.. بتقول انا عندى #زهايمر! بس فى الحقيقة الموضوع	uploads/0jot2_Z3TmW9y.jpg	El Doctor	klmbnstkhdmh-ktyrf-hytn-lyomynsyt-mftyh-laarbyo-ns	2021-05-22 21:18:33.946+02	2021-05-22 21:18:34.229+02	2021-05-22 21:18:34.54+02	#الزهايمر..🤦‍♂️ كلمة بنستخدمها كتير فى حياتنا اليومية.. نسيت مفاتيح العربية.. او نسيت تبعت رسالة لحد.. بتقول انا عندى #زهايمر! بس فى الحقيقة الموضوع اخطر من كده بكثير!! مرض الزهايمر ده بيدمر خلايا المخ تدريجيا و بيتسبب فى موتها.. و الزهايمر من اهم اسباب ما يسمى ب #الخرف أهم عرض بنلاحظه على مريض الزهايمر هو فقدان و اضطراب فى الذاكرة و خصوصا للمواقف و النقاشات الحديثة.. ينسى هو أكل إيه أو عمل ايه الصبح أو حط هدومه أو مفاتيحه فين.. بالاضافة الى عدم اتزان الفكروعدم القدرة على اتخاذ قرارات صائبة.. وبيبدأ يحصل تغير ملحوظ فى تصرفات المريض و تعاملاته الاجتماعية.. لحد ما يفقد قدرته على الحفاظ على وضعه الاجتماعي.. فممكن يبدأ يلبس لبس مش مظبوط أو يقوم بأفعال غير لائقة.. مرض الزهايمر ليس له سبب واضح و صريح و لكن هناك عدة عوامل تؤدى لحدوث المرض و من اهمها: 1- العمر (وفقا لاخر دراسات منظمة الصحة العالمية) ثبت ان من كل 1000 شخص يتراوح عمرهم بين (74-65) عاما يتم تشخيص حالتين (84-75) عاما يتم تشخيص 11 حالة (اكثر من 85) عاما يتم تشخيص 37 حالة 2- العامل الوراثى - جينات معينة في عائلات معينة! 3- اصابات الرأس - وخصوصاً الخبطات المتكررة.. 4- بعض امراض القلب الصورة دى بتوضح الفرق بين مخ انسان طبيعى على يسار الصورة و مخ انسان مصاب بمرض الزهايمر و الذى سبب له ضمور فى خلايا المخ على يمين الصورة اخيرا بقا احنا منقدرش نمنع المرض ده بس نقدر نقلل نسبة حدوثه و ده ال هنعرفه بالتفصيل فى بوست قادم ان شاء الله 👨‍🔬 #الدكتور #طب_ولا_عك #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
132	هل ممكن يكون عندك إيدز؟ كيف تصاب به؟ وكيف تتعامل معه؟ وهل هناك علاج شافي؟ كل ما يجب معرفته في دقائق	ما هو مرض الإيدز؟كيف ينتقل؟ما هو الفارق بين مرض الإيدز وبين الإصابة بفيروس نقص المناعة؟هل هناك علاج حقيقي وشافي ونهائي للمرض؟هل هناك طريقة لعمل تح	uploads/0jot2_t96wqeA.jpg	El Doctor	-v-Q3Vrtxo8	2021-05-22 21:49:50.765+02	2021-05-22 21:49:51.785+02	2021-05-22 21:49:52.067+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/-v-Q3Vrtxo8	PT21M55S	0	1	0	0	1	1	ar	\N	1	\N
133	أهم ٥ نصائح لازم تعرفهم للتتعايش مع كوفيد١٩ | كورونا مش هتسيبنا! | الموجة الثانية والثالثة | الخلاصة	كورونا مش هتسيبنا! والله أعلم فيه كام موجة لسه جاية.. وهتفضل معانا لغاية إمتى؟كل المطلوب انك تعرفه عن الطريقة الصحيحة في التعامل والتعايش مع المرض.	uploads/0jot2_jtt4x74.jpg	El Doctor	SdmMP9btPVs	2021-05-22 21:49:58.086+02	2021-05-22 21:49:58.821+02	2021-05-22 21:49:59.016+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/SdmMP9btPVs	PT8M30S	0	1	0	0	1	1	ar	\N	1	\N
135	رسالة عن حقيقة كوفيد19 | كيف نتعامل مع المرض | هل كورونا مرض قاتل فعلا | هل كوفيد حقيقة؟	هل فعلاً كوفيد19 مرض قاتل؟ماهي أسباب الوفاة - الحقيقية - بكورونا؟هل السبب في موت الناس بسبب الوباء هو - فقط - العدوى بالفيروس؟هل الأمراض النفسية وا	uploads/0jot2_MnjORd6.jpg	El Doctor	z6tsrF1RsVM	2021-05-22 21:50:09.516+02	2021-05-22 21:50:10.44+02	2021-05-22 21:50:10.718+02	هل فعلاً كوفيد19 مرض قاتل؟<br>ماهي أسباب الوفاة - الحقيقية - بكورونا؟<br>هل السبب في موت الناس بسبب الوباء هو - فقط - العدوى بالفيروس؟<br>هل الأمراض النفسية والإكتئاب وتأجيل أو إلغاء العمليات أو غيره له دور حقيقي في الوفاة بكورونا؟<br>هل صحيح أن فاتورة وفيات كوفيد تخطت الملايين لأسباب غير العدوى بالمرض نفسه؟<br><br>ماهي الطريقة الصحيحة للتعايش مع هذا المرض حتى لا تتعرض لمضاعفات من أنواع أخرى؟<br><br>هذا الفيديو هو خلاصة رؤية طبيب متخصص يعيش بين مرضى كوفيد19 ويعالجهم منذ اليوم الأول من بداية الوباء..<br>أرجو أن تجد فيه بعض الفائدة التي تعينك على الحياة في ظل هذا الوباء الذي يحصد الأرواح و النفوس كل يوم..<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمتابعة كل جديد::<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Post-production: Medicatoon<br>https://www.youtube.com/channel/UCxy1aPBZVU0jshyC1COl_8Q<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br><br>*** some useful resources:<br><br>COVID-19’s Other Unnecessary Death Toll:<br>https://www.scientificamerican.com/article/covid-19s-other-unnecessary-death-toll/<br><br>Deaths registered monthly in England and Wales:<br>https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/datasets/monthlyfiguresondeathsregisteredbyareaofusualresidence<br><br><br>** Copyrights:<br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br>Pictures from: https://www.flaticon.com/<br>Video by ShotPot from Pexels<br>Video by Life Of Pix from Pexels<br>Video by Tima Miroshnichenko from Pexels<br>Video by Artem Podrez from Pexels<br> Video by Andrey Kirievskiy from Pexels<br>Video by cottonbro from Pexels<br>video Video by Edward Jenner from Pexels<br>Video by Polina Zimmerman from Pexels	published	draft	video	,https://www.youtube.com/embed/z6tsrF1RsVM	PT11M20S	0	1	0	0	1	1	ar	\N	1	\N
1	✔أخيرا: أول علاج مثبت علميا لكل السرطانات وفيروس سي- ⚠ طب ولا عك؟ -الحلقة الأولي	الحلقة الأولى من برنامج "طب ولا عك"Camera:	uploads/0jot2.jpg	El Doctor	aa0WdjPxhLM	2021-05-22 19:34:43.378+02	2021-05-22 19:34:44.376+02	2021-05-22 19:34:45.434+02	الحلقة الأولى من برنامج "طب ولا عك"<br><br><br>Camera: Safaa Baagar<br>2D animation &amp; aftereffects: Rowan Hussain<br>Music: Jazz In Paris<br>Media Right Productions: https://youtu.be/mNLJMTRvyj8<br><br>المصادر:<br>https://www.almasryalyoum.com/news/details/1220944<br><br>http://www.shorouknews.com/columns/view.aspx?cdate=02092016&amp;id=7833125e-9cf1-488a-bed8-8579d608beb3<br><br>https://www.almasryalyoum.com/news/details/1133439	published	draft	video	,https://www.youtube.com/embed/aa0WdjPxhLM	PT11M40S	0	1	0	0	1	2	ar	\N	1	\N
138	ليه عايزني آخد التطعيم؟ | لو انتم مقتنعين بلقاح كورونا خدوه | أنا مش مقتنع	أكثر سؤال وصلني خلال الأيام اللي فاتت هو:إذا كنتم انتم مقتنعين بلقاح كوفيد19 .. خدوه!!.. أنا مش مقتنع ومش هاخده!! حرية شخصية!! ليه عايزينني آخد التطع	uploads/0jot2_iUw9iDw.jpg	El Doctor	4ntjsWH4sUI	2021-05-22 21:50:27.006+02	2021-05-22 21:50:29.068+02	2021-05-22 21:50:29.285+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/4ntjsWH4sUI	PT3M6S	0	1	0	0	1	1	ar	\N	1	\N
144	أول علاج لكورونا قد يخرج من إسرائيل | رسالة للأطباء العرب | تريندنج	فريق الأطباء بمستشفى إيخيلوف يعلن عن اكتشاف أول علاج لكورونا..هل سيكون هذا هو أول علاج شافي تماماً لمرض كوفيد19؟#exo-cd24 #مستشفى_إيخيلوف #علاج_كورو	uploads/0jot2_VS642mG.jpg	El Doctor	PZzQoWGZz8Q	2021-05-22 21:52:44.358+02	2021-05-22 21:52:45.367+02	2021-05-22 21:52:45.587+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/PZzQoWGZz8Q	PT3M16S	0	1	0	0	1	1	ar	\N	1	\N
139	كل مايجب ان تعرفه عن كيفية تشخيص وعلاج كوفيد | بروتوكول علاج كورونا | آخر تحديث مبني على الدليل 2021	فيديو طويل لكن في منتهى الأهمية.. الفيديو ده هو خلاصة أحدث الأدلة الطبية في العالم.. وخلاصة خبرة السنة الماضية في علاج مئات حالات كوفيد الشديدة في ال	uploads/0jot2_dv5SFbd.jpg	El Doctor	59okdwIMusc	2021-05-22 21:50:31.401+02	2021-05-22 21:50:32.516+02	2021-05-22 21:50:32.769+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/59okdwIMusc	PT32M3S	0	1	0	0	1	1	ar	\N	1	\N
69	الدوالى مرض منتشر بشكل كبير خصوصا بين كبار السن	الدوالى....مرض منتشر بشكل كبير خصوصا بين كبار السن و بيكون نتيجة تضخم و التفاف الأوردة حول بعضها.و وارد حدوثه فى جميع أوردة الجسم خصوصا منقطة القدم نت	uploads/0jot2_3BKIfqx.jpg	El Doctor	ldol-mrd-mntshr-bshkl-kbyr-khsos-byn-kbr-lsn	2021-05-22 21:29:13.603+02	2021-05-22 21:29:14.15+02	2021-05-22 21:29:14.307+02	الدوالى....مرض منتشر بشكل كبير خصوصا بين كبار السن و بيكون نتيجة تضخم و التفاف الأوردة حول بعضها.و وارد حدوثه فى جميع أوردة الجسم خصوصا منقطة القدم نتيجة زيادة الضغط عليها. أهم أعراض المرض تغير لون الأوردة للون البنفسجى او الأزرق الغامق وقد يصاحبها...<br>-ألم و الاحساس بحمل ثقيل فى القدم<br>-حرقان و تشنج العضلات فى الاطراف السفلية<br>-الأحساس بالحكة و تغير لون الجلد فى المناطق المحيطة بالأوردة المصابة جسمنا فيه شرايين بتنقل الدم من القلب لباقى اجزاء الجسم؛ و أوردة دورها انها ترجع الدم للقلب؛ فبالتالى اهم اسباب المرض هو ضعف و تلف الصمامات و عدم قدرتها على ضخ الدم عكس الجاذبية من القدم للقلب فبيسبب زيادة كمية الدم فى الأوردة و تضخمها.<br>فى عوامل أخرى بتزيد معاها نسبة الأصابة بالدوالى مثل..<br>-التقدم فى العمر<br>-السيدات أكثر عرضة للأصابة بالمرض خصوصا فى فترات الحمل و اثناء الدورة الشهرية بسبب افراز الهرمونات اللتى تسبب ارتخاء جدار الأوردة و ضعفها<br>-الوراثة...لو أحد افراد العائلة مصاب بالمرض بيزود فرصة الاصبة<br>-السمنة...زيادة الوزن بتزود الضغط على الأوردة<br>-الجلوس أو الوقوف لفترات طويلة دون تغيير وضعية الجسد طيب ايه المشاكل ال ممكن تحصل مع المرض ده؟<br>-تقرحات و تغير فى لون الجلد<br>-نزيف نتيجة انفجار الأوردة السطحية القريبة من الجلد<br>-تجلط الدم فى الأوردة الداخلية أزاى نحمى نفسنا من المرض؟؟<br>-ممارسة الرياضة و الحفاظ على نشاط و حيوية الجسم<br>-تقليل كمية الأملاح فى الطعام<br>-لبس الأحذية الرياضية و تجنب الكعوب العالية<br>-تغيير وضعية الجسم باستمرار #الدكتور<br>#طب_ولا_عك<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
125	لسع النحل - فيه شفاء للناس!!	ده مقطع من فيديو تم نشره من عدة أسابيع ولم يصل التنبيه للكثير من حضراتكم بسبب ان الفيديو لم يتم السماح بعرض الإعلانات عليه نتيجة ان المحتوى ممكن يكون	uploads/0jot2_NwItBez.jpg	El Doctor	jQAn4jXPa-I	2021-05-22 21:47:48.165+02	2021-05-22 21:47:48.744+02	2021-08-15 09:36:45.837136+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/jQAn4jXPa-I	PT6M27S	0	2	0	0	1	1	ar	\N	1	\N
140	فكر معايا - خبرين ورا بعض - هل لقاح كوفيد آمن؟	#shorts الفيديو ده مش فيديو سياسي..أنا كشخص طبعاً أكره الإحتلال.. لكن الهدف من عرض الخبرين هو الرد على من يظن أن لقاح كوفيد قد يكون مضر أو خطرلا	uploads/0jot2_X07g7Wc.jpg	El Doctor	-mt5hedk5d0	2021-05-22 21:50:38.955+02	2021-05-22 21:50:39.731+02	2021-05-22 21:50:39.873+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/-mt5hedk5d0	PT53S	0	1	0	0	1	1	ar	\N	1	\N
141	نكت بايخة عن لقاح كورونا | لكن حقيقية للأسف | ممنوع الضحك	#shortsنكت سخيفة.. إياك تسمعها!لكن لو سمعتها.. يبقى مفيش بيننا زعل!.. وممكن لو فكرت فيها.. تستفيد منها حاجة!لا تنس الإشتراك في القناة والضغط على ع	uploads/0jot2_PNbv8u1.jpg	El Doctor	LPGIZUVV2FO	2021-05-22 21:52:17.563+02	2021-05-22 21:52:18.35+02	2021-05-22 21:52:18.539+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/LpGIzuVv2Fo	PT59S	0	1	0	0	1	1	ar	\N	1	\N
36	بتاكل سوسيس ولانشون وببيروني وهوت دوج هل بتجيب سرطان	#نصيحة_سريعة: #كبسولة: بتاكل سوسيس ولانشون وببيروني وهوت دوج؟ بتجيب سرطان طيب.. تعرف ان منظمة الصحة العالمية اعتبرتهم مسبب مباشر للسرطانات؟ (خصوصا سرط	uploads/0jot2_0E6s0zR.jpg	El Doctor	btkl-sosys-olnshon-obbyrony-ohot-dog-hl-btgyb-srtn	2021-05-22 20:20:49+02	2021-05-22 20:20:50.377+02	2021-05-22 20:21:09.943+02	<p>#نصيحة_سريعة: #كبسولة: بتاكل سوسيس ولانشون وببيروني وهوت دوج؟</p><p> بتجيب سرطان طيب.. تعرف ان منظمة الصحة العالمية اعتبرتهم مسبب مباشر للسرطانات؟</p><p> (خصوصا سرطان القولون)! التقرير اللي اتنشر سنة ٢٠١٥ عن الوكالة الدولية لأبحاث السرطان بناءا على أبحاث كتير اتعملت عن علاقة اللحوم المصنعة بالسرطان وجد علاقة قوية جدا بين الاثنين.. لدرجة تخلي اقتناعنا بإن اللحوم المصنعة دي بتسبب السرطان هو نفس قوة اقتناعنا ان التدخين والكحوليات بتسبب السرطان!! (مع فرق نوع السرطان واحتمال حدوثه طبعا) يعني إيه؟؟ يعني لو تعرف الكلام ده من قبل كده.. يبقى خير.. زمانك بطلت! لو ماتعرفهوش.. يبقى بطل تاكل اللحوم المصنعة (إلا في أضيق الحدود لو ضروري).. ماتصدقش أغلب الكلام اللي بيجيلك عالواتساب ان البلاستيك في الفريزر بيجيب سرطان .. وإن الميكروويف بيجيب سرطان.. وإن استعمال الموبايل بيجيب سرطان!! كل الحاجات دي متألفة!! لكن اللحوم المصنعة بتجيب سرطان! نقول كمان: اللحوم المصنعة بتجيب سرطان!! اللحوم المصنعة بتجيب سرطان!! #سرطان #اللحوم_المصنعة_بتجيب_سرطان #صحتك_أغلى_ما_تملك #شير_في_الخير #الدكتور #محمد_منصور #طب_ولا_عك؟</p>	published	draft	article	\N	\N	0	1	0	0	1	5	ar	\N	1	\N
50	من نقطة دم واحدة تقدر تعرف كل حاجة عن صحتك! | إليزابيث هولمز و شركة ثيرانوس الطبية | طب ولا عك؟	النهاردة هنتفرج سوا على فيديو رائع عملته قناة ميدان ونطلع منه بنقط ودروس مهمة جداً..قولولي في التعليقات لو طريقة الفيديو ده عجبتكم.. ممكن نعمل منها	uploads/0jot2_q4r9eVv.jpg	El Doctor	HNAZAB12zpI	2021-05-22 21:08:06.959+02	2021-05-22 21:08:07.691+02	2021-05-22 21:08:07.953+02	النهاردة هنتفرج سوا على فيديو رائع عملته قناة ميدان ونطلع منه بنقط ودروس مهمة جداً..<br><br>قولولي في التعليقات لو طريقة الفيديو ده عجبتكم.. ممكن نعمل منها كل فترة..<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/HNAZAB12zpI	PT10M51S	0	1	0	0	1	1	ar	\N	1	\N
86	د. جهاد سعادة..احد الاطباء المحترمين اللي أنصحكم تتابعوهم.. في زمن ارتفع فيه صوت العكاكين والنصابي	د. جهاد سعادة.. احد الاطباء المحترمين اللي أنصحكم تتابعوهم.. في زمن ارتفع فيه صوت العكاكين والنصابين باسم الطب.. تحياتي.. د.محمد منصور #طب_ولا_عك http	uploads/0jot2_cH0b3Vh.jpg	El Doctor	d-ghd-saadhd-ltb-lmhtrmyn-lly-anshkm-ttbaaohm-fy-z	2021-05-22 21:40:09.983+02	2021-05-22 21:40:10.401+02	2021-05-22 21:40:10.514+02	الحصبة....مرض شديد العدوى ناتج عن الاصابة بفيروس اسمه Rubeola Virus و الجميع عرضة للاصابة بالمرض بغض النظر عن العمر ما لم يتعرضوا له من قبل او لم يتلقوا المصل(التطعيم) الخاص بالمرض، لكن معظم الاصابات تحدث للاطفال فى السن المبكر. تبدأ الأعراض بالظهور فى خلال 10 ايام من التعرض للاصابة و تتمثل الأعراض فيما يلى... -أعراض البرد العادى (العطس و الكحة و سريان الأنف) -فقدان الشهية -احساس بالتعب و الارهاق -التهاب و احمرار العين و حساسيتها للضوء -ارتفاع درجة الحرارة و التى قد تصل الى 40 درجة مئوية - ظهور بقع رمادية اللون فى الفم (مقابلة لمنطقة الخدين) عادة تظهر قبل الطفح الجلدى بيوم او اثنين بعد ملاحظة الأعراض السابقة ب 2-4 ايام يبدا الطفح الجلدى بالظهور(بقع حمراء او بنية اللون) ابتداءا بالوجه و اعلى الرقبة الى ان ينتشر فى باقى اجزاء الجسم. طيب لو اتأكدت انك مصاب بالحصبة تعمل ايه؟؟؟ اول حاجه لازم تعزل نفسك عن الناس خاصة الاطفال و الحوامل لمدة لا تقل عن 4 ايام بعد ظهور الطفح لا يوجد علاج محدد للحصبة حيث تتحسن الحالة في غضون 7 إلى 10 أيام، لكن نقدر ناخد علاج للحد من الاعراض و تخفيفها.... ازاى؟؟ -مسكن للالم و خافض للحرارة .... Paracetamol or Ibuprofen -الاكثار من شرب السوائل لتجنب الجفاف -المشروبات الساخنة خاصة التى تحتوى على العسل و الليمون للحد من اعراض البرد فى بعض الحالات اذا لاحظت الاعراض الاتية يجب التوجه لأقرب مؤسسة صحية.. -قصر النفس -الم حاد فى منطقة الصدر -خروج دم مع الكحة اخيرا ازاى تحمى اطفالك من الحصبة؟ MMR vaccine ده مصل لازم لجميع الاطفال فى سن 12-13 شهر و تعاد الجرعة مرة اخرى عند سن ثلاث سنوات و اربعة اشهر #الدكتور #طب_ولا_عك #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
45	بريد العيادة | الرد على تعليقات حلقة الحجامة	حلقتنا النهاردة من بريد العيادة هتكون دردشة في التعليقات بتاعتكم على حلقة: "الحجامة - طب ولا عك؟"لو ماشفتش الحلقة.. اتفرج عليها الأول من هنا:https:/	uploads/0jot2_aXC3lBC.jpg	El Doctor	IuxYaDfpSIA	2021-05-22 21:05:32+02	2021-05-22 21:05:32.554+02	2021-05-22 21:06:40.34+02	حلقتنا النهاردة من بريد العيادة هتكون دردشة في التعليقات بتاعتكم على حلقة: "الحجامة - طب ولا عك؟"<br>لو ماشفتش الحلقة.. اتفرج عليها الأول من هنا:<br>https://www.youtube.com/watch?v=IBf7pkUDXWw&amp;t=1018s<br><br>ولو دي أول حلقة لحضرتك عندنا.. مانصحكش تكمل الحلقة!!<br> ممكن تروح تشوف حلقة "الحجامة - طب ولا عك؟" الأول.. وبعدها تعال اتفرج على الحلقة دي.. والا مش هتعرف احنا بنتكلم عن إيه!<br>https://www.youtube.com/watch?v=IBf7pkUDXWw&amp;t=1018s<br><br><br>****************************************************************************نويه وتوضيح:<br>هذه الحلقة تم تسجيلها -كما ذكرت سابقاً- منذ أكثر من شهرين .. <br>ومنذ ذلك الوقت.. وصلتني تعليقات مهمة كثيرة  بخصوص موضوع الحجامة.. ولهذا لم أذكرهم في الحلقة..<br>:لعل من أهمهم:<br><br>1 - د #عمر_الريس وكتابه #فن_الحجامة<br>وهذا هو الرابط للمهتمين::<br>http://albahethlibrary.com/books/%D9%81%D9%86-%D8%A7%D9%84%D8%AD%D8%AC%D8%A7%D9%85%D8%A9-the-art-of-cupping-therapy/<br>و قد تواصل معي د. عمر الريس بأسلوب ينم عن رقيه واحترامه.. وقد قرأت الكتاب على مدار الاسابيع الماضية وهو كتاب مفصل.. جمع فيه د.عمر تقريبا اغلب ماقيل في الحجامة في تبويب وتتقسيم مفصل.. وهو جهد يشكر عليه.. ويثري المكتبات.. لكن الكتاب لا يحتوي على اي بحث علمي طبي يؤخذ منه اي نتيجة طبيةاو ينبني علي اي علاج.. وهذا لا يقلل من قيمة الكتاب.. لكنه طبعا لا يضيف اي قيمة علاجية للحجامة..<br>ورابط الكتاب وضعته لأي طبيب تعلم اساسيات البحث العلمي ليناقش الكتاب ان رأى غير ذلك..<br><br>2 - سلسلة فيديوهات: الحجامة اكتشاف علمي<br>ورابط الجزء الاول للمهتمين:<br>https://www.youtube.com/watch?v=mAtziDQQL9Q<br>وهذه الفيديوهات هي خلاصة تجارب قام بها عدد من الاطباء السوريين تقريبا منذ اكثر من 6 سنوات..<br>وانا اظن - ان كانت الفيديوهات صادقة - ان هذه التجربة كانت يمكن ان تكون نواة صالحة لبحث علمي حقيقي عن الحجامة كان من الممكن ان يؤدي الى بعض الاثباتات العلاجبية المفيدة.. لكن اصحابها لم يكملوا ولم ينشروا ايا من هذه الابحاث بطريقة سليمة او محايدة او في مصدر موثوق.. طبعا مع افتراض الصدق وحسن النية...<br><br>3 - فيديو غير محترم لأحد الحجامين الذي يسمي نفسه طبيباً.. سجل فيديوهات الواحد منها مدته ساعتين للرد على الفيديو الخاص بنا اللي مدته 35 دقيقة.. ولم يتفضل بمعلومة مفيدة خلال الساعات الطويلة غير انه اتهمني بالالحاد وما الى ذلك... فلن اذكر اسمه لكي لا ينال من الشهرة نصيباً يريده ولا يستحقه..<br><br> <br><br><br>ماتنساش تشترك في القناة.. وتضغط على الجرس عشان يوصلك فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br><br>وأخيرا..<br>تابع صفحة "الدكتور" على فيس بوك عشان توصلك معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة..<br>https://www.facebook.com/Eldoctooor/<br><br>وماتنساش.. شير الفيديو على قد ماتقدر.. وهات حبايبك يشتركو في القناة.. عشان اللي جاي هيعجبك ان شاء الله 🙂<br><br>Post production:<br>Blue Bird Studio<br>https://www.facebook.com/BlueBirdMotion/<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br>بعض روابط الفيديوهات المذكورة في الفيديو::<br><br>قناة الحياة - بوضوح- الطب البديل| رأي الطب العلمي في الطب البديل بالاعشاب والحجامة والابر الصينية<br>youtube.com/watch?v=PgKKEWbSDYk&amp;t=160s<br>عدنان ابراهيم - عن دجاجلة " الرقية الشرعية " و " الطب النبوي "<br>https://www.youtube.com/watch?v=Bwk8pxOAkEc&amp;t=162s<br>الحجامة ... طب نبوي أم موروث اجتماعي ؟ - ندوة بنقابة الأطباء<br>https://www.youtube.com/watch?v=oqNlS3MRi-o&amp;t=79s<br>الحالة المأساوية: عملت حجامة وبعدها اضطرت لقطع رجلها ثم ربما توفيت حسب ماهو مكتوب بالتعليقات<br>https://www.youtube.com/watch?v=6GxbRPnIe5s&amp;t=271s	published	draft	video	,https://www.youtube.com/embed/IuxYaDfpSIA	PT14M26S	0	1	0	0	1	1	ar	\N	1	\N
72	هل كلّ أنواع الأنيميا بتتعالج بالحديد..تعالوا نعرف ايه هي الأنيميا	هل كلّ أنواع الأنيميا بتتعالج بالحديد..؟ تعالوا نعرف ايه هي الأنيميا الأوّل.. الأنيميا هي نقص كريّات الدمّ الحمراء في الجسم.. و لإنّ كريات الدم الحمرا	uploads/0jot2_sPEz3Qc.jpg	El Doctor	hl-kl-anoaa-lanymy-bttaalg-blhdydtaalo-naarf-yh-hy	2021-05-22 21:29:34.122+02	2021-05-22 21:29:34.428+02	2021-05-22 21:29:34.564+02	تعرفوا إنّ نقص فيتامين دال ممكن يكون سبب في الشّعور بالإرهاق و الاكتئاب و تساقط الشّعر و آلام العضلات مش بسّ هشاشة العظام..؟ وظيفة فيتامين دال الرّئيسيّة هي المحافظة على سلامة العظام.. لإنّه بيزوّد امتصاص الكالسيوم من الأمعاء و ترسّبه في العظام و بالتّالي نموّ العظام بشكل سليم عند الأطفال و المُحافظة على نسب الكالسيوم فيها عند البالغين.. لكن دا مش الدّور الوحيد.. فيتامين دال مهمّ جدًّا في حاجات ثانية كثير.. زيّ إنّه بيقوّي الجهاز المناعي و كمان ليه دور في الحفاظ على سلامة العضلات و اعتدال المود و نموّ الشّعر.. طيب.. ازاي نحافظ على معدّل كويس من فيتامين دال في جسمنا و نتجنّب نقصه..؟ إليكم شوية حاجات لطيفة ممكن نعملها 🔴 نتعرض للشّمس يوميًّا لمدّة 10-15 دقيقة.. 🔴 ناكل الأطعمة الغنيّة بفيتامين دال زيّ التونة و السلمون و السردين و المشروم و صفار البيض.. 🔴 بعض الأطعمة المُعلَّبة بينضاف لها فيتامين دال زي الحليب و الزّبادي و عصير البرتقال.. لو عايزين تعرفوا المنتج اللي حتشتروه مضاف ليه فيتامين دال و لا لأ بصوا على المكوّنات.. 🔴 ممكن ناخذ مكمّلات غذائيّة تحتوي على فيتامين دال لو بدأنا نشتكي من أعراض و لقينا النّسبة قليلة فعلاً.. لذلك يُنصح بالمُتابعة مع مختصّ في حالة أخذ المكمّلات الغذائية.. حافظوا على صحّتكم و شاركوا البوست دا مع أيّ حدّ تعرفوه مش بيحب يخرج في الشمس.. و دمتم أصحاء و سالمين.. 🌸 #طب_ولا_عك #شير_في_الخير #مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
142	التبرع بالدم حرام | النصاب الصغير | أمين صبري | حرمة الدم عند الله | طب ولا عك	هل التبرع بالدم حرام؟لماذا اخترع علماء الغرب الأدوية والحقن و العلاجات التي لا تؤخذ بالفم؟من هم يأجوج ومأجوج؟#من_هو_أمين_صبري؟ #النصاب_الصغير؟ #تيم	uploads/0jot2_489OV5p.jpg	El Doctor	CJyvFqAkMwY	2021-05-22 21:52:34.573+02	2021-05-22 21:52:35.989+02	2021-05-22 21:52:36.202+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/CJyvFqAkMwY	PT18M39S	0	1	0	0	1	1	ar	\N	1	\N
143	❗ أنا جالي كورونا سبع مرات❗ | هل كورونا ممكن ترجع أصلاً؟😧 | إعادة العدوى بمرض كوفيد19 | الصدمة😲	فيديو مهم جداً.. أنشره على قد ما تقدر عشان المعلومات والرسائل اللي فيه توصل لأكبر عدد من الناس.. يمكن نقدر نحميهم..أنا عارف ان الفيديو ده هيزعل ناس	uploads/0jot2_EmG6faC.jpg	El Doctor	vtT-orG7R9I	2021-05-22 21:52:39.72+02	2021-05-22 21:52:40.593+02	2021-05-22 21:52:40.801+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/vtT-orG7R9I	PT15M27S	0	1	0	0	1	1	ar	\N	1	\N
109	أفضل مواقع استشارات نفسية مجانية ومدفوعة أونلاين | كيف تحصل على علاج نفسي مجاني وأنت في المنزل	وصلتني رسائل كثيرة الفترة الماضية تشتكي من وجود مشاكل نفسية صعبة مع عدم القدرة على الذهاب للطبيب النفسي..الاستشارات النفسية غالية.. والوصول للطبيب ال	uploads/0jot2_52nseNx.jpg	El Doctor	yqg0BiMyKl0	2021-05-22 21:46:18.834+02	2021-05-22 21:46:19.737+02	2021-05-22 21:46:20.058+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/yqg0BiMyKl0	PT11M13S	0	1	0	0	1	1	ar	\N	1	\N
91	كثير منّنا حصل له ألم في الظّهر لسبب أو لآخر..إجهاد في تمرين أو في شغل قعد فيه لفترة طويلة.. حركة ع	كثير منّنا حصل له ألم في الظّهر لسبب أو لآخر..إجهاد في تمرين أو في شغل قعد فيه لفترة طويلة.. حركة عنيفة أو إصابة.. حنقول النّهاردة أسباب ألم الظهر و	uploads/0jot2_lnN08wM.jpg	El Doctor	kthyr-mnn-hsl-lh-alm-fy-lthhr-lsbb-ao-lkhrghd-fy-t	2021-05-22 21:41:11+02	2021-05-22 21:41:12.323+02	2021-05-22 21:42:11.982+02	كثير منّنا حصل له ألم في الظّهر لسبب أو لآخر..<br>إجهاد في تمرين أو في شغل قعد فيه لفترة طويلة.. حركة عنيفة أو إصابة.. حنقول النّهاردة أسباب ألم الظهر و علاجه.. و بعض النّصائح للتخفيف من الألم و تجنب حدوثه..<br><br>✔️ الأول الأسباب..<br>ألم الظّهر ممكن يحصل نتيجة عدّة أسباب:<br>🔴 إجهاد العضلات و الأربطة: و دا ممكن يحصل بسبب رفع أوزان ثقيلة بشكل غير صحيح أو بسبب حركة عنيفة مُفاجئة أو تمرينة غلط..<br>🔴 تمزّق أو تورّم في الغضاريف..<br>🔴 انزلاق غضروفي: تحرُّك أحد الغضاريف من مكانها ممّا يؤدي إلى ضغط على الأعصاب و يسبب ألم شديد و حادّ في أسفل الظّهر و الرجل ( عرق النّسا )..<br>🔴 بعض العيوب الخلقية في الهيكل العظمي زيّ انحناء العمود الفقري..<br>🔴 هشاشة العظام لإنّها ممكن تخلّي الفقرات أكثر عرضة للكسر.. ✔️ بس لحُسن الحظّ أغلب حالات ألم الظّهر مش بتكون خطيرة و بتروح بعد بضعة أسابيع من الرّاحة و تناول الأدوية المُسكنّة و الأدوية باسطة العضلات.. ✔️ و برضو عشان نخفف الألم أو نتجنب حدوثه من الأوّل ممكن نعمل الحاجات دي:<br>🔴 ممارسة الرّياضة بشكل مُنتظم و لو احنا بنعاني من آلام الظّهر نحاول نختار الأنشطة اللي مش حتجهد عضلاتنا زيّ المشي أو السّباحة..<br>🔴 المُحافظة على وزن صحّي لإنّ الوزن الزّايد حيزوّد الحمل على عضلات الظّهر..<br>🔴 الوقوف بشكل صحيح.. نقف ظهرنا مفرود و نحاول ما نقفش فترات طويلة.. و نبدّل موضع القدمين كلّ فترة و احنا واقفين..<br>🔴 الجلوس بشكل صحيح.. نحاول نقعد على كرسي مسنده مريح للظهر.. و ممكن نحط مخدة صغيرة أسفل الظهر..<br>🔴 رفع الأشياء بشكل صحيح.. لو حنرفع حاجة من على الأرض نحني ركبتنا و احنا نازلين مش ظهرنا.. لازم ظهرنا يكون مفرود.. ننزل بوضعية شبه وضعيّة الاسكوات كدا.. شاركوا البوست مع العائلة و الأصدقاء و دمتم سالمين و أصحاء.. 😄🌸 #الدكتور<br>#طب_ولا_عك<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
145	ما يجب أن تعرفه عن متلازمة ما بعد كوفيد | مرض كوفيد الطويل | أنا ما رجعتش زي الأول من بعد كورونا	أكثر سؤال وصلني الفترة اللي فاتت كان عن استمرار أعراض كورونا لمدة طويلة بعد الشفاء من المرض..هل فعلاً هناك مرض كوفيد مزمن؟هل أعراض كوفيد ممكن تستمر	uploads/0jot2_UHcH3tf.jpg	El Doctor	YuZ1gAyyDrs	2021-05-22 21:52:50.746+02	2021-05-22 21:52:51.665+02	2021-05-22 21:52:51.97+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/YuZ1gAyyDrs	PT11M28S	0	1	0	0	1	1	ar	\N	1	\N
75	أنتَ عندك برد..؟	أنتَ عندك برد..؟ أكثر حاجة بتعرّضنا للإحراج كأشخاص بنعاني من حساسية الأنف هي بصّة النّاس لينا كأننا مصدر عدوى مُتنقِّل.. 🙄🤦🏻‍♀️ لإنّ حساسيّة الأنف	uploads/0jot2_1KofcZs.jpg	El Doctor	ant-aandk-brd	2021-05-22 21:37:43.027+02	2021-05-22 21:37:43.57+02	2021-05-22 21:37:43.694+02	كثير مننا بيربوا قطط فى منازلهم؛و بيكون فى اختلاط كامل بين القطط و أولادنا. طيب عمرك فكرت ان القطط دى ممكن تنقلك و تنقل لأولادك عدوى أو مرض؟ أكثر من 50% من القطط بتحمل بكتيريا اسمها.... Bartonella henselae و العدوى دى بتظهرش ولا بتظهر أى اعراض على القطط لكن ممكن تتنقل بسهولة للناس لو تعرضوا للعض أو الخربشة من القطط المصابة. أهم أعراض الامرض... -ورم و انتفاخ خصوصا فى منطقة الرقبة و الاطراف العلوية -حمى -صداع -اجهاد و فقد الشهية لو لاحظت أى عرض من دول عليك او على حد من اولادك يفضل زيارة الطبيب فى أسرع وقت. عشان تقى نفسك و أولادك لازم تهتم بنظافة القطة و الذهاب للطبيب البيطرى بشكل دورى و التأكد من حصول القطة على جميع التطعيمات و الأمصال المطلوبة و تجنب التعرض للعض او الخربشة على قدر الامكان. #طب_ولا_عك #شير_في_الخير #الدكتور	published	draft	article	\N	\N	0	1	0	0	5	1	ar	\N	1	\N
168	قلل أكلك وزود شربك في رمضان | الإفطار على التمر والأكل على مرحلتين	#shortsهل هناك فائدة من الإفطار على التمر؟هل الأفضل أن تأكل على مرة واحدة بعد الصيام؟ أم أن تقسم إفطارك على مرحلتين؟ما هي العلامة على أنك تشرب الم	uploads/0jot2_IL571NS.jpg	El Doctor	GB_p4Kh8MUA	2021-05-22 22:02:17.434+02	2021-05-22 22:02:18.522+02	2021-05-22 22:02:18.705+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/GB_p4Kh8MUA	PT49S	0	1	0	0	1	1	ar	\N	1	\N
150	مهم جداً | هل تطعيم أسترازينيكا آمن | أزمة لقاح كورونا وتجلط الدم | لماذا أوقفت أوروبا التطعيمات	هل حقيقي أن لقاح كورونا البريطاني الذي تنتجه شركة أسترازينيكا مع جامعة أوكسفورد يتسبب في تجلط الدم؟لماذا أوقفت العديد من الدول الأوروبية التطعيم بالل	uploads/0jot2_TDfpga2.jpg	El Doctor	QJKQr9H-Z2k	2021-05-22 21:53:19.136+02	2021-05-22 21:53:20.276+02	2021-05-22 21:53:20.515+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/QJKQr9H-Z2k	PT5M45S	0	1	0	0	1	1	ar	\N	1	\N
39	هل فعلاً فيه أكلات لما تاكلها بتخس لأنها بتخلي الجسم يحرق سعرات أكتر من السعرات اللي في الأكلات دي؟؟	#نصيحة_سريعة: بما إننا الشهر ده بنتكلم عن الدايت وأنواعه.. هل فعلاً فيه أكلات سالبة السعرات؟؟هل فعلاً فيه أكلات لما تاكلها بتخس لأنها بتخلي الجسم يحر	uploads/0jot2_vl94UdM.jpg	El Doctor	hl-faal-fyh-aklt-lm-tklh-btkhs-lanh-btkhly-lgsm-yh	2021-05-22 20:45:52.81+02	2021-05-22 20:45:53.144+02	2021-09-26 12:11:12.187907+02	#نصيحة_سريعة: بما إننا الشهر ده بنتكلم عن الدايت وأنواعه.. هل فعلاً فيه أكلات سالبة السعرات؟؟<br>هل فعلاً فيه أكلات لما تاكلها بتخس لأنها بتخلي الجسم يحرق سعرات أكتر من السعرات اللي في الأكلات دي؟؟ الموضوع منتشر على قنوات وبرامج كتير... وكلهم بيقولو نفس المعلومة..<br>إنك لو أكلت خضار أو فاكهة تديك 100 سعر حراري.. فجسمك هيستهلك 250 سعر حراري عشان يهضمها.. وده للأسف .. مش صحيح!! (ماعرفش حتى جابوا الرقم اللي كلهم بيكرروه ورا بعض ده منين؟؟!!) مفيش حاجة علمية اسمها أكلات سالبة السعرات!!.. Negative-Calories food<br>ولا حتى Zero-Calories food!! صحيح انك لما بتاكل جسمك بيحرق سعرات عشان يهضم الأكل.. لكن ده لا يتعدى 3-4 سعرات في المضغ (يعني ولا حاجة!!) .. وده لو بتمضغ بشكل متواصل لمدة ربع ساعة!<br>وبعدها معدل الحرق بتاع جسمك بيزيد زيادة بسيطة جداً لمدة ساعة عشان بداية الهضم (شيء لا يذكر!) نفس الكلام ينطبق على إن شرب المياه (اللي هي مفيهاش سعرات) بيحرق سعرات!<br>(أيوة بيحصل.. لكن شيء لا يذكر!! وعمرك ماهتخس بسببه!) هل معنى كده إن الحاجات دي (الخضروات والمياه) مش مفيدة؟؟ لأ.. مفيدة جداً.. ومكليانة سوائل جسمك محتاجها خصوصاً لو عامل الدايت.. والخضروات مليانة فيتامينات وأملاح ومعادن أساسية مهمة جدا خصوصاً مع الدايت..<br>وطبعاً لأنها قليلة السعرات.. فهي مفيدة في إنها تحسسك بالشبع وتملا بطنك بدون ماتديك سعرات كتير.. خلاصة الكلام: الخضروات والفاكهة قليلة السعرات والمياه مهمين جداً ومفيدين جداً.. لكن ماتصدقش اللي يقول لك إن سعراتهم سالبة! احنا اتفقنا اننا مش هنسكت على الغلط! #محمد_منصور #طب_ولا_عك!<br>#الدكتور<br>#محمد_منصور	published	draft	article	\N	\N	0	2	0	0	1	3	ar	\N	1	\N
147	🔺 خطورة زيت الزيتون مع الشاي | ما الحل؟ | مهم جداً 🔺	#shortsالموضوع خطير جداً..حضرتك متخيل كم السموم اللي بيترسب في جسمك مع كل معلقة زيت زيتون وكل كوب شاي بتشربه؟تعال نشوف الحل مع بعض..لا تنس الإش	uploads/0jot2_4jEzoi0.jpg	El Doctor	Szv2ZuqxPZ4	2021-05-22 21:53:01.056+02	2021-05-22 21:53:02.053+02	2021-05-22 21:53:02.435+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/Szv2ZuqxPZ4	PT1M	0	1	0	0	1	1	ar	\N	1	\N
60	هى ايه اعراض التهاب المفاصل و المشاكل التى يسببها	-بتحس بألم شديد و انت بتتحرك؟😮 بتسمع من الناس الكبيرة فى السن حواليك ان عندهم خشونة فى الركبة؛... هى دى اعراض *التهاب المفاصل*‼️ -التهاب المفاصل ده م	uploads/0jot2_9XOfH6g.jpg	El Doctor	h-yh-aard-lthb-lmfsl-o-lmshkl-lt-ysbbh	2021-05-22 21:26:12.101+02	2021-05-22 21:26:12.577+02	2021-05-22 21:26:12.776+02	-بتحس بألم شديد و انت بتتحرك؟😮 بتسمع من الناس الكبيرة فى السن حواليك ان عندهم خشونة فى الركبة؛... هى دى اعراض *التهاب المفاصل*‼️ -التهاب المفاصل ده من اشهر الأمراض انتشارا على مستوى العالم؛ و ده بيحصل نتيجة تآكل فى الغضاريف الموجودة فى المفاصل دى. -طب يعنى ايه غضاريف؟؟🤔🤔 الغضاريف دى انسجة مرنة بتبقا موجود فى منطقة التقاء العظام فى المفاصل و بتمنع الاحتكاك بين العظام و بتساعد على سهولة حركة المفصل -طب هى ايه اعراض التهاب المفاصل و المشاكل التى يسببها؟‼️ 1-ألم شديد اثناء الحركة⚠️ 2-خشونة فى المفاصل و من اشهرها خشونة الركبة 3-احساس بليونة المفاصل عند الضغط عليها 4-فقدان المرونة و صعوبة الحركة 5-ورم و تضخم فى الأنسجة المحيطة بالمفاصل -عرفنا أن السبب الاساسى لالتهاب المفاصل هو تآكل الغضاريف...طب ايه اللى ممكن يخلى الغضاريف دى تتآكل؟🤔 - طبعاً.. التقدم فى العمر👴👵 - الجنس (وفقا للدراسات ثبت أن السيدات اكثر عرضة للأصابة بالتهاب المفاصل)🧕 - السمنة... أكيد طبعاً!! نتجية زيادة الضغط على المفاصل و سرعة تآكل الغضاريف - التدخين (تقريباً مفيش مصيبة إلا وهتلاقي التدخين له دور فيها) - بعض العوامل الوراثية اللي مالناش تحكم فيها! (فكر فيها لو كان فيه أكتر من شخص في عيلتك عندهم خشونة شديدة في المفاصل) - بعض الأمراض مثل مرض السكر و زيادة نسبة ترسب الحديد فى الجسم و المعروف بالهيموكروماتوزيس طيب.. نعمل ايه عشان نحمي نفسنا؟ هنتكلم في الموضوع ده في بوست تاني ان شاء الله #الدكتور #طب_ولا_عك #زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
172	دكتور جودة عواد وسر مشروب مر البطارخ (جربته على مؤخرات البط والنتيجة مذهلة) | فيديو قصير	#shortsاللي لسه ماشافش الفيديو بتاع الحاج جودة هباد (الدكتور جودة عواد سابقاً) .. تقدر تشوفه من هنا:https://youtu.be/kAG8Snw57hsمن هو دكتور جودة	uploads/0jot2_kzUwJIG.jpg	El Doctor	nJ-PXJMYAbU	2021-05-22 22:03:37.221+02	2021-05-22 22:03:38.143+02	2021-09-25 13:36:39.005175+02	فيديو مهم جداً.. فيه علاج كل الأمراض:<br><br>00:00 لماذا دكتور جودة محمد عواد<br>04:38 د.جودة عواد يعالج فيروس الكبد سي<br>07:03 طريقة العلاج عند د.جودة<br>12:41 مريض يحكي قصته مع د.جودة عواد<br>17:45 كيف تعالج مريضك بدون تشخيص<br>22:33 علاج الأمراض المناعية<br>25:04 علاج مرض ارتفاع الضغط<br>26:39 علاج السرطان<br>27:07 المحمول وعلاج الصرع وفحص الثدي<br>30:25 علاج مرض السكر - الإنسولين الطبيعي<br>33:38 أمراض الكلى وسعر الكشف وبلاوي أخرى<br>35:31 رسالة مهمة لدكتور جودة عواد<br><br>من هو دكتور جودة محمد عواد؟<br>هل هو طبيب متخصص؟ هل يعالح جميع الأمراض فعلاً؟ هل هو ساحر؟<br>هل فعلا لديه الحل السحري لعلاج فيروس سي بدون دواء؟ و علاج الفشل الكلوي بدون غسيل؟<br>ماهي التركيبة السحرية التي يستعملها في المحاليل الوريدية التي يعالج مرضاه بها؟<br>وما هي الخلطة السحرية التي يستعملها لعمل المشروب الفضي و المشروب الذهبي و المشروب الماسي؟<br>ما هي حكاية مر البطارخ والقرنفل والراوند واللبان الدكر في علاج الأمراض الخطيرة؟<br>ما هي جائزة صناع الأمل ولماذا حصل عليها دكتور مجدي يعقوب؟<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا<br><br><br>*** بعض القراءات والفيديوهات المفيدة:<br><br>الأهرام: محمد بن راشد يكرم صناع الأمل.. وتبرعات ٨٨ مليون درهم لمستشفي مجدي يعقوب<br>https://gate.ahram.org.eg/News/2374278.aspx<br><br>Generic drugs - Depovit B12:<br>https://www.ndrugs.com/?s=depovit%20b12#doctor_dosage<br><br>Risk of Hepatocellular Cancer in HCV Patients Treated With Direct-Acting Antiviral Agents:<br>https://pubmed.ncbi.nlm.nih.gov/28642197/<br><br>لمشاهدة فيديو د.محمد ياسر: الرد علي الدكتور جودة محمد عواد || شوف بيعالج السرطان ازاي:<br>https://www.youtube.com/watch?v=bWerCJys3e0&amp;t=16s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(1)صاروخ الطب والهبد والتجارة:<br>https://www.youtube.com/watch?v=-CeoGVlXQuE&amp;t=13s<br><br>لمشاهدة د.محمد القفاص: دكتور جودة محمد عواد(2) وتتوالى ضحاياه وتتكرر روشتاته الموحدة لجميع الامراض ولجميع الاعمار<br>https://www.youtube.com/watch?v=-cgq_vUNz58	published	draft	video	,https://www.youtube.com/embed/nJ-PXJMYAbU	PT1M	0	2	0	0	1	1	ar	\N	1	\N
149	وفاة رئيس تنزانيا بمرض كورونا | الرئيس الذي لم يؤمن بالفيروس مات به!	#shortsللأسف.. تتكرر القصة..كان مقتنعاً أن كورونا مؤامرةولم يقبل أن يدخل لقاح كوفيد إلى بلادهولم يضع أي قوانين أو قرارات تضمن التباعد الاجتماعي أ	uploads/0jot2_uHWfUjg.jpg	El Doctor	LL2actfxkM0	2021-05-22 21:53:13.534+02	2021-05-22 21:53:14.384+02	2021-05-22 21:53:14.522+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/LL2actfxkM0	PT58S	0	1	0	0	1	1	ar	\N	1	\N
152	طبيب مصري شهير في بريطانيا يعرض حياته للخطر ويفضح أسرار شركات اللقاح وشركات الأدوية	#شاهد_قبل_الحذف #فيديو_سيغير_حياتك #اضرار_التطعيمات #نظرية_المؤامرة #حروب_الجيل_الرابع #شبكات_الجيل_الخامس #كيمتريل #رشيد_بتار #دكتور_رشيد_بتار #مجلس_	uploads/0jot2_dE8mB3h.jpg	El Doctor	vdCeRzpzGrg	2021-05-22 21:53:31.279+02	2021-05-22 21:53:32.293+02	2021-05-22 21:53:32.602+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/vdCeRzpzGrg	PT24M10S	0	1	0	0	1	1	ar	\N	1	\N
157	يتّفقُ أن تأتيَ مواسِمُ الشّتاء مع بعض أنواع العدوى..زيّ الانفلونزا.. 🤧	مساء الخير عليكم و موسم ماطِر سعيد.. 💖✨ يتّفقُ أن تأتيَ مواسِمُ الشّتاء مع بعض أنواع العدوى.. زيّ الانفلونزا.. 🤧 ✔️ ايه هي الانفلونزا..؟ الانفلونزا	uploads/0jot2_NGw6IpL.jpg	El Doctor	ytfk-an-taty-mosm-lsht-maa-baad-anoaa-laadozy-lnfl	2021-05-22 21:56:43+02	2021-05-22 21:56:44.336+02	2021-05-22 21:57:46.987+02	هنتكلم النهاردة عن السعال الديكى و هو عدوى بكتيرية تصيب الجهاز التنفسى، و يتميز بكحة شديدة و متتالية قد تستمر نصف دقيقة دون انقطاع يتبعها صوت شبيه بصوت صياح الديك اثناء التنفس. الأعراض بتظهر خلال (٧-١٠) ايام بعد الاصابة بالبكتيريا و اهم هذه الأعراض:-<br>⁦1⃣⁩الكحة الشديدة<br>⁦2⃣⁩سيلان الأنف<br>⁦3⃣⁩ضيق التنفس<br>⁦4⃣⁩احمرار العين و كثره التدميع<br>⁦5⃣⁩ارتفاع درجة الحرارة فى حالة استمرار الأعراض لأكثر من اسبوع او اثنين تزداد الحالة سوءا و يتراكم المخاط فى الممرات الهوائية مما يزيد من صعوبة التنفس و هياج الكحة و التى تؤدى الى...<br>🔴القيئ<br>🔴احمرار او ازرقاق الوجه<br>🔴اعياء شديد عرفنا ان السعال الديكى يحدث نتيجة بكتيريا اسمها....<br>Bordetella pertussis<br>و سهل انتقال العدوى من شخص لاخر عن طريق استنشاق الهواء المحمل بالبكتيريا نتيجة كحة و عطس المريض. طيب مين الاكثر عرضه للاصابة بالمرض؟⁦‼⁩ الاكثر عرضة للاصابة بالمرض هم الاطفال الذين عمرهم اقل من عام ولم يتلقوا المصل او التطعيم الخاص بالمرض و هنا بيصاحب المرض مشاكل اخرى خطيرة مثل...<br>1- الالتهاب الرئوى<br>2- الجفاف و فقد الوزن نتيجة صعوبة التغذية<br>3- تشنجات<br>4- تلف المخ طيب ازاى نمنع الاصابة بالمرض؟⛔ فى تطعيم اسمه اللقاح الثلاثى و الاسم ده لانه بيمنع حدوث ثلاث أمراض و هم السعال الديكى، الخناق (دفتيريا) و الكزاز (تيتانوس) و الجرعة تنقسم على خمس مرات عند الاعمار التالية<br>⁦1⃣⁩شهران<br>⁦2⃣⁩اربعة اشهر<br>⁦3⃣⁩ستة اشهر<br>⁦4️⃣⁩ ١٥ - ١٨ شهر<br>⁦5️⃣⁩ ٤ - ٦ اعوام #الدكتور<br>#طب_ولا_عك<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
151	😰😰ينفع كده يا مصر؟ شكراً يامصر 😥😥	#shortsفيديو صادم للأسف!العالم الان في سباق من أجل تطعيم أكبر عدد من البشر ضد مرض كوفيد19كل دولة لديها هدف أن تغطي شعبها باللقاح خلال مدة معينة..	uploads/0jot2_BvGkZKr.jpg	El Doctor	fWxADMmkgbg	2021-05-22 21:53:23.88+02	2021-05-22 21:53:24.93+02	2021-05-22 21:53:25.146+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/fWxADMmkgbg	PT59S	0	1	0	0	1	1	ar	\N	1	\N
166	المعدل السليم لنزول الوزن | هل المطلوب انك تخسر 20 كيلو في رمضان؟	#shortsافضل طريقة لنزول الوزنلمشاهدة الفيديو الكامل: الحمية ونزول الوزن في رمضان:https://youtu.be/zaHfIHf-fOkلا تنس الإشتراك في القناة والضغط عل	uploads/0jot2_RmJEFqm.jpg	El Doctor	LHMGHVXQQN8	2021-05-22 22:01:43.387+02	2021-05-22 22:01:44.602+02	2021-05-22 22:01:44.786+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/LhMGhVxqqn8	PT53S	0	1	0	0	1	1	ar	\N	1	\N
102	كورونا الصين | الوباء اللي الناس مرعوبة منه | انت تقدر تقضي عليه وتنهيه 😮😮	الفيروس انتشر وأصبح وباء عالمي فعلاً..منظمة الصحة العالمية حذرت من إن ده أخطر عدو ممكن تقابله في حياتك!!ليه؟؟ هو الوضع إيه بالظبط دلوقت؟وهو الفير	uploads/0jot2_XypkW19.jpg	El Doctor	YicD-RPsFkg	2021-05-22 21:45:40.171+02	2021-05-22 21:45:41.208+02	2021-05-22 21:45:42.199+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/YicD-RPsFkg	PT18M47S	0	1	0	0	1	1	ar	\N	1	\N
108	الإنعاش القلبي الرئوي | كيف تنقذ حياة شخص إذا وقع أمامك ميت؟ ❤ | كيف ترجع القلب للنبض بعد التوقف	#CPR #BLS #Cardiopulmonary_resuscitation #الإنعاش_القلبي_الرئويناس كثير قلبها بيتوقف عن النبض في كل ثانية في كل مكان في العالم..وكثير منهم ممكن قلب	uploads/0jot2_swAikQx.jpg	El Doctor	os6qHUi2Nkc	2021-05-22 21:46:12.081+02	2021-05-22 21:46:13.557+02	2021-05-22 21:46:13.896+02	بتتابع قنوات طبية عشان تحافظ على صحتك؟<br>بتشتري فيتامينات ومكملات غذائية وسوبرفودز؟<br>برافو عليك..<br><br>لكن.. هل ده فعلا هو اللي هيحافظ على صحتك؟؟<br>ركز معايا كده دقيقتين عشان نعرف أهم حاجات نعملها عشان فعلا نحافظ على صحتنا..<br><br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو جديد.. كل يوم ثلاثاء.. ٦ م بتوقيت القاهرة.. ٥ م بتوقيت لندن<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>وكل حاجة موجودة على موقع "الدكتور" على الانترنت.. وتقدر تتناقش هناك في أي مواضيع طبية تهمك..<br>www.eldoctor.co.uk<br><br>وماتنسوش.. شيرو الفيديو على قد ماتقدرو.. وهاتو حبايبكم يشتركو في القناة.. عشان اللي جاي هيعجبكم ان شاء الله 🙂<br><br><br>Post production:<br>Samy Rezk<br>https://www.youtube.com/channel/UCCWrGSXCzKwTHotcY1cYgYA<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا<br><br><br><br>*** بعض المصادر المفيدة لتعلم الأساسيات اللي اتكلمت عنها في الفيديو:<br><br>فيديو لصديقي العزيز د.تامر زيدان طبيب المخ والأعصاب على قناة إم بي سي بيشرح فيها أعراض الجلطة الدماغية:<br>https://www.youtube.com/watch?v=EVIEO6OiHes<br><br>فيديو لمؤسسة القلب الأمريكية لتعليم الإنعاش القلبي الرئوي في حالات توقف عضلة القلب:<br>https://www.youtube.com/watch?v=kzPR2WvfKMQ&amp;t=3s<br><br>فيديو يشرح طريقة عمل مناورة هيمليخ لإزالة الانسداد بمجرى الهواء لشخص نتيجة الاختناق بشيء مثل الطعام أو غيره:<br>https://www.youtube.com/watch?v=1YRb2V78_k4	published	draft	video	,https://www.youtube.com/embed/os6qHUi2Nkc	PT7M39S	0	1	0	0	1	1	ar	\N	1	\N
169	علاج الإرتجاع  والحموضة في نهار رمضان | ظبط أكلك	#shortsما هو السبب الرئيسي للحموضة في نهار رمضان؟ما هو العلاج الطبيعي والسهل الذي ينجح في أغلب الحالات؟لمشاهدة الفيديو الكامل: علاج الحموضة | ألم	uploads/0jot2_8lnVvoX.jpg	El Doctor	OlKt9nQSOf4	2021-05-22 22:02:24.902+02	2021-05-22 22:02:26.111+02	2021-05-22 22:02:26.346+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/OlKt9nQSOf4	PT47S	0	1	0	0	1	1	ar	\N	1	\N
59	أو زوجك جاله فشل كلوي	مضطر أقول لحضرتك على خبر وحش🔴🔴... زوجتك جالها فشل كلوي مزمن.. وعشان تعيش.. لازم تعيش على جهاز غسيل الكلى بقية عمرها!!" (أو زوجك جاله فشل كلوي ......	uploads/0jot2_hn44oRQ.jpg	El Doctor	ao-zogk-glh-fshl-kloy	2021-05-22 21:25:34.807+02	2021-05-22 21:25:35.101+02	2021-05-22 21:25:35.313+02	ايه علاقة #التوتّر بالقولون؟ 🤕<br>و ايه هو #القولون أصلًا؟ و ايه اللي بيحصل بالضبط؟ متلازمة #القولون_العصبي أو "القولون" اختصاراً هي مجموعة من الأعراض المُزمنة اللي بتيجي و تروح على فترات.. مُتأثّرةً ببعض العوامل اللي حنقولها دلوقتي..<br><br>✔️ الأوّل كدا نعرف الأعراض دي عبارة عن ايه.. 🤔 🔴 آلام في البطن و تقلّصات أو مغص بيرتاح غالباً بعد دخول الحمّام..<br>🔴 انتفاخ مزمن و غازات زائدة..<br>🔴 أحياناً إسهال وأحياناً إمساك و أحيانًا الاثنين مع بعض بالتّبادل..<br>🔴 الأعراض بتزيد في فترات الضغوط النفسية أو التوتر.. ✔️ طيب.. ليه الموضوع دا بيحصل..؟ ✋🏻 الحقيقة مافيش حاجة واضحة نقدر نقول إنّها السبب.. لإنّ في القولون العصبي.. جهاز القولون ( الأمعاء الغليظة ) بتكون سليمة في بنيتها.. على عكس أمراض ثانية أخطر زيّ مرض التهاب الأمعاء ( IBD )..<br>المشكلة في القولون العصبي بتكون في انقباض عضلات الأمعاء.. لإنّ الانقباضات دي هي اللي بتحرّك الأكل في الأمعاء.. فلمّا الانقباضة بتكون طويلة شوية بتأخر حركة الأمعاء و ساعتها يحصل الإمساك و الشعور بالتقلصات و الألم.. و لمّا تبقى قصيرة بتسرّع حركة الأمعاء فيحصل إسهال مع التقلّصات و الألم كمان.. طبعًا فيه عوامل أخرى كثير قد تكون مشاركة في حدوث القولون العصبي و لكن مش حنطوّل عليكم.. ✔️ التوتّر بقى و كمان بعض الأطعمة زيّ منتجات الألبان و الملفوف و القرنبيط و البروكلي و القمح و الأرزّ و الحبوب الكاملة ممكن تجعل الأعراض دي أكثر سوءاً في فترة حدوثها.. بس زي ما عرفنا مش هي اللي بتسببها.. هي فقط مُثيرات.. والمثيرات دي بتختلف من انسان للتاني.. وكل واحد بيكون غالباً عارف ايه اللي بيتعبه.. 🔴 عشان كدا يُنصح دائمًا بتعديل النظام الغذائي في فترة حدوث الأعراض.. نبعد عن الأطعمة اللي بتتعب..<br>🔴 و نكثّر من السّوائل و الأطعمة الغنيّة بالألياف..<br>🔴 و الطّبيب المختص حيوصف لنا دواء حسب العرض اللي بنعاني منه..<br>🔴 و أخيراً ما تنسوش تمارسوا الرّياضة و تحصلوا على قدر كافي من النوم عشان تهدّوا التوتّر و القلق.. 😴💤 و دمتم أصحّاءَ و سالمين.. 🌸 #شير_في_الخير<br>#طب_ولا_عك<br>#مريم_جاسر	published	draft	article	\N	\N	0	1	0	0	1	1	ar	\N	1	\N
167	صداع شديد في رمضان بسبب توقفي عن شرب القهوة | علاج صداع نقص الكافيين أثناء الصيام	#shortsلمشاهدة الفيديو الكامل: علاج الحموضة | ألم البطن | الصداع | الامساك | الهبوط والتعب | الدوخة | المشاكل الصحية في رمضان:https://youtu.be/9p1t	uploads/0jot2_VGJyTKH.jpg	El Doctor	8LbKJkj1-qY	2021-05-22 22:02:12.03+02	2021-05-22 22:02:13.172+02	2021-05-22 22:02:13.333+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/8LbKJkj1-qY	PT40S	0	1	0	0	1	1	ar	\N	1	\N
4	الدحيح - الاسبتالية - أخضر- محمد الناظر- إيجيكولوجي- طب ولاعك🤔	حلقة خاصة من برنامجنا "طب ولا عك؟"شفنا عك كت	uploads/0jot2_OU0y9d6.jpg	El Doctor	0D9UJf17tO8	2021-05-22 19:40:02.76+02	2021-05-22 19:40:03.423+02	2021-05-22 19:40:03.746+02	حلقة خاصة من برنامجنا "طب ولا عك؟"<br>شفنا عك كتير في الحلقات اللي فاتت 😅😅<br>خلينا بقى نشوف شوية طب بجد 😊<br><br>مفيش مصادر للحلقة دي زي ما قلنا.. القنوات اللي اتكلمنا عليها هي:<br><br><br>قناة AJ+ كبريت (دي فيها برنامجين: الدحيح والاسبتالية)<br>https://www.youtube.com/channel/UC-4KnPMmZzwAzW7SbVATUZQ<br><br>د.محمد الناظر (وده لوحده له قناتين 😏)<br>كلام في الصميم: <br>https://www.youtube.com/user/melnazer<br>و الناظر كلينيك :<br>https://www.youtube.com/channel/UCtbOaxi2Q_xHzFOQVvcVNVg<br><br>قناة أخضر (من كتاب لحكاية):<br>https://www.youtube.com/channel/UCtUor2SqesPS3b_SMFtLT_w<br><br>قناة أحمد سمير عيد: إيجيكولوجي:<br>https://www.youtube.com/user/TheAsead<br><br>د.أحمد رمزي - في العضل:<br>https://www.youtube.com/user/ahmedramzyscorpion<br><br>Virolvlog بتاعة د.إسلام حسين<br>https://www.youtube.com/results?search_query=virolvlog	published	draft	video	,https://www.youtube.com/embed/0D9UJf17tO8	PT14M18S	0	1	0	0	1	1	ar	\N	1	\N
124	الإهمال والخطأ الطبي | سبب وفاة مصطفى حفناوي | الكلام المهم اللي لازم تعرفه	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..لكن.. ازاي نقدر نقول إن ده خطأ طبي؟ و امتى يجب معاقبة الطبيب؟هل مصطفى حفناوي	uploads/0jot2_P93qoz2.jpg	El Doctor	vcV0xPPHKVI	2021-05-22 21:47:42.723+02	2021-05-22 21:47:43.654+02	2021-05-22 21:47:43.908+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/vcV0xPPHKVI	PT12M6S	0	1	0	0	1	1	ar	\N	1	\N
165	نصائح عملية سريعة لنزول الوزن والتخسيس في رمضان | حمية سليمة صحية ومجربة	#shortsنصائح عملية سريعة للتخسيس ونزول الوزن في رمضانلمشاهدة الفيديو الكامل: الحمية ونزول الوزن في رمضان:https://youtu.be/zaHfIHf-fOkلا تنس الإش	uploads/0jot2_XTBUAUu.jpg	El Doctor	NNKPG4BXf2I	2021-05-22 22:01:19.605+02	2021-05-22 22:01:21.042+02	2021-08-15 09:39:06.335031+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/NNKPG4BXf2I	PT58S	0	3	0	0	1	1	ar	\N	1	\N
5	ثانية واحدة	لو أول مرة تشرفنا.. خد لفة وشوف الفيديوهات دي	uploads/0jot2_eNCHWcP.jpg	El Doctor	h37ayJ-auEc	2021-05-22 19:40:39.007+02	2021-05-22 19:40:39.617+02	2021-09-26 12:42:03.616273+02	لو أول مرة تشرفنا.. خد لفة وشوف الفيديوهات دي مفيدة والمعلومات دي جديدة وتستاهل ولا لأ؟<br>ولو حسيتها مفيدة.. يشرفنا تشترك معانا طبعاً و تشارك القناة والفيديوهات مع حبايبك.. خليها من باب نشر علم نافع 😇<br><br>وماتنساش تشترك في صفحتنا على فيس بوك:<br>https://www.facebook.com/Eldoctooor<br><br>وأخيراً: لو حضرتك دكتور.. ماتنساش ان فيه قسم في القناة.. "للأطباء فقط"<br><br>نورتنا 😊	published	draft	video	,https://www.youtube.com/embed/h37ayJ-auEc	PT1M13S	0	2	0	0	1	1	ar	\N	1	\N
13	حصوات الكلى والتهابات الكلى ومجرى البول - في دقيقتين😎	عايز تحافظ على كليتك؟خايف على الكليتين وعايز تعرف تعمل إيه عشان تحمي نفسك من الفشل الكلوي لا قدر الله؟الخلاصة.. في دقيقتين.. معلومتين مركزين تلخ	uploads/0jot2_GM76Q9C.jpg	El Doctor	PMB6XVRCA7K	2021-05-22 19:51:36.308+02	2021-05-22 19:51:36.944+02	2021-08-15 12:39:23.159176+02	عايز تحافظ على كليتك؟<br><br>خايف على الكليتين وعايز تعرف تعمل إيه عشان تحمي نفسك من الفشل الكلوي لا قدر الله؟<br><br>الخلاصة.. <br>في دقيقتين.. <br>معلومتين مركزين تلخيص للي قلناه الأسبوع اللي فات..<br><br>لو عايز معلومات أكتر.. اتفرج على الحوار بين اثنين من دكاترة الكلى في بريطانيا من هنا:<br>https://youtu.be/5iuqXHBXIU0<br><br>ولو عايز تتفرج على بعض العك والممارسات والمعتقدات الخاطئة في علاج أمراض الكلى.. اتفرج من هنا:<br>https://youtu.be/4h2w0qWJjCM<br><br>** لايك وتابع صفحة الدكتور على فيس بوك:<br>https://www.facebook.com/Eldoctooor/<br><br>مشاهدة ممتعة..<br>من بريطانيا:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>مستشفى جامعة لستر<br><br>Song:<br> MBB - Palm Trees (Vlog No Copyright Music)<br>Music provided by Vlog No Copyright Music.<br>Video Link: https://youtu.be/jr0e9XzOPn4	published	draft	video	,https://www.youtube.com/embed/pMb6xvRcA7k	PT2M53S	0	2	0	0	1	2	ar	\N	1	\N
131	لماذا نشعر بالهم | اكتئاب الغدة الدرقية | الكيتو دايت وعلاج الاكتئاب | الكلام المهم	لو عايز تعرف اهم كلام سليم عن الغدة الدرقية وامراضها.. وعايز تعرف علاقة الغدة الدرقية بالاكتئاب.. وهل الكيتو دايت فعلاً بيسبب الاكتئاب ولا بيعالجه..	uploads/0jot2_8vufTxP.jpg	El Doctor	_Ghczm_bFA0	2021-05-22 21:49:46.92+02	2021-05-22 21:49:47.827+02	2021-08-15 12:46:21.115963+02	الإهمال والخطأ الطبي بيتسبب في أضرار و مضاعفات وأحياناً وفيات كتير..<br>لكن.. <br>ازاي نقدر نقول إن ده خطأ طبي؟ <br>و امتى يجب معاقبة الطبيب؟<br><br>هل مصطفى حفناوي مات بسبب إهمال الأطباء؟ أو بسبب خطأ طبي؟<br>مين اللي يقدر يحدد و ازاي؟<br>إيه هو السبب الحقيقي لوفاة مصطفى حفناوي؟<br>ازاي يتم التعامل مع أخطاء أو إهمال الأطباء بالشكل الصحيح؟<br><br><br>في حالة حذف الفيديو يمكنكم مشاهدته هو وكل الفيديوهات الأخرى على موقع الدكتور:<br>www.eldoctor.co.uk<br><br>ماتنسوش تشتركو في القناة.. وتضغطو على الجرس عشان يوصلكم فيديو طبي جديد كل أسبوع<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بعدد من مستشفيات بريطانيا	published	draft	video	,https://www.youtube.com/embed/_Ghczm_bFA0	PT20M27S	0	2	0	0	1	1	ar	\N	1	\N
136	في دقيقتين: الطفرة الجديدة اللي حصلت لفيروس كورونا في بريطانيا | هل اللقاح لسه فعال؟	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..أشوفكم بكرة وبعده على غير العادة في فيديوه	uploads/0jot2_6TklxFm.jpg	El Doctor	t9OR0jucSlE	2021-05-22 21:50:17.693+02	2021-05-22 21:50:18.997+02	2021-08-15 20:30:55.466429+02	رسالة سريعة جداً ومهمة بخصوص الوضع الحالي..<br><br>شكراً لمئات الرسائل اللي وصلتني تسأل عن غياب الشهر اللي فات..<br><br>أشوفكم بكرة وبعده على غير العادة في فيديوهات مهمة جداً جداً جداً جداً.. انتظروني<br><br><br>لا تنس الإشتراك في القناة والضغط على علامة الجرس عشان يوصلك فيديو جديد كل أسبوع<br><br>رابط موقع الدكتور لمشاهدة كل الفيديوهات المحذوفة:<br>www.eldoctor.co.uk<br><br>وتابعو صفحة "الدكتور" على فيس بوك عشان توصلكم معلومات طبية صحيحة مهمة كل يوم.... بيقوم بإعدادها فريق من الأطباء والصيادلة المتميزين.. ومش موجودة في أي مكان تاني..<br>https://www.facebook.com/Eldoctooor/<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor<br><br>Loudness &amp; Clarity by Joakim Karud http://youtube.com/joakimkarud<br>Music provided by Music for Creators https://youtu.be/flBaUuouSxA<br><br>تحياتي:<br>د.محمد منصور<br>طبيب الباطنة والكلى<br>بمستشفيات جامعة ليستر- بريطانيا	published	draft	video	,https://www.youtube.com/embed/t9OR0jucSlE	PT2M19S	0	2	0	0	1	1	ar	\N	1	\N
154	✔️ بعض النّصائح لعلاج الشّد العضلي:	الشّدّ العضلي.. 📣 ✔️ هو عبارة عن انقباض مُفاجِئ و لا إرادي في أحد العضلات ممّا يسبب الألم و عدم القدرة على استخدام العضلة المُصابة..✔️ طب الموضوع دا	uploads/0jot2_07QYbXA.jpg	El Doctor	baad-lnsh-laalg-lshd-laadly	2021-05-22 21:53:54.196+02	2021-05-22 21:53:54.721+02	2021-05-22 21:53:54.845+02	..... الذبحة هو نوع من أنواع الم الصدر الشديد الناتج عن ضعف تدفق الدم الى القلب.<br>و الذبحة عرض من اعراض امراض شريان القلب التاجى.<br>الالم الناتج عن الذبحة الصدرية بيكون شبيه بوجود حمل ثقيل على الصدر او الشعور بعصر منطقة الصدر.<br>بالرغم من كثرة تكرار حدوث الذبحة الا انه يصعب تمييزها عن باقى الام الصدر حتى الان،لذلك يفضل سرعة استشارة الطبيب فى حالة الشعور بألم مستمر فى الصدر. طب ايه الأعراض؟<br>⁦1️⃣⁩ألم شديد و حرقان فى منطقة الصدر<br>⁦2️⃣⁩الم فى الذراعين و الرقبة واحيانا يمتد الالم للظهر<br>⁦3️⃣⁩صعوبة التنفس<br>⁦4️⃣⁩الشعور بالدوخة و الدوران<br>⁦5️⃣⁩التعرق المستمر ايه انواع الذبحة؟<br>⁦1️⃣⁩الذبحة المستقرة<br>⁦2️⃣⁩الذبحة الغير مستقرة<br>⁦3️⃣⁩الذبحة الغير معتادة الذبحة المستقرة⁦‼️⁩<br>-تحدث نتيجة بذل مجهود كبير و التحميل الزائد على عضلة القلب<br>-تستمر لمدة قصيرة(5 دقائق او اقل)<br>-يختفى الألم و الاعراض بالراحة دون الحاجة للأدوية الذبحة الغير مستقرة⁦‼️⁩<br>-غير متوقعة الحدوث<br>-تحدث اثناء الراحة<br>-أشد خطورة من الذبحة المستقرة و تستمر لمدة اطول(30 دقيقة او اكثر)<br>-احيانا ما تتسبب فى نوبة قلبية ايه اسباب الذبحة؟<br>عرفنا انها بتحصل نتجية انخفاض معدل تدفق الدم الى القلب، الدم مسئول عن نقل الاكسجين الى القلب، وصول كمية غير كافية من الاكسجين تتسبب فى حدوث حالة مرضية تعرف ب الاقفار.(الاسكيميا)<br>انخفاض تدفق الدم ده سببه ضيق فى الشرايين نتجية بعض الترسبات بها و الذى يعرف ب تصلب الشرايين مما يؤدى لانخفاض مستوى الاكسجين فى القلب و عدم وجود فرصة لعضلة القلب أن تستريح. ايه العوامل المساعدة لحدوث الذبحة؟<br>⁦1️⃣⁩التدخين و الافراط فى المشروبات الكحولية<br>⁦2️⃣⁩مرض السكر<br>⁦3️⃣⁩ارتفاع ضغط الدم<br>⁦4️⃣⁩ارتفاع مستوى الكوليستيرول فى الدم<br>⁦5️⃣⁩وجود تاريخ وراثى لأمراض القلب فى العائلة<br>⁦6️⃣⁩التقدم فى العمر<br>⁦7️⃣⁩زيادة الضغط العصبى و التوتر<br>⁦8️⃣⁩السمنة المفرطة<br>⁦9️⃣⁩غياب العامل الرياضى و النشاط من حياتنا اليومية ازاى نقدر نتجنب الاصابة بالذبحة؟<br>-الاقلاع عن التدخين و الحد من المشروبات الكحولية🥃🚬🚫<br>-مراقبة و ضبط ضغط الدم و معدل السكر و الكوليستيرول فى الدم<br>-تناول طعام صحى لتجنب زيادة الوزن🍔🌭🥪❌<br>-ممارسة الرياضه يوميا دون ارهاق عضلة القلب🚴🏃<br>-الابتعاد عن التوتر و العصبية #طب_ولا_عك<br>#الدكتور<br>#زياد_منصور	published	draft	article	\N	\N	0	1	0	0	4	1	ar	\N	1	\N
25	هل فعلاً تم علاجك من مرضك؟ [الأسباب الحقيقية للأعراض] الفرق بين العرض والمرض	جالك أنيميا (فقر دم) قبل كده؟؟ طيب اتعالجت منها؟؟ يبقى المشكلة كده انتهت؟؟نفسك مقلوبة وبترجعي؟  ياترى ده خبر حلو ونقول مبروك؟ ولا  خبر وحش وفيه مصيبة	uploads/0jot2_Tx4quoK.jpg	El Doctor	4a2_U6D49dU	2021-05-22 19:56:31+02	2021-05-22 19:56:31.974+02	2021-08-15 20:26:32.324621+02	جالك أنيميا (فقر دم) قبل كده؟؟ طيب اتعالجت منها؟؟ يبقى المشكلة كده انتهت؟؟<br>نفسك مقلوبة وبترجعي؟  ياترى ده خبر حلو ونقول مبروك؟ ولا  خبر وحش وفيه مصيبة لا قدر الله؟؟<br>عندك دوخة؟ ونفسك مكروش؟ ياترى دي عدوى وهتخف لوحدها؟؟ ولا ده فشل في عضلة القلب ولازم تدخل مستشفى؟؟<br><br>ايه هو الفرق بين العرض والمرض؟<br><br>النهاردة مش هنجاوب على كل الأسئلة دي.. لكن هنتفق على أساسيات لازم تعرفها كمريض قبل ماتفكر تروح لأي دكتور..<br><br>من بريطانيا:<br>د.محمد منصور<br>طبيب الأمراض الباطنة وأمراض الكلى<br>مستشفى جامعة لستر<br><br>Media Partner:<br>Breeze Studio<br>https://www.facebook.com/BreezeStudioEgypt<br><br>و عشان يوصلك معلومات طبية سليمة بانتظام.. تابع صفحة "الدكتور" على فيس بوك:<br>https://www.facebook.com/Eldoctooor/<br><br>وكل المعلومات الطبية والفيديوهات وأكثر.. موجودة على موقع "الدكتور" على الانترنت:<br>www.eldoctor.co.uk<br><br>واتشرف بمتابعتكم على انستاجرام:<br>https://www.instagram.com/eldoctoooor/<br><br>واتشرف بمتابعتكم لمدوناتي:<br>https://molhem.com/@eldoctor	published	draft	video	,https://www.youtube.com/embed/4a2_U6D49dU	PT7M23S	0	2	0	0	1	4	ar	\N	1	\N
38	تحذير لكل بنت متجوزة وبتفكر تحمل.. أو تعرف واحدة حبيبتها متجوزة وحامل	#نصيحة_سريعة: #كبسولة: نسبة الولادات القيصرية في مصر وصلت لمعدل مرعب!! 😳 النسبة تخطت ال 70% للولادات اللي جوه مستشفيات! بينما كانت حوالي 26% سنة 2005	uploads/0jot2_xVkDZoW.jpg	El Doctor	ththyr-lkl-bnt-mtgoz-obtfkr-thml-ao-taarf-ohd-hbyb	2021-05-22 20:38:21.378+02	2021-05-22 20:38:21.658+02	2021-08-15 20:26:59.98991+02	<p>#نصيحة_سريعة: #كبسولة: نسبة الولادات القيصرية في مصر وصلت لمعدل مرعب!! 😳</p><p> النسبة تخطت ال 70% للولادات اللي جوه مستشفيات! بينما كانت حوالي 26% سنة 2005!! يعني..</p><p> بعد ماكانت ربع ستات مصر بس بتولد قيصري سنة 2005 (مع إن الدكاترة كانوا بيعرفو يولدو قيصري في الوقت ده!!) .. </p><p>دلوقت حوالي الربع بس بيولدو طبيعي!! (مع إن أسباب الولادة القيصري ماتغيرتش!! لكنها بقت موضة!! عند كتير من الستات وعند كتير من الداكترة للأسف!!) والكلام يكاد ينطبق على كل الدول العربية!! فاضل أقول إن دولة زي بريطانيا .. أقل من 25% من الولادات بتكون قيصري (منهم 11% بس مترتب لها من البداية.. والباقي طوارئ) .. وفي السويد 17% بس بيولدو قيصري (سواء مترتبه أو طوارئ!) متخيلة الفرق بيننا وبينهم أد إيه؟؟ 😓 بالمناسبة.. اللي أطلق التحذير ده عن اللي بيحصل في مصر كان الصحافة العالمية زي الجارديان والديلي ميل!! للأسف.. بقينا مشهورين أوي يا خال!! 😏 إقرأي عن الفرق بين الولادة الطبيعية والقيصرية.. اعرفي مميزات وأخطار كل واحدة فيهم.. وقرري مع دكتورك إيه المناسب بناءاً على صحتك وصحة ووضع جنينك.. مش بناءاً على بنت خالتك ولدت ازاي ولا الموضة إيه السنة دي!! 🤨🤔 #صحتك_أغلى_ما_تملك #شير_في_الخير<br>#حامل #طب_ولا_عك #الدكتور #محمد_منصور</p>	published	draft	article	\N	\N	0	2	0	0	1	3	ar	\N	1	\N
\.


--
-- Data for Name: blog_post_favourites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post_favourites (id, post_id, user_id) FROM stdin;
1	43	2
\.


--
-- Data for Name: blog_post_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post_likes (id, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: blog_post_thumbs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_post_thumbs (id, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: blog_vote; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blog_vote (id, vote, post_id, user_id, publish) FROM stdin;
\.


--
-- Data for Name: boards_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_category (id, name, slug, description, excerpt, image, views, lft, rght, tree_id, level, parent_id, "slugLang") FROM stdin;
\.


--
-- Data for Name: boards_commentt; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_commentt (id, content, publish, status, lft, rght, tree_id, level, "Topic_id", author_id, parent_id) FROM stdin;
\.


--
-- Data for Name: boards_commentt_NotfFaId; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."boards_commentt_NotfFaId" (id, commentt_id, user_id) FROM stdin;
\.


--
-- Data for Name: boards_favtopic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_favtopic (id, vote, publish, created_at, updated_at, post_id, user_id) FROM stdin;
1	t	2021-10-24 09:52:59.050434+02	2021-10-24 09:52:59.051432+02	2021-10-24 09:52:59.101402+02	1	2
\.


--
-- Data for Name: boards_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_notification (id, url, "fullName", dr, user_id) FROM stdin;
\.


--
-- Data for Name: boards_topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_topic (id, title, excerpt, image, image_caption, slug, publish, created_at, updated_at, content, status, pin, video_url, video_duration, like_count, views, thumbsup, thumbsdown, author_id, category_id, "languageCode", nm, "languageName_id", "slugLang") FROM stdin;
1	اول سؤال	0	Topics/default.jpg	El Doctor	D1qHgHEr	2021-05-23 23:09:04.671+02	2021-05-23 23:09:04.733+02	2021-10-24 10:05:00.880373+02	{"delta":"{\\"ops\\":[{\\"insert\\":\\"اول سؤال هنا\\\\n\\"}]}","html":"<p>اول سؤال هنا</p>"}	published	draft	\N	\N	1	2	0	0	2	\N	2021-10-24 07:43:30.291327+00:00	2	\N	\N
\.


--
-- Data for Name: boards_topic_NotfFaV; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."boards_topic_NotfFaV" (id, topic_id, user_id) FROM stdin;
1	1	2
\.


--
-- Data for Name: boards_topic_favourites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_topic_favourites (id, topic_id, user_id) FROM stdin;
1	1	2
\.


--
-- Data for Name: boards_topic_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_topic_likes (id, topic_id, user_id) FROM stdin;
2	1	2
\.


--
-- Data for Name: boards_topic_thumbs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_topic_thumbs (id, topic_id, user_id) FROM stdin;
\.


--
-- Data for Name: boards_topiclang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_topiclang (id, title, slug, publish, created_at, updated_at, author_id) FROM stdin;
\.


--
-- Data for Name: boards_votet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_votet (id, vote, "Topic_id", user_id, created_at, publish, updated_at) FROM stdin;
\.


--
-- Data for Name: categories_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories_category (id, name, slug, active, thumbnail, thumbnail_width, thumbnail_height, "order", alternate_title, alternate_url, description, meta_keywords, meta_extra, lft, rght, tree_id, level, parent_id) FROM stdin;
\.


--
-- Data for Name: categories_categoryrelation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories_categoryrelation (id, object_id, relation_type, category_id, content_type_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-05-22 19:46:14.275+02	8	التخسيس وأنواع الدايت - الكيتوجينيك دايت [حمية الكيتو] - خطوة بخطوة - كيف تخسر وزنك بسرعة	2	[{"changed": {"fields": ["Category"]}}]	15	2
2	2021-05-22 19:50:56.015+02	12	إلتهابات البول وحصوات الكلى - حوار مع دكتور - إسأل الخبير	2	[{"changed": {"fields": ["Category"]}}]	15	2
3	2021-05-22 19:58:31.232+02	25	هل فعلاً تم علاجك من مرضك؟ [الأسباب الحقيقية للأعراض] الفرق بين العرض والمرض	2	[{"changed": {"fields": ["Category"]}}]	15	2
4	2021-05-22 20:19:40.378+02	35	النصائح الأحد عشر للحماية من السرطان	2	[{"changed": {"fields": ["Category"]}}]	15	2
5	2021-05-22 20:19:58.052+02	34	النصايح العشرة عشان تحافظ على كليتك	2	[{"changed": {"fields": ["Category"]}}]	15	2
6	2021-05-22 20:21:09.953+02	36	بتاكل سوسيس ولانشون وببيروني وهوت دوج هل بتجيب سرطان	2	[{"changed": {"fields": ["Category"]}}]	15	2
7	2021-05-22 20:58:05.242+02	42	فيرس التهاب الكبد الوبائي سي مهم انك تعرف فيه نقط كدا تكفيك لثقافتك الشخصية وتساعد بيها اللى حوليك.	2	[{"changed": {"fields": ["Author"]}}]	15	2
8	2021-05-22 20:58:30.178+02	3	mohamedABd	2	[{"changed": {"fields": ["FullName"]}}]	1	2
9	2021-05-22 21:01:36.383+02	42	فيرس التهاب الكبد الوبائي سي مهم انك تعرف فيه نقط كدا تكفيك لثقافتك الشخصية وتساعد بيها اللى حوليك.	2	[{"changed": {"fields": ["Category"]}}]	15	2
10	2021-05-22 21:06:40.35+02	45	بريد العيادة | الرد على تعليقات حلقة الحجامة	2	[{"changed": {"fields": ["Slug"]}}]	15	2
11	2021-05-22 21:16:26.271+02	4	z	2	[{"changed": {"fields": ["FullName"]}}]	1	2
12	2021-05-22 21:17:04.381+02	53	كل يوم بنسمع عن مريض توفى بسبب سكتة قلبية	2	[{"changed": {"fields": ["Author"]}}]	15	2
13	2021-05-22 21:20:38.159+02	5	mg	2	[{"changed": {"fields": ["FullName"]}}]	1	2
14	2021-05-22 21:21:17.813+02	56	ايه علاقة #التوتّر بالقولون؟ 🤕و ايه هو #القولون أصلًا؟ و ايه اللي بيحصل بالضبط؟	2	[{"changed": {"fields": ["Author"]}}]	15	2
15	2021-05-22 21:42:11.992+02	91	كثير منّنا حصل له ألم في الظّهر لسبب أو لآخر..إجهاد في تمرين أو في شغل قعد فيه لفترة طويلة.. حركة ع	2	[{"changed": {"fields": ["Author"]}}]	15	2
16	2021-05-22 21:44:48.015+02	100	فيروس كورونا وعدوى الجهاز التنفسي | إزاي تحمي نفسك؟	2	[{"changed": {"fields": ["Slug"]}}]	15	2
17	2021-05-22 21:57:46.997+02	157	يتّفقُ أن تأتيَ مواسِمُ الشّتاء مع بعض أنواع العدوى..زيّ الانفلونزا.. 🤧	2	[{"changed": {"fields": ["Author"]}}]	15	2
18	2021-05-22 22:07:17.589+02	5	mg	2	[{"changed": {"fields": ["Dr"]}}]	1	2
19	2021-05-22 22:07:31.272+02	4	z	2	[{"changed": {"fields": ["Dr"]}}]	1	2
20	2021-05-22 22:07:45.253+02	3	mohamedABd	2	[{"changed": {"fields": ["Dr"]}}]	1	2
21	2021-05-22 22:08:09.81+02	2	a	2	[{"changed": {"fields": ["Dr"]}}]	1	2
22	2021-05-22 22:08:58.535+02	2	a	2	[{"changed": {"fields": ["FullName"]}}]	1	2
23	2021-05-22 22:09:22.537+02	1	m	2	[{"changed": {"fields": ["Dr"]}}]	1	2
24	2021-05-22 22:10:03.191+02	1	m	2	[{"changed": {"fields": ["FullName"]}}]	1	2
25	2021-05-23 21:14:40.11+02	5	mg	2	[{"changed": {"fields": ["Avatar"]}}]	1	2
26	2021-05-23 21:14:52.515+02	4	z	2	[{"changed": {"fields": ["Avatar"]}}]	1	2
27	2021-05-23 21:15:08.009+02	1	m	2	[{"changed": {"fields": ["Avatar"]}}]	1	2
28	2021-05-23 21:19:27.039+02	4	z	2	[{"changed": {"fields": ["Avatar"]}}]	1	2
29	2021-05-23 22:51:21.169+02	3	mohamedABd	2	[{"changed": {"fields": ["Avatar"]}}]	1	2
30	2021-05-23 22:52:28.346+02	3	mohamedABd	2	[{"changed": {"fields": ["Facebook"]}}]	1	2
31	2021-05-23 22:52:53.74+02	5	mg	2	[{"changed": {"fields": ["Facebook"]}}]	1	2
32	2021-05-23 22:53:35.443+02	4	z	2	[{"changed": {"fields": ["Facebook"]}}]	1	2
33	2021-05-23 22:55:52.824+02	2	a	2	[{"changed": {"fields": ["Avatar", "Facebook"]}}]	1	2
34	2021-05-23 23:03:58.674+02	2	ألم الصدر وجلطة القلب والطب النبوي - طب ولا عك - الحلقة الثانية	2	[{"changed": {"fields": ["Pin"]}}]	15	2
35	2021-05-23 23:04:47.34+02	35	النصائح الأحد عشر للحماية من السرطان	2	[{"changed": {"fields": ["Pin"]}}]	15	2
36	2021-05-23 23:06:48.853+02	37	التخسيس وأنواع الدايت وشرح مفصل للكيتوجينيك دايت على أساس علمي وطبي	2	[{"changed": {"fields": ["Pin"]}}]	15	2
37	2021-06-09 14:06:09.574779+02	1	مقالات طبية – الدكتور	1	[{"added": {}}]	33	2
38	2021-08-15 09:37:33.180188+02	1	1	1	[{"added": {}}]	34	2
39	2021-08-15 09:38:06.522433+02	176	انضم إلى جروب الدكتور على فيسبوك | المكان الأفضل للنقاش في كل الأمور الطبية والعلاج والتغذية	2	[{"changed": {"fields": ["LanguageN", "LanguageC"]}}]	15	2
40	2021-08-15 10:19:26.267494+02	175	دور الصيدلي الحقيقي والصيادلة التجار على يوتيوب | د.باهر السعيد ود.مايكل جوده ود.محمد العزب وغيرهم	2	[{"changed": {"fields": ["LanguageC"]}}]	15	2
41	2021-08-17 17:44:13.514132+02	175	دور الصيدلي الحقيقي والصيادلة التجار على يوتيوب | د.باهر السعيد ود.مايكل جوده ود.محمد العزب وغيرهم	2	[{"changed": {"fields": ["LanguageName"]}}]	15	2
42	2021-09-14 13:56:23.216512+02	176	انضم إلى جروب الدكتور على فيسبوك | المكان الأفضل للنقاش في كل الأمور الطبية والعلاج والتغذية	2	[{"changed": {"fields": ["Video url"]}}]	15	2
43	2021-09-25 13:16:44.687623+02	1	onePage	1	[{"added": {}}]	17	2
44	2021-09-26 17:01:25.111877+02	171	جودة محمد عواد | تعلم النصب بلا معلم | الفرق بين الطبيب المتخصص وتاجر البط النصاب	2	[{"changed": {"fields": ["LanguageCode"]}}]	15	2
45	2021-10-24 11:57:40.042752+02	176	انضم إلى جروب الدكتور على فيسبوك | المكان الأفضل للنقاش في كل الأمور الطبية والعلاج والتغذية	2	[{"changed": {"fields": ["Image"]}}]	15	2
46	2021-10-24 12:07:31.129123+02	176	انضم إلى جروب الدكتور على فيسبوك | المكان الأفضل للنقاش في كل الأمور الطبية والعلاج والتغذية	2	[{"changed": {"fields": ["Image"]}}]	15	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	accounts	profile
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	sites	site
9	account	emailaddress
10	account	emailconfirmation
11	socialaccount	socialaccount
12	socialaccount	socialapp
13	socialaccount	socialtoken
14	blog	category
15	blog	post
16	blog	vote
17	blog	page
18	blog	diseases
19	blog	comment
20	blog	bodyorgans
21	taggit	tag
22	taggit	taggeditem
23	django_summernote	attachment
24	categories	category
25	categories	categoryrelation
26	robots	rule
27	robots	url
28	boards	category
29	boards	topic
30	boards	votet
31	boards	notification
32	boards	commentt
33	accounts	sitename
34	blog	langpost
35	accounts	followuser
36	blog	favpost
37	boards	topiclang
38	boards	favtopic
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-22 18:49:32.21627+02
2	auth	0001_initial	2021-05-22 18:49:32.812827+02
3	account	0001_initial	2021-05-22 18:49:33.842788+02
4	account	0002_email_max_length	2021-05-22 18:49:34.151679+02
5	accounts	0001_initial	2021-05-22 18:49:34.28129+02
6	accounts	0002_auto_20210522_1116	2021-05-22 18:49:34.409054+02
7	accounts	0003_auto_20210522_1118	2021-05-22 18:49:34.426905+02
8	accounts	0004_auto_20210522_1119	2021-05-22 18:49:34.441325+02
9	accounts	0005_auto_20210522_1119	2021-05-22 18:49:34.457361+02
10	accounts	0006_auto_20210522_1140	2021-05-22 18:49:34.474927+02
11	accounts	0007_auto_20210522_1157	2021-05-22 18:49:34.490873+02
12	admin	0001_initial	2021-05-22 18:49:34.579766+02
13	admin	0002_logentry_remove_auto_add	2021-05-22 18:49:34.710266+02
14	admin	0003_logentry_add_action_flag_choices	2021-05-22 18:49:34.723256+02
15	contenttypes	0002_remove_content_type_name	2021-05-22 18:49:34.765116+02
16	auth	0002_alter_permission_name_max_length	2021-05-22 18:49:34.778107+02
17	auth	0003_alter_user_email_max_length	2021-05-22 18:49:34.7891+02
18	auth	0004_alter_user_username_opts	2021-05-22 18:49:34.801093+02
19	auth	0005_alter_user_last_login_null	2021-05-22 18:49:34.812089+02
20	auth	0006_require_contenttypes_0002	2021-05-22 18:49:34.815085+02
21	auth	0007_alter_validators_add_error_messages	2021-05-22 18:49:34.828077+02
22	auth	0008_alter_user_username_max_length	2021-05-22 18:49:34.865512+02
23	auth	0009_alter_user_last_name_max_length	2021-05-22 18:49:34.877239+02
24	auth	0010_alter_group_name_max_length	2021-05-22 18:49:34.889514+02
25	auth	0011_update_proxy_permissions	2021-05-22 18:49:34.901144+02
26	auth	0012_alter_user_first_name_max_length	2021-05-22 18:49:34.913346+02
27	taggit	0001_initial	2021-05-22 18:49:35.067239+02
28	taggit	0002_auto_20150616_2121	2021-05-22 18:49:35.362832+02
29	taggit	0003_taggeditem_add_unique_index	2021-05-22 18:49:35.417028+02
30	blog	0001_initial	2021-05-22 18:49:36.802095+02
31	boards	0001_initial	2021-05-22 18:49:41.094243+02
32	categories	0001_initial	2021-05-22 18:49:53.276179+02
33	categories	0002_auto_20170217_1111	2021-05-22 18:49:54.115712+02
34	categories	0003_auto_20200306_1050	2021-05-22 18:49:54.364355+02
35	categories	0004_auto_20200517_1832	2021-05-22 18:49:54.430744+02
36	django_summernote	0001_initial	2021-05-22 18:49:54.506161+02
37	django_summernote	0002_update-help_text	2021-05-22 18:49:54.520332+02
38	sites	0001_initial	2021-05-22 18:49:54.687895+02
39	robots	0001_initial	2021-05-22 18:49:55.039949+02
40	sessions	0001_initial	2021-05-22 18:49:56.360111+02
41	sites	0002_alter_domain_unique	2021-05-22 18:49:56.692754+02
42	socialaccount	0001_initial	2021-05-22 18:49:57.804376+02
43	socialaccount	0002_token_max_lengths	2021-05-22 18:49:58.848793+02
44	socialaccount	0003_extra_data_default_dict	2021-05-22 18:49:58.893765+02
45	accounts	0008_auto_20210528_1359	2021-06-09 13:53:56.708635+02
46	accounts	0009_auto_20210528_1400	2021-06-09 13:53:56.807509+02
47	accounts	0010_auto_20210604_1357	2021-06-09 13:53:56.850482+02
48	accounts	0011_auto_20210607_1634	2021-06-09 13:53:56.891987+02
49	accounts	0012_auto_20210609_1226	2021-06-09 13:53:57.079681+02
50	accounts	0013_auto_20210609_1230	2021-06-09 13:53:57.443111+02
51	accounts	0014_auto_20210609_1237	2021-06-09 13:53:57.70095+02
52	accounts	0015_auto_20210612_1521	2021-08-15 09:33:45.522354+02
53	accounts	0016_auto_20210623_1155	2021-08-15 09:33:45.630101+02
54	accounts	0017_auto_20210623_1304	2021-08-15 09:33:45.673309+02
55	accounts	0018_auto_20210623_1318	2021-08-15 09:33:45.715555+02
56	accounts	0019_auto_20210623_1639	2021-08-15 09:33:45.761244+02
57	accounts	0020_auto_20210623_1658	2021-08-15 09:33:45.813212+02
58	accounts	0021_auto_20210715_1114	2021-08-15 09:33:45.857871+02
59	accounts	0022_auto_20210719_2252	2021-08-15 09:33:45.901584+02
60	accounts	0023_auto_20210803_1531	2021-08-15 09:33:46.008793+02
61	accounts	0024_auto_20210814_2143	2021-08-15 09:33:46.051555+02
62	accounts	0025_auto_20210814_2148	2021-08-15 09:33:46.094181+02
63	accounts	0026_auto_20210814_2242	2021-08-15 09:33:46.137036+02
64	accounts	0027_auto_20210815_0905	2021-08-15 09:33:46.179532+02
65	accounts	0028_auto_20210815_0912	2021-08-15 09:33:46.22234+02
66	accounts	0029_auto_20210815_0912	2021-08-15 09:33:46.264619+02
67	accounts	0030_auto_20210815_0913	2021-08-15 09:33:46.308491+02
68	accounts	0031_auto_20210815_0918	2021-08-15 09:33:46.351746+02
69	accounts	0032_auto_20210815_0919	2021-08-15 09:33:46.395218+02
70	accounts	0033_auto_20210815_0919	2021-08-15 09:33:46.515994+02
71	accounts	0034_auto_20210815_0921	2021-08-15 09:33:46.558598+02
72	accounts	0035_auto_20210815_0923	2021-08-15 09:33:46.600736+02
73	accounts	0036_auto_20210815_0923	2021-08-15 09:33:46.642556+02
74	accounts	0037_auto_20210815_0923	2021-08-15 09:33:46.685237+02
75	accounts	0038_auto_20210815_0924	2021-08-15 09:33:46.727683+02
76	accounts	0039_auto_20210815_0927	2021-08-15 09:33:46.769087+02
77	accounts	0040_auto_20210815_0929	2021-08-15 09:33:46.813064+02
78	accounts	0041_auto_20210815_0931	2021-08-15 09:33:46.858033+02
79	accounts	0042_auto_20210815_0932	2021-08-15 09:33:46.903006+02
80	accounts	0043_auto_20210815_0933	2021-08-15 09:33:46.945387+02
81	blog	0002_auto_20210815_0933	2021-08-15 09:33:47.33735+02
82	boards	0002_topic_languages	2021-08-15 09:33:47.620694+02
83	boards	0003_auto_20210623_1155	2021-08-15 09:33:47.647551+02
84	boards	0004_auto_20210623_1304	2021-08-15 09:33:47.695416+02
85	boards	0005_auto_20210623_1318	2021-08-15 09:33:47.847554+02
86	boards	0006_auto_20210814_2143	2021-08-15 09:33:48.033594+02
87	accounts	0044_auto_20210815_0933	2021-08-15 09:34:01.356048+02
88	accounts	0045_auto_20210815_1051	2021-08-15 10:51:23.744848+02
89	blog	0003_auto_20210815_1051	2021-08-15 10:51:24.255727+02
90	accounts	0046_auto_20211006_1257	2021-10-24 09:43:19.218138+02
91	accounts	0047_auto_20211007_0947	2021-10-24 09:43:20.433391+02
92	accounts	0048_auto_20211007_2307	2021-10-24 09:43:21.007038+02
93	accounts	0049_auto_20211007_2308	2021-10-24 09:43:21.055008+02
94	accounts	0050_auto_20211007_2309	2021-10-24 09:43:21.167939+02
95	accounts	0051_auto_20211007_2313	2021-10-24 09:43:21.21491+02
96	accounts	0052_auto_20211007_2314	2021-10-24 09:43:21.261881+02
97	accounts	0053_auto_20211007_2315	2021-10-24 09:43:21.308853+02
98	accounts	0054_auto_20211007_2315	2021-10-24 09:43:21.36182+02
99	accounts	0055_auto_20211007_2327	2021-10-24 09:43:21.40979+02
100	accounts	0056_auto_20211007_2327	2021-10-24 09:43:21.457761+02
101	accounts	0057_auto_20211007_2344	2021-10-24 09:43:21.505731+02
102	accounts	0058_auto_20211007_2344	2021-10-24 09:43:21.553701+02
103	accounts	0059_auto_20211008_0947	2021-10-24 09:43:21.602671+02
104	accounts	0060_auto_20211008_1008	2021-10-24 09:43:21.743584+02
105	accounts	0061_auto_20211008_1012	2021-10-24 09:43:21.791556+02
106	accounts	0062_auto_20211008_1147	2021-10-24 09:43:21.839526+02
107	accounts	0063_auto_20211008_1429	2021-10-24 09:43:21.949458+02
108	accounts	0064_auto_20211008_1435	2021-10-24 09:43:22.357207+02
109	accounts	0065_auto_20211008_1443	2021-10-24 09:43:22.449151+02
110	accounts	0066_auto_20211008_1451	2021-10-24 09:43:22.498121+02
111	accounts	0067_auto_20211008_1452	2021-10-24 09:43:22.644032+02
112	accounts	0068_auto_20211008_1452	2021-10-24 09:43:22.692001+02
113	accounts	0069_auto_20211008_1452	2021-10-24 09:43:22.740972+02
114	accounts	0070_auto_20211008_1452	2021-10-24 09:43:22.788944+02
115	accounts	0071_auto_20211008_1522	2021-10-24 09:43:22.835913+02
116	accounts	0072_auto_20211008_1535	2021-10-24 09:43:22.883884+02
117	accounts	0073_auto_20211008_1536	2021-10-24 09:43:22.931854+02
118	accounts	0074_auto_20211008_1538	2021-10-24 09:43:22.994815+02
119	accounts	0075_auto_20211008_1541	2021-10-24 09:43:23.044784+02
120	accounts	0076_auto_20211008_1541	2021-10-24 09:43:23.191694+02
121	accounts	0077_auto_20211008_1546	2021-10-24 09:43:23.238665+02
122	accounts	0078_auto_20211008_1546	2021-10-24 09:43:23.286635+02
123	accounts	0079_auto_20211008_1607	2021-10-24 09:43:23.334606+02
124	accounts	0080_auto_20211008_1613	2021-10-24 09:43:23.382576+02
125	accounts	0081_auto_20211008_1615	2021-10-24 09:43:23.433546+02
126	accounts	0082_auto_20211008_1616	2021-10-24 09:43:23.482515+02
127	accounts	0083_auto_20211008_1617	2021-10-24 09:43:23.538482+02
128	accounts	0084_auto_20211008_1619	2021-10-24 09:43:23.586451+02
129	accounts	0085_auto_20211008_1619	2021-10-24 09:43:23.634421+02
130	accounts	0086_auto_20211008_1623	2021-10-24 09:43:23.778333+02
131	accounts	0087_auto_20211008_1634	2021-10-24 09:43:23.826304+02
132	accounts	0088_auto_20211008_1733	2021-10-24 09:43:23.874275+02
133	accounts	0089_auto_20211008_1734	2021-10-24 09:43:23.922244+02
134	accounts	0090_auto_20211008_1737	2021-10-24 09:43:23.970215+02
135	accounts	0091_auto_20211008_1739	2021-10-24 09:43:24.018185+02
136	accounts	0092_auto_20211008_1755	2021-10-24 09:43:24.066156+02
137	accounts	0093_auto_20211008_1757	2021-10-24 09:43:24.115126+02
138	accounts	0094_auto_20211008_1758	2021-10-24 09:43:24.163097+02
139	accounts	0095_auto_20211008_1800	2021-10-24 09:43:24.30401+02
140	accounts	0096_auto_20211008_1838	2021-10-24 09:43:24.352979+02
141	accounts	0097_auto_20211008_1844	2021-10-24 09:43:24.407946+02
142	accounts	0098_auto_20211008_1849	2021-10-24 09:43:24.455916+02
143	accounts	0099_auto_20211008_1850	2021-10-24 09:43:24.502887+02
144	accounts	0100_auto_20211008_1852	2021-10-24 09:43:24.552857+02
145	accounts	0101_auto_20211008_1908	2021-10-24 09:43:24.608822+02
146	accounts	0102_auto_20211008_1909	2021-10-24 09:43:24.656792+02
147	accounts	0103_auto_20211008_1911	2021-10-24 09:43:24.703763+02
148	accounts	0104_auto_20211008_1912	2021-10-24 09:43:24.751734+02
149	accounts	0105_auto_20211008_1912	2021-10-24 09:43:24.895647+02
150	accounts	0106_auto_20211008_1912	2021-10-24 09:43:24.944617+02
151	accounts	0107_auto_20211008_1914	2021-10-24 09:43:24.993585+02
152	accounts	0108_auto_20211008_1914	2021-10-24 09:43:25.041556+02
153	accounts	0109_auto_20211008_1915	2021-10-24 09:43:25.089526+02
154	accounts	0110_auto_20211008_1915	2021-10-24 09:43:25.137497+02
155	accounts	0111_auto_20211008_1921	2021-10-24 09:43:25.185467+02
156	accounts	0112_auto_20211008_1946	2021-10-24 09:43:25.234438+02
157	accounts	0113_auto_20211008_1948	2021-10-24 09:43:25.281408+02
158	accounts	0114_auto_20211008_2252	2021-10-24 09:43:25.423321+02
159	accounts	0115_auto_20211009_1017	2021-10-24 09:43:25.470292+02
160	accounts	0116_auto_20211009_1020	2021-10-24 09:43:25.521261+02
161	accounts	0117_auto_20211009_1024	2021-10-24 09:43:25.569232+02
162	accounts	0118_auto_20211009_1026	2021-10-24 09:43:25.626196+02
163	accounts	0119_auto_20211009_1027	2021-10-24 09:43:25.675166+02
164	accounts	0120_auto_20211009_1057	2021-10-24 09:43:25.723137+02
165	accounts	0121_auto_20211009_1058	2021-10-24 09:43:25.770108+02
166	accounts	0122_auto_20211009_1111	2021-10-24 09:43:25.819078+02
167	accounts	0123_auto_20211009_1114	2021-10-24 09:43:25.866049+02
168	accounts	0124_auto_20211009_1119	2021-10-24 09:43:26.012958+02
169	accounts	0125_auto_20211009_1126	2021-10-24 09:43:26.061928+02
170	accounts	0126_auto_20211009_1129	2021-10-24 09:43:26.111897+02
171	accounts	0127_auto_20211009_1131	2021-10-24 09:43:26.159868+02
172	accounts	0128_auto_20211009_1134	2021-10-24 09:43:26.206839+02
173	accounts	0129_auto_20211009_1140	2021-10-24 09:43:26.25481+02
174	accounts	0130_auto_20211009_1140	2021-10-24 09:43:26.30278+02
175	accounts	0131_auto_20211009_1142	2021-10-24 09:43:26.350751+02
176	accounts	0132_auto_20211009_1143	2021-10-24 09:43:26.398721+02
177	accounts	0133_auto_20211009_1144	2021-10-24 09:43:26.539635+02
178	accounts	0134_auto_20211009_1144	2021-10-24 09:43:26.587604+02
179	accounts	0135_auto_20211009_1145	2021-10-24 09:43:26.642571+02
180	accounts	0136_auto_20211009_1146	2021-10-24 09:43:26.690541+02
181	accounts	0137_auto_20211009_1158	2021-10-24 09:43:26.738512+02
182	accounts	0138_auto_20211009_1159	2021-10-24 09:43:26.787482+02
183	accounts	0139_auto_20211009_1201	2021-10-24 09:43:26.835453+02
184	accounts	0140_auto_20211009_1204	2021-10-24 09:43:26.883423+02
185	accounts	0141_auto_20211009_1205	2021-10-24 09:43:26.930394+02
186	accounts	0142_auto_20211009_1206	2021-10-24 09:43:26.978364+02
187	accounts	0143_auto_20211009_1207	2021-10-24 09:43:27.125274+02
188	accounts	0144_auto_20211009_1208	2021-10-24 09:43:27.174244+02
189	accounts	0145_auto_20211009_1209	2021-10-24 09:43:27.222214+02
190	accounts	0146_auto_20211009_1210	2021-10-24 09:43:27.270185+02
191	accounts	0147_auto_20211009_1211	2021-10-24 09:43:27.317156+02
192	accounts	0148_auto_20211009_1212	2021-10-24 09:43:27.373122+02
193	accounts	0149_auto_20211009_1213	2021-10-24 09:43:27.421092+02
194	accounts	0150_auto_20211009_1214	2021-10-24 09:43:27.470062+02
195	accounts	0151_auto_20211009_1214	2021-10-24 09:43:27.518032+02
196	accounts	0152_auto_20211009_1215	2021-10-24 09:43:27.68393+02
197	accounts	0153_auto_20211009_1216	2021-10-24 09:43:27.730901+02
198	accounts	0154_auto_20211009_1422	2021-10-24 09:43:27.779871+02
199	accounts	0155_auto_20211009_1424	2021-10-24 09:43:27.827842+02
200	accounts	0156_auto_20211009_1439	2021-10-24 09:43:27.875812+02
201	accounts	0157_auto_20211009_1441	2021-10-24 09:43:27.924782+02
202	accounts	0158_auto_20211009_1443	2021-10-24 09:43:27.97675+02
203	accounts	0159_auto_20211009_1444	2021-10-24 09:43:28.024721+02
204	accounts	0160_auto_20211009_1445	2021-10-24 09:43:28.073691+02
205	accounts	0161_auto_20211009_1446	2021-10-24 09:43:28.121661+02
206	accounts	0162_auto_20211009_1447	2021-10-24 09:43:28.268571+02
207	accounts	0163_auto_20211009_1450	2021-10-24 09:43:28.316541+02
208	accounts	0164_auto_20211009_1457	2021-10-24 09:43:28.364511+02
209	accounts	0165_auto_20211009_1502	2021-10-24 09:43:28.411483+02
210	accounts	0166_auto_20211009_1557	2021-10-24 09:43:28.462451+02
211	accounts	0167_auto_20211012_0855	2021-10-24 09:43:28.907178+02
212	accounts	0168_auto_20211012_0905	2021-10-24 09:43:29.062082+02
213	accounts	0169_auto_20211016_1434	2021-10-24 09:43:29.288943+02
214	accounts	0170_auto_20211023_1314	2021-10-24 09:43:29.336913+02
215	accounts	0171_auto_20211024_0943	2021-10-24 09:43:29.385883+02
216	blog	0004_auto_20211009_1502	2021-10-24 09:43:29.567772+02
217	blog	0005_auto_20211009_1557	2021-10-24 09:43:30.098445+02
218	blog	0006_auto_20211023_1314	2021-10-24 09:43:30.232363+02
219	boards	0007_auto_20211009_1502	2021-10-24 09:43:30.893956+02
220	boards	0008_auto_20211009_1557	2021-10-24 09:43:31.317697+02
221	accounts	0172_auto_20211024_1216	2021-10-24 12:16:25.421434+02
222	blog	0007_auto_20211024_1216	2021-10-24 12:16:25.591329+02
223	boards	0009_auto_20211024_1216	2021-10-24 12:16:25.822187+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tt47408jjyfp7txo5o4ebut30b49elpf	.eJzNndtuJEdyhl-lh76RFh6CXVV9mrtdYAEL8Akre29WgtDsgzW2oFnMaNaAPX53szszO7-_IqIOJIXdGw6H3ZWVGRnHPyIj__fuh_3nX3784fOn08cf3h_v3t01d3_Pvz3uD_91-vnywfE_9z__x4f7w4eff_n4_vH-8pX7_Omn-3_6cDz99Lv8XRngx_2nH5-e3u02q-3h8bjcb3fnh3V7PJyPzePusF933WG5Xe4OD8vucNw13brbHjft0y_dfrV83G0Pu3NzuAz6l_en__7hzx8-_fLDd5-bzbL77vPDummvP0-Xn93-8rNdXv-yebeon3fb68_u-qd2l_6Tvnb9ebh-0K2u_3m8_rw-0ezNE-lL6VXNZoEPWrwjjZs-aNs6rXaDT9eYQXpRnueyv5r097Zd1PG6_dun_zXr_cMCA285TIc55iVcH12eF2_7k2yOWElz_cvOrESJmWZx9-6Xj59Pujm3b2aKWZIkSp_TCjHn5oAvbYJppPnlKXHF8goSRJ5e1_3NS9kv3s4iYv76fPo99nc_89HOo2Ji8fPp4WzWFnGwXWcHhmvyKxf9qWaROUb0XtWXpj3LX7JUz1tDDkm_ry0P7MAJW85sO7h_ibXy0yTB9iIOy20i2V9jR_mXXRnx8ETb47Z9Gux4aptAWvj8GS9P3HH0Znf9PamCoqvMZux1KlCV7Trt-1sqviN-P0dyk9675eMNVeKh_t5ZdUEh349uEXfoSsWnuR-Pyy6gYihdhlkzq58j4fvzp9Pn44dPh_ennw-nxZeAd4XBHSXXGNFb5vk4I9IwNMG081dBnQ62pVgj80CzrV_K23sI-Dm_YY-F7YOvevIry5sqe95u1r22nE91mN5o9UZebEOKtJUx2i1o4Uj1HpLS1he17Uy1cvm5vIhS0QBdxLvT3u6vhjveOqvxCGY1StfyCxiXEg2x6tJ03NH_VIVM_CWH4Zy3fl9md6q0znPJA2zDj7NCw6hd8i8sVcXxSMKa19fiLeK9JRM4Yq3TqNmHA42ybdzX3_OCM2nfzeHD_r7H1Ix3ybEqJ7Ly9VVVRjIPH7qjz8MdWDKLZLPvLyMvtqPhyL7Bsb5V9FPeGiHlHnYr_2w51h4fwDoWiUw_A8Xz9O7j-eTo89CjpA6kjyVmIhJM2uonumQG3pBMJ7BjMSHR7LDDW0ZA6asr_skusYENb6BInUWHMZEzNQYD2BlfkG5sgRmJF0s7vrdLoGPfUU6OlZ-74TE6TvjmPh37TxYFkt1j8meLued9W9BZyo5bFDJyx0scGNDq2avqP_FMeoej0tPI5tgRAd2tt8_VndXCPpym-th5kzZ1NBGu7Cms-pQor7SstcR7VCKoaUWON5XaRTIshZekwN-Kj_fWQUamebVfmfmmMW3IkUdHYFNc9q8nbPIRVMCm1Lk_14m7GCT_9wmzIvRz7C9PQgZH1hCIZ9KRgCLT6U-JxR_rl7LOEn-ATl2a2AFeFBGoIs0SURYupWuWVrAUOo8TJ8Y1rKezheSsIqGgFB5lYl8wro2oiwFNwy74Dzxu97tfXo8ybd0EsWQpALxZZk9pWhkuUWrmfQyRnmzpAFAhreUF9Ao6mjI-eHvEQhIUsDwiGO8WYDXn-zr3TDkLg7Uckpzg4RnPEfpgY4a85N56BQ-zG0UXtSVrZdfXMSl4RyYATBQ15s2evsaa80zOdYisrz0fd28-oOGGwe3oiHojRRjc6xDmhUYoCIMQSebvP835DlvP6FPlJr_p7iYFVg_TS1ASvyaHt5WKorecOGCNQZfWwTvUlRV9yWmsI6ov69Pl708L_JMZP_Eao9f0F9oEBxMaMzvf99QqPyMDToJkrn_JrtCQFaT57ySCPvV5Rey4G27gT22lUd4ipX6d35Of82UKguJMxQtA00hReAPVGTFiNjGQ9qISOKUoXhWPYN2ft5MzEf1WLLUXkfOZtv9k6E6XmIXxBbmYEr4BfzVNpUVex26QapxrB-hKbOWjQCVGoZDb8x52xGu4Ndl0FVfZSul0fZL318R76uN2Zmw4xZkT1t8HoZQqAhvUOd5TXmXgZyopgj2BjvDS1dgS6j4R1M2iIuMXDqi_B-98DgiZrcSqDiDxSHG_4UaKH0e-9d7vqar7e7ptDMhhx0vGj-pJXL_0-jdvJsQZYUbesoSjVQS1JOs-1lVpTEK1QECEmkDUWxiQP4DI28WbN29q-Hnhqvr7K3oDz2Cj_Pb19cn1Q6BcdMMLFwiDWTvVMrTYYjJUDbSnBZfY4080kiFy2iFp1wIsAsZb6T2B6yKVZ99TaB3oQon0NaSSsDht6kLSaa8DZk6wO2p2KTkMGFGMcYHlCz3rRI1pKJmaQBenjwuvDQMDdiJWWizIxuhY8UtLTSj9ljl5ogCSly9A6a-5TZPKR_LvIySKQAf6KnnDuuQWxI7lEfxvU0LiQVmX0pOhJCqJtbIv8IyMos3Vi1N64EbwS1QYOaExW2pAXSG1o0pFMQCY6bh3mRiL3_7u37_95o-_X_zh9__423_75l_--dt_-OZfvx3XYBYSv1Wo9L_K-hyB1W3hjuTsZMvTbm7NkouqN3mlwh7PWUomkV1Kls9cMmIWUSSSLimRJ9KJ2-M5m6FfEizIFv4QLWxRfxOmjy0s3RJgFTVrnBliw5L5FDuUZ0ldldFkJ7LiklB5kBXObAoZ3fEr11WA4uT9Izd-WVmvWCgwz2vWYQSCI-HYBjTwkroGRykMEFCcyvyBrMKVSuIT7COOgnABqjQ00cH0foivsRSly45mqWaldyipFeMFaNkYTZRBPbxoaMaiqAWnG4-RUJ9YVrchDUw0pcHeCqvwtI1ZqkjxCQxGjaoFqsFzN3ATbwWwWAJExgRIxuYYvw0ggqKTQIRGmHVEUYcD0tBwAaG_NLIPperl8nOoeqXMqYHibZtw3xbmP_HMrX_VRkxVRIoKdc93heUi1AHeSgzDdAzJhUOzFKCUJEMHAvdnpAgzKSPa-DJPy1Y9ZN0pCfp15dG4QJSu8JrrmAsSQzvNYfyWyNqmMprnp7SI70U8CtUJ2-S03TCcUCfVOhCx6M80XORjMx0lH9NAwMcrOymcuarv062SksDQSjhSsK68027A_sVSY8TMThxE9OVjHYqucRgNMR_SWmljiYB4ATtS0qBgstOiIyRbB7eyrOV-0DtDsKMudeIvrmUZzSNKBZfkBt0bq8-dSnUSx_q6w2W8zoLSX6JQ0iknx3aFqRPGLQIF7AukGutzWSX_JFstaNTG8IvjNTKezoKSFQgRZRZjOFRZmskJ0CIOO12Gff_dAz6wVRTUYKwNi-ozXpY99g4BLDHKsxPrlEWbObeAmlciNZQWzgvI7lkUiccVqk7waXzD5dkJDS2-RHfC8Zr48kS6B3zJOSICFi07mj7mnEh4RxNNKRuUeAF6gtmGbouXziq_YHS3Bm1oalaDNUeCA1proJ7fovKYW_VgY2YPqvzublGrry-sUn_3p7pe29Xa1KKFN6RigJiqI7bOQm3JWF5TSdG9Xmkcs2-jp0E5OcmH0COjfhQgmflNhznpiufoy6jgjlGblB8QB6PLOFKypvJu9czmPnArNE0tblhhzLpttnbQi_KpZnlqNXYIJaoKjzbQIWlRtVZk9U2xEtBxHRJZVsM0j9Sc9GjSTpcjUQhmWsAmZcFSMtoXIWFAT8VjOnNPg11-hmVJkTWxvi8L69TxsRmjMLxIy6TmWz5vJKpeRXXyeC8_MecbJjpHBAgzUDTsFQ9UtnxB_GiVa0EZjDoRNe1sXZyXf72yWgU_YINKxAA4UusPLLWoPfMK5QDSFkwjjrGlQwFVQMUdLSsSkGUXhtdX59fs_HVJQdcZXCkIC201jZCsylSys6rXi9eE7lyUIb4g605VCr4UpqGWlnj4JrP9zkvjqMJWBnTcOPrYZyOPTmmwSJKGrNgjORVHKYG1bZdBGYx61K2ZgpO0Yt5BAC_WMkkKKBPhK7BG2rjd11LkQUBLqjQkjSb45bA_wkrx1tHVZNAT9iUTjd7r2TB2UYGUSv5pLLMpnhHUgJ4tvU-F79kXGLSD1PQDGeG_M8RiVun6-yrXxRmNygBSjCn2WytMVhApZ57FL7GzGmsd0Va65I9x3r_EZuF7QyBEtAIP03UBMVqUrLT55YN-KK3DiD9IiMXRxaP2UUJXmmKo2FsIev0nV2htZnog3PEIC2MouaKKDZPus0s_j3XRmXRhsUBooggmeS549DGDbWYBxSVvHZQnPj4ySMgt1T4zwtnNOvTf0zHKyl6xA9cMZnPz9u2Gxcorvo18YLBteJRadlTy5NETtieGV6m9x2I8h5QTnBJariqPynsEhCI-waTTA_RhwaXslMX4OqAuT0ixmY-XYxw5KwBO1iYwJztS5ORmqYV7JPY_1MVTyC1ndBOJH4cdPuGydKLs1VdpA6Zwr4tOwLqp2UT3tnAFi6oPok4J0_ZcMunyAK4oSCUEQU6KZG_g1URg0v78FTnVY0gqCcvIUoS8GRH0upPNJhRhxbmGoYVhHigElVYnfIweKJp6lUWloRwAKOAHY1LltL8TvkrWSI4gcQJ0HEpVaJKWIVPV0D0gKDAJoxeHkw8YeLl1qoMY3DFLZsNVrm2aNk8rp8y9UCkWRnx9tThYdExYjqHmIxRT3m0Fic2fWpTRaTGWmPns5JjwW7JYAnwbZfbEsFmDT-FDDxImqzjTgtcfYTISs2UJ9g6rYZnE7YRZbP5QzmFY9rn-vrIgShzlrfCTFd1hnLU8G1JIblwWbqLGNNSKdcbFHk6HQVhzfXIkzRp6uPPFWZ0RbAKGyDZCOIQ13Jyg7FJ6gmWldJ0H64jE1NqQXyrJ5fgbjyEilybogVZJUa0TDV7SUPEkvBQW2fRpqI4tmDxcGOzUUrE1h4DlcRk6-DSRMzGiBluCglvumhO5SyMEeRqRoIAIRBQF7pRq1DWESE5AQcZCT12mAxd3tTQyNlZXza9CP6m3Zco-xkBBfoAMX8nzJ9wtGkpFE0feJekX411hxWe4yiFwX3wjOY2yi7CA7HPRgpfqHMvQotelnxtdHPFY-IRjbKUL1GD6yj4suyGHDEQ9A4JZOdqgI3PXT_UgE_xCWionmSHmMzpvEtmV8FSj9IbKLDklGToJW8lG64FEMyye44UM-6DpX3N_n0VEKkHqkyWL7SAqWLR4JUyJhXkmur4ChcVtss1zhavo5VLJSppqZH32QLiIG7tLiwvqFFrQA5CSxxR8KYI1FI1L1gSWTcsIaTfykga7LkzB1KSvilhnG0CKcmIRrONnOfVQioIs-pNLL3S-K9p-W7_qeZN0hJ1mJtaFmXLuCAsWbnV4mt8Nm-bpLO-LYHq-GpVYovijsf5M80ldiiOrc2RuBGD9y_7j-8Ppp5_2b__niWqnj4u_vP_4-dNgqSXLSRsqKlaoIMJXiWYp3KbSJTt2DTylFZhIWma2zFTRixcnR9jRMnhrdVx-0zUmLxp3vak1cOfHyTZgyx033phXVzxSrTzbn-9CvkXRetjHNOyQIeUX1v-WECafAbeD7_tf1WSfRTAPeAxil6cxCEWJjMkeWMqYXv0s-PSKxaw7K_XpUuXlxDosa8sbwlKWkVCOeTApvXCKQmSitoxZ-8c4XqTz3cj5k9yx1LTbXBsROzkCLodohs8tdOb3KW5Y0ogrWwdP11aNgtnrDniHI2h0djt4V0U_Fz2T8rdTulYCsClEGzA7JczAO6PKeM_GCM5x_XkYEYApOztyq4pFnp781j98fjx9-Gm_-OOAabJgFJWoB9kOW4lpbleA60oWlXXJVr2rZ8x4a7hIT5rdHihl3lk87KIXoHNuAX3P9_CMRLbOCDg4eNGaOV6BrXfYsEBlWHPk_rGtpGQ6HIwmRAARE4oazYxn9DL5mVio-AwPigDR-VevmsfGWAPqoOzSUzpK5AkeAR0TtmeJj0eE21_JNnJDibTvyAg1dRTdasHgwjNwY5fQON4n121hpkeyggm-xfO4MXEasakT9Rq3G-londRm-gAnTcNKZj1ZSSKqEqP1jlrjebIVbDZhIuqf8F4DBug3DC8tkyUVztUEtDJSxucdHx6ehNd6QcQyFnqSH96WHj4g8iXnUOF0lBp-qwwcDXbA2pgGnpQ5IToG1rbd1DX1dDbKWOXYdDy4bKcBZLxtMce1pFyTBoOH0B2FKPM1Ya0cHiludt1RJ1ZhmtPegRA6wx23km6JuCiSdRdlZV8h4QiNNExZiXcGcWfbSJwJhhVAVMFevF4ncsBUah_CU0FbvGTDOcCvVrdF4MIkLSkKyphbVhiUCutg6IQQCkq_zrXzRrHJaZJ7UgKtynrvAolGYudWNBgWWiyHRDQtn5wExIcbKGg4G31l78JxfI1pKF0lOIiVcE2rFFQcIYz6cBxsWXfWaakt6XxNzPOrdJSLiaYNOWIpEgFyRJwdK1rOWQkvtezI72OFwyN5q2CnGRuApVc2qeVlSskndIViCI7ZRhnEqXx0Ymn87mWAbJgsFal8Wkl_xds2a-Jt5kKn-emWkSnMCAytCQ-DRHYZpG0vxfKWEX6DkSadPBHQPe2odAb8jTEMcX7F1vxv7BQs2Kf9nCJHFyyb-PpBwlWpSwkxyymwYoywWroxSPHQYfYIkVN8flqlebhw7IVLh-4HiqDILOgRIElbOxGWZDn82US8XuY_8bPFbigm4gZQRdHmD-NgBNn0rI2Y9AaD5063aZU53VNnUErfXjJBPWiPv0fO96TrWrmpoYaM9Mgq5YedYG7MI45kK0KmWKqZ35o-PdmFhSUVsyhy-Rke1nmuh0vLhhamuQbBgRaEsQEUSEDmtKRSaJqfD4d7BFoFEdV2P1LjAAbv4OoUi7Loj57WX8gzyfXLamjIB6XroV2cIydRbidw6sOwQU40xYrlhquXk0nSb8dS2zlEaL0CBpz7wA8sjsn2byPLlAEVIluOxjVA28hh5WFQnvCO7TUqJyLi8pK5MBklodeUm80Y4ss65N7TRTBYm_b85fevoMDf62VveS8-X_cFEVJ8rHkF5hNnZ1JhR8fcEGt-8iaPaDQKTlg_bw2OBBsjdBs8Vj_MilYUbuiA00YasF-cc5DkgRHmosSokJeVEvIKTUWlTdRpSakfGMRpeZLtrvTTs3XlcmSJYtW36v4dBi-5Mc6IiJhP4YcoyVauSa3PlTguUiw27zm3_Uk5yJttK6OIUFhMSDTx9vbJpUtwnW-a37smSNZtxrIQhaBKK_NxCQW_kAoUwBbqmMhLqFbppU3qTayFO3IsIbSW2Cdxr5dGSoRjpdZQMO3l7TqAfX8EPXDphMshOJ5pCgBUIOUzXCFp6zCYrdMq8OgQyLQU0QKzlVQkyJSNaPl50xy9axinVJ27-_KKlzluKuuNugYOKvBCP8lpD6Dc0OZLWui63RDGL9yL4ZSfE1Zu6rhakJGCafHSQaooSTqCxRRhg7wYCC5MNnMc2ElqpdZZs9OhJ0AFGrDizZ8Mr8SQ4xcPjEQoqlkTMQW-op8qiVDmraT-FACMnnGlbrj-vAYqzWbdjU1_7IYMIZtx0FhJLZ3pNGy1jjuW2EU2LspeT6olbAMN77BvfC0JTbepH-8Vr-Or5zqel7qVenUjFOqLjt3EQuvsmJbYkHmR0_Bq6SY6qfphfENvmXnJlTcxDOMYAqcIIz1Twi-nvyv28GaInAYhkEIJw7xuIuUuMEw6bBRAD2zrvZg18gWFC--_iVIQzortpWaaGwU-R_wkisVa4694aIfJ0bbenjhVqpH9KeXyC34XplEvdTAWN2yiHS5Hmu4d8rZNHrZDbNsuQ3YM3zstFJpaPCp2hIptpAm9dQBuF4AxspJcvICj1A6C6cUDz2DQokvp-IY9_vQ1SXDsrrCxZ86-vbI_zTqTcut0qNPr6ya15ZRYO-CmotosOiCZhijKjsU4vipPnOktBqMPRY80vhxwauybVJ_0rU_vjddlGM-jWiUXr9_0zyLUJsp2K4gTiX9t5yenMYTle2DHXHbszPLIlCPpDecWLkdn8a32qF0J7ccEfIYDMcmWtIQ7wvRgWKVlWNs5gzjh9H8X-P7eXASIxIFxSUAILj-G6MQXfzlh8kgeU46GWHgtrm9PEykaJWzNZt_b9r_q1a-NKLSY_lMPG1hsI2zg4VQGdlujFoRG-TnsuVOc66AoUofmeZAOeE3fWlwaxHN6HZKpOC2FcZO7R28wZ6n-pDSNMOAozj_2LuuAr0CKvScsoSsgeWiBV8Nkg5w0ivHe6z_ouKmB6uXncGbdwwfCtvLTMLFJycHIeGiXe0l9dazEprjERmBG58ohmNfZaltyoikM87HcNRh7C0M7NoqLgoBMpjlakhWSN8AINRtexxz3GWF_osKRJzw28U2igCRcPN9nRhJI4sOQxevbG51DeLpDKfJ6F3tnPZGdv8i_WuUXfaHogipeHjZpa_ZCaOY8L3WkUotLgeltnSFBXGMo8ghlIlHkysj8DaiiaskPYnEOtjXSY18LkfFVYmLxUeW5wTlLDJ0iGYshSHA94l4IVuYpJriTY5lNx5GL8Iuzs02DTzvuKW3QsP9U_BxPe0h7epTPhjlRNsCSQshpntzl56QmMbZwQ5SqBX1QqtqMXfYhOsxBPYQqUkC2qoN5lwpIyR3G23t-ZeSU240PezAqDzEUiOrQ5NhOVGo_y06-Fd8ljZvIC6mMI2nxrt8ENwEwyHKMWVg7WAwF7_9yrCCneHzWHTCOtxBXeHqzJX_woBe9XG8vDHDcLAUFaEXl88msdjOfOKHAjDSE40wGaPhIvRZcjYF6revH0oWT1aprO-wM6ycZLOIYyGB1TmjnWIQ5ZtqerYiBKM7NqGM94iW9JoItVn6i3JSSy7za-xmrmhleSanmo3VDpH4XrpYwSXyocFKq8fLzJsmTzgxPysCOwBpe-39rCHn4iUZm_5pgkICMdr7bEe77NW-eLGx1_SkeMxF5_oW9Ijr68bKYsMgkvQjziaoa49sTlZ8cXoiCmCXHmuRchgPu7YBpWr_qNaEUVgF25pLbEdMbpD9SLebAPyPRTXjB6NgWKopKR3EsNFjXV9IhYWAUIlVE3ZPES_FMYk5hK0iE9QT6PkB4ZC5gsjhuYIG9V8PtKCdU8Az0LQBxpzkrYyt7FSf9JdWGmYXFXAnXgtttQWmmdJPYBj6Ih2eK2qKu3PDx7eAgM8pkvWGFJBSIDRYY7qzWq9YZ6sr1pjAQWWsUMFNGSOXwrBXzvAkm_x21lHduGFpPumjoGVEdviQARrRnGXEVSpCGDv57nf_1L-teinkE4l7xXRtMSIwzn3vjiSUdL3spVV5vmAEAE4YP8C9u4dPzbkayDlfMlQ1VQ7zdjrfMc3dUnNJ-eFPpHp5HlXsmtfvDtDLeCD_0-hqbDRmocx5MTWC0RDW4h7YDmRQ82ESSM60NJhfo-5FAV72QkXqQCVkYq6ElZBjT0IO4wq0UzeubPkncJeEt979zQFPj4SffY3KMEPPyM_SmIt0uQzDKWL8LnEK52yA61qf9BoOvCkKgedI0Har4FxbdWyKYUEBPnmH-fo2EXQh3nsbNuUPFIhPDeaFYeMJXT9RfqraXrGwvKokM_RKbXbbBnunVjB-ruCJMS64MbbB_UvWwGpMoib7DWENMBZsWPVj2D6cytMlO-O94MHIAyEwmLMKPJ6PL924aIBVX2DxAAE7Xcaajn8OaXBQ-7vFs7HeFM51yCzWzMY7PIo7GHJ9lpEIRZQFS4scq4GecVyskM8S2Z7cERp30qiG9Ir29KL5OI0YSniCmc5Y1ir9FgrpF8xD1NXT0ipN9LIr_LXnRWAxJDEuHql6T9LeOmZ8iHZ79l36il5-hUlnX4bTFBdfIBh_KsC-0LAIwDDuCXmmO8agrMkZ0wbbCEI-FqbzoZhCjMLnRZVAbTOXyMDovdL29lJOHqNo5J24Ul14Vn82DsBv0rSTpi5laWFAqi1EsJnJ25t5S7BG_2ayk9aDof3tvzn4a-1WWacgXtibjstvXKbzM_fdqnxiKyZk7qR7BCq-BuJyb3Thocw-ONqwT9t1AMkmjlfHYy_Km3IW3q1Nuh7Ghaeal608rpn4DDqU2037YknlEIZ4Ni2_WY1rvDaunNpXWktGMcyBaiCWmBZTOMPrgrTO_AsqCTJjn8ZMW4r8Pgym-Bz6HNaPAlNmpbsxXLIpCZBQkynya7ZPVmJanldPmI0oTLq4SbclEdVQrKbpA_E1jltyDsVI_hvLWzAlxGwX8HldOTZpJLx-2wLJGEIzgEM5FVx3bPTw78o82dKV74qxDPuaOil9pn5O032jV67H-3quR1cIpv4akrngScMtrOKXojAqNNHe71gdLcc-BgoXE5wihPXB8TGLo4ltKXIqQopZRLNN29E549iCulkkbF2jvqCBPehTkiWGWPErpQlZY_rBunQhux_Phl5ybzVc0TMxuUFEKk4xAfU5VZsYHguq6qbLioXzDyJK9Z1zUI_UTPYyWe6T3Q4jCdQztizAVRv7MyreO0ikRwSSETKxhA47em4_10BLHmAxclb0f0O-ny_T4e28fGNs5XV5FirTi4fIzp2B5G5PEfo8yiB1jATd_xd-DXIuny_yZSYNzdvZym7nNgcDxJXiPrQT2xGcls0xX2em5S8cNFWmZtSlknvcB9aTH0KLQ1ZGe7cyRYu_Kj3O1fbWCQ2aW18Wn_p0jafNpLde6Ol5Y7iRXz-7fBYxIArGAwAmKCXU8ydld_e9NC93RAAAc7DnydTueW2bFCx_4ez0kdAfuHy-JvivfuLMyNckzLUvnrsvheBhCXYlScITvHrTsBMZHUxrWAwcNZ_UlbevH5e-RaeFs9ATsBv8ZgzTobpkgWrF1VhI5LeJf1I70OsvS0nxL9Q-7VdI4dv7Mx3sXtuHjzilT3ffnOcIUeGoFYc5cq63CQcHGEDvfoWzrhHPfZXaSdjQPFRNth8Lyoc5EZCzvngaMpU6_9NGcq6rFFC5BYDhXxQmXm_zCcF68srTa61-kKJwaoeV0nJA5U9cQkRkjSc4ZM5apinbril6xbb1URJORt3XbZRq222uYAfLQp-h6pPmGedDOeuDH5G469CqiMi3S1SvWktr0yFxFPT1eYbl5fjtee3t6OF18l4eDXsbR4whjVV79IgPbCiR9d2XtoyO7YTnsfXCjqEDQ0QlPXnEfpnK0wAXbk-WEplia7onzzKBLas7rwtpnOkbeKaFwF8YizK-wJnsjXD-78HXgY5Lt9ehipkO5za2twqUhTgTQOI0upBUJoTseSyngauJCe5UdyecFHdbES26r4I1fmTnSCdx9TaeCgbb0Jd5M26r6J2slGcWVAheL0eQAMzzQKBlzOtQW6aLHIOirOtZcE2sppILTsg1HtxcWqJOKkle5T0MgNwlWjdhppROjt7AKTrQACDayJIbThbYjAjAjp5m-ZLPrbIMkPdoKojbheMCYvLUM-5HZVrTvFQoCrf_fuyf5q_5QRosZxgnDnvDWuNBiaPxXf4ZYsrw69LKwweq4m2CJ4XiJgfkBYvZ-844kDDujtBR24Zqj1IAEIgISCYYk8BeqHbSD2CD5hg8qWNurtrI182c3WCkAmd8A0Zaf7CvjyT1Azq2jow3Vwq6Q9qZMPZBqmcFpk4teVaW72oSOWqx6OAeU8qb3QmqPVfquKufx-cYWT8r1sNyoJ45tHqik9hzttbjZ7W97_cfBF2bxTN1IzzbR4WzssPQo5Qp0x3tusBWZccY6AIarlvbdTmhCT47mXCJnupwSwVvOpCzlDMDQNWJFE1LjkbnZnpMM3ZwdSvKJeXqACmZVn5euaTbn7xVlQlmErUd1ndGwUrd1NK_IG_SSVtN8AXJjN_6Jpj9yUxhJ78Gq0_akRaastfUfhT9-_cPp-ZHi-Doc4-QVMaY96e0kYl6YUB07O8WdPEBYMvMZTOLWKctLS5nQMj4q78giMnSjrDB0Q3vRA-Q8muUVVs6Oh2WntQKN4hcBOLcmZCRg3gCsQIdyimGXQueAaMKohrIhHur1b-Dmk9kP2APhZ5G5kd0Otmi4g0q4g-5G4XGnep2pOQubDCyvz_PNKSM51m8jLBVq6oZp3hGEjhS2ClYARipmMQwpx8BRn6KyST0UvCvjxy8c889XWER-ayZsUWHnLzsRyPh-JAnyZ5SfLuvmUaPHfZyQDm8bmWJmAUnJY0Tt_FPXJM6KZyulqmHIuy0MywXMIRsXSxDvPM2QONXGI5lRVlncCCDtTiOHuxcY4InZqEfmTB4zoIG3Wc8OVdPUmRHYo7eDDfvGtlWg42I5B0YClWH9br4h7vpHhy90cAmmux15yuVo6SIvTo4jW7YQD0yclNyTilil5FsCM6KX_ckgw1fTMRWoFyXYFPtgWMMQ9daErfKdBg5TulmPmFJvuygriFTLmbdYdQusb2fS1tH1wiLCWYg3C5zvqLrhJJPEFg7zWH8oPNIfnrcIkKXcWemBYw_utDjSiYCCh6aH_-__AeE38Gc:1lkvLa:jv74WgaVZpDaT3tPNbI4UYnfP6kVhASnyAs-6hCCrNo	2021-06-06 23:09:18.282+02
krq6rz4wbi6rscbe144dnd574r03hfuv	.eJxVjMEOwiAQRP-FsyGFUsp69N5vIMsuSNVAUtqT8d9tkx70Npn3Zt7C47Zmv7W4-JnFVWhx-e0C0jOWA_ADy71KqmVd5iAPRZ60yalyfN1O9-8gY8v7GmAcHAVW6CB1tmdKrAMQWmNIOQXUKUMM2ljjeOz3YHBQARxB0sTi8wXimje7:1lqwnA:Ua824o7zXHU0oBbh69fTFNMYU-_udR572ztk-WymRS8	2021-06-23 13:54:40.320324+02
9l42br2198hikoyfymylrn4c3vosgj4j	.eJxlT0EOwjAM-0q0F0DbhZW3IE2I9cAJBBscgL-j2UGJxMWqYru2X93j3J7j9XKfx8Oy0aIr5n7FtAPikiYBUSECXQrwCLqSzsCtEzQYbQ5GJLwH3sXzTDQEkYqfoigxu3m0hWYarIeEUmieNfyk8mb6FKb9j4prKfrRfXBHn20jffIOiTtqt59vS_t8AdpQa4Q:1mEtb5:wD8vFfotCaMWxQ4MhWiLuDXxfPfljE03l84ZrAUM4kQ	2021-08-28 15:21:11.370797+02
tdjatxba22oc8s4tax21ljc7rd3opi12	.eJylmMty4zYQRX-F1jqjEgFQJL3MPl-QSakoPmJPUnbKj8winn8PxW4MDwyAtmc2EosAGt23b7_43-7UPT_dnJ4fx4fT7bC73pndL3x37vq_xrvLwvClu_vzft_f3z093J73ly17XX3c_3Y_jH__qnsDATfd4818um3rqunPQ9k17XQ42qGfBnNu--7oXF82ZdsfStcPrXFH1wy1nR9cV5XntunbyfQXof_ejl9P_9w_Pp0-Px_mY5dfa5fftrj8mXpdcMflzSBvik_LBlcuv93yWy-vrFsX5LwpC4ihsFpuvLraXT89PI-RRssuW0GUKiE3tcumCmIXRYwor5ZAQzmgy1TEmuW5Udsi0xtsOhbrK24ycve4Xq2X2gCpAkotmltAMQt_KQBzlTGK1somv1zhNM-pbbLcrzoYsaNNO8BrterpKtGPoCtXIFXRaSIkzbQ82xUwxbakRymWDBPjRWU1yHrA6K4Kl3hcI03sKl1NcxmaOgOyutibzmZ4o3dUkZ3cZGsYFbss2Ap4NB76TTZa-T1QdsbTw0ofSjNdDC8pmFNVnVtD0g9KjTnr4uQUcOJ1cirAPIPAMVC08-4eGjtDMYyHMZOTQDGlxEGeC8QK3OVdHkEk4MwBFTAYoWGQGRKxJM4Vu0wCkgmIwex5ayJkkLB8XAI23drBd8rnHCMDTd6yLKsPj1e5ONflDK8nKJsIPmbYCaJjgmpSjQjkuly0Unb9-oaUx7qV6UqtfFpE8gwo7DOvYjrtI_JRcqCvxV2KCE0TUWS-Xhmkv54n5L6sEBQ5vSrOdlJ1lf7qR9ir_N7kgDhC691I8LtVDSZJBUf5FdcOh7I4K_7CKiApCEXLWzZCiZ5ujeUH7UONcz50N_oHUSIunajLviOBwlz2vRndVgF3BqXJBKVF8VVCT5stxnZ9i8FRpwVlOMgcm8XYoju1id6gx_MEV37HnznZVx2gpob45kQvbVmIci3Qu0IjaJ_1dKZc1YBDu50IZXdGOGiiTflCjYpig6BqL7WYV07F72k3sJPLFrh8xlVnABDKbmMX_xFDWIJABiXatwK5fFSCNHHSD6HIUP6NtJPgMQOzI09QMjilhC0kq0S5Cvc1AOr4YWq_LxAzDfYRBVdGKIiYsCkZXoMbKFQjbj5i1ADoVetMCHy8DbzOdOkkTaqA97hiuzsL2ww2345OdjQAwH88jwcgcC-qDMc937f4FMY8kjAEI5JO50EpoxI6hUNGuVkbwlkYXbaKkxtSaekncXuJpNC1c1TY4wGk8rVdPf7CPi0eMxNJgxkZ_aJnD5SziDgmutRcxRRlBP9ch16ukRCmT7Hk7QL-1jcQ0cXChTQkN8Pkpw8HVQcSQPCugHfA1sS0s_punQW_P9vtWSjRnwdlrgYGwd6A02JS8DXgHTWdCVeVOuNTEGdoDzazObsNLic-JC3P5RT0NIoeZ5KgqA8x9iiQSo4ja80xDhsOLO_8jCaqCnzf_gfawgQ-:1mFZ4g:AA1Jrto0nAp6HYhOzi6tLNjNfQPzbEJfEjmHqHOEIpI	2021-08-30 11:38:30.685578+02
ag5ll3xt4qmyk25xeaiowqwr1gj7kwil	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1mU3Uf:TUL0rjV9VuKhVMJa6txCP1Tyy7O0ICCnUN9-tMKXpOw	2021-10-09 10:57:13.869687+02
14icnwmck2rmtnjj9ufecbr5c6ham188	.eJyNU81OwzAMfpVoZw6r7SbpngVpqkYncQKxvwPw7jDblb81TONipbHr78fO5-r8Ol2272-H4_b5tM5UrlFEY75G7uOe9IZe0rKU2BIa95rmQaOmuUvQVqJWoLmMeh5SJCQ3SMzWUGOBbF5tjh-n6WkhyOhbPU2AQGPQ4HUQmLneIyAlvPmV-mXVykqqxg7UmBcG7CR2YM9dgc6lwH-DY9mn8eOMDhiVmpYs_I9q7RvCmHZdJcUVGdIIszM8ar3pQ4FvzM5s-Hs4PpCKvoOH3mIAHBz_vCquNMUizlLDAukTQHGcqTbdbTN8QLigAsP0Yd0wHOHVVMDumolIQZvxhe0byW4twxkNeyDJJzahtw8W_F-r0UNRhjM-X39chEA3-_D9A_rHPd4:1mUTDt:nu2lquleg9FEpmy_VAZxubiJOzIkqTM9jSG6rK8qGso	2021-10-10 14:25:37.709435+02
2wxfeyeyong48cm6ybsbktauxhe747se	.eJx1UtEKwjAM_JWyZxHXdFvntwijuA18UnTTB_XfZUmgt9W-hDQJ17tL3sXzMry62_Uxdaf5UNtmic5xHjgOSyTiepDc8MNzWxo1VBiCWpPgjVAR7ABIxENUcqOXRsWRSyS5MxFQIyEg8DjHuvKTXOhn2VAL2KqCogcqj9JZIbiSxLPWS6M4Tvd52G0dH2G-TExT2QFGHfyz8rfn3IJUm1DKYjfbH-yfDYZorPpQ5jxzuIqQVLz56Br20SP9C5FXfAn-UkdQmkDJHnCxeiFyOnoWHuQ2WZAe8jHlw0zIqiDYI-iVgxZNrpIb-P4A4wP4OA:1mVsOi:VJm31gr6irPkrxJavFRRIOp2roWJkeEjfdgQWOSr6Q8	2021-10-14 11:30:36.628941+02
dqk74geyfxhjwhz3niqxb4ln1olkt97w	.eJyNWMlu2zAQ_RVBpxYIDIukJCrH3vsHBQytjdvADrx0QdN_rywOyzca0slFsCVyOMt7s_BPvntuD1-v7dcxf8zHQ_6Q_9iPP3cvx_Nl9-W6rVR9e5rq9tTL05TZ8qFc_pjl2bhX_bKqWF7Z5Y3NQMiyVk3Lb738bsNSXSxLdSPEGidwWavdPhv2GZ29ikNMCYeQBVITHaSTaSYDGSZYblTYrA3TKgsn0fbIGaWwExfpGoxazFRkuRVLwT3uveoTS51ztXtuUXb-eDldx4d8114vT7vreTzt9sMcfpWzd13bfx8Ptw_Dtxkjx01_PFxO-25zW7Khr-fN5-MwPn-itUzAU3t-mnc3TV3avhuK1jbTrMvQT4Pqmr6dFe0LWzT9tjD90CgzWzHUev5h2rLoGts3k-oXoefxfN4fD7vx18v-9Dt_LNS2qbZbgdYefDGhJ5cIqAF-T4g38N78gQDVCkCWEmmOGSWi3WKM4PiVqAhsCyCQQmFtAsMR6EjKkcHu8xj01SVCp0VMJZDqDtL1fTeQTh5mqxBN97lQgikTHNBKZYZATXKQQk5K8qDsen0CIUVSyHmDyJ_OUpDLKK_hG-vDPW2CI-kslMz01XBWC6D1AN9AdGs4kmUjQQlTJ4VIfsjkoxXAjOII9hJ63bYyjgH6SgoOoJqzsssgXDbo5EOK9ETF8TP70Ibfhac3soLFEGOjBlkRSjDT6UC8dG6vEA6O0BhgVjdIipNYgb8rp2rCfRocA3qEzCVLoQUkR4DeJd40LBc6D2Ix8UaVYLrzA2Ym8mUE4UXAFSI4oiJzuwYgehWJJ0XYiDFSLVMUAASKqEaGiM6l0-_mtFRPk6xK0eID27VwMWrLWizvnmTKXrtFjdmHoBy9w-xVJzOdI46TPsLuGhydrBoyLWM0DGZcPI5Ah1Kbj57JjAPhtyHXqBBBj9pEHGXuH0MgfAeKZuhgABqmIxSbBMixTjEYDojVArSP9KcaBYIePfihgt86u6tNJN7EZ2imyQe8n0HOIOaoN3nb45EeogJ3yLbaVw5QxrtR-ImVNplpeAKTNRjyuM_Q7yhtBtIb9uymE7gluhGg9HqHxwr2c1gGSS7sMzUuwhZvRBjjlFK9Y1-6G-uBKSWW0yF4kJpabGxiuQOcoNJlJtEpvZGMmAEs00fmtlQcMMsUk3u-p9Vxxli0AgqS56YGHlg8VVR8LAQ-otAc4GfKsrJ1p2SL_dfkSkO6zyjm3LvGhGKWiqlGgcKx8i7D4j0eniknI36VJJJvSVNpBCaSdPtRBcWwHIQOyR1VrSEYmRhwyEri1GfPd2myKoSIUTEeseEkkcVYPwjVI3Ivge17uFpYiUM04iATudoQ09l_DzOYUXsdaXhxaGOuZIkUZnS83PG1BkseAteFFH3KaisB8FUw0UjbWUtugTuyV5vTJgZYp8pibApHVSMDCNQKj9TkTHJvGqE1JWtGkUu9UFaDBryIV7DKIw6NrZAz2LMCkDhzrFjLLitTuNXBO7NpBrBBVRSRVeDg53pOeYHJy2tqvsGxknhRIW3gZso7HiTxO6dkZgFEWsYjDYTwyQRvX2G05YhOlef0fHR7-qz-9x_4Ak0K:1mVvWT:lOvyXP2f7XWBpUOMV9XScHL4rO8WAK0BV8UQMnUqX1g	2021-10-14 14:50:49.635855+02
lj01lswmwu0osaj41m2idw3zv4k3dc9w	.eJydUMtugzAQ_BXKuUL4Adgcc-8fVLIW2wTaCCIMfajqvxdsR2zUplJ7WczOzuzMfqQKlrlTi7OT6k1apzS9x70G9LMdNsA8wXAcMz0O89Q32TaSRdRlD6Oxp0OcvRLowHUrW8qqELoxBIRs85IZ3RraSA0l55oIInVOuDaS8pILU7H1waEgjRRatlR7UWed68dB2bdzP72nNaG5LPN8RU6rtQWOdl1kh3X0pbev6jy6WT0ueUmrrXLhK0-2D2Me4AjmaT1Pi71BLv0bPNezGPFCvEBCNgCBlmBtX9n-jv0iDLX-JzCYDPtu0QXqAIoC--7LzG-BGEX6gJZRg4QoOlYwdkkXdia7VDATAR-ISnShGIgBMn51QXyvGMYvpOLnGFG2QKeJN4P_xfibT_ju0wOkvQt-P78A-0H7sA:1mecPQ:Nh_VueDqUtSfqwLKY290E0Cv4BPZ-0pQrRPsJCHDdn4	2021-11-07 14:15:28.613885+02
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Data for Name: robots_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.robots_rule (id, robot, crawl_delay) FROM stdin;
\.


--
-- Data for Name: robots_rule_allowed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.robots_rule_allowed (id, rule_id, url_id) FROM stdin;
\.


--
-- Data for Name: robots_rule_disallowed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.robots_rule_disallowed (id, rule_id, url_id) FROM stdin;
\.


--
-- Data for Name: robots_rule_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.robots_rule_sites (id, rule_id, site_id) FROM stdin;
\.


--
-- Data for Name: robots_url; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.robots_url (id, pattern) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.taggit_tag (id, name, slug) FROM stdin;
53	كبد	kbd
54	دم	dm
55	علاقة	lq
56	طب ولا عك	tb-wl-k
57	ألم	lm
58	سكر	skr
59	السرطان الكيماوي	lsrtn-lkymwy
60	عظام	zm
61	طبيبك	tbybk
62	كلى	kl
63	بنكرياس	bnkrys
64	الظهر	lzhr
65	روماتيزم	rwmtyzm
66	الدكتور	ldktwr
67	محمد أبوالسعود	mhmd-bwlswd
68	aspirin	aspirin
69	دهون	dhwn
70	دكتور محمد منصور	dktwr-mhmd-mnswr
71	كوليسترول	kwlystrwl
72	الصدر	lsdr
73	2018	2018
74	محمد منصور	mhmd-mnswr
75	النبوي	lnbwy
76	guidelines	guidelines
77	الطب	ltb
78	القلب	lqlb
79	heart attack	heart-attack
80	جلطة	jlt
81	طبي	tby
83	طبية	tby_1
84	شرقي	shrqy
85	أعشاب	shb
86	أدوية	dwy
87	قران	qrn
88	منظار	mnzr
89	قرحة	qrh
90	نبات	nbt
91	الحل النهائي	lhl-lnhyy
92	ثقافة	thqf
93	وعي	wy
94	الميكروب الحلزوني	lmykrwb-lhlzwny
95	طب طبيعي	tb-tbyy
96	طب نبوي	tb-nbwy
97	جرثومة	jrthwm
98	المعدة	lmd
99	طبيب	tbyb
100	غربي	grby
101	محمد الناظر	mhmd-lnzr
102	إدراك	drk
103	3 سنوات الدحيح	3-snwt-ldhyh
104	الإسعافات الأولية	lsft-lwly
105	فايرولفلوج	fyrwlflwj
106	كلام في الصميم	klm-fy-lsmym
107	إيقاف برنامج الدحيح	yqf-brnmj-ldhyh
108	إيمان الإمام	ymn-lmm
110	علم	lm_1
111	في العضل	fy-ldl
112	توقف برنامج الدحيح	twqf-brnmj-ldhyh
113	أحمد رمزي	hmd-rmzy
114	الاسبتالية	lsbtly
115	أحمد الغندور	hmd-lgndwr
116	الناظر كلينيك	lnzr-klynyk
117	الدحيح ينشر الإلحاد	ldhyh-ynshr-llhd
118	الدحيح هيثم طلعت	ldhyh-hythm-tlt
119	3 سنوات دحيح	3-snwt-dhyh
120	علوم	lwm
121	الدحيح كورونا	ldhyh-kwrwn
122	الدحيح 3 سنوات	ldhyh-3-snwt
123	الدحيح	ldhyh
124	برنامج الدحيح ينشر الإلحاد	brnmj-ldhyh-ynshr-llhd
125	نبوي	nbwy
126	قناة الدكتور	qn-ldktwr
127	إعلان	ln
128	الدكتور محمد منصور	ldktwr-mhmd-mnswr
129	الشاكرا	lshkr
130	ابراهيم الفقي	brhym-lfqy
131	العلاج بالطاقة	llj-bltq
132	العلاج بالطاقة الريكي	llj-bltq-lryky
133	الإبر الصينية	lbr-lsyny
134	الشاكرا وقانون الجذب	lshkr-wqnwn-ljdhb
135	العلوم الزائفة الباحثون السوريون	llwm-lzyf-lbhthwn-lswrywn
136	الأبراج	lbrj
137	العلاج بالأعشاب	llj-blshb
138	ديتوكس	dytwks
139	قانون الجذب في القران	qnwn-ljdhb-fy-lqrn
140	الشاكرا في القران	lshkr-fy-lqrn
141	العلاج بالطاقة الحيوية	llj-bltq-lhywy
142	الشاكرا في الاسلام	lshkr-fy-lslm
143	نصابون لكن ظرفاء	nsbwn-lkn-zrf
144	البرمجة اللغوية العصبية	lbrmj-llgwy-lsby
145	العلوم الزائفة وانواعها	llwm-lzyf-wnwh
146	الطب البديل	ltb-lbdyl
147	العلاج بالطاقة حلال ام حرام	llj-bltq-hll-m-hrm
148	العلوم الزائفة	llwm-lzyf
149	العلم الزائف	llm-lzyf
150	حرق	hrq
151	كاربوهيدرات	krbwhydrt
152	فات	ft
153	كيتو	kytw
154	أحسن	hsn
155	أفضل	fdl
156	نزول	nzwl
157	أطعمة	tm
158	الوزن	lwzn
159	نشويات	nshwyt
160	نظام	nzm
161	مشروبات	mshrwbt
162	كيتوجينيك	kytwjynyk
164	أكل	kl_1
165	كيتو دايت دكتور بيرج	kytw-dyt-dktwr-byrj
166	نزول الوزن السريع	nzwl-lwzn-lsry
167	كيتو دايت وجبات	kytw-dyt-wjbt
168	كيتو دايت	kytw-dyt
169	حمية قليلة السعرات	hmy-qlyl-lsrt
170	التخسيس بحمية الكيتو	ltkhsys-bhmy-lkytw
171	نزول الوزن في اسبوع	nzwl-lwzn-fy-sbw
172	الكيتو دايت الصيام المتقطع	lkytw-dyt-lsym-lmtqt
173	حمية الكيتو	hmy-lkytw
174	كيف تخسر 10 كيلو في اسبوع	kyf-tkhsr-10-kylw-fy-sbw
175	لوكارب دايت	lwkrb-dyt
176	نزول الوزن بدون تعب	nzwl-lwzn-bdwn-tb
177	حمية الكيتو الصيام المتقطع	hmy-lkytw-lsym-lmtqt
651	holistic medicine	holistic-medicine
178	كيتو دايت بالتفصيل	kytw-dyt-bltfsyl
179	حمية الكيتو دكتور بيرج	hmy-lkytw-dktwr-byrj
180	الدكتور كيتو دايت	ldktwr-kytw-dyt
181	الكيتونات	lkytwnt
182	كيتو دايت دكتور محمد الصباغ	kytw-dyt-dktwr-mhmd-lsbg
183	أفضل طريقة لنزول الوزن	fdl-tryq-lnzwl-lwzn
184	كيف تخسر الدهون	kyf-tkhsr-ldhwn
185	أفضل حمية لنزول الوزن	fdl-hmy-lnzwl-lwzn
186	كيف تخسر وزنك بسرعة	kyf-tkhsr-wznk-bsr
187	وتخفيف	wtkhfyf
188	الريجيم	lryjym
189	diet	diet
190	keto	keto
191	قاراطاي	qrty
192	كيتوزيس	kytwzys
193	أسرع	sr
194	رجيم	rjym
195	صحة	sh
196	fat	fat
197	من الآخر	mn-lakhr
198	مثالي	mthly
199	حمية	hmy
200	الخلاصة	lkhls
201	نزول الوزن	nzwl-lwzn
202	وزن	wzn
203	الزتونة	lztwn
204	دكتور	dktwr
205	بدانة	bdn
206	كتلة الجسم	ktl-ljsm
207	نصيحة	nsyh
208	أخطر أنواع السموم	khtr-nw-lsmwm
209	الملح العادي وملح الهيمالايا	lmlh-ldy-wmlh-lhymly
210	فوائد ملح الهيمالايا	fwyd-mlh-lhymly
211	أضرار ملح الطعام	drr-mlh-ltm
212	خطر	khtr
213	تحذير	thdhyr
215	أخطر	khtr_1
216	كذبة ملح الطعام	kdhb-mlh-ltm
217	سم قاتل	sm-qtl
218	ملح البحر	mlh-lbhr
219	السكر السرطان	lskr-lsrtn
220	أخطر دواء في العالم	khtr-dw-fy-llm
221	مميت	mmyt
222	السكر غذاء السرطان	lskr-gdh-lsrtn
223	أخطر مادة في العالم	khtr-md-fy-llm
224	خطورة الملح	khtwr-lmlh
225	موت	mwt
226	قاتل	qtl
227	انتبه	ntbh
228	أهم	hm
229	الملح السرطان	lmlh-lsrtn
230	السرطان يتغذى على السكر	lsrtn-ytgdh-l-lskr
231	أسباب السرطان	sbb-lsrtn
232	معلومة خطيرة	mlwm-khtyr
233	ملح الهيمالايا	mlh-lhymly
234	العلاج	llj
235	evidence based medicine	evidence-based-medicine
236	طب الأعشاب	tb-lshb
237	السرطان	lsrtn
238	الطب المبني على الدليل	ltb-lmbny-l-ldlyl
239	الطب المبني على الملوخية	ltb-lmbny-l-lmlwkhy
240	كريم علي الطب المبني على الملوخية	krym-ly-ltb-lmbny-l-lmlwkhy
241	ملوخية الدكتور محمد منصور	mlwkhy-ldktwr-mhmd-mnswr
242	الطب النبوي	ltb-lnbwy
243	بريطانيا	brytny
244	انجلترا	njltr
245	بلح كريم علي	blh-krym-ly
246	الطب المبني على البراهين	ltb-lmbny-l-lbrhyn
248	إلتهاب	lthb_1
249	المثانة	lmthn
250	البول	lbwl
251	وجع	wj
252	الفشل الكلوي	lfshl-lklwy
253	الكلى	lkl
254	الكليتين	lklytyn
255	جصوة	jsw
256	حصوات	hswt
257	مضاد حيوي	mdd-hywy
258	حل	hl
259	مشكلة	mshkl
260	كالسيوم	klsywm
261	كرياتينين	krytynyn
262	إلتهابات	lthbt
263	مريض	mryd
264	كلوي	klwy
265	فشل	fshl
266	خطير	khtyr
267	غسيل كلوي	gsyl-klwy
268	هبد	hbd
269	طريقة	tryq
271	إبراهيم الفقي	brhym-lfqy_1
272	عيادة	yd
273	الأخلاط	lkhlt
274	الحجامة	lhjm
275	Hijama	hijama
276	cupping	cupping
277	الدم الفاسد	ldm-lfsd
278	cupping therapy	cupping-therapy
279	حجامة	hjm
280	wet cupping	wet-cupping
281	طب بديل	tb-bdyl
282	حبة البركة	hb-lbrk
283	Cognitive bias	cognitive-bias
284	فوائد	fwyd
285	زنجبيل	znjbyl
286	الانحياز المعرفي	lnhyz-lmrfy
287	الانحيازات المعرفية	lnhyzt-lmrfy
288	نحط أساس	nht-ss
289	Dunning Kruger	dunning-kruger
290	دانينج كروجر	dnynj-krwjr
291	pseudoscience	pseudoscience
292	الانحياز التأكيدي	lnhyz-ltkydy
293	detox	detox
294	ألف باء طب	lf-b-tb
295	aquipuncture	aquipuncture
296	Trump	trump
297	ينسون	ynswn
298	نعناع	nn
299	عسل	sl
300	placebo effect	placebo-effect
301	تأثير البلاسيبو الأدوية	tthyr-lblsybw-ldwy
302	Nocebo	nocebo
303	الخداع الطبي	lkhd-ltby
304	العلاج بالإيحاء	llj-blyh
305	العلاج بالوهم	llj-blwhm
306	بلاسيبو وناسيبو	blsybw-wnsybw
307	بلاسيبو ونوسيبو	blsybw-wnwsybw
309	العلاج بالايحاء	llj-blyh_1
310	الدجل الطبي	ldjl-ltby
311	التأثير الوهمي للأدوية	ltthyr-lwhmy-lldwy
312	تأثير البلاسيبو	tthyr-lblsybw
314	النصب الطبي	lnsb-ltby
315	البلاسيبو والناسيبو	lblsybw-wlnsybw
316	العلاج بالبلاسيبو	llj-blblsybw
317	حقيقة العلاج بالإيحاء	hqyq-llj-blyh
318	بلاسيبو	blsybw
319	العلاجات الوهمية	lljt-lwhmy
320	Placebo	placebo
321	فارمستان	frmstn
322	دكتور عبدالسلام محمد	dktwr-bdlslm-mhmd
323	شرفشتاين ميكانيكا الكم	shrfshtyn-myknyk-lkm
324	شرفشتاين	shrfshtyn
325	اكل وشرب زيت الزيتون	kl-wshrb-zyt-lzytwn
326	اكل وشرب الاندومي	kl-wshrb-lndwmy
327	شرفشتاين كروية الارض	shrfshtyn-krwy-lrd
328	فارماستان التدخين	frmstn-ltdkhyn
329	فارماستان الوسواس القهري	frmstn-lwsws-lqhry
330	شرفشتاين الانفجار العظيم	shrfshtyn-lnfjr-lzym
331	أكل وشرب	kl-wshrb
332	اكل وشرب الميكروويف	kl-wshrb-lmykrwwyf
333	قناة أكل وشرب	qn-kl-wshrb
334	شرفشتاين حالات المادة	shrfshtyn-hlt-lmd
335	دكتور محمد شرف	dktwr-mhmd-shrf
336	شرفشتاين الثقوب السوداء	shrfshtyn-lthqwb-lswd
337	اكل وشرب غشالة الاطباق	kl-wshrb-gshl-ltbq
339	شرفشتين	shrfshtyn_1
340	قناة شرفشتاين	qn-shrfshtyn
341	قناة ياللا فيتنس	qn-yll-fytns
342	في العظم	fy-lzm
343	ياللا فتنس	yll-ftns
344	اكل وشرب الجرانيت	kl-wshrb-ljrnyt
345	شرفشتاين الارض مسطحة	shrfshtyn-lrd-msth
346	د.عبدالسلام محمد	dbdlslm-mhmd
347	أمراض القلب	mrd-lqlb
348	صمام	smm
349	مزيف	mzyf
350	قسطرة	qstr
351	رسالة	rsl
352	مزور	mzwr
353	فضيحة	fdyh
354	جمال شعبان	jml-shbn
355	نصاب	nsb
357	دعامة	dm_1
358	كئاب	kyb
359	رامي اسماعيل	rmy-smyl
360	كذاب	kdhb
361	ماريفان	mryfn
363	رامي إسماعيل	rmy-smyl_1
364	أسبرين	sbryn
365	وجع القلب	wj-lqlb
366	تنمية بشرية	tnmy-bshry
367	احمد عمارة	hmd-mr
368	أوروبا	wrwb
369	كريم علي	krym-ly
370	الحرارة	lhrr
371	اللبن	llbn
372	الملح	lmlh
374	أحمد عمارة	hmd-mr_1
375	طاقة	tq
376	فكر تاني	fkr-tny
377	الضعف الجنسي عند الرجال علياء جاد	ldf-ljnsy-nd-lrjl-ly-jd
378	التسريب الوريدي وأسبابه وعلاجه	ltsryb-lwrydy-wsbbh-wljh
379	عصير البصل لزيادة القدرة الجنسية	syr-lbsl-lzyd-lqdr-ljnsy
380	أسباب الضعف الجنسي عند الرجال	sbb-ldf-ljnsy-nd-lrjl
381	فياجرا	fyjr
382	علاج ضعف الانتصاب	lj-df-lntsb
383	أضرار فياجرا	drr-fyjr
384	علاج الضعف الجنسي النفسي عند الرجال	lj-ldf-ljnsy-lnfsy-nd-lrjl
385	علاج الضعف الجنسي بالأعشاب	lj-ldf-ljnsy-blshb
386	علاج سرعة القذف	lj-sr-lqdhf
387	علاجات جديدة للضعف الجنسي عند الرجال	ljt-jdyd-lldf-ljnsy-nd-lrjl
388	علاج الضعف الجنسي هبة قطب	lj-ldf-ljnsy-hb-qtb
389	تعرف على أسباب الضعف الجنسي عند الرجال وكيفية علاجه	trf-l-sbb-ldf-ljnsy-nd-lrjl-wkyfy-ljh
390	فياجرا طبيعية	fyjr-tbyy
391	أسباب فقدان الرغبة الجنسية عند الرجل	sbb-fqdn-lrgb-ljnsy-nd-lrjl
392	دي عين سمكة	dy-yn-smk
393	في بلد ال90 مليون دكتور	fy-bld-l90-mlywn-dktwr
394	حلمك تكون طبيب	hlmk-tkwn-tbyb
395	فيزيتا حجز دكتور	fyzyt-hjz-dktwr
396	ازاي تختار دكتور تكشف عنده	zy-tkhtr-dktwr-tkshf-ndh
397	محتاج دكتور؟	mhtj-dktwr
398	اروح لمين	rwh-lmyn
399	دكتور رامي اسماعيل	dktwr-rmy-smyl
400	دكتور امراض كلى	dktwr-mrd-kl
401	ادخل على فيزيتا ةراح تلقى احسن	dkhl-l-fyzyt-rh-tlq-hsn
402	كيف تختار تخصصك الطبي	kyf-tkhtr-tkhssk-ltby
403	احسن دكتور قلب	hsn-dktwr-qlb
404	افضل دكتور كلى	fdl-dktwr-kl
405	فيزيتا	fyzyt
406	احسن جراح قلب	hsn-jrh-qlb
407	شاهد هذا الفيديو وتعرف على مهنة الطب	shhd-hdh-lfydyw-wtrf-l-mhn-ltb
408	vezeeta.com	vezeetacom
409	كيف تختار طبيب	kyf-tkhtr-tbyb
410	vezeeta	vezeeta
411	اسهل طريقة لحجز احسن واكبر دكاترة في مصر	shl-tryq-lhjz-hsn-wkbr-dktr-fy-msr
412	تطبيق فيزيتا	ttbyq-fyzyt
413	الاسبتالية التجارب على البشر	lsbtly-ltjrb-l-lbshr
414	مراحل تجارب الأدوية	mrhl-tjrb-ldwy
415	مراحل التجارب على البشر	mrhl-ltjrb-l-lbshr
416	مؤسسة النيزك وبيرزيت للأدوية	mwss-lnyzk-wbyrzyt-lldwy
417	how is medicine made	how-is-medicine-made
418	مراحل تجارب الدواء	mrhl-tjrb-ldw
419	علاج لكورونا	lj-lkwrwn
420	مصانع عملاقة	msn-mlq
421	تجريب الأدوية على الناس حقائق وتحذيرات	tjryb-ldwy-l-lns-hqyq-wthdhyrt
422	هل الأدوية اللي بناخدها امنة	hl-ldwy-lly-bnkhdh-mn
423	مراحل تجارب وانتاج الدواء	mrhl-tjrb-wntj-ldw
424	حقائق وتحذيرات	hqyq-wthdhyrt
425	أخيرا سترى كيف يصنع دواءك	khyr-str-kyf-ysn-dwk
426	مراحل انتاج الأدوية	mrhl-ntj-ldwy
427	التجارب على البشر	ltjrb-l-lbshr
428	إياد قنيبي	yd-qnyby
429	مصانع الأدوية الضخمة	msn-ldwy-ldkhm
430	تجريب الأدوية على الناس	tjryb-ldwy-l-lns
431	كيف يصنع الدواء	kyf-ysn-ldw
432	حقيقة علاج كورونا	hqyq-lj-kwrwn
433	الطب الوظيفي	ltb-lwzyfy
434	الحقيقة الخفية وراء الامراض	lhqyq-lkhfy-wr-lmrd
435	أسباب الامراض الحقيقية	sbb-lmrd-lhqyqy
436	الطب الوظيفي والطب الشمولي	ltb-lwzyfy-wltb-lshmwly
437	عرض ام مرض	rd-m-mrd
438	حقيقة الامراض	hqyq-lmrd
439	علاج الاعراض	lj-lrd
440	الأسباب الدفينة للأمراض	lsbb-ldfyn-llmrd
441	دكتور كريم علي فكر تاني	dktwr-krym-ly-fkr-tny
442	الاسباب الحقيقية للاعراض	lsbb-lhqyqy-llrd
443	الاسباب الحقيقية للامراض	lsbb-lhqyqy-llmrd
444	الطب الشمولي	ltb-lshmwly
446	قناة	qn
448	نصب	nsb_1
449	انترفيرون	ntrfyrwn
450	٢٠١٩	2019
451	فيس بوك	fys-bwk
453	خدعة	khd_1
454	حقيقة	hqyq
455	التدخين	ltdkhyn
456	تعليمية	tlymy
457	السمنة	lsmn
458	سوفالدي	swfldy
459	قنوات	qnwt
460	عادل عبد العال	dl-bd-ll
461	جودة عواد	jwd-wd
463	هباد	hbd_1
464	وهم	whm
465	أمير صالح	myr-slh
466	تخصص	tkhss
467	علاجات وهمية	ljt-whmy
468	محمد الفايد	mhmd-lfyd
469	عكاك	kk
470	سرقة	srq
472	2019	2019_1
473	فوائد الثوم	fwyd-lthwm
474	أخطر علاجات الثوم - يعالج الأورام الخبيثة وسرطان الثدي	khtr-ljt-lthwm-ylj-lwrm-lkhbyth-wsrtn-lthdy
475	الثوم يطارد السرطان	lthwm-ytrd-lsrtn
476	الثوم والمناعة	lthwm-wlmn
477	المعادن النفيسة	lmdn-lnfys
478	المرض الخبيث	lmrd-lkhbyth
480	إشعاع	sh_1
481	أخطر علاجات الثوم	khtr-ljt-lthwm
482	علاج الكانسر	lj-lknsr
483	سبحان الله	sbhn-llh
484	كيماوي	kymwy
485	الثوم والبصل	lthwm-wlbsl
486	لا تخرج قبل أن تقول	l-tkhrj-qbl-n-tqwl
487	معجزة	mjz
488	معجزة الثوم في علاج كورونا	mjz-lthwm-fy-lj-kwrwn
489	هل الثوم يسبب السرطان	hl-lthwm-ysbb-lsrtn
490	اكتئاب	ktyb
491	سايكولوجي	sykwlwjy
492	سيروتونين	syrwtwnyn
493	الطب النفسي	ltb-lnfsy
494	anexiety	anexiety
495	انتحار	nthr
496	سايكوثيرابي	sykwthyrby
497	فرط الحركة	frt-lhrk
498	فصام	fsm
499	psychology	psychology
500	علاج نفسي	lj-nfsy
501	psychotherapy	psychotherapy
502	ثنائي القطبين	thnyy-lqtbyn
503	الاكتئاب	lktyb
504	طبيب نفساني	tbyb-nfsny
505	psychiatry	psychiatry
506	التوتر	ltwtr
507	psychiatrist	psychiatrist
508	شيزوفرينيا	shyzwfryny
509	antidepressant	antidepressant
510	أوتيزم	wtyzm
511	بايبولار	bybwlr
512	الانتحار	lnthr
513	مضادات الاكتئاب	mddt-lktyb
514	bipolar	bipolar
515	القلق	lqlq
516	depression	depression
517	ADHD	adhd
518	التوحد	ltwhd
519	psyciatry	psyciatry
520	دكتور أحمد العوضي	dktwr-hmd-lwdy
521	معالج نفسي	mlj-nfsy
522	psychologist	psychologist
523	احتاج علاج نفسي	htj-lj-nfsy
524	depression treatment	depression-treatment
525	لا تحزن	l-thzn
526	عندي مشكلة نفسية	ndy-mshkl-nfsy
527	مركز لا تحزن	mrkz-l-thzn
528	علاج الاكتئاب	lj-lktyb
529	عيادة صحة نفسية	yd-sh-nfsy
530	مشكلة نفسية	mshkl-nfsy
531	pschiatrist	pschiatrist
532	معالج نفسي في بريطانيا	mlj-nfsy-fy-brytny
533	treatment for depression	treatment-for-depression
534	bipolar disorder	bipolar-disorder
535	أحمد العوضي	hmd-lwdy
652	علياء جاد	ly-jd
536	treatment of depression	treatment-of-depression
538	دكتور نفساني	dktwr-nfsny
539	mania	mania
540	hypomania	hypomania
541	استشارات نفسية	stshrt-nfsy
542	طبيب نفسي	tbyb-nfsy
543	cbt	cbt
544	أفضل علاج	fdl-lj
545	أدوية الاكتئاب	dwy-lktyb
546	الطب النفسي السلوكي	ltb-lnfsy-lslwky
548	Depression	depression_1
549	علاج الاكتئاب في المنزل	lj-lktyb-fy-lmnzl
550	دواء للاكتئاب	dw-llktyb
551	أفضل طريقة لعلاج الاكتئاب	fdl-tryq-llj-lktyb
552	علاج الاكتئاب بدون دواء	lj-lktyb-bdwn-dw
553	عندي اكتئاب	ndy-ktyb
554	دكتورة هدى سراج	dktwr-hd-srj
555	علاج الاكتئاب بالقران	lj-lktyb-blqrn
556	العلاج المعرفي السلوكي	llj-lmrfy-lslwky
557	طريقة علاج الاكتئاب في المنزل	tryq-lj-lktyb-fy-lmnzl
558	الطب النفسي وعلاج الاكتئاب	ltb-lnfsy-wlj-lktyb
559	cognitive behavioural therapy	cognitive-behavioural-therapy
560	women abuse	women-abuse
561	زوجي بيستغلني	zwjy-bystglny
562	Abuse	abuse
563	toxic relation	toxic-relation
564	جوزي بيضربني	jwzy-bydrbny
565	adult abuse	adult-abuse
566	استغلال	stgll
567	حافظ_على_كليتك	hfz_l_klytk
568	محمد_منصور	mhmd_mnswr
569	شير_في_الخير	shyr_fy_lkhyr
570	الباراسيتامول	lbrsytmwl
571	حماية_من_السرطان	hmy_mn_lsrtn
572	سلسلة_النصائح_العشرة	slsl_lnsyh_lshr
573	نصيحة_سريعة	nsyh_sry
574	اللحوم_المصنعة_بتجيب_سرطان	llhwm_lmsn_btjyb_srtn
575	طب_ولا_عك	tb_wl_k
576	كبسولة	kbswl
577	صحتك_أغلى_ما_تملك	shtk_gl_m_tmlk
578	الدايت	ldyt
579	أنواع_الدايت	nw_ldyt
580	حامل	hml
581	علاء_السويفي	l_lswyfy
582	فيرس_سي	fyrs_sy
583	محمد_عبد_السلام	mhmd_bd_lslm
584	الكبدي	lkbdy
585	الكوليسترول	lkwlystrwl
586	نسبة_الكوليسترول_الطبيعية	nsb_lkwlystrwl_ltbyy
587	Q&A	qa
588	دكتور أمير صالح	dktwr-myr-slh
589	الحجامة الجافة	lhjm-ljf
590	دكتور عبد الناصر توحيد	dktwr-bd-lnsr-twhyd
591	طريقة الحجامة	tryq-lhjm
592	العلاج بالحجامة	llj-blhjm
593	بريد العيادة	bryd-lyd
594	أمير صالح الحجامة	myr-slh-lhjm
595	أفضل طريقة لعمل الحجامة	fdl-tryq-lml-lhjm
596	أدلة الحجامة	dl-lhjm
597	عبد الناصر توحيد	bd-lnsr-twhyd
598	كشف أون لاين	kshf-wn-lyn
599	هل أدخل كلية الطب	hl-dkhl-kly-ltb
600	كيف اختار طبيب	kyf-khtr-tbyb
601	مكان عيادة الدكتور	mkn-yd-ldktwr
602	كشف أونلاين	kshf-wnlyn
603	مكان عيادة دكتور محمد منصور	mkn-yd-dktwr-mhmd-mnswr
604	المكملات الغذائية	lmkmlt-lgdhyy
605	مميزات كلية الطب	mmyzt-kly-ltb
606	عيادتك فين يادكتور	ydtk-fyn-ydktwr
607	أفضل مكمل غدائي	fdl-mkml-gdyy
608	عيوب كلية الطب	ywb-kly-ltb
609	أضرار المكملات الغذائية	drr-lmkmlt-lgdhyy
610	دكتور نصاب	dktwr-nsb
611	نصابين	nsbyn
613	طب ولا عك؟	tb-wl-k_1
614	دكتور جودة عواد	dktwr-jwd-wd
615	صحي	shy
616	أحسن علاج	hsn-lj
617	دكتور جميل مقدسي	dktwr-jmyl-mqdsy
618	دكتور بيهبد	dktwr-byhbd
619	هبيد	hbyd
620	جميل مقدسي	jmyl-mqdsy
622	أطباء	tb_1
623	علاج وهمي	lj-whmy
624	دكتور كريم علي	dktwr-krym-ly
625	قناة فكر تاني	qn-fkr-tny
626	سوفوسبوفير	swfwsbwfyr
627	الفايروس	lfyrws
628	سرطان_الكبد	srtn_lkbd
629	فايروس_سي	fyrws_sy
630	الكبد	lkbd
631	مصر	msr
632	الطبيبة النصابة	ltbyb-lnsb
633	اصغر نصابة في التاريخ	sgr-nsb-fy-ltrykh
634	اليزابيث هولمز	lyzbyth-hwlmz
635	الطبيبة الساحرة	ltbyb-lshr
636	اصغر ميليارديرية في التاريخ	sgr-mylyrdyry-fy-ltrykh
637	طبيب نصاب	tbyb-nsb
639	إليزابيث هولمز	lyzbyth-hwlmz_1
640	شركة ثيرانوس	shrk-thyrnws
641	الطبيبة الساحرة إليزابيث هولمز	ltbyb-lshr-lyzbyth-hwlmz
643	الطبيبة الساحرة اليزابيث هولمز	ltbyb-lshr-lyzbyth-hwlmz_1
644	مشروع ثيرانوس	mshrw-thyrnws
645	أصغر ميليارديرة في التاريخ	sgr-mylyrdyr-fy-ltrykh
646	النصابة	lnsb
647	شركة ثيرانوس اليزابيث هولمز	shrk-thyrnws-lyzbyth-hwlmz
648	Elizabeth holmes	elizabeth-holmes
649	functional medicine	functional-medicine
650	الطب التكاملي	ltb-ltkmly
653	دكتورة رحمة الغيلي	dktwr-rhm-lgyly
654	دكتورة علياء جاد	dktwr-ly-jd
655	رحمة الغيلي	rhm-lgyly
656	integrative medicine	integrative-medicine
658	ألطب الشمولي	ltb-lshmwly_1
659	رانيتيدين	rnytydyn
660	NMDA	nmda
661	zantac	zantac
662	الأدوية	ldwy
663	الطب الطبيعي	ltb-ltbyy
664	NDMA	ndma
665	زانتاك سرطان	zntk-srtn
666	زانتاك	zntk
667	زياد_منصور	zyd_mnswr
668	زهايمر	zhymr
669	الخرف	lkhrf
670	الزهايمر	lzhymr
671	مريم_جاسر	mrym_jsr
672	التوتّر	ltwtwr
673	القولون_العصبي	lqwlwn_lsby
674	القولون	lqwlwn
675	كذبة السرطان	kdhb-lsrtn
676	vitamin b17	vitamin-b17
677	السرطان خرافة	lsrtn-khrf
678	cancer treatment	cancer-treatment
679	هبة الزياد سرطان بعد اليوم	hb-lzyd-srtn-bd-lywm
680	فيتامين ب17 والسرطان	fytmyn-b17-wlsrtn
681	حقيقة السرطان	hqyq-lsrtn
682	هبة الزياد	hb-lzyd
683	هبة الزياد السرطان خرافة	hb-lzyd-lsrtn-khrf
684	السرطان خدعة	lsrtn-khd
685	هبة الزياد علاج السرطان	hb-lzyd-lj-lsrtn
686	فيتامين ب17	fytmyn-b17
687	أغذية تسبب السرطان	gdhy-tsbb-lsrtn
688	أفضل مكملات غذائية	fdl-mkmlt-gdhyy
689	نصائح من دكتور	nsyh-mn-dktwr
690	plant based diet	plant-based-diet
691	نصائح لحياة صحية	nsyh-lhy-shy
692	نصائح طبية	nsyh-tby
693	الفيتامينات	lfytmynt
694	كيف تعيش حياة صحية	kyf-tysh-hy-shy
695	أحسن نصائح لعلاج	hsn-nsyh-llj
696	إدمان المخدرات	dmn-lmkhdrt
697	أخطار المخدرات	khtr-lmkhdrt
698	أفضل فيتامينات	fdl-fytmynt
699	superfoods	superfoods
700	كيف تحافظ على صحتك	kyf-thfz-l-shtk
701	نصائح حقيقية	nsyh-hqyqy
702	المخدرات	lmkhdrt
703	أفضل نصائح طبية	fdl-nsyh-tby
704	الطب_البديل	ltb_lbdyl
705	الأعشاب	lshb
706	العراب	lrb
707	احمد_خالد_توفيق	hmd_khld_twfyq
708	العلوم_الزائفة	llwm_lzyf
709	أشباه_العلوم	shbh_llwm
710	وزنك	wznk
711	رياضة	ryd
712	الدهون	ldhwn
713	المناعة	lmn
714	الكحوليات	lkhwlyt
715	الضعف_الجنسي	ldf_ljnsy
716	face_app	face_app
717	طبّ_ولا_عك	tbw_wl_k
718	نزلات البرد والانفلونزا	nzlt-lbrd-wlnflwnz
719	كورونا فيروس وزارة الصحة	kwrwn-fyrws-wzr-lsh
720	كورونا الصين	kwrwn-lsyn
721	مرض كورونا	mrd-kwrwn
722	فايروس كورونا القطط	fyrws-kwrwn-lqtt
723	العدوى الفيروسية	ldw-lfyrwsy
724	اعراض فايروس كورونا	rd-fyrws-kwrwn
725	فايروس كورونا اعراضه واسبابه	fyrws-kwrwn-rdh-wsbbh
726	كورونا فيروس	kwrwn-fyrws
727	كورونا اعراض	kwrwn-rd
728	الفرق بين البرد والانفلونزا	lfrq-byn-lbrd-wlnflwnz
729	الفرق بين البرد البكتيري والفيروسي	lfrq-byn-lbrd-lbktyry-wlfyrwsy
730	مرض كورونا في الصين	mrd-kwrwn-fy-lsyn
731	علاج نزلات البرد	lj-nzlt-lbrd
732	نزلات البرد	nzlt-lbrd
733	حقيقة فيروس كورونا	hqyq-fyrws-kwrwn
734	كيفية الوقاية من السرطان	kyfy-lwqy-mn-lsrtn
735	نودلز	nwdlz
736	إندومي بيجيب سرطان	ndwmy-byjyb-srtn
737	international cancer day	international-cancer-day
738	إندومي	ndwmy
739	cancer awareness	cancer-awareness
740	مقلاية تيفال	mqly-tyfl
741	الأسباب الحقيقية للسرطان	lsbb-lhqyqy-llsrtn
742	بلوتوث	blwtwth
743	الورم الخبيث	lwrm-lkhbyth
744	وهم السرطان	whm-lsrtn
745	اليوم العالمي للسرطان	lywm-llmy-llsrtn
746	مسببات السرطان	msbbt-lsrtn
747	الوقاية من الأمراض	lwqy-mn-lmrd
748	كيف احمي نفسي من السرطان	kyf-hmy-nfsy-mn-lsrtn
749	كورونا القاتل	kwrwn-lqtl
750	كورونا فيروس في الصين	kwrwn-fyrws-fy-lsyn
751	الوقاية من فيروس كورونا	lwqy-mn-fyrws-kwrwn
752	كورونا الصين مباشر	kwrwn-lsyn-mbshr
753	كيف تحمي نفسك كورونا	kyf-thmy-nfsk-kwrwn
754	كورونا فيروس الصين	kwrwn-fyrws-lsyn
755	الدكتور كورونا كيف تحمي نفسك	ldktwr-kwrwn-kyf-thmy-nfsk
756	كورونا الصين 2020	kwrwn-lsyn-2020
757	فايروس كورونا الصين	fyrws-kwrwn-lsyn
758	تفتيح المناطق الحساسة	tftyh-lmntq-lhss
759	أفضل دهان للشعر	fdl-dhn-llshr
760	الناظر كلينيك أمراض جلدية	lnzr-klynyk-mrd-jldy
761	تفتيح البشرة السمراء	tftyh-lbshr-lsmr
1050	إسلام منصور	slm-mnswr
762	دهان لعلاج حب الشباب	dhn-llj-hb-lshbb
763	أفضل كريم تفتيح البشرة	fdl-krym-tftyh-lbshr
764	علاج السيلوليت بالليزر	lj-lsylwlyt-bllyzr
765	كريم لعلاج النمش	krym-llj-lnmsh
766	كريم تفتيح البشرة	krym-tftyh-lbshr
767	كريم لعلاج الهالات السوداء	krym-llj-lhlt-lswd
768	الدكتور محمد الناظر	ldktwr-mhmd-lnzr
769	الدكتور محمد منصور والدكتور محمد الناظر	ldktwr-mhmd-mnswr-wldktwr-mhmd-lnzr
770	دهان لعلاج تشققات الجلد	dhn-llj-tshqqt-ljld
771	المحلات فاضية	lmhlt-fdy
772	الحرم فارغ	lhrm-frg
773	نهاية العالم	nhy-llm
774	الدكتور نهاية العالم	ldktwr-nhy-llm
775	بانديميك	bndymyk
776	أرفف المتاجر فارغة	rff-lmtjr-frg
777	صحن الحرم فاضي	shn-lhrm-fdy
778	نهاية العالم كورونا	nhy-llm-kwrwn
779	علاج مرض كورونا 2020	lj-mrd-kwrwn-2020
780	الرد على إياد قنيبي	lrd-l-yd-qnyby
781	الرد على دكتور إياد القنيبي	lrd-l-dktwr-yd-lqnyby
782	دكتور إياد قنيبي وعلاج كورونا	dktwr-yd-qnyby-wlj-kwrwn
783	اكتشاف دواء لفيروس كورونا الجديد	ktshf-dw-lfyrws-kwrwn-ljdyd
784	تقوية المناعة	tqwy-lmn
785	علاج كوفيد19	lj-kwfyd19
786	إياد قنيبي كورونا	yd-qnyby-kwrwn
787	كورونا الصين علاج	kwrwn-lsyn-lj
788	اكتشاف علاج كورونا	ktshf-lj-kwrwn
789	دكتور إياد القنيبي	dktwr-yd-lqnyby
790	الثوم علاج فيروس كورونا	lthwm-lj-fyrws-kwrwn
791	كوفيد19 إياد قنيبي	kwfyd19-yd-qnyby
792	كوفيد 19	kwfyd-19
793	كوفيد19	kwfyd19
794	كورونا	kwrwn
795	علاج فيروس كورونا الجديد	lj-fyrws-kwrwn-ljdyd
796	covid19	covid19
797	القتل الرحيم	lqtl-lrhym
798	coronavirus	coronavirus
799	euthanasia	euthanasia
800	علاج كورونا	lj-kwrwn
801	الموت الرحيم	lmwt-lrhym
802	مرض كورونا الجديد	mrd-kwrwn-ljdyd
803	كيفية غسيل اليدين	kyfy-gsyl-lydyn
804	فيديو ثري دي	fydyw-thry-dy
805	أحسن فيديو تعليمي	hsn-fydyw-tlymy
806	أفضل فيديو طبي	fdl-fydyw-tby
807	الوقاية من فيروس كورونا الصين	lwqy-mn-fyrws-kwrwn-lsyn
808	علاج فيروس كورونا	lj-fyrws-kwrwn
809	فيديو تعليمي	fydyw-tlymy
810	حقيقة فيروس كورونا الجديد	hqyq-fyrws-kwrwn-ljdyd
811	لبس الماسك كورونا	lbs-lmsk-kwrwn
812	360 video	360-video
813	فيديو 360	fydyw-360
814	علاج كورونا الجديد	lj-kwrwn-ljdyd
815	هل لبس الماسك مفيد	hl-lbs-lmsk-mfyd
816	انسان يعود للحياة	nsn-ywd-llhy
817	علاج توقف القلب	lj-twqf-lqlb
818	التنفس الاصطناعي	ltnfs-lstny
819	قبلة الحياة	qbl-lhy
820	كيف تنقذ شخصا بلع لسانه	kyf-tnqdh-shkhs-bl-lsnh
821	الانعاش القلبي الرئوي cpr	lnsh-lqlby-lrywy-cpr
822	الانعاش القلبي الرئوي	lnsh-lqlby-lrywy
823	انعاش القلب والنفس	nsh-lqlb-wlnfs
824	شخص يرجع للحياة	shkhs-yrj-llhy
825	عملية الانعاش القلبي الرئوي	mly-lnsh-lqlby-lrywy
826	الانعاش القلبي الرئوي وزارة الصحة	lnsh-lqlby-lrywy-wzr-lsh
827	الانعاش القلبي الرئوي حقيقي	lnsh-lqlby-lrywy-hqyqy
828	الانعاش القلبي الرئوي bls	lnsh-lqlby-lrywy-bls
829	basic life support	basic-life-support
830	كيفية انعاش القلب	kyfy-nsh-lqlb
831	كوادر طبية تنقذ حياة شاب بعد توقف قلبه ورئتيه 20 دقيقة	kwdr-tby-tnqdh-hy-shb-bd-twqf-qlbh-wrytyh-20-dqyq
832	إنعاش القلب والرئتين	nsh-lqlb-wlrytyn
833	CPR	cpr
834	التنفس الصناعي	ltnfs-lsny
835	توقف عضلة القلب	twqf-dl-lqlb
836	علاج الوسواس القهري	lj-lwsws-lqhry
837	استشارات نفسية مجانية	stshrt-nfsy-mjny
838	استشارات أونلاين	stshrt-wnlyn
839	علاج التوحد	lj-ltwhd
840	أفضل طبيب نفسي	fdl-tbyb-nfsy
841	علاج نفسي أونلاين	lj-nfsy-wnlyn
842	استشارات اون لاين	stshrt-wn-lyn
843	طبيب نفسي مجاني	tbyb-nfsy-mjny
844	موقع بزرميط	mwq-bzrmyt
845	استشارات نفسية أونلاين	stshrt-nfsy-wnlyn
846	شيزلونج استشارات نفسية	shyzlwnj-stshrt-nfsy
847	موقع مجانين	mwq-mjnyn
848	موقع شيزلونج	mwq-shyzlwnj
849	طبيب نفسي اونلاين	tbyb-nfsy-wnlyn
850	مجانين استشارات نفسية	mjnyn-stshrt-nfsy
851	مشاكل رمضان الصحية	mshkl-rmdn-lshy
852	الهبوط مع الصوم	lhbwt-m-lswm
853	المشاكل الصحية المتكررة	lmshkl-lshy-lmtkrr
854	علاج الدوخة	lj-ldwkh
855	ألم المعدة في رمضان	lm-lmd-fy-rmdn
856	علاج الإمساك في رمضان	lj-lmsk-fy-rmdn
857	الصداع والصيام	lsd-wlsym
858	وجع البطن في الصيام	wj-lbtn-fy-lsym
859	الصيام والقولون العصبي	lsym-wlqwlwn-lsby
860	الحموضة في الصيام	lhmwd-fy-lsym
861	رمضان	rmdn
862	آلام المعدة أثناء الصيام	alm-lmd-thn-lsym
863	التعب أثناء الصيام	ltb-thn-lsym
864	الدوخة	ldwkh
865	الصوم وألم المعدة	lswm-wlm-lmd
866	المشاكل الصحية في رمضان	lmshkl-lshy-fy-rmdn
867	الصيام والقولون	lsym-wlqwlwn
868	الصيام والإمساك	lsym-wlmsk
869	علاج الصداع في نهار رمضان	lj-lsd-fy-nhr-rmdn
870	قرحة المعدة والصيام	qrh-lmd-wlsym
871	الصداع النصفي والصيام	lsd-lnsfy-wlsym
872	الصيام والمرض	lsym-wlmrd
873	حديث صومو تصحو	hdyth-swmw-tshw
874	محمد الفايد الصيام	mhmd-lfyd-lsym
875	الصيام دكتور الفايد	lsym-dktwr-lfyd
876	دكتور الفايد صيام رمضان	dktwr-lfyd-sym-rmdn
877	هل المرض النفسي يبيح الفطر في رمضان	hl-lmrd-lnfsy-ybyh-lftr-fy-rmdn
878	الأمراض التي تبيح للصائم الافطار في رمضان	lmrd-lty-tbyh-llsym-lftr-fy-rmdn
879	متى يفطر الصائم	mt-yftr-lsym
880	الفايد صيام رمضان	lfyd-sym-rmdn
881	صيام رمضان	sym-rmdn
882	ما حكم من أفطر في رمضان وهو مريض	m-hkm-mn-ftr-fy-rmdn-whw-mryd
883	الحالات التي يجوز فيها الفطر	lhlt-lty-yjwz-fyh-lftr
884	الأعذار التي تبيح الفطر في رمضان	ldhr-lty-tbyh-lftr-fy-rmdn
885	دكتور الفايد رمضان	dktwr-lfyd-rmdn
886	الأمراض التي تبيح الافطار في رمضان	lmrd-lty-tbyh-lftr-fy-rmdn
887	المرض الذي يبيح الفطر في رمضان	lmrd-ldhy-ybyh-lftr-fy-rmdn
888	صوموا تصحوا	swmw-tshw
889	متى يجوز للصائم ان يفطر	mt-yjwz-llsym-n-yftr
890	الصيام المتقطع في رمضان	lsym-lmtqt-fy-rmdn
891	أحسن طريقة لنزول الوزن في رمضان	hsn-tryq-lnzwl-lwzn-fy-rmdn
892	نزول الوزن في رمضان	nzwl-lwzn-fy-rmdn
893	الدايت في رمضان	ldyt-fy-rmdn
894	رمضان والغذاء الصحي	rmdn-wlgdh-lshy
895	الحمية والصيام	lhmy-wlsym
896	الصيام المتقطع لخسارة الوزن	lsym-lmtqt-lkhsr-lwzn
897	رمضان والكيتو	rmdn-wlkytw
898	الصيام والدايت	lsym-wldyt
899	أفضل حمية في رمضان	fdl-hmy-fy-rmdn
900	رمضان والكيتو دايت	rmdn-wlkytw-dyt
901	كيف تنزل 10 كيلوجرام في اسبوعين	kyf-tnzl-10-kylwjrm-fy-sbwyn
902	كيف تفقد 5 كجم في اسبوع	kyf-tfqd-5-kjm-fy-sbw
903	كيف تفقد 5 كيلو في اسبوعين	kyf-tfqd-5-kylw-fy-sbwyn
904	الصوم والدايت	lswm-wldyt
905	الأكل الصحي في رمضان	lkl-lshy-fy-rmdn
906	أفضل طريقة لنزول الوزن مع الصيام	fdl-tryq-lnzwl-lwzn-m-lsym
907	كيف تفقد وزنك في رمضان	kyf-tfqd-wznk-fy-rmdn
908	فك السحر	fk-lshr
909	السحر والشعوذة	lshr-wlshwdh
910	تلبس الجن عدنان ابراهيم	tlbs-ljn-dnn-brhym
911	مس الجن	ms-ljn
912	فك العمل	fk-lml
913	السحر ان الله سيبطله	lshr-n-llh-sybtlh
914	إخراج الجن من انسان	khrj-ljn-mn-nsn
915	لبس الجن	lbs-ljn
916	إخراج الجن من الإنسان	khrj-ljn-mn-lnsn
917	السحر الأسود	lshr-lswd
918	اخراج الجن من الجسد	khrj-ljn-mn-ljsd
919	تلبس الجن طارق السويدان	tlbs-ljn-trq-lswydn
920	تلبس الجن العاشق	tlbs-ljn-lshq
921	تلبس الجن بالانسان الشعراوي	tlbs-ljn-blnsn-lshrwy
922	فك الربط	fk-lrbt
923	إخراج الجن	khrj-ljn
924	تلبس الجن بالانسان	tlbs-ljn-blnsn
925	علاج مس الجن	lj-ms-ljn
926	إخراج السحر من المقابر	khrj-lshr-mn-lmqbr
927	فيديو خروج الجن	fydyw-khrwj-ljn
928	تلبس الجن بالإنس طارق السويدان	tlbs-ljn-blns-trq-lswydn
929	السحر السفلي	lshr-lsfly
930	عمل وسحر وربط	ml-wshr-wrbt
931	تلبس الجن بالانس حقيقة ام وهم	tlbs-ljn-blns-hqyq-m-whm
932	تلبس الجن	tlbs-ljn
933	حقيقة خروج الجن	hqyq-khrwj-ljn
934	دكتور مشالي	dktwr-mshly
935	دكتور الغلابة	dktwr-lglb
936	طبيب الفقراء	tbyb-lfqr
937	طبيب مجاني	tbyb-mjny
938	حملة خيرية رمضان	hml-khyry-rmdn
939	طبيب الغلابة	tbyb-lglb
940	علاج مجاني	lj-mjny
941	علاج مجاني لوجه الله	lj-mjny-lwjh-llh
942	العشر الأواخر	lshr-lwkhr
943	علاج للفقراء	lj-llfqr
944	علاج نفسي مجاني	lj-nfsy-mjny
945	علاج الأمراض مجانا	lj-lmrd-mjn
946	الكمامة كوفيد19	lkmm-kwfyd19
947	لبس الكمامة كورونا	lbs-lkmm-kwrwn
948	الكمامة اللي جننتنا معاها	lkmm-lly-jnntn-mh
949	قناة الدكتور لبس الكمامات	qn-ldktwr-lbs-lkmmt
950	هل لبس الماسك يحمي من كورونا	hl-lbs-lmsk-yhmy-mn-kwrwn
951	هل السلامة في الكمامة؟	hl-lslm-fy-lkmm
952	انواع الماسكات وكورونا	nw-lmskt-wkwrwn
953	ارتداء كمامة كورونا	rtd-kmm-kwrwn
954	هل الكمامة تحمي من كورونا	hl-lkmm-thmy-mn-kwrwn
955	هل لبس الماسك بيحمي من كورونا	hl-lbs-lmsk-byhmy-mn-kwrwn
956	أفضل أنواع الكمامات	fdl-nw-lkmmt
957	هل الكمامة الجراحية أفضل ام ان95	hl-lkmm-ljrhy-fdl-m-n95
958	ان 95 ولا كمامة جراحية	n-95-wl-kmm-jrhy
960	الطبيب النصاب	ltbyb-lnsb_1
961	يا خسارة التعليم والشهادات	y-khsr-ltlym-wlshhdt
962	جروب واتساب العيلة	jrwb-wtsb-lyl
963	ما لا يعرفه الاطباء	m-l-yrfh-ltb
964	قناة الدكتور محمد منصور	qn-ldktwr-mhmd-mnswr
965	مالايقوله لك الأطباء	mlyqwlh-lk-ltb
966	لماذا يكره الناس الأطباء	lmdh-ykrh-lns-ltb
967	الدكتور طب ولا عك	ldktwr-tb-wl-k
968	ياخسارة التعليم والشهادات	ykhsr-ltlym-wlshhdt
969	ليه الناس بتكره الدكاترة	lyh-lns-btkrh-ldktr
971	جروب واتساب العائلة	jrwb-wtsb-lyl_1
972	الكل أصبح دكاترة	lkl-sbh-dktr
973	كل الناس أصبحوا أطباء	kl-lns-sbhw-tb
974	الكل بقى دكاترة	lkl-bq-dktr
975	مالن يقوله الاطباء	mln-yqwlh-ltb
976	الطاعون الدحيح	ltwn-ldhyh
977	الوقايه من الطاعون الرئوي	lwqyh-mn-ltwn-lrywy
978	الوقاية من الطاعون	lwqy-mn-ltwn
979	الطاعون الدبلي	ltwn-ldbly
980	فيلم الطاعون	fylm-ltwn
981	الطاعون القادم من الصين	ltwn-lqdm-mn-lsyn
982	BBC trending	bbc-trending
983	علاج الطاعون	lj-ltwn
984	علاج مرض الطاعون	lj-mrd-ltwn
985	الجائحة	ljyh
986	الطاعون دكتور محمد منصور	ltwn-dktwr-mhmd-mnswr
987	الموت الأسود	lmwt-lswd
988	جائحة الطاعون	jyh-ltwn
989	الطاعون في الصين	ltwn-fy-lsyn
990	جائحة جديدة	jyh-jdyd
991	الطاعون الاسود وثائقي	ltwn-lswd-wthyqy
992	الحماية من الطاعون	lhmy-mn-ltwn
993	الطاعون الدملي	ltwn-ldmly
994	الطاعون الرئوي	ltwn-lrywy
995	الطاعون بي بي سي تريندنج	ltwn-by-by-sy-tryndnj
996	الطاعون الأسود	ltwn-lswd
997	الدكتور محمد منصور الطاعون	ldktwr-mhmd-mnswr-ltwn
998	الموت الاسود وثائقي	lmwt-lswd-wthyqy
999	روشتة علاج كورونا	rwsht-lj-kwrwn
1000	علاجات كورونا في المنزل	ljt-kwrwn-fy-lmnzl
1001	علاج كرونا كحة ببلغم	lj-krwn-kh-bblgm
1002	كورونا كورتيزون	kwrwn-kwrtyzwn
1003	أحسن دوا لعلاج مرض كورونا	hsn-dw-llj-mrd-kwrwn
1004	علاجات كورونا في المستشفى	ljt-kwrwn-fy-lmstshf
1005	مضادات حيوية لكورونا	mddt-hywy-lkwrwn
1006	روشتة دواء كورونا الجديد	rwsht-dw-kwrwn-ljdyd
1007	أدوية علاج كورونا	dwy-lj-kwrwn
1008	كورونا أزيثرومايسين	kwrwn-zythrwmysyn
1009	كورونا نبيولايزر طريقة استعمال	kwrwn-nbywlyzr-tryq-stml
1010	كورونا كحة ناشفة	kwrwn-kh-nshf
1011	احسن دوا لعلاج كورونا	hsn-dw-llj-kwrwn
1012	وصفات دواء كوفيد19	wsft-dw-kwfyd19
1013	علاج كورونا في البيت	lj-kwrwn-fy-lbyt
1014	ديكساميثازون كورونا	dyksmythzwn-kwrwn
1015	دوا كحة كورونا	dw-kh-kwrwn
1016	وصفة علاج كورونا	wsf-lj-kwrwn
1017	علاج اسهال كورونا	lj-shl-kwrwn
1018	افضل علاج لكورونا	fdl-lj-lkwrwn
1019	طب و لا عك	tb-w-l-k
1020	العلاج بسم النحل	llj-bsm-lnhl
1021	العلاج بقرص النحل	llj-bqrs-lnhl
1022	علاج الام المفاصل	lj-lm-lmfsl
1023	سم النحل	sm-lnhl
1024	سم النحل الطب النبوي	sm-lnhl-ltb-lnbwy
1025	احمد ابو النصر	hmd-bw-lnsr
1026	العسل في القران	lsl-fy-lqrn
1027	العلاج بالعسل	llj-blsl
1028	الدكتور احمد ابو النصر	ldktwr-hmd-bw-lnsr
1029	خشونة المفاصل سم النحل	khshwn-lmfsl-sm-lnhl
1030	لدغ النحل	ldg-lnhl
1031	انواع العسل	nw-lsl
1032	الطب النبوي العلاج بالعسل	ltb-lnbwy-llj-blsl
1033	يخرج من بطونه شراب	ykhrj-mn-btwnh-shrb
1034	العلاج بعسل النحل	llj-bsl-lnhl
1035	شراب مختلف ألوانه	shrb-mkhtlf-lwnh
1036	علاج المفاصل	lj-lmfsl
1038	ألم الظهر	lm-lzhr_1
1040	أنواع العسل	nw-lsl_1
1041	معجزات النحل	mjzt-lnhl
1042	فيه شفاء للناس	fyh-shf-llns
1043	سم النحل وفوائده	sm-lnhl-wfwydh
1044	التداوي بالعسل	ltdwy-blsl
1045	دكتور احمد ابوالنصر	dktwr-hmd-bwlnsr
1046	حشو الجذور كريم علي	hshw-ljdhwr-krym-ly
1047	خناقة دكتور محمد منصور ودكتور كريم علي	khnq-dktwr-mhmd-mnswr-wdktwr-krym-ly
1048	محمد أبوالحسن	mhmd-bwlhsn
1049	حشوعصب السن	hshwsb-lsn
1051	الرد على قناة فكر تاني	lrd-l-qn-fkr-tny
1052	أمنية منصور	mny-mnswr
1053	د. امنية منصور	d-mny-mnswr
1054	شهادة في حق كريم علي	shhd-fy-hq-krym-ly
1055	الرد على كريم علي	lrd-l-krym-ly
1056	فكر تاني تسمم الزئبق	fkr-tny-tsmm-lzybq
1057	هل كريم علي نصاب	hl-krym-ly-nsb
1058	الرد على تخاريف كريم علي	lrd-l-tkhryf-krym-ly
1059	خناقة الأطباء	khnq-ltb
1060	طبيب أسنان يرد على كريم علي	tbyb-snn-yrd-l-krym-ly
1061	تسمم الفلورايد فكر تاني	tsmm-lflwryd-fkr-tny
1062	علاج الجذور	lj-ljdhwr
1063	كريم علي حشو الأسنان	krym-ly-hshw-lsnn
1064	كريم علي تسمم الزئبق	krym-ly-tsmm-lzybq
1065	الهبد في طب الأسنان	lhbd-fy-tb-lsnn
1066	حشو عصب	hshw-sb
1067	medicatoon	medicatoon
1068	قناة ميديكاتون	qn-mydyktwn
1069	طب ولا صيدلة	tb-wl-sydl
1070	ادوار الفريق الطبي	dwr-lfryq-ltby
1071	اروح للدكتور ولا الصيدلية	rwh-lldktwr-wl-lsydly
1072	التخصصات الطبية المختلفة	ltkhsst-ltby-lmkhtlf
1073	ميديكاتوون	mydyktwwn
1074	قناة ميديكاتون و الدكتور محمد منصور	qn-mydyktwn-w-ldktwr-mhmd-mnswr
1075	قناه ميديكاتوون	qnh-mydyktwwn
1077	أدوار الفريق الطبي	dwr-lfryq-ltby_1
1078	اختار ادخل طب ولا صيدلة	khtr-dkhl-tb-wl-sydl
1079	التخصصات الطبيه المختلفه	ltkhsst-ltbyh-lmkhtlfh
1080	اروح لدكتور ولا لصيدلي	rwh-ldktwr-wl-lsydly
1081	الطبيب افضل ام الصيدلي	ltbyb-fdl-m-lsydly
1082	قناة الدكتور طب ولا عك	qn-ldktwr-tb-wl-k
1083	الاهمال الطبي	lhml-ltby
1084	مصطفى حفناوي جلطه	mstf-hfnwy-jlth
1085	مصطفى حفناوي خطأ طبي	mstf-hfnwy-kht-tby
1086	تشخيص خطأ	tshkhys-kht
1087	مصطفى الحفناوي	mstf-lhfnwy
1088	موت مصطفى الحفناوي	mwt-mstf-lhfnwy
1089	سبب الوفاة	sbb-lwf
1090	مصطفى حفناوي مات	mstf-hfnwy-mt
1091	تشخيص غلط	tshkhys-glt
1092	مصطفى حفناوي في المستشفى	mstf-hfnwy-fy-lmstshf
1093	مصطفى حفناوي الله يرحمه	mstf-hfnwy-llh-yrhmh
1094	وفاة مصطفى حفناوي	wf-mstf-hfnwy
1095	مصطفى حفناوي وتامر حسني	mstf-hfnwy-wtmr-hsny
1096	السبب الحقيقي لوفاة مصطفى حفناوي	lsbb-lhqyqy-lwf-mstf-hfnwy
1097	تشخيص خاطئ	tshkhys-khty
1098	مصطفى حفناوي جلطة	mstf-hfnwy-jlt
1099	مصطفى حفناوي مرض	mstf-hfnwy-mrd
1100	أخطاء الأطباء	kht-ltb
1101	مصطفى حفناوي ومرام	mstf-hfnwy-wmrm
1102	العسل	lsl
1103	لسع النحل طب ولا عك	ls-lnhl-tb-wl-k
1104	علاج المفاصل بسم النحل	lj-lmfsl-bsm-lnhl
1105	احمد ابوالنصر	hmd-bwlnsr
1106	حقيقة العلاج بسم النحل	hqyq-llj-bsm-lnhl
1107	لسع النحل	ls-lnhl
1108	دكتور أحمد أبو النصر	dktwr-hmd-bw-lnsr
1109	العلاج بلدغ النحل	llj-bldg-lnhl
1110	عسل النحل	sl-lnhl
1111	قناة فكر تاني دكتور كريم علي	qn-fkr-tny-dktwr-krym-ly
1112	الانتفاخ	lntfkh
1113	خل التفاح دكتور بيرج	khl-ltfh-dktwr-byrj
1114	علاج قرحة المعدة	lj-qrh-lmd
1115	حموضة المعدة	hmwd-lmd
1116	مشاكل الهضم	mshkl-lhdm
1117	كريم علي فكر تاني	krym-ly-fkr-tny
1118	خل التفاح كريم علي	khl-ltfh-krym-ly
1119	العلاج بخل التفاح	llj-bkhl-ltfh
1120	فوائد خل التفاح	fwyd-khl-ltfh
1121	دكتور بيرج قرحة المعدة	dktwr-byrj-qrh-lmd
1122	دكتور بيرج علاج الحموضة	dktwr-byrj-lj-lhmwd
1123	القولون العصبي	lqwlwn-lsby
1124	علاج الميكروب الحلزوني	lj-lmykrwb-lhlzwny
1125	قرحة المعدة	qrh-lmd
1126	أسرار خل التفاح	srr-khl-ltfh
1127	عسر الهضم	sr-lhdm
1128	خل التفاح وفوائده	khl-ltfh-wfwydh
1129	علاج قرحة المعدة بخل التفاح	lj-qrh-lmd-bkhl-ltfh
1130	علاج القولون العصبي	lj-lqwlwn-lsby
1131	أعراض قرحة المعدة	rd-qrh-lmd
1132	علاج جرثومة المعدة	lj-jrthwm-lmd
1133	انتفاخات البطن	ntfkht-lbtn
1134	أعراض ارتجاع المريء	rd-rtj-lmry
1135	محمد جابر	mhmd-jbr
1136	فكر ثاني	fkr-thny
1137	رد كريم علي على محمد منصور	rd-krym-ly-l-mhmd-mnswr
1138	الصراع بين دكتور محمد منصور ودكتور كريم علي	lsr-byn-dktwr-mhmd-mnswr-wdktwr-krym-ly
1139	حقيقة كريم علي	hqyq-krym-ly
1140	دردشة صحية	drdsh-shy
1141	دكتورة علياء كيوان	dktwr-ly-kywn
1142	الدكتور النصاب	ldktwr-lnsb
1143	عائلة فكر تاني	yl-fkr-tny
1144	دكتور محمد ياسر	dktwr-mhmd-ysr
1145	دكتور جهاد سعادة	dktwr-jhd-sd
1146	رد دكتور كريم علي	rd-dktwr-krym-ly
1147	قناة دردشة صحية	qn-drdsh-shy
1148	مختبر العناية الطبي	mkhtbr-lny-ltby
1149	مختبر العناية الطبي بالشارقة	mkhtbr-lny-ltby-blshrq
1150	أفضل موقع طبي عربي	fdl-mwq-tby-rby
1151	قنوات طبية يوتيوب	qnwt-tby-ywtywb
1152	استشارات طبية مجانية	stshrt-tby-mjny
1153	أحسن قنوات طبية على يوتيوب	hsn-qnwt-tby-l-ywtywb
1154	كيف تبحث عن معلومة على الانترنت	kyf-tbhth-n-mlwm-l-lntrnt
1155	أفضل موقع طبي	fdl-mwq-tby
1156	أفضل المواقع الطبية على الإنترنت	fdl-lmwq-ltby-l-lntrnt
1157	أفضل القنوات الطبية على يوتيوب	fdl-lqnwt-ltby-l-ywtywb
1158	افضل مواقع طبية على الانترنت	fdl-mwq-tby-l-lntrnt
1159	أفضل مواقع طبية على النت	fdl-mwq-tby-l-lnt
1160	أحسن قنوات طبية	hsn-qnwt-tby
1161	افضل قنوات طبية	fdl-qnwt-tby
1162	مواقع طبية مجانية	mwq-tby-mjny
1163	موقع الدكتور محمد منصور	mwq-ldktwr-mhmd-mnswr
1164	تعليقات بريد العيادة	tlyqt-bryd-lyd
1165	معلومات طبية خاطئة على يوتيوب	mlwmt-tby-khty-l-ywtywb
1166	الطب الصيني	ltb-lsyny
1167	الدكتووور	ldktwwwr
1168	الطب التقليدي	ltb-ltqlydy
1169	الطب الشرقي	ltb-lshrqy
1170	الطب الغربي	ltb-lgrby
1171	انت ملحد	nt-mlhd
1172	حلقات لايف	hlqt-lyf
1173	مصر أم بريطانيا	msr-m-brytny
1174	ليه مش بترد على التعليقات	lyh-msh-btrd-l-ltlyqt
1175	الحجامة طب ولا عك	lhjm-tb-wl-k
1176	مصر ولا انجلترا	msr-wl-njltr
1177	يا عدو الله	y-dw-llh
1178	الطب في مصر أم بريطانيا	ltb-fy-msr-m-brytny
1179	محمد غنايم الاكتئاب	mhmd-gnym-lktyb
1180	غنايم الدكتور	gnym-ldktwr
1181	أصدقاء محمد غنايم	sdq-mhmd-gnym
1182	الكيتو دايت	lkytw-dyt
1183	الإكتئاب د.محمد غنايم	lktyb-dmhmd-gnym
1184	العلاج بالكيتو	llj-blkytw
1185	دكتور غنايم	dktwr-gnym
1186	الغدة الدرقية	lgd-ldrqy
1187	محمد غنايم لماذا نشعر بالهم	mhmd-gnym-lmdh-nshr-blhm
1188	محمد غنايم الدرقية	mhmd-gnym-ldrqy
1189	الدكتور غنايم	ldktwr-gnym
1190	فرط نشاط الغدة الدرقية	frt-nsht-lgd-ldrqy
1191	الاكتئاب غنايم	lktyb-gnym
1192	محمد غنايم	mhmd-gnym
1193	حقيقة أمراض الغدة الدرقية	hqyq-mrd-lgd-ldrqy
1194	حمية كيتو دايت	hmy-kytw-dyt
1195	الاكتئاب والكيتودايت	lktyb-wlkytwdyt
1197	الإكتئاب	lktyb_1
1198	اصدقاء الدكتور محمد غنايم	sdq-ldktwr-mhmd-gnym
1199	اكتئاب الغدة الدرقية	ktyb-lgd-ldrqy
1200	امراض الغدة الدرقية	mrd-lgd-ldrqy
1201	الدكتور محمد غنايم	ldktwr-mhmd-gnym
1202	كيرلس صابر	kyrls-sbr
1203	هل الحلاق ممكن ينقل الايدز	hl-lhlq-mmkn-ynql-lydz
1204	هل نقل الدم ينقل الايدز	hl-nql-ldm-ynql-lydz
1205	هل التبرع بالدم ينقل ايدز	hl-ltbr-bldm-ynql-ydz
1206	علاج الايدز كرلس صابر	lj-lydz-krls-sbr
1207	طريقة انتقال الايدز	tryq-ntql-lydz
1209	كيرلس صابر الإيدز	kyrls-sbr-lydz
1210	اليوم العالمي لمرض الإيدز	lywm-llmy-lmrd-lydz
1211	كيف يتنقل مرض الإيدز	kyf-ytnql-mrd-lydz
1212	طرق انتقال مرض الايدز	trq-ntql-mrd-lydz
1213	علاج مرض الايدز	lj-mrd-lydz
1214	مرض الإيدز وطرق انتقاله	mrd-lydz-wtrq-ntqlh
1215	نزار بهبري الإيدز	nzr-bhbry-lydz
1216	هل هناك علاج نهائي للإيدز	hl-hnk-lj-nhyy-llydz
1217	اليوم العالمي للإيدز	lywm-llmy-llydz
1218	د.نزار بهبري	dnzr-bhbry
1219	علاج الإيدز	lj-lydz
1220	دكتور نزار باهبري	dktwr-nzr-bhbry
1221	اكتشاف علاج لمرض الإيدز	ktshf-lj-lmrd-lydz
1222	علاج الإيدز بالغذاء	lj-lydz-blgdh
1223	AIDS	aids
1224	رسائل سريعة كورونا	rsyl-sry-kwrwn
1225	نصائح هامة لمن تظهر عليهم اعراض الإصابة بالكورونا المستجدة	nsyh-hm-lmn-tzhr-lyhm-rd-lsb-blkwrwn-lmstjd
1226	اهم 5 نصائح عشان تتعايش مع كوفيد19	hm-5-nsyh-shn-ttysh-m-kwfyd19
1227	رسائل كورونا	rsyl-kwrwn
1228	مرض السكري وكورونا	mrd-lskry-wkwrwn
1229	نصيحة من دكتور كورونا	nsyh-mn-dktwr-kwrwn
1230	علامات خطورة كورونا	lmt-khtwr-kwrwn
1231	كيف تتعايش مع كوفيد 19	kyf-ttysh-m-kwfyd-19
1232	كيف تتعايش مع كورونا	kyf-ttysh-m-kwrwn
1233	كورونا مرض السكر	kwrwn-mrd-lskr
1234	كيف تعرف أن كورونا خطير	kyf-trf-n-kwrwn-khtyr
1235	اهم كلام عن كوفيد 19	hm-klm-n-kwfyd-19
1236	كورونا مريض الضغط	kwrwn-mryd-ldgt
1237	علاج مرض كوفيد 19	lj-mrd-kwfyd-19
1238	كيفية تشخيص كوفيد19	kyfy-tshkhys-kwfyd19
1239	نصائح للتعايش مع كورونا	nsyh-lltysh-m-kwrwn
1240	كورونا والسمنة	kwrwn-wlsmn
1241	أهم نصائح كورونا	hm-nsyh-kwrwn
1242	أهم كلام عن كوفيد19	hm-klm-n-kwfyd19
1405	كوفيد مزمن	kwfyd-mzmn
1243	علاج كورونا الدكتور	lj-kwrwn-ldktwr
1244	فقدت التذوق	fqdt-ltdhwq
1245	الدكتور فقدان الشم بعد كورونا	ldktwr-fqdn-lshm-bd-kwrwn
1246	فقدان حاسة الشم	fqdn-hs-lshm
1247	لا أحس بطعم الأكل	l-hs-btm-lkl
1248	تغير حاسة الشم	tgyr-hs-lshm
1249	تغير الشم	tgyr-lshm
1250	الشم كوفيد19	lshm-kwfyd19
1251	اشم رائحة كريهه	shm-ryh-kryhh
1252	أشم رائحة كريهة	shm-ryh-kryh
1253	فقدان الشم بعد كورونا	fqdn-lshm-bd-kwrwn
1254	لا أشعر بطعم الأكل	l-shr-btm-lkl
1255	شامم ريحة وحشة	shmm-ryh-whsh
1256	كورونا وفقدان الشم	kwrwn-wfqdn-lshm
1257	ضياع الشم	dy-lshm
1258	فقدت الاحساس بالشم كورونا	fqdt-lhss-blshm-kwrwn
1259	فقدت حاسة الشم	fqdt-hs-lshm
1260	ضباع حاسة الشم	db-hs-lshm
1261	الإحساس بالشم كوفيد19	lhss-blshm-kwfyd19
1262	لا احس طعم الاكل	l-hs-tm-lkl
1263	لا أستطيع الشم	l-stty-lshm
1264	فقدت حاسة التذوق	fqdt-hs-ltdhwq
1265	حقيقة مرض كورونا الجديد	hqyq-mrd-kwrwn-ljdyd
1266	هل كوفيد مرض قاتل	hl-kwfyd-mrd-qtl
1267	كورونا والأمراض النفسية	kwrwn-wlmrd-lnfsy
1268	متى تسبب الكورونا الوفاة	mt-tsbb-lkwrwn-lwf
1269	نفسية مريض الكورونا	nfsy-mryd-lkwrwn
1270	مضاعفات كورونا	mdft-kwrwn
1271	الوفاة بكورونا	lwf-bkwrwn
1272	هل كورونا مرض قاتل	hl-kwrwn-mrd-qtl
1273	ماهي أسباب الوفاة بكورونا	mhy-sbb-lwf-bkwrwn
1274	نفسيه مريض كورونا	nfsyh-mryd-kwrwn
1275	أسباب وفاة كورونا	sbb-wf-kwrwn
1276	اسباب الوفاة كوفيد19	sbb-lwf-kwfyd19
1277	اكتئاب كورونا	ktyb-kwrwn
1278	نفسية المصاب بكورونا	nfsy-lmsb-bkwrwn
1279	كورونا والاكتئاب	kwrwn-wlktyb
1280	حقيقة كورونا	hqyq-kwrwn
1281	إكتئاب ما بعد كوفيد19	ktyb-m-bd-kwfyd19
1282	كشف حقيقة كورونا	kshf-hqyq-kwrwn
1283	كوفيد مرض نفسي	kwfyd-mrd-nfsy
1284	كورونا والعزلة	kwrwn-wlzl
1285	حقيقة كوفيد19	hqyq-kwfyd19
1286	أسباب الوفاة بكورونا	sbb-lwf-bkwrwn
1287	دعم نفسي لكورونا	dm-nfsy-lkwrwn
1288	تطعيم كوفيد19	ttym-kwfyd19
1289	الطفرة واللقاح	ltfr-wllqh
1290	إيه اللي بيحصل	yh-lly-byhsl
1291	حدوث طفرة جديدة لفيروس كورونا	hdwth-tfr-jdyd-lfyrws-kwrwn
1292	اكتشاف لقاح فيروس كورونا	ktshf-lqh-fyrws-kwrwn
1293	سلالة جديدة كورونا بريطانيا	sll-jdyd-kwrwn-brytny
1295	ايه اللي بيحصل	yh-lly-byhsl_1
1296	لقاح كورونا	lqh-kwrwn
1297	أسعار لقاحات كوفيد19	sr-lqht-kwfyd19
1298	فاكسين كورونا	fksyn-kwrwn
1299	لقاح فايزر ولا مودرنا ولا أسترازينيكا	lqh-fyzr-wl-mwdrn-wl-strzynyk
1300	لقاح كورونا مؤامرة	lqh-kwrwn-mwmr
1301	افضل تطعيم لكورونا	fdl-ttym-lkwrwn
1302	اللقاح الصيني أم الأمريكي	llqh-lsyny-m-lmryky
1303	ما هو افضل تطعيم لكورونا	m-hw-fdl-ttym-lkwrwn
1304	هل يمكنني الحصول على لقاح كوفيد19	hl-ymknny-lhswl-l-lqh-kwfyd19
1305	اللقاح مؤامرة	llqh-mwmr
1306	تطعيم كورونا	ttym-kwrwn
1307	لقاح كوفيد19	lqh-kwfyd19
1308	فايزر ام الصيني	fyzr-m-lsyny
1309	أفضل لقاح كوفيد19	fdl-lqh-kwfyd19
1310	فايزر أم مودرنا أم أسترازينيكا	fyzr-m-mwdrn-m-strzynyk
1311	التطعيم الامريكي ولا الصيني	lttym-lmryky-wl-lsyny
1312	اهم 10 حاجات لازم تعرفها قبل ماتاخد التطعيم	hm-10-hjt-lzm-trfh-qbl-mtkhd-lttym
1313	كيف احصل على لقاح كورونا	kyf-hsl-l-lqh-kwrwn
1314	سعر لقاح كورونا	sr-lqh-kwrwn
1315	أنتيفاكس	ntyfks
1316	كورونا الدكتور محمد منصور	kwrwn-ldktwr-mhmd-mnswr
1317	ليه عايزينني اخد التطعيم	lyh-yzynny-khd-lttym
1318	الدكتور محمد منصور كوفيد	ldktwr-mhmd-mnswr-kwfyd
1319	ليه عايزني اخد اللقاح	lyh-yzny-khd-llqh
1320	لقاح كوفيد قناة الدكتور	lqh-kwfyd-qn-ldktwr
1321	أفضل لقاح لكورونا	fdl-lqh-lkwrwn
1322	بروتوكول علاج كوفيد19	brwtwkwl-lj-kwfyd19
1323	كيفية تحضير جلسة نبيولايزر	kyfy-thdyr-jls-nbywlyzr
1324	أفضل مضاد حيوي كورونا	fdl-mdd-hywy-kwrwn
1325	علاج كورونا بالبلازما	lj-kwrwn-blblzm
1326	كيفية علاج كوفيد	kyfy-lj-kwfyd
1327	تشخيص كوفيد	tshkhys-kwfyd
1328	بروتوكول علاج وزارة الصحة	brwtwkwl-lj-wzr-lsh
1329	بروتوكول علاج كورونا	brwtwkwl-lj-kwrwn
1330	افضل مضاد لكورونا	fdl-mdd-lkwrwn
1331	كيفية تشخيص كورونا	kyfy-tshkhys-kwrwn
1332	لقاح كورونا الدكتور محمد منصور	lqh-kwrwn-ldktwr-mhmd-mnswr
1334	أفضل علاج لكورونا	fdl-lj-lkwrwn_1
1335	مضاد حيوي كوفيد19	mdd-hywy-kwfyd19
1336	علاج كوفيد في المنزل	lj-kwfyd-fy-lmnzl
1337	بروتوكول العلاج	brwtwkwl-llj
1338	بلازما المتعافين كورونا	blzm-lmtfyn-kwrwn
1339	أفضل لقاح كوفيد	fdl-lqh-kwfyd
1340	النيبيولايزر وكوفيد	lnybywlyzr-wkwfyd
1341	تشخيص وعلاج كورونا في البيت	tshkhys-wlj-kwrwn-fy-lbyt
1342	التطعيم	lttym
1343	تطعيم كوفيد	ttym-kwfyd
1344	حقيقة لقاح كوفيد	hqyq-lqh-kwfyd
1345	لقاح كوفيد	lqh-kwfyd
1346	التطعيمات	lttymt
1347	نكت كوفيد	nkt-kwfyd
1348	إضحك مع الدكتور	dhk-m-ldktwr
1349	اضحك مع دكتور محمد منصور	dhk-m-dktwr-mhmd-mnswr
1350	نكت بايخة	nkt-bykh
1351	نكت ظريفة	nkt-zryf
1352	نكت كورونا	nkt-kwrwn
1353	يأجوج ومأجوج	yjwj-wmjwj
1354	التبرع بالدم حرام	ltbr-bldm-hrm
1355	النصاب الصغير	lnsb-lsgyr
1356	أمين صبري يدعي النبوة	myn-sbry-ydy-lnbw
1357	أمين صبري	myn-sbry
1358	امين صبري احمد البحيري	myn-sbry-hmd-lbhyry
1359	تيمون الهباد	tymwn-lhbd
1360	قرار إزالة	qrr-zl
1361	من هو امين صبري	mn-hw-myn-sbry
1362	حرمة الدم عند الله	hrm-ldm-nd-llh
1363	الدم حرام	ldm-hrm
1364	إعادة العدوى بكورونا	d-ldw-bkwrwn
1365	كورونا مرة ثانية	kwrwn-mr-thny
1366	هل وصلنا لمناعة القطيع	hl-wsln-lmn-lqty
1367	كورونا يرجع مرة ثانيه	kwrwn-yrj-mr-thnyh
1368	كورونا ترجع مره ثانيه	kwrwn-trj-mrh-thnyh
1369	هل يمكن اعادة الاصابة بكورونا	hl-ymkn-d-lsb-bkwrwn
1370	كوفيد يرجع مرة ثانية	kwfyd-yrj-mr-thny
1371	أصبت بكورونا مرتين	sbt-bkwrwn-mrtyn
1372	كورونا تاني	kwrwn-tny
1373	مناعة القطيع	mn-lqty
1374	تطعيمات كورونا	ttymt-kwrwn
1375	اعادة الاصابة بفيروس كورونا	d-lsb-bfyrws-kwrwn
1376	علاج كوفيد 19	lj-kwfyd-19
1377	الدكتور ترندينغ	ldktwr-trndyng
1378	اكتشاف علاج كورونا اسرائيل	ktshf-lj-kwrwn-sryyl
1379	فريق اسرائيلي يكتشف علاج كورونا	fryq-sryyly-yktshf-lj-kwrwn
1380	ترندنج	trndnj
1381	دواء كورونا إسرائيل	dw-kwrwn-sryyl
1382	مستشفى ايخيلوف	mstshf-ykhylwf
1383	تريندينج في الطب	tryndynj-fy-ltb
1384	علاج كورونا اسرائيل	lj-kwrwn-sryyl
1386	مستشفى إيخيلوف	mstshf-ykhylwf_1
1387	بي بي سي تريندينغ	by-by-sy-tryndyng
1388	كحة مستمرة بعد كورونا	kh-mstmr-bd-kwrwn
1389	مرض كورونا مزمن	mrd-kwrwn-mzmn
1390	كورونا مزمنة	kwrwn-mzmn
1391	كوفيد الطويل	kwfyd-ltwyl
1392	كحه مستمره بعد كوفيد	khh-mstmrh-bd-kwfyd
1393	اعراض كوفيد مستمرة	rd-kwfyd-mstmr
1394	متلازمة ما بعد كوفيد	mtlzm-m-bd-kwfyd
1395	ماذا بعد الإصابة	mdh-bd-lsb
1396	مابعد كورونا	mbd-kwrwn
1397	الاسبتالية كوفيد الطويل	lsbtly-kwfyd-ltwyl
1398	أعراض مزمنة رغم نهاية العدوى	rd-mzmn-rgm-nhy-ldw
1406	انت مجنون؟	nt-mjnwn
1407	مرض نفسي	mrd-nfsy
1431	فوايد زيت الزيتون	fwyd-zyt-lzytwn
1432	shorts	shorts
1433	زيت الزيتون والليمون	zyt-lzytwn-wllymwn
1434	فيديوهات قصيرة	fydywht-qsyr
1436	أضرار الشاي	drr-lshy_1
1437	اضرار الشاي الاخضر	drr-lshy-lkhdr
1438	فيديو قصير	fydyw-qsyr
1439	اضرار الشاي الاسود	drr-lshy-lswd
1440	أخطار الشاي	khtr-lshy
1441	زيت الزيتون	zyt-lzytwn
1443	اخطار الشاي	khtr-lshy_1
1444	شورت	shwrt
1445	الشاي المغربي	lshy-lmgrby
1446	زيت الزيتون البكر	zyt-lzytwn-lbkr
1447	زيت الزيتون للبشرة	zyt-lzytwn-llbshr
1448	الشاي الاخضر	lshy-lkhdr
1449	فيديوهات قصيره	fydywht-qsyrh
1450	ماسك زيت الزيتون والشاي	msk-zyt-lzytwn-wlshy
1451	شورتس	shwrts
1452	زيت الزيتون للرضع	zyt-lzytwn-llrd
1453	خطورة الشاي	khtwr-lshy
1455	فوائد زيت الزيتون	fwyd-zyt-lzytwn_1
1456	اخطاء يجب تجنبها	kht-yjb-tjnbh
1457	اطباء مجرمين	tb-mjrmyn
1458	دكتور فاسد	dktwr-fsd
1459	أخطاء الدكاترة	kht-ldktr
1460	مشاكل الاطباء والمرضى	mshkl-ltb-wlmrd
1461	لا تفعل هذا مع طبيبك	l-tfl-hdh-m-tbybk
1462	نصائح لكيفية التعامل مع الاطباء	nsyh-lkyfy-ltml-m-ltb
1463	دكتور شرير	dktwr-shryr
1465	اخطاء الاطباء	kht-ltb_1
1466	4 أخطاء	4-kht
1467	4 اخطاء تجنب ان تقع فيها	4-kht-tjnb-n-tq-fyh
1468	ازاي تتعامل مع الطبيب	zy-ttml-m-ltbyb
1469	طبيب فاسد	tbyb-fsd
1399	اعراض كورونا مستمرة	rd-kwrwn-mstmr
1400	كوفيد مستمر	kwfyd-mstmr
1401	مرض كوفيد الطويل	mrd-kwfyd-ltwyl
1402	ارهاق بعد كوفيد	rhq-bd-kwfyd
1403	كورونا مزمنه	kwrwn-mzmnh
1404	اعراض ما بعد كورونا	rd-m-bd-kwrwn
1470	دليل المريض في التعامل مع الطبيب	dlyl-lmryd-fy-ltml-m-ltbyb
1471	اخطاء المرضى	kht-lmrd
1472	المرضى والاطباء	lmrd-wltb
1473	كيف تتعامل مع الطبيب	kyf-ttml-m-ltbyb
1474	ازاي تتعامل مع الدكتور	zy-ttml-m-ldktwr
1475	نصائح للتعامل مع الطبيب	nsyh-lltml-m-ltbyb
1476	وفاة رئيس تنزانيا	wf-ryys-tnzny
1477	رئيس تنزانيا يموت بكوفيد	ryys-tnzny-ymwt-bkwfyd
1478	مات بكزفيد ولم يؤمن به	mt-bkzfyd-wlm-ywmn-bh
1479	علاج كوفيد في تنزانيا	lj-kwfyd-fy-tnzny
1480	تنزانيا كوفيد	tnzny-kwfyd
1481	رئيس تنزانيا السابق يموت بكورونا	ryys-tnzny-lsbq-ymwt-bkwrwn
1482	رئيس تنزانيا يموت بكورونا	ryys-tnzny-ymwt-bkwrwn
1483	كورونا في تنزانيا	kwrwn-fy-tnzny
1484	وفاة رئيس تنزانيا كوفيد19	wf-ryys-tnzny-kwfyd19
1485	احمد فاخوري	hmd-fkhwry
1486	ازمة لقاح استرازينيكا	zm-lqh-strzynyk
1487	لقاح اوكسفورد	lqh-wksfwrd
1488	اوروبا تمنع تطعيم كوفيد	wrwb-tmn-ttym-kwfyd
1490	أحمد فاخوري	hmd-fkhwry_1
1491	قناة الدكتور تريندنج	qn-ldktwr-tryndnj
1492	لقاح أكسفورد	lqh-ksfwrd
1493	لقاح استرازينيكا البريطاني	lqh-strzynyk-lbrytny
1494	لقاح كوفيد يسبب تجلط الدم	lqh-kwfyd-ysbb-tjlt-ldm
1495	اوروبا تمنع لقاحات استرازينيكا	wrwb-tmn-lqht-strzynyk
1496	أوروبا توقف لقاح أسترازينيكا	wrwb-twqf-lqh-strzynyk
1497	الدكتور ترندنج	ldktwr-trndnj
1498	بي بي سي تريندنج	by-by-sy-tryndnj
1499	لقاح كورونا يسبب جلطات الدم	lqh-kwrwn-ysbb-jltt-ldm
1500	اوروبا توقف لقاحات كورونا	wrwb-twqf-lqht-kwrwn
1501	لقاح كورونا وتجلط الدم	lqh-kwrwn-wtjlt-ldm
1502	ترندنغ	trndng
1503	احمد فاخوري بي بي سي تريندنغ	hmd-fkhwry-by-by-sy-tryndng
1504	تريندينغ	tryndyng
1505	لقاح كورونا مصر	lqh-kwrwn-msr
1506	ليه كده يامصر	lyh-kdh-ymsr
1507	عدد حالات التطعيم في مصر	dd-hlt-lttym-fy-msr
1508	عدد لقاحات كورونا	dd-lqht-kwrwn
1509	عدد لقاحات كورونا الامارات	dd-lqht-kwrwn-lmrt
1510	لقاح كوفيد مصر	lqh-kwfyd-msr
1511	تطعيم كوفيد في مصر	ttym-kwfyd-fy-msr
1512	تطعيم كورونا في مصر	ttym-kwrwn-fy-msr
1513	شكرا يا مصر	shkr-y-msr
1514	شكراً يامصر	shkran-ymsr
1515	عدد تطعيمات كورونا مصر	dd-ttymt-kwrwn-msr
1516	عدد لقاحات كورونا مصر	dd-lqht-kwrwn-msr
1517	رشيد بطار	rshyd-btr
1518	عائلة روتشيلد	yl-rwtshyld
1519	لقاح كورونا خطير	lqh-kwrwn-khtyr
1520	اضرار اللقاحات	drr-llqht
1521	طبيب يفضح شركات الأدوية	tbyb-yfdh-shrkt-ldwy
1522	أنتيفاكسر	ntyfksr
1523	حروب الجيل السادس	hrwb-ljyl-lsds
1524	عائلة روشيلد	yl-rwshyld
1525	كيمتريل	kymtryl
1526	شبكات موبايل الجيل الخامس	shbkt-mwbyl-ljyl-lkhms
1527	حروب الجيل الرابع	hrwb-ljyl-lrb
1528	اضرار لقاح كورونا	drr-lqh-kwrwn
1529	شبكات الجيل الخامس	shbkt-ljyl-lkhms
1530	نظرية المؤامرة	nzry-lmwmr
1531	اسرار شركات الأدوية	srr-shrkt-ldwy
1532	مجلس إدارة العالم	mjls-dr-llm
1533	اضرار التطعيمات	drr-lttymt
1535	رشيد بتار	rshyd-btr_1
1536	حروب الجيل الخامس	hrwb-ljyl-lkhms
1537	كيميتريل	kymytryl
1539	مجلس ادارة العالم	mjls-dr-llm_1
1540	طبيب يكشف أسرار	tbyb-ykshf-srr
1541	دكتور رشيد بتار	dktwr-rshyd-btr
1542	اضرار شبكات محمول الجيل الخامس	drr-shbkt-mhmwl-ljyl-lkhms
1543	د_محمد_منصور	d_mhmd_mnswr
1544	تطبيق_صوت	ttbyq_swt
1545	ساوند_كلاود	swnd_klwd
1546	ards	ards
1547	خليك_في_البيت	khlyk_fy_lbyt
1548	الدكتور_مشغول_في_المستشفى_واحنا_بنتسلى	ldktwr_mshgwl_fy_lmstshf_whn_bntsl
1549	شاركنا_برأيك	shrkn_bryk
1550	علاج الحموضة في نهار رمضان	lj-lhmwd-fy-nhr-rmdn
1551	الصيام والارتجاع	lsym-wlrtj
1552	علاج الحموضة	lj-lhmwd
1553	حموضة مع الصيام	hmwd-m-lsym
1554	لقاحات كورونا والتجلط	lqht-kwrwn-wltjlt
1408	الدكتور محمد منصور الأمراض النفسية	ldktwr-mhmd-mnswr-lmrd-lnfsy
1409	الاثار الجانبية للادوية النفسية	lthr-ljnby-lldwy-lnfsy
1411	أمراض نفسية	mrd-nfsy_1
1412	في دقيقتين	fy-dqyqtyn
1413	علاج الاكتئاب في البيت	lj-lktyb-fy-lbyt
1414	مشاكل ادوية النفسية	mshkl-dwy-lnfsy
1416	امراض نفسية	mrd-nfsy_2
1417	أضرار العلاج النفسي	drr-llj-lnfsy
1418	أدوية نفسية؟ انت مجنون؟	dwy-nfsy-nt-mjnwn
1420	اضرار العلاج النفسي	drr-llj-lnfsy_1
1421	الطب النفسي طب ولا عك	ltb-lnfsy-tb-wl-k
1422	فوائد الادوية النفسية	fwyd-ldwy-lnfsy
1424	ضرر العلاج النفسي	drr-llj-lnfsy_2
1425	قناة الدكتور النفسي	qn-ldktwr-lnfsy
1426	اضرار الادوية النفسية	drr-ldwy-lnfsy
1427	المشاكل النفسية	lmshkl-lnfsy
1428	زيت الزيتون مع زيت شجرة الشاي	zyt-lzytwn-m-zyt-shjr-lshy
1429	اضرار الشاي	drr-lshy
1430	زيت الزيتون على الريق	zyt-lzytwn-l-lryq
1555	اللقاح الصيني	llqh-lsyny
1556	لقاح استرازينيكا	lqh-strzynyk
1557	جبل طارق خالية من كورونا	jbl-trq-khly-mn-kwrwn
1558	فايزر ولا استرازينيكا	fyzr-wl-strzynyk
1559	مشكلة التجلطات	mshkl-ltjltt
1560	الوفيات بعد تطعيم كورونا	lwfyt-bd-ttym-kwrwn
1561	جودة هباد	jwd-hbd
1562	جودة عواد دكتور القفاص	jwd-wd-dktwr-lqfs
1563	أخصائي نصب عام	khsyy-nsb-m
1565	اخصائي نصب عام	khsyy-nsb-m_1
1566	الراوند	lrwnd
1567	القرنفل	lqrnfl
1568	اللبان الدكر	llbn-ldkr
1569	الفرق بين الطبيب وتاجر البط	lfrq-byn-ltbyb-wtjr-lbt
1570	لبان دكر	lbn-dkr
1571	مر بطارخ	mr-btrkh
1572	سعر الكشف 500 جنيه	sr-lkshf-500-jnyh
1597	رسالة مهمة من طبيب	rsl-mhm-mn-tbyb
1598	فيديو قصير عن كورونا	fydyw-qsyr-n-kwrwn
1599	كورونا في الهند	kwrwn-fy-lhnd
1600	الوضع في الهند	lwd-fy-lhnd
1601	اغلاق المساجد بسبب كوفيد	glq-lmsjd-bsbb-kwfyd
1602	اغلاق المساجد مع كورونا	glq-lmsjd-m-kwrwn
1603	بي بي سي ترندنج	by-by-sy-trndnj
1604	تريندنج في الطب	tryndnj-fy-ltb
1605	وباء كوفيد في الهند	wb-kwfyd-fy-lhnd
1606	رمضان وكورونا	rmdn-wkwrwn
1607	وباء كورونا ينتشر في الهند	wb-kwrwn-yntshr-fy-lhnd
1608	ترندنج في الطب	trndnj-fy-ltb
1609	كورونا في رمضان	kwrwn-fy-rmdn
1610	كوفيد يخرج عن السيطرة	kwfyd-ykhrj-n-lsytr
1611	وضع الهند مع كورونا	wd-lhnd-m-kwrwn
1612	دكتور محمد القفاص	dktwr-mhmd-lqfs
1613	محمد القفاص نصاب	mhmd-lqfs-nsb
1614	كبسولة سحرية ب 25 قرش	kbswl-shry-b-25-qrsh
1615	باهر السعيد طب ولا عك	bhr-lsyd-tb-wl-k
1616	دكتور باهر السعيد	dktwr-bhr-lsyd
1617	دكتور محمد القفاص طب ولا عك	dktwr-mhmd-lqfs-tb-wl-k
1618	دكتور محمد عزب	dktwr-mhmd-zb
1619	دكتور محمد العزب	dktwr-mhmd-lzb
1620	دكتور باهر السعيد نصاب	dktwr-bhr-lsyd-nsb
1621	صيدلية الدكتور محمد العزب	sydly-ldktwr-mhmd-lzb
1622	دكتور مايكل جودة	dktwr-mykl-jwd
1623	الصيادلة على يوتيوب	lsydl-l-ywtywb
1624	صيدلية الدكتور مايكل جودة	sydly-ldktwr-mykl-jwd
1625	صيدلية الدكتور باهر السعيد	sydly-ldktwr-bhr-lsyd
1626	صيدلية الدكتور محمد القفاص	sydly-ldktwr-mhmd-lqfs
1627	احسن جروب طبي على الانترنت	hsn-jrwb-tby-l-lntrnt
1628	التغذية العلاجية	ltgdhy-lljy
1630	جروب الدكتور	jrwb-ldktwr
1631	احسن قنوات صحية	hsn-qnwt-shy
1632	افضل مجموعة طبية	fdl-mjmw-tby
1633	جروب تغذية	jrwb-tgdhy
1634	جروب تفذية وكيتو دايت	jrwb-tfdhy-wkytw-dyt
1635	افضل مجموعة فيسبوك	fdl-mjmw-fysbwk
1636	قناة يوتيوب تغذية	qn-ywtywb-tgdhy
1637	افضل مجموعات فيسبوك	fdl-mjmwt-fysbwk
1638	افضل قناة طبية على يوتيوب	fdl-qn-tby-l-ywtywb
1639	جروب طبي	jrwb-tby
1640	الدكتور محمد منصور تغذية	ldktwr-mhmd-mnswr-tgdhy
1641	استشارة طبية	stshr-tby
1642	مجموعة كيتوكود على فيسبوك	mjmw-kytwkwd-l-fysbwk
1643	الدكتور محمد منصور طب ولا عك	ldktwr-mhmd-mnswr-tb-wl-k
1644	أفضل دروب طبي على فيسبوك	fdl-drwb-tby-l-fysbwk
1645	جروب الدكتور محمد منصور	jrwb-ldktwr-mhmd-mnswr
1646	جروب كيتو كود	jrwb-kytw-kwd
1	الامرض	lmrd
2	الكلية	lkly
3	الغضروف	lgdrwf
4	مناعة	mn
5	السرطان الخلايا الجذعية	lsrtn-lkhly-ljdhy
6	مثانة	mthn
7	هري	hry
8	حبوب	hbwb
9	عك	k
10	تخسيس	tkhsys
11	غسيل كلى	gsyl-kl
12	حقن	hqn
13	فتي	fty
14	السكر	lskr
15	الم الظهر	lm-lzhr
16	شد الجلد	shd-ljld
17	إبر	br
18	علاج السرطان	lj-lsrtn
19	اللوز	llwz
20	مرارة	mrr
21	خشونة	khshwn
22	علاج	lj
23	أمراض	mrd
24	سرطان	srtn
25	كانسر	knsr
26	دواء	dw
27	محمد عصام منصور	mhmd-sm-mnswr
28	طب بجد	tb-bjd
29	أقراص	qrs
30	نتعلم	ntlm
31	شد البطن	shd-lbtn
32	علاج جديد للسرطان	lj-jdyd-llsrtn
33	النقرس	lnqrs
34	غضروف	gdrwf
35	برنامج طبي	brnmj-tby
36	دايت	dyt
37	حصوة	hsw
38	طب	tb
39	ضغط	dgt
40	سخونة	skhwn
41	الوقاية من السرطان	lwqy-mn-lsrtn
42	الضغط	ldgt
44	مرض	mrd_1
45	التهاب	lthb
46	أفضل علاج للسرطان	fdl-lj-llsrtn
47	طحال	thl
48	فايروس سي	fyrws-sy
49	تعليم	tlym
51	فيروس سي	fyrws-sy_1
52	السكر والسرطان	lskr-wlsrtn
313	ناسيبو	nsybw
445	خداع	khd
537	لاتحزن	lthzn
1208	HIV	hiv
1573	جائزة صناع الأمل	jyz-sn-lml
1574	المشروب الذهبي	lmshrwb-ldhhby
1575	المر بطارخ	lmr-btrkh
1576	جودة محمد هباد	jwd-mhmd-hbd
1577	الإنسولين الطبيعي	lnswlyn-ltbyy
1578	المشروب الفضي	lmshrwb-lfdy
1580	جايزة صناع الامل	jyz-sn-lml_1
1581	دكتور جودة من عواد	dktwr-jwd-mn-wd
1582	تعلم النصب بلا معلم	tlm-lnsb-bl-mlm
1583	مر البطارخ	mr-lbtrkh
1584	د. جودة عواد	d-jwd-wd
1585	المشروب الماسي	lmshrwb-lmsy
1586	علاج الفشل الكلوي بدون غسيل	lj-lfshl-lklwy-bdwn-gsyl
1587	عسل طحينة بصل اخضر	sl-thyn-bsl-khdr
1588	محمد القفاص	mhmd-lqfs
1589	شورت فيديو كورونا	shwrt-fydyw-kwrwn
1590	الموجة الثالثة كورونا	lmwj-lthlth-kwrwn
1591	تحذير طبي مهم	thdhyr-tby-mhm
1592	فيديو قصير كورونا	fydyw-qsyr-kwrwn
1593	رسالة من اطباء الرعاية المركزة	rsl-mn-tb-lry-lmrkz
1594	كوفيد الموجة الثالثة	kwfyd-lmwj-lthlth
1595	كوفيد مؤامرة	kwfyd-mwmr
1596	رسالة مهمة	rsl-mhm
1629	جروب صحي	jrwb-shy
\.


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
34	1	15	34
35	1	15	35
36	1	15	36
37	1	15	37
38	1	15	38
39	1	15	39
40	1	15	40
41	1	15	41
42	1	15	42
43	1	15	44
44	1	15	45
45	1	15	46
46	1	15	47
47	1	15	48
48	1	15	49
49	1	15	51
50	1	15	52
51	1	15	53
52	1	15	54
53	1	15	55
54	1	15	56
55	1	15	57
56	1	15	58
57	1	15	59
58	1	15	60
59	1	15	61
60	1	15	62
61	1	15	63
62	1	15	64
63	1	15	65
64	2	15	9
65	2	15	22
66	2	15	26
67	2	15	38
68	2	15	44
69	2	15	57
70	2	15	66
71	2	15	67
72	2	15	68
73	2	15	69
74	2	15	70
75	2	15	71
76	2	15	72
77	2	15	73
78	2	15	74
79	2	15	75
80	2	15	76
81	2	15	77
82	2	15	78
83	2	15	79
84	2	15	80
85	3	15	9
86	3	15	22
87	3	15	24
88	3	15	38
89	3	15	73
90	3	15	81
91	3	15	83
92	3	15	84
93	3	15	85
94	3	15	86
95	3	15	87
96	3	15	88
97	3	15	89
98	3	15	90
99	3	15	91
100	3	15	92
101	3	15	93
102	3	15	94
103	3	15	95
104	3	15	96
105	3	15	97
106	3	15	98
107	3	15	99
108	3	15	100
109	4	15	9
110	4	15	22
111	4	15	38
112	4	15	81
113	4	15	85
114	4	15	99
115	4	15	101
116	4	15	102
117	4	15	103
118	4	15	104
119	4	15	105
120	4	15	106
121	4	15	107
122	4	15	108
123	4	15	110
124	4	15	111
125	4	15	112
126	4	15	113
127	4	15	114
128	4	15	115
129	4	15	116
130	4	15	117
131	4	15	118
132	4	15	119
133	4	15	120
134	4	15	121
135	4	15	122
136	4	15	123
137	4	15	124
138	4	15	125
139	5	15	128
140	5	15	66
141	5	15	56
142	5	15	27
143	5	15	126
144	5	15	127
145	6	15	129
146	6	15	130
147	6	15	131
148	6	15	132
149	6	15	133
150	6	15	134
151	6	15	135
152	6	15	136
153	6	15	137
154	6	15	138
155	6	15	139
156	6	15	140
157	6	15	141
158	6	15	142
159	6	15	143
160	6	15	144
161	6	15	145
162	6	15	146
163	6	15	147
164	6	15	148
165	6	15	149
166	6	15	26
167	7	15	10
168	7	15	150
169	7	15	22
170	7	15	151
171	7	15	153
172	7	15	26
173	7	15	154
174	7	15	155
175	7	15	156
176	7	15	152
177	7	15	159
178	7	15	160
179	7	15	161
180	7	15	162
181	7	15	158
182	7	15	36
183	7	15	164
184	7	15	157
185	7	15	69
186	7	15	73
187	7	15	81
188	7	15	85
189	7	15	86
190	7	15	99
191	8	15	165
192	8	15	166
193	8	15	167
194	8	15	168
195	8	15	169
196	8	15	170
197	8	15	171
198	8	15	172
199	8	15	173
200	8	15	174
201	8	15	175
202	8	15	176
203	8	15	177
204	8	15	178
205	8	15	179
206	8	15	180
207	8	15	181
208	8	15	182
209	8	15	183
210	8	15	184
211	8	15	185
212	8	15	186
213	3	14	187
214	3	14	188
215	3	14	158
216	9	15	10
217	9	15	154
218	9	15	155
219	9	15	162
220	9	15	36
221	9	15	168
222	9	15	189
223	9	15	190
224	9	15	191
225	9	15	192
226	9	15	193
227	9	15	194
228	9	15	195
229	9	15	196
230	9	15	197
231	9	15	198
232	9	15	199
233	9	15	200
234	9	15	73
235	9	15	201
236	9	15	202
237	9	15	203
238	9	15	204
239	9	15	205
240	9	15	206
241	9	15	99
242	10	15	9
243	10	15	24
244	10	15	38
245	10	15	44
246	10	15	74
247	10	15	207
248	10	15	208
249	10	15	209
250	10	15	210
251	10	15	211
252	10	15	212
253	10	15	213
254	10	15	215
255	10	15	216
256	10	15	217
257	10	15	218
258	10	15	219
259	10	15	220
260	10	15	221
261	10	15	222
262	10	15	223
263	10	15	224
264	10	15	225
265	10	15	226
266	10	15	227
267	10	15	228
268	10	15	229
269	10	15	230
270	10	15	231
271	10	15	232
272	10	15	233
273	11	15	22
274	11	15	26
275	11	15	27
276	11	15	44
277	11	15	74
278	11	15	77
279	11	15	234
280	11	15	235
281	11	15	236
282	11	15	237
283	11	15	238
284	11	15	239
285	11	15	240
286	11	15	241
287	11	15	242
288	11	15	243
289	11	15	244
290	11	15	245
291	11	15	246
292	12	15	256
293	12	15	257
294	12	15	2
295	12	15	258
296	12	15	259
297	12	15	9
298	12	15	22
299	12	15	154
300	12	15	155
301	12	15	38
302	12	15	44
303	12	15	57
304	12	15	64
305	12	15	66
306	12	15	74
307	12	15	99
308	12	15	248
309	12	15	249
310	12	15	250
311	12	15	251
312	12	15	252
313	12	15	253
314	12	15	254
315	12	15	255
316	13	15	256
317	13	15	257
318	13	15	2
319	13	15	260
320	13	15	261
321	13	15	262
322	13	15	263
323	13	15	264
324	13	15	265
325	13	15	266
326	13	15	267
327	13	15	268
328	13	15	22
329	13	15	154
330	13	15	155
331	13	15	37
332	13	15	44
333	13	15	56
334	13	15	66
335	13	15	73
336	13	15	228
337	13	15	248
338	13	15	253
339	14	15	258
340	14	15	259
341	14	15	99
342	14	15	74
343	14	15	204
344	14	15	269
345	14	15	271
346	14	15	144
347	14	15	272
348	14	15	243
349	14	15	22
350	14	15	56
351	14	15	154
352	14	15	155
353	15	15	281
354	15	15	74
355	15	15	44
356	15	15	273
357	15	15	242
358	15	15	274
359	15	15	275
360	15	15	276
361	15	15	277
362	15	15	23
363	15	15	280
364	15	15	278
365	15	15	279
366	16	15	133
367	16	15	137
368	16	15	138
369	16	15	274
370	16	15	148
371	16	15	282
372	16	15	283
373	16	15	284
374	16	15	285
375	16	15	286
376	16	15	287
377	16	15	288
378	16	15	289
379	16	15	290
380	16	15	291
381	16	15	292
382	16	15	293
383	16	15	294
384	16	15	295
385	16	15	296
386	16	15	297
387	16	15	298
388	16	15	299
389	16	15	56
390	16	15	66
391	17	15	128
392	17	15	133
393	17	15	274
394	17	15	281
395	17	15	293
396	17	15	300
397	17	15	301
398	17	15	302
399	17	15	303
400	17	15	304
401	17	15	305
402	17	15	306
403	17	15	307
404	17	15	309
405	17	15	310
406	17	15	311
407	17	15	312
408	17	15	313
409	17	15	314
410	17	15	315
411	17	15	316
412	17	15	317
413	17	15	318
414	17	15	319
415	17	15	320
416	17	15	66
417	17	15	242
418	18	15	56
419	18	15	321
420	18	15	66
421	18	15	323
422	18	15	322
423	18	15	324
424	18	15	325
425	18	15	326
426	18	15	327
427	18	15	328
428	18	15	329
429	18	15	330
430	18	15	331
431	18	15	332
432	18	15	333
433	18	15	334
434	18	15	335
435	18	15	336
436	18	15	337
437	18	15	339
438	18	15	340
439	18	15	341
440	18	15	342
441	18	15	343
442	18	15	344
443	18	15	345
444	18	15	346
445	19	15	352
446	19	15	353
447	19	15	354
448	19	15	355
449	19	15	357
450	19	15	358
451	19	15	359
452	19	15	204
453	19	15	80
454	19	15	56
455	19	15	347
456	19	15	348
457	19	15	349
458	19	15	350
459	19	15	351
460	20	15	352
461	20	15	354
462	20	15	355
463	20	15	360
464	20	15	361
465	20	15	363
466	20	15	204
467	20	15	364
468	20	15	365
469	20	15	80
470	20	15	56
471	20	15	347
472	21	15	42
473	21	15	56
474	21	15	74
475	21	15	204
476	21	15	217
477	21	15	352
478	21	15	99
479	21	15	355
480	21	15	376
481	21	15	360
482	21	15	366
483	21	15	367
484	21	15	368
485	21	15	369
486	21	15	370
487	21	15	243
488	21	15	244
489	21	15	371
490	21	15	372
491	21	15	375
492	21	15	374
493	22	15	384
494	22	15	385
495	22	15	386
496	22	15	387
497	22	15	388
498	22	15	389
499	22	15	390
500	22	15	391
501	22	15	377
502	22	15	378
503	22	15	379
504	22	15	380
505	22	15	381
506	22	15	382
507	22	15	383
508	23	15	128
509	23	15	392
510	23	15	393
511	23	15	394
512	23	15	395
513	23	15	396
514	23	15	397
515	23	15	398
516	23	15	399
517	23	15	400
518	23	15	401
519	23	15	402
520	23	15	403
521	23	15	404
522	23	15	405
523	23	15	406
524	23	15	407
525	23	15	408
526	23	15	409
527	23	15	410
528	23	15	411
529	23	15	412
530	23	15	359
531	24	15	413
532	24	15	414
533	24	15	415
534	24	15	416
535	24	15	417
536	24	15	418
537	24	15	419
538	24	15	420
539	24	15	421
540	24	15	422
541	24	15	423
542	24	15	424
543	24	15	425
544	24	15	426
545	24	15	427
546	24	15	428
547	24	15	429
548	24	15	430
549	24	15	431
550	24	15	432
551	25	15	376
552	25	15	441
553	25	15	369
554	25	15	434
555	25	15	433
556	25	15	435
557	25	15	436
558	25	15	437
559	25	15	439
560	25	15	440
561	25	15	438
562	25	15	442
563	25	15	443
564	25	15	444
565	4	14	78
566	26	15	10
567	26	15	268
568	26	15	22
569	26	15	23
570	26	15	154
571	26	15	155
572	26	15	158
573	26	15	36
574	26	15	51
575	26	15	56
576	26	15	445
577	26	15	446
578	26	15	448
579	26	15	449
580	26	15	66
581	26	15	450
582	26	15	451
583	26	15	453
584	26	15	454
585	26	15	455
586	26	15	456
587	26	15	457
588	26	15	74
589	26	15	458
590	26	15	459
591	26	15	83
592	27	15	133
593	27	15	268
594	27	15	274
595	27	15	22
596	27	15	38
597	27	15	200
598	27	15	204
599	27	15	460
600	27	15	461
601	27	15	463
602	27	15	464
603	27	15	465
604	27	15	466
605	27	15	467
606	27	15	468
607	27	15	469
608	27	15	470
609	27	15	472
610	27	15	355
611	27	15	369
612	27	15	126
613	28	15	137
614	28	15	268
615	28	15	22
616	28	15	25
617	28	15	38
618	28	15	200
619	28	15	204
620	28	15	463
621	28	15	464
622	28	15	466
623	28	15	467
624	28	15	469
625	28	15	470
626	28	15	473
627	28	15	474
628	28	15	475
629	28	15	476
630	28	15	477
631	28	15	478
632	28	15	480
633	28	15	481
634	28	15	482
635	28	15	355
636	28	15	483
637	28	15	484
638	28	15	485
639	28	15	486
640	28	15	487
641	28	15	488
642	28	15	489
643	28	15	126
644	29	15	512
645	29	15	513
646	29	15	514
647	29	15	515
648	29	15	516
649	29	15	517
650	29	15	518
651	29	15	490
652	29	15	491
653	29	15	492
654	29	15	493
655	29	15	494
656	29	15	495
657	29	15	496
658	29	15	497
659	29	15	498
660	29	15	499
661	29	15	500
662	29	15	501
663	29	15	502
664	29	15	503
665	29	15	504
666	29	15	505
667	29	15	506
668	29	15	507
669	29	15	508
670	29	15	509
671	29	15	510
672	29	15	511
673	30	15	516
674	30	15	519
675	30	15	520
676	30	15	521
677	30	15	522
678	30	15	523
679	30	15	524
680	30	15	525
681	30	15	526
682	30	15	527
683	30	15	528
684	30	15	529
685	30	15	530
686	30	15	531
687	30	15	532
688	30	15	533
689	30	15	70
690	30	15	472
691	30	15	490
692	30	15	493
693	30	15	243
694	30	15	500
695	30	15	504
696	31	15	514
697	31	15	516
698	31	15	521
699	31	15	527
700	31	15	528
701	31	15	22
702	31	15	535
703	31	15	536
704	31	15	534
705	31	15	538
706	31	15	537
707	31	15	26
708	31	15	539
709	31	15	540
710	31	15	541
711	31	15	542
712	31	15	56
713	31	15	66
714	31	15	490
715	31	15	494
716	31	15	496
717	31	15	500
718	31	15	501
719	31	15	505
720	31	15	126
721	31	15	511
722	32	15	524
723	32	15	528
724	32	15	543
725	32	15	544
726	32	15	545
727	32	15	546
728	32	15	548
729	32	15	549
730	32	15	550
731	32	15	551
732	32	15	552
733	32	15	553
734	32	15	554
735	32	15	555
736	32	15	556
737	32	15	557
738	32	15	558
739	32	15	559
740	32	15	66
741	32	15	70
742	32	15	493
743	32	15	500
744	32	15	504
745	33	15	70
746	33	15	554
747	33	15	493
748	33	15	560
749	33	15	561
750	33	15	562
751	33	15	563
752	33	15	564
753	33	15	565
754	33	15	566
755	33	15	504
756	33	15	126
757	34	15	66
758	34	15	567
759	34	15	568
760	34	15	569
761	34	15	570
762	35	15	569
763	35	15	66
764	35	15	571
765	35	15	572
766	5	14	237
767	36	15	576
768	36	15	577
769	36	15	66
770	36	15	569
771	36	15	568
772	36	15	24
773	36	15	573
774	36	15	574
775	36	15	575
776	37	15	66
777	37	15	579
778	37	15	578
779	37	15	575
780	38	15	576
781	38	15	577
782	38	15	66
783	38	15	580
784	38	15	568
785	38	15	569
786	38	15	573
787	38	15	575
788	39	15	568
789	39	15	66
790	39	15	573
791	39	15	575
792	40	15	66
793	40	15	581
794	40	15	575
795	41	15	569
796	41	15	66
797	41	15	581
798	41	15	575
799	42	15	66
800	42	15	575
801	42	15	582
802	42	15	583
803	6	14	584
804	43	15	66
805	43	15	585
806	43	15	586
807	43	15	568
808	43	15	575
809	44	15	568
810	44	15	66
811	44	15	575
812	45	15	128
813	45	15	66
814	45	15	587
815	45	15	588
816	45	15	589
817	45	15	590
818	45	15	591
819	45	15	592
820	45	15	465
821	45	15	274
822	45	15	593
823	45	15	594
824	45	15	595
825	45	15	278
826	45	15	596
827	45	15	472
828	45	15	597
829	45	15	56
830	46	15	128
831	46	15	609
832	46	15	608
833	46	15	70
834	46	15	593
835	46	15	402
836	46	15	598
837	46	15	599
838	46	15	600
839	46	15	601
840	46	15	602
841	46	15	603
842	46	15	604
843	46	15	605
844	46	15	606
845	46	15	607
846	47	15	128
847	47	15	9
848	47	15	137
849	47	15	268
850	47	15	274
851	47	15	22
852	47	15	544
853	47	15	168
854	47	15	173
855	47	15	318
856	47	15	66
857	47	15	195
858	47	15	70
859	47	15	464
860	47	15	610
861	47	15	99
862	47	15	355
863	47	15	611
864	47	15	613
865	47	15	614
866	47	15	615
867	47	15	616
868	47	15	617
869	47	15	618
870	47	15	619
871	47	15	620
872	47	15	622
873	47	15	623
874	47	15	369
875	47	15	243
876	48	15	9
877	48	15	268
878	48	15	22
879	48	15	318
880	48	15	66
881	48	15	70
882	48	15	464
883	48	15	610
884	48	15	99
885	48	15	355
886	48	15	611
887	48	15	613
888	48	15	614
889	48	15	618
890	48	15	619
891	48	15	622
892	48	15	623
893	48	15	624
894	48	15	369
895	48	15	625
896	48	15	243
897	48	15	376
898	49	15	66
899	49	15	458
900	49	15	626
901	49	15	627
902	49	15	628
903	49	15	629
904	49	15	630
905	49	15	631
906	49	15	569
907	49	15	25
908	49	15	575
909	50	15	640
910	50	15	641
911	50	15	643
912	50	15	644
913	50	15	645
914	50	15	646
915	50	15	647
916	50	15	648
917	50	15	22
918	50	15	318
919	50	15	66
920	50	15	70
921	50	15	464
922	50	15	99
923	50	15	355
924	50	15	611
925	50	15	613
926	50	15	618
927	50	15	619
928	50	15	622
929	50	15	623
930	50	15	369
931	50	15	243
932	50	15	632
933	50	15	633
934	50	15	634
935	50	15	635
936	50	15	636
937	50	15	637
938	50	15	639
939	51	15	9
940	51	15	649
941	51	15	651
942	51	15	268
943	51	15	650
944	51	15	652
945	51	15	653
946	51	15	654
947	51	15	655
948	51	15	656
949	51	15	658
950	51	15	22
951	51	15	433
952	51	15	318
953	51	15	66
954	51	15	70
955	51	15	464
956	51	15	99
957	51	15	355
958	51	15	611
959	51	15	613
960	51	15	618
961	51	15	619
962	51	15	622
963	51	15	623
964	51	15	369
965	51	15	243
966	51	15	376
967	52	15	9
968	52	15	268
969	52	15	659
970	52	15	660
971	52	15	661
972	52	15	22
973	52	15	663
974	52	15	664
975	52	15	662
976	52	15	24
977	52	15	665
978	52	15	666
979	52	15	318
980	52	15	66
981	52	15	70
982	52	15	464
983	52	15	99
984	52	15	355
985	52	15	611
986	52	15	613
987	52	15	618
988	52	15	619
989	52	15	622
990	52	15	623
991	52	15	369
992	52	15	243
993	53	15	66
994	53	15	667
995	53	15	575
996	54	15	66
997	54	15	667
998	54	15	668
999	54	15	669
1000	54	15	670
1001	54	15	575
1002	55	15	568
1003	55	15	569
1004	55	15	66
1005	56	15	672
1006	56	15	673
1007	56	15	674
1008	56	15	671
1009	56	15	569
1010	56	15	575
1011	57	15	9
1012	57	15	268
1013	57	15	18
1014	57	15	22
1015	57	15	675
1016	57	15	676
1017	57	15	677
1018	57	15	678
1019	57	15	679
1020	57	15	680
1021	57	15	681
1022	57	15	682
1023	57	15	683
1024	57	15	684
1025	57	15	685
1026	57	15	686
1027	57	15	687
1028	57	15	318
1029	57	15	66
1030	57	15	70
1031	57	15	464
1032	57	15	99
1033	57	15	355
1034	57	15	611
1035	57	15	613
1036	57	15	231
1037	57	15	618
1038	57	15	619
1039	57	15	237
1040	57	15	622
1041	57	15	623
1042	57	15	369
1043	57	15	243
1044	58	15	9
1045	58	15	268
1046	58	15	22
1047	58	15	688
1048	58	15	689
1049	58	15	690
1050	58	15	691
1051	58	15	692
1052	58	15	693
1053	58	15	694
1054	58	15	695
1055	58	15	696
1056	58	15	697
1057	58	15	698
1058	58	15	699
1059	58	15	700
1060	58	15	701
1061	58	15	702
1062	58	15	318
1063	58	15	703
1064	58	15	66
1065	58	15	70
1066	58	15	455
1067	58	15	464
1068	58	15	604
1069	58	15	99
1070	58	15	355
1071	58	15	611
1072	58	15	613
1073	58	15	231
1074	58	15	618
1075	58	15	619
1076	58	15	622
1077	58	15	623
1078	58	15	369
1079	58	15	243
1080	59	15	568
1081	59	15	66
1082	60	15	66
1083	60	15	667
1084	60	15	575
1085	61	15	704
1086	61	15	705
1087	61	15	66
1088	61	15	707
1089	61	15	706
1090	61	15	568
1091	61	15	575
1092	62	15	704
1093	62	15	705
1094	62	15	66
1095	62	15	707
1096	62	15	706
1097	62	15	274
1098	62	15	568
1099	62	15	575
1100	63	15	706
1101	63	15	707
1102	63	15	708
1103	63	15	709
1104	63	15	66
1105	63	15	568
1106	63	15	575
1107	64	15	66
1108	64	15	710
1109	64	15	711
1110	64	15	615
1111	64	15	455
1112	64	15	712
1113	64	15	568
1114	64	15	569
1115	64	15	158
1116	65	15	704
1117	65	15	705
1118	65	15	66
1119	65	15	707
1120	65	15	706
1121	65	15	568
1122	65	15	575
1123	66	15	66
1124	66	15	455
1125	66	15	713
1126	66	15	714
1127	66	15	715
1128	66	15	716
1129	66	15	78
1130	66	15	568
1131	66	15	702
1132	67	15	569
1133	67	15	575
1134	67	15	671
1135	68	15	569
1136	68	15	575
1137	68	15	671
1138	69	15	66
1139	69	15	667
1140	69	15	575
1141	71	15	569
1142	71	15	575
1143	71	15	671
1144	72	15	569
1145	72	15	575
1146	72	15	671
1147	73	15	66
1148	73	15	667
1149	73	15	575
1150	74	15	569
1151	74	15	575
1152	74	15	671
1153	75	15	569
1154	75	15	575
1155	75	15	671
1156	76	15	569
1157	76	15	66
1158	76	15	667
1159	76	15	575
1160	77	15	569
1161	77	15	66
1162	77	15	667
1163	77	15	575
1164	78	15	569
1165	78	15	66
1166	78	15	667
1167	78	15	575
1168	79	15	569
1169	79	15	66
1170	79	15	667
1171	79	15	575
1172	80	15	66
1173	80	15	717
1174	80	15	671
1175	81	15	66
1176	81	15	667
1177	81	15	575
1178	82	15	66
1179	82	15	667
1180	82	15	575
1181	83	15	66
1182	83	15	575
1183	83	15	671
1184	84	15	66
1185	84	15	667
1186	84	15	575
1187	85	15	66
1188	85	15	575
1189	85	15	671
1190	86	15	575
1191	87	15	575
1192	89	15	575
1193	90	15	575
1194	91	15	66
1195	91	15	575
1196	91	15	671
1197	92	15	66
1198	92	15	575
1199	92	15	671
1200	93	15	66
1201	93	15	575
1202	93	15	671
1203	94	15	569
1204	94	15	66
1205	94	15	667
1206	94	15	575
1207	95	15	66
1208	95	15	575
1209	95	15	671
1210	96	15	66
1211	96	15	575
1212	96	15	671
1213	97	15	66
1214	97	15	575
1215	97	15	671
1216	98	15	66
1217	98	15	575
1218	98	15	671
1219	99	15	66
1220	99	15	667
1221	99	15	575
1222	100	15	9
1223	100	15	268
1224	100	15	22
1225	100	15	318
1226	100	15	66
1227	100	15	70
1228	100	15	718
1229	100	15	719
1230	100	15	464
1231	100	15	720
1232	100	15	721
1233	100	15	722
1234	100	15	723
1235	100	15	724
1236	100	15	725
1237	100	15	727
1238	100	15	728
1239	100	15	726
1240	100	15	729
1241	100	15	730
1242	100	15	731
1243	100	15	732
1244	100	15	733
1245	100	15	99
1246	100	15	355
1247	100	15	611
1248	100	15	613
1249	100	15	618
1250	100	15	619
1251	100	15	622
1252	100	15	623
1253	100	15	369
1254	100	15	243
1255	101	15	9
1256	101	15	268
1257	101	15	741
1258	101	15	18
1259	101	15	22
1260	101	15	743
1261	101	15	745
1262	101	15	41
1263	101	15	684
1264	101	15	318
1265	101	15	66
1266	101	15	70
1267	101	15	464
1268	101	15	734
1269	101	15	735
1270	101	15	736
1271	101	15	737
1272	101	15	738
1273	101	15	99
1274	101	15	355
1275	101	15	611
1276	101	15	742
1277	101	15	613
1278	101	15	744
1279	101	15	231
1280	101	15	746
1281	101	15	739
1282	101	15	740
1283	101	15	618
1284	101	15	619
1285	101	15	237
1286	101	15	622
1287	101	15	623
1288	101	15	369
1289	101	15	243
1290	101	15	747
1291	101	15	748
1292	102	15	9
1293	102	15	268
1294	102	15	22
1295	102	15	318
1296	102	15	66
1297	102	15	70
1298	102	15	464
1299	102	15	721
1300	102	15	99
1301	102	15	355
1302	102	15	611
1303	102	15	613
1304	102	15	618
1305	102	15	619
1306	102	15	749
1307	102	15	622
1308	102	15	623
1309	102	15	750
1310	102	15	369
1311	102	15	751
1312	102	15	243
1313	102	15	752
1314	102	15	753
1315	102	15	754
1316	102	15	755
1317	102	15	756
1318	102	15	757
1319	103	15	768
1320	103	15	769
1321	103	15	770
1322	103	15	9
1323	103	15	268
1324	103	15	22
1325	103	15	56
1326	103	15	318
1327	103	15	66
1328	103	15	70
1329	103	15	464
1330	103	15	99
1331	103	15	355
1332	103	15	611
1333	103	15	613
1334	103	15	618
1335	103	15	619
1336	103	15	622
1337	103	15	623
1338	103	15	369
1339	103	15	243
1340	103	15	758
1341	103	15	759
1342	103	15	760
1343	103	15	761
1344	103	15	762
1345	103	15	763
1346	103	15	764
1347	103	15	765
1348	103	15	766
1349	103	15	767
1350	104	15	771
1351	104	15	772
1352	104	15	773
1353	104	15	774
1354	104	15	775
1355	104	15	776
1356	104	15	9
1357	104	15	777
1358	104	15	778
1359	104	15	268
1360	104	15	22
1361	104	15	318
1362	104	15	66
1363	104	15	70
1364	104	15	464
1365	104	15	721
1366	104	15	611
1367	104	15	99
1368	104	15	355
1369	104	15	613
1370	104	15	618
1371	104	15	619
1372	104	15	749
1373	104	15	622
1374	104	15	623
1375	104	15	750
1376	104	15	369
1377	104	15	751
1378	104	15	243
1379	104	15	752
1380	104	15	753
1381	104	15	754
1382	104	15	755
1383	104	15	756
1384	104	15	757
1385	105	15	9
1386	105	15	779
1387	105	15	268
1388	105	15	781
1389	105	15	780
1390	105	15	782
1391	105	15	783
1392	105	15	784
1393	105	15	785
1394	105	15	786
1395	105	15	787
1396	105	15	788
1397	105	15	22
1398	105	15	789
1399	105	15	790
1400	105	15	791
1401	105	15	318
1402	105	15	66
1403	105	15	70
1404	105	15	464
1405	105	15	99
1406	105	15	355
1407	105	15	611
1408	105	15	613
1409	105	15	618
1410	105	15	619
1411	105	15	622
1412	105	15	623
1413	105	15	369
1414	105	15	243
1415	106	15	9
1416	106	15	268
1417	106	15	22
1418	106	15	792
1419	106	15	793
1420	106	15	794
1421	106	15	795
1422	106	15	796
1423	106	15	797
1424	106	15	798
1425	106	15	799
1426	106	15	800
1427	106	15	801
1428	106	15	433
1429	106	15	444
1430	106	15	318
1431	106	15	66
1432	106	15	70
1433	106	15	464
1434	106	15	99
1435	106	15	355
1436	106	15	611
1437	106	15	613
1438	106	15	618
1439	106	15	619
1440	106	15	622
1441	106	15	623
1442	106	15	369
1443	106	15	243
1444	107	15	9
1445	107	15	268
1446	107	15	785
1447	107	15	22
1448	107	15	793
1449	107	15	794
1450	107	15	796
1451	107	15	802
1452	107	15	803
1453	107	15	804
1454	107	15	805
1455	107	15	806
1456	107	15	807
1457	107	15	808
1458	107	15	809
1459	107	15	810
1460	107	15	811
1461	107	15	812
1462	107	15	813
1463	107	15	814
1464	107	15	815
1465	107	15	318
1466	107	15	66
1467	107	15	70
1468	107	15	464
1469	107	15	99
1470	107	15	355
1471	107	15	611
1472	107	15	613
1473	107	15	618
1474	107	15	619
1475	107	15	747
1476	107	15	622
1477	107	15	623
1478	107	15	369
1479	107	15	243
1480	108	15	816
1481	108	15	817
1482	108	15	818
1483	108	15	819
1484	108	15	820
1485	108	15	821
1486	108	15	822
1487	108	15	823
1488	108	15	824
1489	108	15	825
1490	108	15	826
1491	108	15	827
1492	108	15	828
1493	108	15	829
1494	108	15	830
1495	108	15	831
1496	108	15	832
1497	108	15	833
1498	108	15	834
1499	108	15	835
1500	108	15	70
1501	109	15	528
1502	109	15	22
1503	109	15	542
1504	109	15	836
1505	109	15	837
1506	109	15	70
1507	109	15	838
1508	109	15	839
1509	109	15	840
1510	109	15	841
1511	109	15	842
1512	109	15	843
1513	109	15	844
1514	109	15	845
1515	109	15	846
1516	109	15	847
1517	109	15	848
1518	109	15	849
1519	109	15	850
1520	109	15	99
1521	109	15	493
1522	109	15	622
1523	109	15	500
1524	109	15	504
1525	110	15	851
1526	110	15	852
1527	110	15	853
1528	110	15	854
1529	110	15	855
1530	110	15	856
1531	110	15	857
1532	110	15	858
1533	110	15	859
1534	110	15	860
1535	110	15	861
1536	110	15	862
1537	110	15	863
1538	110	15	864
1539	110	15	865
1540	110	15	866
1541	110	15	867
1542	110	15	868
1543	110	15	869
1544	110	15	870
1545	110	15	871
1546	111	15	70
1547	111	15	872
1548	111	15	873
1549	111	15	874
1550	111	15	875
1551	111	15	876
1552	111	15	877
1553	111	15	878
1554	111	15	879
1555	111	15	880
1556	111	15	881
1557	111	15	882
1558	111	15	883
1559	111	15	884
1560	111	15	885
1561	111	15	886
1562	111	15	887
1563	111	15	888
1564	111	15	889
1565	112	15	896
1566	112	15	897
1567	112	15	898
1568	112	15	899
1569	112	15	900
1570	112	15	901
1571	112	15	902
1572	112	15	903
1573	112	15	904
1574	112	15	905
1575	112	15	906
1576	112	15	907
1577	112	15	168
1578	112	15	173
1579	112	15	183
1580	112	15	890
1581	112	15	891
1582	112	15	892
1583	112	15	893
1584	112	15	894
1585	112	15	895
1586	113	15	908
1587	113	15	909
1588	113	15	910
1589	113	15	911
1590	113	15	912
1591	113	15	913
1592	113	15	914
1593	113	15	915
1594	113	15	916
1595	113	15	917
1596	113	15	918
1597	113	15	919
1598	113	15	920
1599	113	15	921
1600	113	15	922
1601	113	15	923
1602	113	15	924
1603	113	15	925
1604	113	15	926
1605	113	15	927
1606	113	15	928
1607	113	15	929
1608	113	15	930
1609	113	15	931
1610	113	15	932
1611	113	15	933
1612	115	15	66
1613	115	15	99
1614	115	15	934
1615	115	15	70
1616	115	15	935
1617	115	15	936
1618	115	15	937
1619	115	15	938
1620	115	15	939
1621	115	15	940
1622	115	15	941
1623	115	15	942
1624	115	15	943
1625	115	15	944
1626	115	15	945
1627	115	15	22
1628	115	15	861
1629	116	15	613
1630	116	15	70
1631	116	15	946
1632	116	15	947
1633	116	15	948
1634	116	15	949
1635	116	15	950
1636	116	15	951
1637	116	15	952
1638	116	15	953
1639	116	15	954
1640	116	15	955
1641	116	15	956
1642	116	15	957
1643	116	15	958
1644	117	15	128
1645	117	15	314
1646	117	15	960
1647	117	15	961
1648	117	15	962
1649	117	15	963
1650	117	15	964
1651	117	15	965
1652	117	15	70
1653	117	15	966
1654	117	15	967
1655	117	15	968
1656	117	15	969
1657	117	15	971
1658	117	15	972
1659	117	15	973
1660	117	15	974
1661	117	15	975
1662	117	15	613
1663	118	15	66
1664	118	15	70
1665	118	15	976
1666	118	15	977
1667	118	15	978
1668	118	15	979
1669	118	15	980
1670	118	15	981
1671	118	15	982
1672	118	15	983
1673	118	15	984
1674	118	15	985
1675	118	15	986
1676	118	15	987
1677	118	15	988
1678	118	15	989
1679	118	15	990
1680	118	15	991
1681	118	15	992
1682	118	15	993
1683	118	15	994
1684	118	15	995
1685	118	15	996
1686	118	15	613
1687	118	15	997
1688	118	15	998
1689	120	15	66
1690	120	15	70
1691	120	15	613
1692	120	15	999
1693	120	15	1000
1694	120	15	1001
1695	120	15	1002
1696	120	15	1003
1697	120	15	1004
1698	120	15	1005
1699	120	15	1006
1700	120	15	1007
1701	120	15	1008
1702	120	15	1009
1703	120	15	1010
1704	120	15	1011
1705	120	15	1012
1706	120	15	1013
1707	120	15	1014
1708	120	15	1015
1709	120	15	1016
1710	120	15	1017
1711	120	15	1018
1712	121	15	1024
1713	121	15	1025
1714	121	15	1026
1715	121	15	1027
1716	121	15	1028
1717	121	15	1029
1718	121	15	1030
1719	121	15	1031
1720	121	15	1032
1721	121	15	1033
1722	121	15	1034
1723	121	15	1035
1724	121	15	1036
1725	121	15	1038
1726	121	15	1040
1727	121	15	1041
1728	121	15	1042
1729	121	15	1043
1730	121	15	1044
1731	121	15	1045
1732	121	15	66
1733	121	15	70
1734	121	15	613
1735	121	15	1019
1736	121	15	1020
1737	121	15	1021
1738	121	15	1022
1739	121	15	1023
1740	122	15	1046
1741	122	15	1047
1742	122	15	1048
1743	122	15	1049
1744	122	15	1050
1745	122	15	1051
1746	122	15	1052
1747	122	15	1053
1748	122	15	1054
1749	122	15	1055
1750	122	15	1056
1751	122	15	1057
1752	122	15	1058
1753	122	15	1059
1754	122	15	1060
1755	122	15	1061
1756	122	15	1062
1757	122	15	1063
1758	122	15	1064
1759	122	15	1065
1760	122	15	1066
1761	122	15	314
1762	122	15	960
1763	122	15	613
1764	123	15	128
1765	123	15	70
1766	123	15	1067
1767	123	15	1068
1768	123	15	1069
1769	123	15	1070
1770	123	15	1071
1771	123	15	1072
1772	123	15	1073
1773	123	15	1074
1774	123	15	1075
1775	123	15	1077
1776	123	15	1078
1777	123	15	1079
1778	123	15	1080
1779	123	15	1081
1780	123	15	1082
1781	124	15	1083
1782	124	15	1084
1783	124	15	1085
1784	124	15	1086
1785	124	15	1087
1786	124	15	1088
1787	124	15	1089
1788	124	15	66
1789	124	15	1090
1790	124	15	1091
1791	124	15	1092
1792	124	15	70
1793	124	15	1093
1794	124	15	1094
1795	124	15	1095
1796	124	15	1096
1797	124	15	1097
1798	124	15	1098
1799	124	15	1099
1800	124	15	1100
1801	124	15	1101
1802	125	15	1027
1803	125	15	613
1804	125	15	70
1805	125	15	1102
1806	125	15	1103
1807	125	15	1104
1808	125	15	1105
1809	125	15	1042
1810	125	15	1106
1811	125	15	1107
1812	125	15	1108
1813	125	15	1109
1814	125	15	1110
1815	125	15	1020
1816	125	15	1023
1817	126	15	1111
1818	126	15	1112
1819	126	15	1113
1820	126	15	1114
1821	126	15	1115
1822	126	15	1116
1823	126	15	1117
1824	126	15	1118
1825	126	15	1119
1826	126	15	1120
1827	126	15	1121
1828	126	15	1122
1829	126	15	1123
1830	126	15	1124
1831	126	15	613
1832	126	15	1125
1833	126	15	1126
1834	126	15	1127
1835	126	15	1128
1836	126	15	1129
1837	126	15	1130
1838	126	15	1131
1839	126	15	1132
1840	126	15	1133
1841	126	15	1134
1842	127	15	1147
1843	127	15	1149
1844	127	15	1144
1845	127	15	441
1846	127	15	960
1847	127	15	66
1848	127	15	70
1849	127	15	376
1850	127	15	613
1851	127	15	238
1852	127	15	239
1853	127	15	624
1854	127	15	369
1855	127	15	1135
1856	127	15	1136
1857	127	15	1137
1858	127	15	1138
1859	127	15	1139
1860	127	15	1143
1861	127	15	1140
1862	127	15	1145
1863	127	15	1146
1864	127	15	1141
1865	127	15	1148
1866	127	15	1142
1867	128	15	1152
1868	128	15	1153
1869	128	15	66
1870	128	15	1155
1871	128	15	1154
1872	128	15	613
1873	128	15	70
1874	128	15	1156
1875	128	15	1157
1876	128	15	1158
1877	128	15	1159
1878	128	15	1160
1879	128	15	1161
1880	128	15	1162
1881	128	15	1150
1882	128	15	1151
1883	129	15	613
1884	129	15	1163
1885	129	15	1164
1886	129	15	236
1887	129	15	238
1888	129	15	1165
1889	129	15	1166
1890	129	15	369
1891	129	15	242
1892	129	15	593
1893	129	15	1167
1894	129	15	1168
1895	129	15	310
1896	129	15	1169
1897	129	15	1170
1898	129	15	314
1899	130	15	66
1900	130	15	613
1901	130	15	70
1902	130	15	593
1903	130	15	1171
1904	130	15	1172
1905	130	15	1173
1906	130	15	1174
1907	130	15	1175
1908	130	15	1176
1909	130	15	1177
1910	130	15	1178
1911	131	15	528
1912	131	15	1179
1913	131	15	1180
1914	131	15	1181
1915	131	15	1182
1916	131	15	1183
1917	131	15	1184
1918	131	15	1185
1919	131	15	1186
1920	131	15	1187
1921	131	15	1188
1922	131	15	1189
1923	131	15	1190
1924	131	15	1191
1925	131	15	1192
1926	131	15	1193
1927	131	15	1194
1928	131	15	1195
1929	131	15	1197
1930	131	15	1198
1931	131	15	1199
1932	131	15	1200
1933	131	15	1201
1934	131	15	66
1935	131	15	70
1936	131	15	613
1937	131	15	503
1938	132	15	1202
1939	132	15	1203
1940	132	15	1204
1941	132	15	1205
1942	132	15	1206
1943	132	15	1207
1944	132	15	1208
1945	132	15	1209
1946	132	15	1210
1947	132	15	1211
1948	132	15	1212
1949	132	15	1213
1950	132	15	1214
1951	132	15	1215
1952	132	15	1216
1953	132	15	1217
1954	132	15	1218
1955	132	15	1219
1956	132	15	1220
1957	132	15	1221
1958	132	15	70
1959	132	15	1222
1960	132	15	1223
1961	132	15	613
1962	133	15	785
1963	133	15	1224
1964	133	15	1225
1965	133	15	1226
1966	133	15	1227
1967	133	15	1228
1968	133	15	1229
1969	133	15	1230
1970	133	15	1231
1971	133	15	1232
1972	133	15	1233
1973	133	15	1234
1974	133	15	1235
1975	133	15	1236
1976	133	15	1237
1977	133	15	1238
1978	133	15	1239
1979	133	15	1240
1980	133	15	1241
1981	133	15	1242
1982	133	15	1243
1983	134	15	66
1984	134	15	70
1985	134	15	1244
1986	134	15	1245
1987	134	15	1246
1988	134	15	1247
1989	134	15	1248
1990	134	15	1249
1991	134	15	1250
1992	134	15	1251
1993	134	15	1252
1994	134	15	613
1995	134	15	1253
1996	134	15	1254
1997	134	15	1255
1998	134	15	1256
1999	134	15	1257
2000	134	15	1258
2001	134	15	1259
2002	134	15	1260
2003	134	15	1261
2004	134	15	1262
2005	134	15	1263
2006	134	15	1264
2007	135	15	1280
2008	135	15	1281
2009	135	15	1282
2010	135	15	1283
2011	135	15	1284
2012	135	15	1285
2013	135	15	1286
2014	135	15	1287
2015	135	15	70
2016	135	15	1265
2017	135	15	1266
2018	135	15	1267
2019	135	15	1268
2020	135	15	1269
2021	135	15	1270
2022	135	15	1271
2023	135	15	1272
2024	135	15	1273
2025	135	15	1274
2026	135	15	1275
2027	135	15	1276
2028	135	15	1277
2029	135	15	1278
2030	135	15	1279
2031	136	15	66
2032	136	15	613
2033	136	15	70
2034	136	15	1288
2035	136	15	1289
2036	136	15	1290
2037	136	15	1291
2038	136	15	1292
2039	136	15	1293
2040	136	15	1295
2041	136	15	1296
2042	137	15	1296
2043	137	15	1297
2044	137	15	1298
2045	137	15	1299
2046	137	15	1300
2047	137	15	1301
2048	137	15	1302
2049	137	15	1303
2050	137	15	1304
2051	137	15	1305
2052	137	15	1306
2053	137	15	1307
2054	137	15	1308
2055	137	15	1309
2056	137	15	1310
2057	137	15	1311
2058	137	15	1312
2059	137	15	1313
2060	137	15	1314
2061	137	15	1315
2062	137	15	66
2063	137	15	70
2064	138	15	66
2065	138	15	1316
2066	138	15	1317
2067	138	15	613
2068	138	15	70
2069	138	15	1288
2070	138	15	1318
2071	138	15	1319
2072	138	15	1320
2073	138	15	1321
2074	138	15	1296
2075	139	15	800
2076	139	15	1322
2077	139	15	1323
2078	139	15	1324
2079	139	15	1325
2080	139	15	1326
2081	139	15	1327
2082	139	15	1328
2083	139	15	1329
2084	139	15	1330
2085	139	15	1331
2086	139	15	1332
2087	139	15	1334
2088	139	15	1335
2089	139	15	1336
2090	139	15	1337
2091	139	15	1338
2092	139	15	1339
2093	139	15	1340
2094	139	15	1341
2095	139	15	66
2096	139	15	70
2097	139	15	613
2098	140	15	1344
2099	140	15	1345
2100	140	15	66
2101	140	15	1346
2102	140	15	613
2103	140	15	70
2104	140	15	1342
2105	140	15	1343
2106	141	15	66
2107	141	15	1347
2108	141	15	1348
2109	141	15	613
2110	141	15	70
2111	141	15	1349
2112	141	15	1350
2113	141	15	1351
2114	141	15	1352
2115	142	15	960
2116	142	15	66
2117	142	15	613
2118	142	15	70
2119	142	15	1353
2120	142	15	1354
2121	142	15	1355
2122	142	15	1356
2123	142	15	1357
2124	142	15	1358
2125	142	15	1359
2126	142	15	1360
2127	142	15	1361
2128	142	15	1362
2129	142	15	1363
2130	142	15	314
2131	143	15	66
2132	143	15	613
2133	143	15	70
2134	143	15	1296
2135	143	15	1364
2136	143	15	1365
2137	143	15	1366
2138	143	15	1367
2139	143	15	1368
2140	143	15	1369
2141	143	15	1370
2142	143	15	1371
2143	143	15	1372
2144	143	15	1373
2145	143	15	1374
2146	143	15	1375
2147	144	15	800
2148	144	15	1377
2149	144	15	66
2150	144	15	1376
2151	144	15	1378
2152	144	15	613
2153	144	15	70
2154	144	15	1379
2155	144	15	1380
2156	144	15	1381
2157	144	15	1382
2158	144	15	1383
2159	144	15	1384
2160	144	15	1386
2161	144	15	1387
2162	144	15	788
2163	145	15	66
2164	145	15	70
2165	145	15	613
2166	145	15	1388
2167	145	15	1389
2168	145	15	1390
2169	145	15	1391
2170	145	15	1392
2171	145	15	1393
2172	145	15	1394
2173	145	15	1395
2174	145	15	1396
2175	145	15	1397
2176	145	15	1398
2177	145	15	1399
2178	145	15	1400
2179	145	15	1401
2180	145	15	1402
2181	145	15	1403
2182	145	15	1404
2183	145	15	1405
2184	146	15	1408
2185	146	15	1409
2186	146	15	1411
2187	146	15	1412
2188	146	15	1413
2189	146	15	1414
2190	146	15	1416
2191	146	15	1417
2192	146	15	1418
2193	146	15	1420
2194	146	15	1421
2195	146	15	1422
2196	146	15	1424
2197	146	15	1425
2198	146	15	1426
2199	146	15	1427
2200	146	15	542
2201	146	15	549
2202	146	15	556
2203	146	15	66
2204	146	15	70
2205	146	15	493
2206	146	15	500
2207	146	15	1406
2208	146	15	1407
2209	147	15	128
2210	147	15	1428
2211	147	15	1429
2212	147	15	1430
2213	147	15	1431
2214	147	15	1432
2215	147	15	1433
2216	147	15	1434
2217	147	15	1436
2218	147	15	1437
2219	147	15	1438
2220	147	15	1439
2221	147	15	1440
2222	147	15	1441
2223	147	15	1443
2224	147	15	1444
2225	147	15	1445
2226	147	15	1446
2227	147	15	1447
2228	147	15	1448
2229	147	15	1449
2230	147	15	1450
2231	147	15	1451
2232	147	15	1452
2233	147	15	1453
2234	147	15	1455
2235	147	15	66
2236	147	15	70
2237	147	15	613
2238	148	15	1456
2239	148	15	1457
2240	148	15	1458
2241	148	15	1459
2242	148	15	1460
2243	148	15	1461
2244	148	15	1462
2245	148	15	1463
2246	148	15	1465
2247	148	15	1466
2248	148	15	1467
2249	148	15	1468
2250	148	15	1469
2251	148	15	1470
2252	148	15	1471
2253	148	15	1472
2254	148	15	1473
2255	148	15	66
2256	148	15	1474
2257	148	15	1475
2258	148	15	70
2259	148	15	613
2260	149	15	66
2261	149	15	1476
2262	149	15	613
2263	149	15	1477
2264	149	15	70
2265	149	15	1478
2266	149	15	1479
2267	149	15	1480
2268	149	15	1481
2269	149	15	1482
2270	149	15	1483
2271	149	15	1484
2272	150	15	66
2273	150	15	70
2274	150	15	1485
2275	150	15	1486
2276	150	15	1487
2277	150	15	1488
2278	150	15	1490
2279	150	15	1491
2280	150	15	1492
2281	150	15	1493
2282	150	15	1494
2283	150	15	1495
2284	150	15	1496
2285	150	15	1497
2286	150	15	1498
2287	150	15	1499
2288	150	15	1500
2289	150	15	1501
2290	150	15	1502
2291	150	15	1503
2292	150	15	1504
2293	150	15	613
2294	150	15	1383
2295	151	15	1505
2296	151	15	66
2297	151	15	1507
2298	151	15	1506
2299	151	15	613
2300	151	15	70
2301	151	15	1508
2302	151	15	1509
2303	151	15	1510
2304	151	15	1511
2305	151	15	1512
2306	151	15	1513
2307	151	15	1514
2308	151	15	1515
2309	151	15	1516
2310	152	15	1536
2311	152	15	1537
2312	152	15	1539
2313	152	15	1540
2314	152	15	1541
2315	152	15	1542
2316	152	15	66
2317	152	15	70
2318	152	15	613
2319	152	15	1517
2320	152	15	1518
2321	152	15	1519
2322	152	15	1520
2323	152	15	1521
2324	152	15	1522
2325	152	15	1523
2326	152	15	1524
2327	152	15	1525
2328	152	15	1526
2329	152	15	1527
2330	152	15	1528
2331	152	15	1529
2332	152	15	1530
2333	152	15	1531
2334	152	15	1532
2335	152	15	1533
2336	152	15	1535
2337	154	15	66
2338	154	15	575
2339	154	15	671
2340	155	15	1544
2341	155	15	1545
2342	155	15	575
2343	155	15	1543
2344	156	15	66
2345	156	15	667
2346	156	15	575
2347	157	15	66
2348	157	15	575
2349	157	15	671
2350	158	15	66
2351	158	15	575
2352	158	15	671
2353	159	15	66
2354	159	15	575
2355	159	15	671
2356	160	15	568
2357	160	15	66
2358	161	15	66
2359	161	15	1543
2360	161	15	1546
2361	161	15	794
2362	161	15	796
2363	161	15	798
2364	161	15	575
2365	162	15	793
2366	162	15	66
2367	162	15	794
2368	162	15	575
2369	163	15	1547
2370	163	15	1548
2371	163	15	1549
2372	163	15	793
2373	163	15	794
2374	163	15	575
2375	164	15	70
2376	164	15	872
2377	164	15	873
2378	164	15	874
2379	164	15	875
2380	164	15	876
2381	164	15	877
2382	164	15	878
2383	164	15	879
2384	164	15	880
2385	164	15	881
2386	164	15	882
2387	164	15	883
2388	164	15	884
2389	164	15	885
2390	164	15	886
2391	164	15	887
2392	164	15	888
2393	164	15	889
2394	165	15	896
2395	165	15	897
2396	165	15	898
2397	165	15	899
2398	165	15	900
2399	165	15	901
2400	165	15	902
2401	165	15	903
2402	165	15	904
2403	165	15	905
2404	165	15	906
2405	165	15	907
2406	165	15	168
2407	165	15	173
2408	165	15	183
2409	165	15	890
2410	165	15	891
2411	165	15	892
2412	165	15	893
2413	165	15	894
2414	165	15	895
2415	166	15	896
2416	166	15	897
2417	166	15	898
2418	166	15	899
2419	166	15	900
2420	166	15	901
2421	166	15	902
2422	166	15	903
2423	166	15	904
2424	166	15	905
2425	166	15	906
2426	166	15	907
2427	166	15	168
2428	166	15	173
2429	166	15	183
2430	166	15	890
2431	166	15	891
2432	166	15	892
2433	166	15	893
2434	166	15	894
2435	166	15	895
2436	167	15	851
2437	167	15	852
2438	167	15	853
2439	167	15	854
2440	167	15	855
2441	167	15	856
2442	167	15	857
2443	167	15	858
2444	167	15	859
2445	167	15	860
2446	167	15	861
2447	167	15	862
2448	167	15	863
2449	167	15	864
2450	167	15	865
2451	167	15	866
2452	167	15	867
2453	167	15	868
2454	167	15	869
2455	167	15	870
2456	167	15	871
2457	168	15	851
2458	168	15	852
2459	168	15	853
2460	168	15	854
2461	168	15	855
2462	168	15	856
2463	168	15	857
2464	168	15	858
2465	168	15	859
2466	168	15	860
2467	168	15	861
2468	168	15	862
2469	168	15	863
2470	168	15	864
2471	168	15	865
2472	168	15	866
2473	168	15	867
2474	168	15	868
2475	168	15	869
2476	168	15	870
2477	168	15	871
2478	169	15	1550
2479	169	15	1551
2480	169	15	1552
2481	169	15	1553
2482	169	15	851
2483	169	15	852
2484	169	15	853
2485	169	15	854
2486	169	15	855
2487	169	15	856
2488	169	15	857
2489	169	15	858
2490	169	15	859
2491	169	15	860
2492	169	15	862
2493	169	15	863
2494	169	15	864
2495	169	15	865
2496	169	15	866
2497	169	15	867
2498	169	15	868
2499	169	15	869
2500	169	15	870
2501	169	15	871
2502	170	15	66
2503	170	15	613
2504	170	15	70
2505	170	15	593
2506	170	15	1554
2507	170	15	1555
2508	170	15	1556
2509	170	15	1557
2510	170	15	1558
2511	170	15	1559
2512	170	15	1560
2513	171	15	1561
2514	171	15	1562
2515	171	15	1563
2516	171	15	1565
2517	171	15	1566
2518	171	15	1567
2519	171	15	1568
2520	171	15	1569
2521	171	15	1570
2522	171	15	1571
2523	171	15	1572
2524	171	15	1573
2525	171	15	1574
2526	171	15	1575
2527	171	15	1576
2528	171	15	1577
2529	171	15	1578
2530	171	15	1580
2531	171	15	1581
2532	171	15	1582
2533	171	15	1583
2534	171	15	1584
2535	171	15	1585
2536	171	15	1586
2537	171	15	1587
2538	171	15	1588
2539	171	15	70
2540	171	15	613
2541	171	15	1140
2542	172	15	66
2543	172	15	1571
2544	172	15	613
2545	172	15	70
2546	172	15	614
2547	172	15	1575
2548	172	15	461
2549	172	15	1583
2550	173	15	66
2551	173	15	613
2552	173	15	70
2553	173	15	1589
2554	173	15	1590
2555	173	15	1591
2556	173	15	1592
2557	173	15	1593
1	1	14	1
2	2	14	2
3	1	15	3
4	1	15	4
5	1	15	5
6	1	15	6
7	1	15	7
8	1	15	8
9	1	15	9
10	1	15	10
11	1	15	11
12	1	15	12
13	1	15	13
14	1	15	14
15	1	15	15
16	1	15	16
17	1	15	17
18	1	15	18
19	1	15	19
20	1	15	20
21	1	15	21
22	1	15	22
23	1	15	23
24	1	15	24
25	1	15	25
26	1	15	26
27	1	15	27
28	1	15	28
29	1	15	29
30	1	15	30
31	1	15	31
32	1	15	32
33	1	15	33
2558	173	15	1594
2559	173	15	1595
2560	173	15	1596
2561	173	15	1597
2562	173	15	1598
2563	174	15	1504
2564	174	15	1601
2565	174	15	66
2566	174	15	1600
2567	174	15	1602
2568	174	15	613
2569	174	15	70
2570	174	15	1603
2571	174	15	1604
2572	174	15	1605
2573	174	15	1606
2574	174	15	1607
2575	174	15	1608
2576	174	15	1609
2577	174	15	1610
2578	174	15	1611
2579	174	15	1502
2580	174	15	1599
2581	175	15	128
2582	175	15	66
2583	175	15	70
2584	175	15	1612
2585	175	15	1613
2586	175	15	1614
2587	175	15	1615
2588	175	15	1616
2589	175	15	1617
2590	175	15	1618
2591	175	15	1619
2592	175	15	1620
2593	175	15	1621
2594	175	15	1622
2595	175	15	1623
2596	175	15	1624
2597	175	15	1625
2598	175	15	1626
2599	175	15	613
2600	176	15	1161
2601	176	15	70
2602	176	15	1627
2603	176	15	1628
2604	176	15	1629
2605	176	15	1630
2606	176	15	1631
2607	176	15	1632
2608	176	15	1633
2609	176	15	1634
2610	176	15	1635
2611	176	15	1636
2612	176	15	613
2613	176	15	1637
2614	176	15	1638
2615	176	15	1639
2616	176	15	1640
2617	176	15	1641
2618	176	15	1642
2619	176	15	1643
2620	176	15	1644
2621	176	15	238
2622	176	15	1645
2623	176	15	1646
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: accounts_followuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_followuser_id_seq', 3, true);


--
-- Name: accounts_profile_follow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_profile_follow_id_seq', 3, true);


--
-- Name: accounts_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_profile_id_seq', 5, true);


--
-- Name: accounts_sitename_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_sitename_id_seq', 1, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 152, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: blog_bodyorgans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_bodyorgans_id_seq', 1, false);


--
-- Name: blog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_category_id_seq', 6, true);


--
-- Name: blog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_comment_id_seq', 1, false);


--
-- Name: blog_diseases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_diseases_id_seq', 1, false);


--
-- Name: blog_favpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_favpost_id_seq', 1, true);


--
-- Name: blog_langpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_langpost_id_seq', 1, true);


--
-- Name: blog_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_page_id_seq', 1, true);


--
-- Name: blog_post_favourites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_favourites_id_seq', 1, true);


--
-- Name: blog_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_id_seq', 176, true);


--
-- Name: blog_post_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_likes_id_seq', 1, true);


--
-- Name: blog_post_thumbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_post_thumbs_id_seq', 1, false);


--
-- Name: blog_vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blog_vote_id_seq', 1, false);


--
-- Name: boards_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_category_id_seq', 1, false);


--
-- Name: boards_commentt_NotfFaId_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."boards_commentt_NotfFaId_id_seq"', 1, false);


--
-- Name: boards_commentt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_commentt_id_seq', 1, false);


--
-- Name: boards_favtopic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_favtopic_id_seq', 1, true);


--
-- Name: boards_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_notification_id_seq', 1, false);


--
-- Name: boards_topic_NotfFaV_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."boards_topic_NotfFaV_id_seq"', 3, true);


--
-- Name: boards_topic_favourites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_topic_favourites_id_seq', 1, true);


--
-- Name: boards_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_topic_id_seq', 1, true);


--
-- Name: boards_topic_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_topic_likes_id_seq', 2, true);


--
-- Name: boards_topic_thumbs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_topic_thumbs_id_seq', 1, false);


--
-- Name: boards_topiclang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_topiclang_id_seq', 1, false);


--
-- Name: boards_votet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_votet_id_seq', 1, false);


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 1, false);


--
-- Name: categories_categoryrelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_categoryrelation_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 46, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 38, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 223, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: robots_rule_allowed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.robots_rule_allowed_id_seq', 1, false);


--
-- Name: robots_rule_disallowed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.robots_rule_disallowed_id_seq', 1, false);


--
-- Name: robots_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.robots_rule_id_seq', 1, false);


--
-- Name: robots_rule_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.robots_rule_sites_id_seq', 1, false);


--
-- Name: robots_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.robots_url_id_seq', 1, false);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taggit_tag_id_seq', 1646, true);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taggit_taggeditem_id_seq', 2623, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: accounts_followuser accounts_followuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_followuser
    ADD CONSTRAINT accounts_followuser_pkey PRIMARY KEY (id);


--
-- Name: accounts_profile_follow accounts_profile_follow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile_follow
    ADD CONSTRAINT accounts_profile_follow_pkey PRIMARY KEY (id);


--
-- Name: accounts_profile_follow accounts_profile_follow_profile_id_user_id_0d7a2c22_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile_follow
    ADD CONSTRAINT accounts_profile_follow_profile_id_user_id_0d7a2c22_uniq UNIQUE (profile_id, user_id);


--
-- Name: accounts_profile accounts_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile
    ADD CONSTRAINT accounts_profile_pkey PRIMARY KEY (id);


--
-- Name: accounts_profile accounts_profile_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile
    ADD CONSTRAINT accounts_profile_slug_key UNIQUE (slug);


--
-- Name: accounts_profile accounts_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile
    ADD CONSTRAINT accounts_profile_user_id_key UNIQUE (user_id);


--
-- Name: accounts_sitename accounts_sitename_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_sitename
    ADD CONSTRAINT accounts_sitename_pkey PRIMARY KEY (id);


--
-- Name: accounts_sitename accounts_sitename_site_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_sitename
    ADD CONSTRAINT accounts_sitename_site_id_key UNIQUE (site_id);


--
-- Name: accounts_sitename accounts_sitename_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_sitename
    ADD CONSTRAINT accounts_sitename_user_id_key UNIQUE (user_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_bodyorgans blog_bodyorgans_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_bodyorgans
    ADD CONSTRAINT blog_bodyorgans_name_key UNIQUE (name);


--
-- Name: blog_bodyorgans blog_bodyorgans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_bodyorgans
    ADD CONSTRAINT blog_bodyorgans_pkey PRIMARY KEY (id);


--
-- Name: blog_category blog_category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_name_key UNIQUE (name);


--
-- Name: blog_category blog_category_parent_id_slug_5470b4cd_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_parent_id_slug_5470b4cd_uniq UNIQUE (parent_id, slug);


--
-- Name: blog_category blog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_pkey PRIMARY KEY (id);


--
-- Name: blog_category blog_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_slug_key UNIQUE (slug);


--
-- Name: blog_comment blog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_pkey PRIMARY KEY (id);


--
-- Name: blog_diseases blog_diseases_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_diseases
    ADD CONSTRAINT blog_diseases_name_key UNIQUE (name);


--
-- Name: blog_diseases blog_diseases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_diseases
    ADD CONSTRAINT blog_diseases_pkey PRIMARY KEY (id);


--
-- Name: blog_favpost blog_favpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_favpost
    ADD CONSTRAINT blog_favpost_pkey PRIMARY KEY (id);


--
-- Name: blog_langpost blog_langpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_langpost
    ADD CONSTRAINT blog_langpost_pkey PRIMARY KEY (id);


--
-- Name: blog_langpost blog_langpost_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_langpost
    ADD CONSTRAINT blog_langpost_slug_key UNIQUE (slug);


--
-- Name: blog_page blog_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_page
    ADD CONSTRAINT blog_page_pkey PRIMARY KEY (id);


--
-- Name: blog_page blog_page_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_page
    ADD CONSTRAINT blog_page_title_key UNIQUE (title);


--
-- Name: blog_post_favourites blog_post_favourites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_favourites
    ADD CONSTRAINT blog_post_favourites_pkey PRIMARY KEY (id);


--
-- Name: blog_post_favourites blog_post_favourites_post_id_user_id_560172ad_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_favourites
    ADD CONSTRAINT blog_post_favourites_post_id_user_id_560172ad_uniq UNIQUE (post_id, user_id);


--
-- Name: blog_post_likes blog_post_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_likes
    ADD CONSTRAINT blog_post_likes_pkey PRIMARY KEY (id);


--
-- Name: blog_post_likes blog_post_likes_post_id_user_id_54f740f5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_likes
    ADD CONSTRAINT blog_post_likes_post_id_user_id_54f740f5_uniq UNIQUE (post_id, user_id);


--
-- Name: blog_post blog_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_pkey PRIMARY KEY (id);


--
-- Name: blog_post blog_post_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_slug_key UNIQUE (slug);


--
-- Name: blog_post_thumbs blog_post_thumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_thumbs
    ADD CONSTRAINT blog_post_thumbs_pkey PRIMARY KEY (id);


--
-- Name: blog_post_thumbs blog_post_thumbs_post_id_user_id_abb3c1f5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_thumbs
    ADD CONSTRAINT blog_post_thumbs_post_id_user_id_abb3c1f5_uniq UNIQUE (post_id, user_id);


--
-- Name: blog_vote blog_vote_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_vote
    ADD CONSTRAINT blog_vote_pkey PRIMARY KEY (id);


--
-- Name: boards_category boards_category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_category
    ADD CONSTRAINT boards_category_name_key UNIQUE (name);


--
-- Name: boards_category boards_category_parent_id_slug_9cef2706_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_category
    ADD CONSTRAINT boards_category_parent_id_slug_9cef2706_uniq UNIQUE (parent_id, slug);


--
-- Name: boards_category boards_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_category
    ADD CONSTRAINT boards_category_pkey PRIMARY KEY (id);


--
-- Name: boards_category boards_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_category
    ADD CONSTRAINT boards_category_slug_key UNIQUE (slug);


--
-- Name: boards_commentt_NotfFaId boards_commentt_NotfFaId_commentt_id_user_id_4384116c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_commentt_NotfFaId"
    ADD CONSTRAINT "boards_commentt_NotfFaId_commentt_id_user_id_4384116c_uniq" UNIQUE (commentt_id, user_id);


--
-- Name: boards_commentt_NotfFaId boards_commentt_NotfFaId_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_commentt_NotfFaId"
    ADD CONSTRAINT "boards_commentt_NotfFaId_pkey" PRIMARY KEY (id);


--
-- Name: boards_commentt boards_commentt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_commentt
    ADD CONSTRAINT boards_commentt_pkey PRIMARY KEY (id);


--
-- Name: boards_favtopic boards_favtopic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_favtopic
    ADD CONSTRAINT boards_favtopic_pkey PRIMARY KEY (id);


--
-- Name: boards_notification boards_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_notification
    ADD CONSTRAINT boards_notification_pkey PRIMARY KEY (id);


--
-- Name: boards_notification boards_notification_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_notification
    ADD CONSTRAINT boards_notification_user_id_key UNIQUE (user_id);


--
-- Name: boards_topic_NotfFaV boards_topic_NotfFaV_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_topic_NotfFaV"
    ADD CONSTRAINT "boards_topic_NotfFaV_pkey" PRIMARY KEY (id);


--
-- Name: boards_topic_NotfFaV boards_topic_NotfFaV_topic_id_user_id_0b7412a5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_topic_NotfFaV"
    ADD CONSTRAINT "boards_topic_NotfFaV_topic_id_user_id_0b7412a5_uniq" UNIQUE (topic_id, user_id);


--
-- Name: boards_topic_favourites boards_topic_favourites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_favourites
    ADD CONSTRAINT boards_topic_favourites_pkey PRIMARY KEY (id);


--
-- Name: boards_topic_favourites boards_topic_favourites_topic_id_user_id_458ea4fd_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_favourites
    ADD CONSTRAINT boards_topic_favourites_topic_id_user_id_458ea4fd_uniq UNIQUE (topic_id, user_id);


--
-- Name: boards_topic_likes boards_topic_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_likes
    ADD CONSTRAINT boards_topic_likes_pkey PRIMARY KEY (id);


--
-- Name: boards_topic_likes boards_topic_likes_topic_id_user_id_5184aeff_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_likes
    ADD CONSTRAINT boards_topic_likes_topic_id_user_id_5184aeff_uniq UNIQUE (topic_id, user_id);


--
-- Name: boards_topic boards_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_pkey PRIMARY KEY (id);


--
-- Name: boards_topic boards_topic_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_slug_key UNIQUE (slug);


--
-- Name: boards_topic_thumbs boards_topic_thumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_thumbs
    ADD CONSTRAINT boards_topic_thumbs_pkey PRIMARY KEY (id);


--
-- Name: boards_topic_thumbs boards_topic_thumbs_topic_id_user_id_22b6b8dd_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_thumbs
    ADD CONSTRAINT boards_topic_thumbs_topic_id_user_id_22b6b8dd_uniq UNIQUE (topic_id, user_id);


--
-- Name: boards_topiclang boards_topiclang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topiclang
    ADD CONSTRAINT boards_topiclang_pkey PRIMARY KEY (id);


--
-- Name: boards_topiclang boards_topiclang_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topiclang
    ADD CONSTRAINT boards_topiclang_slug_key UNIQUE (slug);


--
-- Name: boards_votet boards_votet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_votet
    ADD CONSTRAINT boards_votet_pkey PRIMARY KEY (id);


--
-- Name: categories_category categories_category_parent_id_name_893f7987_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_category
    ADD CONSTRAINT categories_category_parent_id_name_893f7987_uniq UNIQUE (parent_id, name);


--
-- Name: categories_category categories_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_category
    ADD CONSTRAINT categories_category_pkey PRIMARY KEY (id);


--
-- Name: categories_categoryrelation categories_categoryrelation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categoryrelation
    ADD CONSTRAINT categories_categoryrelation_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_allowed robots_rule_allowed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_allowed robots_rule_allowed_rule_id_url_id_83b262d4_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_rule_id_url_id_83b262d4_uniq UNIQUE (rule_id, url_id);


--
-- Name: robots_rule_disallowed robots_rule_disallowed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_disallowed robots_rule_disallowed_rule_id_url_id_4d9b6222_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_rule_id_url_id_4d9b6222_uniq UNIQUE (rule_id, url_id);


--
-- Name: robots_rule robots_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule
    ADD CONSTRAINT robots_rule_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_sites robots_rule_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_sites robots_rule_sites_rule_id_site_id_093f04ea_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_rule_id_site_id_093f04ea_uniq UNIQUE (rule_id, site_id);


--
-- Name: robots_url robots_url_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_url
    ADD CONSTRAINT robots_url_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_object_i_4bb97a8e_uniq UNIQUE (content_type_id, object_id, tag_id);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: accounts_followuser_folPr_id_4a5a1b0d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "accounts_followuser_folPr_id_4a5a1b0d" ON public.accounts_followuser USING btree (profiles_id);


--
-- Name: accounts_followuser_follUser_id_e71a5dac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "accounts_followuser_follUser_id_e71a5dac" ON public.accounts_followuser USING btree (avatar_id);


--
-- Name: accounts_profile_follow_profile_id_fa89f77f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_profile_follow_profile_id_fa89f77f ON public.accounts_profile_follow USING btree (profile_id);


--
-- Name: accounts_profile_follow_user_id_79b1dd17; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_profile_follow_user_id_79b1dd17 ON public.accounts_profile_follow USING btree (user_id);


--
-- Name: accounts_profile_slug_8a7a322e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_profile_slug_8a7a322e_like ON public.accounts_profile USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_bodyorgans_name_127b328a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_bodyorgans_name_127b328a_like ON public.blog_bodyorgans USING btree (name varchar_pattern_ops);


--
-- Name: blog_bodyorgans_parent_id_a474e9d5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_bodyorgans_parent_id_a474e9d5 ON public.blog_bodyorgans USING btree (parent_id);


--
-- Name: blog_bodyorgans_slug_2dc1c883; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_bodyorgans_slug_2dc1c883 ON public.blog_bodyorgans USING btree (slug);


--
-- Name: blog_bodyorgans_slug_2dc1c883_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_bodyorgans_slug_2dc1c883_like ON public.blog_bodyorgans USING btree (slug varchar_pattern_ops);


--
-- Name: blog_bodyorgans_tree_id_72edbf47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_bodyorgans_tree_id_72edbf47 ON public.blog_bodyorgans USING btree (tree_id);


--
-- Name: blog_category_name_92eb1483_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_category_name_92eb1483_like ON public.blog_category USING btree (name varchar_pattern_ops);


--
-- Name: blog_category_parent_id_2d80fe5c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_category_parent_id_2d80fe5c ON public.blog_category USING btree (parent_id);


--
-- Name: blog_category_slugLang_a47ff8de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "blog_category_slugLang_a47ff8de" ON public.blog_category USING btree ("slugLang");


--
-- Name: blog_category_slugLang_a47ff8de_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "blog_category_slugLang_a47ff8de_like" ON public.blog_category USING btree ("slugLang" varchar_pattern_ops);


--
-- Name: blog_category_slug_92643dc5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_category_slug_92643dc5_like ON public.blog_category USING btree (slug varchar_pattern_ops);


--
-- Name: blog_category_tree_id_debdb34e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_category_tree_id_debdb34e ON public.blog_category USING btree (tree_id);


--
-- Name: blog_comment_parent_id_f2a027bb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comment_parent_id_f2a027bb ON public.blog_comment USING btree (parent_id);


--
-- Name: blog_comment_post_id_580e96ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comment_post_id_580e96ef ON public.blog_comment USING btree (post_id);


--
-- Name: blog_comment_tree_id_c144f0e5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_comment_tree_id_c144f0e5 ON public.blog_comment USING btree (tree_id);


--
-- Name: blog_diseases_name_f0505a21_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_diseases_name_f0505a21_like ON public.blog_diseases USING btree (name varchar_pattern_ops);


--
-- Name: blog_diseases_parent_id_bc1f411f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_diseases_parent_id_bc1f411f ON public.blog_diseases USING btree (parent_id);


--
-- Name: blog_diseases_slug_cbb00315; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_diseases_slug_cbb00315 ON public.blog_diseases USING btree (slug);


--
-- Name: blog_diseases_slug_cbb00315_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_diseases_slug_cbb00315_like ON public.blog_diseases USING btree (slug varchar_pattern_ops);


--
-- Name: blog_diseases_tree_id_fa35e718; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_diseases_tree_id_fa35e718 ON public.blog_diseases USING btree (tree_id);


--
-- Name: blog_favpost_post_id_755fd835; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_favpost_post_id_755fd835 ON public.blog_favpost USING btree (post_id);


--
-- Name: blog_favpost_user_id_034fa8ae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_favpost_user_id_034fa8ae ON public.blog_favpost USING btree (user_id);


--
-- Name: blog_langpost_author_id_3510bb37; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_langpost_author_id_3510bb37 ON public.blog_langpost USING btree (author_id);


--
-- Name: blog_langpost_slug_598426ee_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_langpost_slug_598426ee_like ON public.blog_langpost USING btree (slug varchar_pattern_ops);


--
-- Name: blog_page_parent_id_8a37dcb6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_page_parent_id_8a37dcb6 ON public.blog_page USING btree (parent_id);


--
-- Name: blog_page_slug_50ededf0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_page_slug_50ededf0 ON public.blog_page USING btree (slug);


--
-- Name: blog_page_slug_50ededf0_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_page_slug_50ededf0_like ON public.blog_page USING btree (slug varchar_pattern_ops);


--
-- Name: blog_page_title_3d9dec15_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_page_title_3d9dec15_like ON public.blog_page USING btree (title varchar_pattern_ops);


--
-- Name: blog_page_tree_id_f5d70112; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_page_tree_id_f5d70112 ON public.blog_page USING btree (tree_id);


--
-- Name: blog_post_author_id_dd7a8485; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_author_id_dd7a8485 ON public.blog_post USING btree (author_id);


--
-- Name: blog_post_category_id_c326dbf8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_category_id_c326dbf8 ON public.blog_post USING btree (category_id);


--
-- Name: blog_post_favourites_post_id_bfac44cf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_favourites_post_id_bfac44cf ON public.blog_post_favourites USING btree (post_id);


--
-- Name: blog_post_favourites_user_id_1f52fbf7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_favourites_user_id_1f52fbf7 ON public.blog_post_favourites USING btree (user_id);


--
-- Name: blog_post_languageN_id_330eae74; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "blog_post_languageN_id_330eae74" ON public.blog_post USING btree ("languageName_id");


--
-- Name: blog_post_likes_post_id_d038881a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_likes_post_id_d038881a ON public.blog_post_likes USING btree (post_id);


--
-- Name: blog_post_likes_user_id_bfe15394; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_likes_user_id_bfe15394 ON public.blog_post_likes USING btree (user_id);


--
-- Name: blog_post_slugLang_053b727b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "blog_post_slugLang_053b727b" ON public.blog_post USING btree ("slugLang");


--
-- Name: blog_post_slugLang_053b727b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "blog_post_slugLang_053b727b_like" ON public.blog_post USING btree ("slugLang" varchar_pattern_ops);


--
-- Name: blog_post_slug_b95473f2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_slug_b95473f2_like ON public.blog_post USING btree (slug varchar_pattern_ops);


--
-- Name: blog_post_thumbs_post_id_50dcf186; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_thumbs_post_id_50dcf186 ON public.blog_post_thumbs USING btree (post_id);


--
-- Name: blog_post_thumbs_user_id_309a8381; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_post_thumbs_user_id_309a8381 ON public.blog_post_thumbs USING btree (user_id);


--
-- Name: blog_vote_post_id_107f3e22; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_vote_post_id_107f3e22 ON public.blog_vote USING btree (post_id);


--
-- Name: blog_vote_user_id_505c7f27; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_vote_user_id_505c7f27 ON public.blog_vote USING btree (user_id);


--
-- Name: boards_category_name_ef8b44f4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_category_name_ef8b44f4_like ON public.boards_category USING btree (name varchar_pattern_ops);


--
-- Name: boards_category_parent_id_b59f33b8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_category_parent_id_b59f33b8 ON public.boards_category USING btree (parent_id);


--
-- Name: boards_category_slugLang_8930dac9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_category_slugLang_8930dac9" ON public.boards_category USING btree ("slugLang");


--
-- Name: boards_category_slugLang_8930dac9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_category_slugLang_8930dac9_like" ON public.boards_category USING btree ("slugLang" varchar_pattern_ops);


--
-- Name: boards_category_slug_cb788c5d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_category_slug_cb788c5d_like ON public.boards_category USING btree (slug varchar_pattern_ops);


--
-- Name: boards_category_tree_id_95bd7030; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_category_tree_id_95bd7030 ON public.boards_category USING btree (tree_id);


--
-- Name: boards_commentt_NotfFaId_commentt_id_471586ba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_commentt_NotfFaId_commentt_id_471586ba" ON public."boards_commentt_NotfFaId" USING btree (commentt_id);


--
-- Name: boards_commentt_NotfFaId_user_id_83aa3d89; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_commentt_NotfFaId_user_id_83aa3d89" ON public."boards_commentt_NotfFaId" USING btree (user_id);


--
-- Name: boards_commentt_Topic_id_6e6040cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_commentt_Topic_id_6e6040cc" ON public.boards_commentt USING btree ("Topic_id");


--
-- Name: boards_commentt_author_id_3f25d14b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_commentt_author_id_3f25d14b ON public.boards_commentt USING btree (author_id);


--
-- Name: boards_commentt_parent_id_499bfc31; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_commentt_parent_id_499bfc31 ON public.boards_commentt USING btree (parent_id);


--
-- Name: boards_commentt_tree_id_13ec37bd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_commentt_tree_id_13ec37bd ON public.boards_commentt USING btree (tree_id);


--
-- Name: boards_favtopic_post_id_0f3175a6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_favtopic_post_id_0f3175a6 ON public.boards_favtopic USING btree (post_id);


--
-- Name: boards_favtopic_user_id_0a0f7443; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_favtopic_user_id_0a0f7443 ON public.boards_favtopic USING btree (user_id);


--
-- Name: boards_topic_NotfFaV_topic_id_903f5c5f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_topic_NotfFaV_topic_id_903f5c5f" ON public."boards_topic_NotfFaV" USING btree (topic_id);


--
-- Name: boards_topic_NotfFaV_user_id_de6e3ecd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_topic_NotfFaV_user_id_de6e3ecd" ON public."boards_topic_NotfFaV" USING btree (user_id);


--
-- Name: boards_topic_author_id_6d3a5cd8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_author_id_6d3a5cd8 ON public.boards_topic USING btree (author_id);


--
-- Name: boards_topic_category_id_342e47ba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_category_id_342e47ba ON public.boards_topic USING btree (category_id);


--
-- Name: boards_topic_favourites_topic_id_6672ea17; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_favourites_topic_id_6672ea17 ON public.boards_topic_favourites USING btree (topic_id);


--
-- Name: boards_topic_favourites_user_id_6d84894c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_favourites_user_id_6d84894c ON public.boards_topic_favourites USING btree (user_id);


--
-- Name: boards_topic_languageName_id_f25f51db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_topic_languageName_id_f25f51db" ON public.boards_topic USING btree ("languageName_id");


--
-- Name: boards_topic_likes_topic_id_8abe51ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_likes_topic_id_8abe51ef ON public.boards_topic_likes USING btree (topic_id);


--
-- Name: boards_topic_likes_user_id_127588f9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_likes_user_id_127588f9 ON public.boards_topic_likes USING btree (user_id);


--
-- Name: boards_topic_slugLang_3ad53ad8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_topic_slugLang_3ad53ad8" ON public.boards_topic USING btree ("slugLang");


--
-- Name: boards_topic_slugLang_3ad53ad8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_topic_slugLang_3ad53ad8_like" ON public.boards_topic USING btree ("slugLang" varchar_pattern_ops);


--
-- Name: boards_topic_slug_24313cc8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_slug_24313cc8_like ON public.boards_topic USING btree (slug varchar_pattern_ops);


--
-- Name: boards_topic_thumbs_topic_id_a36ed041; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_thumbs_topic_id_a36ed041 ON public.boards_topic_thumbs USING btree (topic_id);


--
-- Name: boards_topic_thumbs_user_id_669d13ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_thumbs_user_id_669d13ef ON public.boards_topic_thumbs USING btree (user_id);


--
-- Name: boards_topiclang_author_id_82006b9a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topiclang_author_id_82006b9a ON public.boards_topiclang USING btree (author_id);


--
-- Name: boards_topiclang_slug_d5a2ad7f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topiclang_slug_d5a2ad7f_like ON public.boards_topiclang USING btree (slug varchar_pattern_ops);


--
-- Name: boards_votet_Topic_id_99ff0470; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "boards_votet_Topic_id_99ff0470" ON public.boards_votet USING btree ("Topic_id");


--
-- Name: boards_votet_user_id_8790eac7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_votet_user_id_8790eac7 ON public.boards_votet USING btree (user_id);


--
-- Name: categories_category_parent_id_f141de59; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_category_parent_id_f141de59 ON public.categories_category USING btree (parent_id);


--
-- Name: categories_category_slug_6fddebb1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_category_slug_6fddebb1 ON public.categories_category USING btree (slug);


--
-- Name: categories_category_slug_6fddebb1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_category_slug_6fddebb1_like ON public.categories_category USING btree (slug varchar_pattern_ops);


--
-- Name: categories_category_tree_id_01dcfdaf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_category_tree_id_01dcfdaf ON public.categories_category USING btree (tree_id);


--
-- Name: categories_categoryrelation_category_id_e5e686b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_categoryrelation_category_id_e5e686b2 ON public.categories_categoryrelation USING btree (category_id);


--
-- Name: categories_categoryrelation_content_type_id_f686b696; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_categoryrelation_content_type_id_f686b696 ON public.categories_categoryrelation USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: robots_rule_allowed_rule_id_aa90358c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX robots_rule_allowed_rule_id_aa90358c ON public.robots_rule_allowed USING btree (rule_id);


--
-- Name: robots_rule_allowed_url_id_6157f60a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX robots_rule_allowed_url_id_6157f60a ON public.robots_rule_allowed USING btree (url_id);


--
-- Name: robots_rule_disallowed_rule_id_fad7328c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX robots_rule_disallowed_rule_id_fad7328c ON public.robots_rule_disallowed USING btree (rule_id);


--
-- Name: robots_rule_disallowed_url_id_8e02db92; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX robots_rule_disallowed_url_id_8e02db92 ON public.robots_rule_disallowed USING btree (url_id);


--
-- Name: robots_rule_sites_rule_id_7921a799; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX robots_rule_sites_rule_id_7921a799 ON public.robots_rule_sites USING btree (rule_id);


--
-- Name: robots_rule_sites_site_id_efe5be97; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX robots_rule_sites_site_id_efe5be97 ON public.robots_rule_sites USING btree (site_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON public.taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON public.taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON public.taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON public.taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON public.taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON public.taggit_taggeditem USING btree (tag_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_followuser accounts_followuser_avatar_id_3508dad1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_followuser
    ADD CONSTRAINT accounts_followuser_avatar_id_3508dad1_fk_auth_user_id FOREIGN KEY (avatar_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_followuser accounts_followuser_profiles_id_bcb36c3c_fk_accounts_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_followuser
    ADD CONSTRAINT accounts_followuser_profiles_id_bcb36c3c_fk_accounts_profile_id FOREIGN KEY (profiles_id) REFERENCES public.accounts_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_profile_follow accounts_profile_fol_profile_id_fa89f77f_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile_follow
    ADD CONSTRAINT accounts_profile_fol_profile_id_fa89f77f_fk_accounts_ FOREIGN KEY (profile_id) REFERENCES public.accounts_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_profile_follow accounts_profile_follow_user_id_79b1dd17_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile_follow
    ADD CONSTRAINT accounts_profile_follow_user_id_79b1dd17_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_profile accounts_profile_user_id_49a85d32_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_profile
    ADD CONSTRAINT accounts_profile_user_id_49a85d32_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_sitename accounts_sitename_site_id_62704562_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_sitename
    ADD CONSTRAINT accounts_sitename_site_id_62704562_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_sitename accounts_sitename_user_id_06235c83_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_sitename
    ADD CONSTRAINT accounts_sitename_user_id_06235c83_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_bodyorgans blog_bodyorgans_parent_id_a474e9d5_fk_blog_bodyorgans_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_bodyorgans
    ADD CONSTRAINT blog_bodyorgans_parent_id_a474e9d5_fk_blog_bodyorgans_id FOREIGN KEY (parent_id) REFERENCES public.blog_bodyorgans(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_category blog_category_parent_id_2d80fe5c_fk_blog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_category
    ADD CONSTRAINT blog_category_parent_id_2d80fe5c_fk_blog_category_id FOREIGN KEY (parent_id) REFERENCES public.blog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_parent_id_f2a027bb_fk_blog_comment_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_parent_id_f2a027bb_fk_blog_comment_id FOREIGN KEY (parent_id) REFERENCES public.blog_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_comment blog_comment_post_id_580e96ef_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_comment
    ADD CONSTRAINT blog_comment_post_id_580e96ef_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_diseases blog_diseases_parent_id_bc1f411f_fk_blog_diseases_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_diseases
    ADD CONSTRAINT blog_diseases_parent_id_bc1f411f_fk_blog_diseases_id FOREIGN KEY (parent_id) REFERENCES public.blog_diseases(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_favpost blog_favpost_post_id_755fd835_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_favpost
    ADD CONSTRAINT blog_favpost_post_id_755fd835_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_favpost blog_favpost_user_id_034fa8ae_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_favpost
    ADD CONSTRAINT blog_favpost_user_id_034fa8ae_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_langpost blog_langpost_author_id_3510bb37_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_langpost
    ADD CONSTRAINT blog_langpost_author_id_3510bb37_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_page blog_page_parent_id_8a37dcb6_fk_blog_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_page
    ADD CONSTRAINT blog_page_parent_id_8a37dcb6_fk_blog_page_id FOREIGN KEY (parent_id) REFERENCES public.blog_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_author_id_dd7a8485_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_author_id_dd7a8485_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_category_id_c326dbf8_fk_blog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT blog_post_category_id_c326dbf8_fk_blog_category_id FOREIGN KEY (category_id) REFERENCES public.blog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_favourites blog_post_favourites_post_id_bfac44cf_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_favourites
    ADD CONSTRAINT blog_post_favourites_post_id_bfac44cf_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_favourites blog_post_favourites_user_id_1f52fbf7_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_favourites
    ADD CONSTRAINT blog_post_favourites_user_id_1f52fbf7_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post blog_post_languageName_id_1545cd45_fk_blog_langpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post
    ADD CONSTRAINT "blog_post_languageName_id_1545cd45_fk_blog_langpost_id" FOREIGN KEY ("languageName_id") REFERENCES public.blog_langpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_likes blog_post_likes_post_id_d038881a_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_likes
    ADD CONSTRAINT blog_post_likes_post_id_d038881a_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_likes blog_post_likes_user_id_bfe15394_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_likes
    ADD CONSTRAINT blog_post_likes_user_id_bfe15394_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_thumbs blog_post_thumbs_post_id_50dcf186_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_thumbs
    ADD CONSTRAINT blog_post_thumbs_post_id_50dcf186_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_post_thumbs blog_post_thumbs_user_id_309a8381_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_post_thumbs
    ADD CONSTRAINT blog_post_thumbs_user_id_309a8381_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_vote blog_vote_post_id_107f3e22_fk_blog_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_vote
    ADD CONSTRAINT blog_vote_post_id_107f3e22_fk_blog_post_id FOREIGN KEY (post_id) REFERENCES public.blog_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_vote blog_vote_user_id_505c7f27_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_vote
    ADD CONSTRAINT blog_vote_user_id_505c7f27_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_category boards_category_parent_id_b59f33b8_fk_boards_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_category
    ADD CONSTRAINT boards_category_parent_id_b59f33b8_fk_boards_category_id FOREIGN KEY (parent_id) REFERENCES public.boards_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_commentt_NotfFaId boards_commentt_NotfFaId_user_id_83aa3d89_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_commentt_NotfFaId"
    ADD CONSTRAINT "boards_commentt_NotfFaId_user_id_83aa3d89_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_commentt_NotfFaId boards_commentt_Notf_commentt_id_471586ba_fk_boards_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_commentt_NotfFaId"
    ADD CONSTRAINT "boards_commentt_Notf_commentt_id_471586ba_fk_boards_co" FOREIGN KEY (commentt_id) REFERENCES public.boards_commentt(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_commentt boards_commentt_Topic_id_6e6040cc_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_commentt
    ADD CONSTRAINT "boards_commentt_Topic_id_6e6040cc_fk_boards_topic_id" FOREIGN KEY ("Topic_id") REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_commentt boards_commentt_author_id_3f25d14b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_commentt
    ADD CONSTRAINT boards_commentt_author_id_3f25d14b_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_commentt boards_commentt_parent_id_499bfc31_fk_boards_commentt_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_commentt
    ADD CONSTRAINT boards_commentt_parent_id_499bfc31_fk_boards_commentt_id FOREIGN KEY (parent_id) REFERENCES public.boards_commentt(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_favtopic boards_favtopic_post_id_0f3175a6_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_favtopic
    ADD CONSTRAINT boards_favtopic_post_id_0f3175a6_fk_boards_topic_id FOREIGN KEY (post_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_favtopic boards_favtopic_user_id_0a0f7443_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_favtopic
    ADD CONSTRAINT boards_favtopic_user_id_0a0f7443_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_notification boards_notification_user_id_5bf1276d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_notification
    ADD CONSTRAINT boards_notification_user_id_5bf1276d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_NotfFaV boards_topic_NotfFaV_topic_id_903f5c5f_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_topic_NotfFaV"
    ADD CONSTRAINT "boards_topic_NotfFaV_topic_id_903f5c5f_fk_boards_topic_id" FOREIGN KEY (topic_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_NotfFaV boards_topic_NotfFaV_user_id_de6e3ecd_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."boards_topic_NotfFaV"
    ADD CONSTRAINT "boards_topic_NotfFaV_user_id_de6e3ecd_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic boards_topic_author_id_6d3a5cd8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_author_id_6d3a5cd8_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic boards_topic_category_id_342e47ba_fk_boards_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_category_id_342e47ba_fk_boards_category_id FOREIGN KEY (category_id) REFERENCES public.boards_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_favourites boards_topic_favourites_topic_id_6672ea17_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_favourites
    ADD CONSTRAINT boards_topic_favourites_topic_id_6672ea17_fk_boards_topic_id FOREIGN KEY (topic_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_favourites boards_topic_favourites_user_id_6d84894c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_favourites
    ADD CONSTRAINT boards_topic_favourites_user_id_6d84894c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic boards_topic_languageName_id_f25f51db_fk_boards_topiclang_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT "boards_topic_languageName_id_f25f51db_fk_boards_topiclang_id" FOREIGN KEY ("languageName_id") REFERENCES public.boards_topiclang(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_likes boards_topic_likes_topic_id_8abe51ef_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_likes
    ADD CONSTRAINT boards_topic_likes_topic_id_8abe51ef_fk_boards_topic_id FOREIGN KEY (topic_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_likes boards_topic_likes_user_id_127588f9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_likes
    ADD CONSTRAINT boards_topic_likes_user_id_127588f9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_thumbs boards_topic_thumbs_topic_id_a36ed041_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_thumbs
    ADD CONSTRAINT boards_topic_thumbs_topic_id_a36ed041_fk_boards_topic_id FOREIGN KEY (topic_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topic_thumbs boards_topic_thumbs_user_id_669d13ef_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic_thumbs
    ADD CONSTRAINT boards_topic_thumbs_user_id_669d13ef_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_topiclang boards_topiclang_author_id_82006b9a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topiclang
    ADD CONSTRAINT boards_topiclang_author_id_82006b9a_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_votet boards_votet_Topic_id_99ff0470_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_votet
    ADD CONSTRAINT "boards_votet_Topic_id_99ff0470_fk_boards_topic_id" FOREIGN KEY ("Topic_id") REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: boards_votet boards_votet_user_id_8790eac7_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_votet
    ADD CONSTRAINT boards_votet_user_id_8790eac7_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_category categories_category_parent_id_f141de59_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_category
    ADD CONSTRAINT categories_category_parent_id_f141de59_fk_categorie FOREIGN KEY (parent_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categoryrelation categories_categoryr_category_id_e5e686b2_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categoryrelation
    ADD CONSTRAINT categories_categoryr_category_id_e5e686b2_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categoryrelation categories_categoryr_content_type_id_f686b696_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categoryrelation
    ADD CONSTRAINT categories_categoryr_content_type_id_f686b696_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_allowed robots_rule_allowed_rule_id_aa90358c_fk_robots_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_rule_id_aa90358c_fk_robots_rule_id FOREIGN KEY (rule_id) REFERENCES public.robots_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_allowed robots_rule_allowed_url_id_6157f60a_fk_robots_url_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_url_id_6157f60a_fk_robots_url_id FOREIGN KEY (url_id) REFERENCES public.robots_url(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_disallowed robots_rule_disallowed_rule_id_fad7328c_fk_robots_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_rule_id_fad7328c_fk_robots_rule_id FOREIGN KEY (rule_id) REFERENCES public.robots_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_disallowed robots_rule_disallowed_url_id_8e02db92_fk_robots_url_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_url_id_8e02db92_fk_robots_url_id FOREIGN KEY (url_id) REFERENCES public.robots_url(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_sites robots_rule_sites_rule_id_7921a799_fk_robots_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_rule_id_7921a799_fk_robots_rule_id FOREIGN KEY (rule_id) REFERENCES public.robots_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_sites robots_rule_sites_site_id_efe5be97_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_site_id_efe5be97_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES public.taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

