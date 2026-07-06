--
-- PostgreSQL database dump
--

\restrict cvTv4Ahzon6FqGurMp5OU1hNaX0nmgagf6C8TJW9AFzktNUjBQx0swewMakDhhV

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.14

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
-- Name: ab_permission; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_permission (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.ab_permission OWNER TO indusflow_admin;

--
-- Name: ab_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_permission_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_permission_id_seq OWNED BY public.ab_permission.id;


--
-- Name: ab_permission_view; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_permission_view (
    id integer NOT NULL,
    permission_id integer,
    view_menu_id integer
);


ALTER TABLE public.ab_permission_view OWNER TO indusflow_admin;

--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_permission_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_permission_view_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_permission_view_id_seq OWNED BY public.ab_permission_view.id;


--
-- Name: ab_permission_view_role; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_permission_view_role (
    id integer NOT NULL,
    permission_view_id integer,
    role_id integer
);


ALTER TABLE public.ab_permission_view_role OWNER TO indusflow_admin;

--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_permission_view_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_permission_view_role_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_permission_view_role_id_seq OWNED BY public.ab_permission_view_role.id;


--
-- Name: ab_register_user; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_register_user (
    id integer NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    username character varying(512) NOT NULL,
    password character varying(256),
    email character varying(512) NOT NULL,
    registration_date timestamp without time zone,
    registration_hash character varying(256)
);


ALTER TABLE public.ab_register_user OWNER TO indusflow_admin;

--
-- Name: ab_register_user_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_register_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_register_user_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_register_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_register_user_id_seq OWNED BY public.ab_register_user.id;


--
-- Name: ab_role; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_role (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.ab_role OWNER TO indusflow_admin;

--
-- Name: ab_role_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_role_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_role_id_seq OWNED BY public.ab_role.id;


--
-- Name: ab_user; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_user (
    id integer NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    username character varying(512) NOT NULL,
    password character varying(256),
    active boolean,
    email character varying(512) NOT NULL,
    last_login timestamp without time zone,
    login_count integer,
    fail_login_count integer,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer
);


ALTER TABLE public.ab_user OWNER TO indusflow_admin;

--
-- Name: ab_user_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_user_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_user_id_seq OWNED BY public.ab_user.id;


--
-- Name: ab_user_role; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_user_role (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.ab_user_role OWNER TO indusflow_admin;

--
-- Name: ab_user_role_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_user_role_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_user_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_user_role_id_seq OWNED BY public.ab_user_role.id;


--
-- Name: ab_view_menu; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.ab_view_menu (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.ab_view_menu OWNER TO indusflow_admin;

--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.ab_view_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ab_view_menu_id_seq OWNER TO indusflow_admin;

--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.ab_view_menu_id_seq OWNED BY public.ab_view_menu.id;


--
-- Name: acces_utilisateurs; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.acces_utilisateurs (
    user_id integer NOT NULL,
    username character varying(100) NOT NULL,
    role character varying(50),
    is_active integer,
    last_login timestamp without time zone
);


ALTER TABLE public.acces_utilisateurs OWNER TO indusflow_admin;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO indusflow_admin;

--
-- Name: alertes_monitoring; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.alertes_monitoring (
    alert_id integer NOT NULL,
    system_name character varying(50),
    severity character varying(20),
    metric_name character varying(50),
    metric_value numeric(10,2),
    resolved integer,
    alert_timestamp timestamp without time zone NOT NULL
);


ALTER TABLE public.alertes_monitoring OWNER TO indusflow_admin;

--
-- Name: callback_request; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.callback_request (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    priority_weight integer NOT NULL,
    callback_data json NOT NULL,
    callback_type character varying(20) NOT NULL,
    processor_subdir character varying(2000)
);


ALTER TABLE public.callback_request OWNER TO indusflow_admin;

--
-- Name: callback_request_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.callback_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.callback_request_id_seq OWNER TO indusflow_admin;

--
-- Name: callback_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.callback_request_id_seq OWNED BY public.callback_request.id;


--
-- Name: cameras_qualite; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.cameras_qualite (
    camera_event_id integer NOT NULL,
    machine_id character varying(50) NOT NULL,
    defect_detected integer,
    confidence_score numeric(4,2),
    "timestamp" timestamp without time zone NOT NULL
);


ALTER TABLE public.cameras_qualite OWNER TO indusflow_admin;

--
-- Name: capteurs_machines; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.capteurs_machines (
    sensor_id integer NOT NULL,
    machine_id character varying(50) NOT NULL,
    temperature_c numeric(6,2),
    vibration_level numeric(6,2),
    pressure_bar numeric(6,2),
    "timestamp" timestamp without time zone NOT NULL
);


ALTER TABLE public.capteurs_machines OWNER TO indusflow_admin;

--
-- Name: clients_industriels; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.clients_industriels (
    client_id integer NOT NULL,
    client_name character varying(100) NOT NULL,
    sector character varying(100),
    country character varying(100)
);


ALTER TABLE public.clients_industriels OWNER TO indusflow_admin;

--
-- Name: connection; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.connection (
    id integer NOT NULL,
    conn_id character varying(250) NOT NULL,
    conn_type character varying(500) NOT NULL,
    description text,
    host character varying(500),
    schema character varying(500),
    login text,
    password text,
    port integer,
    is_encrypted boolean,
    is_extra_encrypted boolean,
    extra text
);


ALTER TABLE public.connection OWNER TO indusflow_admin;

--
-- Name: connection_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.connection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.connection_id_seq OWNER TO indusflow_admin;

--
-- Name: connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.connection_id_seq OWNED BY public.connection.id;


--
-- Name: cycles_production; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.cycles_production (
    cycle_id integer NOT NULL,
    factory_id integer,
    product_id integer,
    client_id integer,
    production_time_sec integer,
    cycle_timestamp timestamp without time zone NOT NULL
);


ALTER TABLE public.cycles_production OWNER TO indusflow_admin;

--
-- Name: dag; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag (
    dag_id character varying(250) NOT NULL,
    root_dag_id character varying(250),
    is_paused boolean,
    is_subdag boolean,
    is_active boolean,
    last_parsed_time timestamp with time zone,
    last_pickled timestamp with time zone,
    last_expired timestamp with time zone,
    scheduler_lock boolean,
    pickle_id integer,
    fileloc character varying(2000),
    processor_subdir character varying(2000),
    owners character varying(2000),
    dag_display_name character varying(2000),
    description text,
    default_view character varying(25),
    schedule_interval text,
    timetable_description character varying(1000),
    dataset_expression json,
    max_active_tasks integer NOT NULL,
    max_active_runs integer,
    max_consecutive_failed_dag_runs integer NOT NULL,
    has_task_concurrency_limits boolean NOT NULL,
    has_import_errors boolean DEFAULT false,
    next_dagrun timestamp with time zone,
    next_dagrun_data_interval_start timestamp with time zone,
    next_dagrun_data_interval_end timestamp with time zone,
    next_dagrun_create_after timestamp with time zone
);


ALTER TABLE public.dag OWNER TO indusflow_admin;

--
-- Name: dag_code; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_code (
    fileloc_hash bigint NOT NULL,
    fileloc character varying(2000) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    source_code text NOT NULL
);


ALTER TABLE public.dag_code OWNER TO indusflow_admin;

--
-- Name: dag_owner_attributes; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_owner_attributes (
    dag_id character varying(250) NOT NULL,
    owner character varying(500) NOT NULL,
    link character varying(500) NOT NULL
);


ALTER TABLE public.dag_owner_attributes OWNER TO indusflow_admin;

--
-- Name: dag_pickle; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_pickle (
    id integer NOT NULL,
    pickle bytea,
    created_dttm timestamp with time zone,
    pickle_hash bigint
);


ALTER TABLE public.dag_pickle OWNER TO indusflow_admin;

--
-- Name: dag_pickle_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.dag_pickle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dag_pickle_id_seq OWNER TO indusflow_admin;

--
-- Name: dag_pickle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.dag_pickle_id_seq OWNED BY public.dag_pickle.id;


--
-- Name: dag_run; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_run (
    id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    queued_at timestamp with time zone,
    execution_date timestamp with time zone NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    state character varying(50),
    run_id character varying(250) NOT NULL,
    creating_job_id integer,
    external_trigger boolean,
    run_type character varying(50) NOT NULL,
    conf bytea,
    data_interval_start timestamp with time zone,
    data_interval_end timestamp with time zone,
    last_scheduling_decision timestamp with time zone,
    dag_hash character varying(32),
    log_template_id integer,
    updated_at timestamp with time zone,
    clear_number integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.dag_run OWNER TO indusflow_admin;

--
-- Name: dag_run_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.dag_run_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dag_run_id_seq OWNER TO indusflow_admin;

--
-- Name: dag_run_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.dag_run_id_seq OWNED BY public.dag_run.id;


--
-- Name: dag_run_note; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_run_note (
    user_id integer,
    dag_run_id integer NOT NULL,
    content character varying(1000),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.dag_run_note OWNER TO indusflow_admin;

--
-- Name: dag_schedule_dataset_reference; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_schedule_dataset_reference (
    dataset_id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.dag_schedule_dataset_reference OWNER TO indusflow_admin;

--
-- Name: dag_tag; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_tag (
    name character varying(100) NOT NULL,
    dag_id character varying(250) NOT NULL
);


ALTER TABLE public.dag_tag OWNER TO indusflow_admin;

--
-- Name: dag_warning; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dag_warning (
    dag_id character varying(250) NOT NULL,
    warning_type character varying(50) NOT NULL,
    message text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.dag_warning OWNER TO indusflow_admin;

--
-- Name: dagrun_dataset_event; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dagrun_dataset_event (
    dag_run_id integer NOT NULL,
    event_id integer NOT NULL
);


ALTER TABLE public.dagrun_dataset_event OWNER TO indusflow_admin;

--
-- Name: dataset; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dataset (
    id integer NOT NULL,
    uri character varying(3000) NOT NULL,
    extra json NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_orphaned boolean DEFAULT false NOT NULL
);


ALTER TABLE public.dataset OWNER TO indusflow_admin;

--
-- Name: dataset_dag_run_queue; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dataset_dag_run_queue (
    dataset_id integer NOT NULL,
    target_dag_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.dataset_dag_run_queue OWNER TO indusflow_admin;

--
-- Name: dataset_event; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.dataset_event (
    id integer NOT NULL,
    dataset_id integer NOT NULL,
    extra json NOT NULL,
    source_task_id character varying(250),
    source_dag_id character varying(250),
    source_run_id character varying(250),
    source_map_index integer DEFAULT '-1'::integer,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.dataset_event OWNER TO indusflow_admin;

--
-- Name: dataset_event_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.dataset_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataset_event_id_seq OWNER TO indusflow_admin;

--
-- Name: dataset_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.dataset_event_id_seq OWNED BY public.dataset_event.id;


--
-- Name: dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.dataset_id_seq OWNER TO indusflow_admin;

--
-- Name: dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.dataset_id_seq OWNED BY public.dataset.id;


--
-- Name: etapes_fabrication; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.etapes_fabrication (
    cycle_id integer NOT NULL,
    step_name character varying(100) NOT NULL,
    duration_sec integer,
    machine_id character varying(50)
);


ALTER TABLE public.etapes_fabrication OWNER TO indusflow_admin;

--
-- Name: import_error; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.import_error (
    id integer NOT NULL,
    "timestamp" timestamp with time zone,
    filename character varying(1024),
    stacktrace text,
    processor_subdir character varying(2000)
);


ALTER TABLE public.import_error OWNER TO indusflow_admin;

--
-- Name: import_error_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.import_error_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.import_error_id_seq OWNER TO indusflow_admin;

--
-- Name: import_error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.import_error_id_seq OWNED BY public.import_error.id;


--
-- Name: job; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.job (
    id integer NOT NULL,
    dag_id character varying(250),
    state character varying(20),
    job_type character varying(30),
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    latest_heartbeat timestamp with time zone,
    executor_class character varying(500),
    hostname character varying(500),
    unixname character varying(1000)
);


ALTER TABLE public.job OWNER TO indusflow_admin;

--
-- Name: job_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.job_id_seq OWNER TO indusflow_admin;

--
-- Name: job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.job_id_seq OWNED BY public.job.id;


--
-- Name: log; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.log (
    id integer NOT NULL,
    dttm timestamp with time zone,
    dag_id character varying(250),
    task_id character varying(250),
    map_index integer,
    event character varying(60),
    execution_date timestamp with time zone,
    run_id character varying(250),
    owner character varying(500),
    owner_display_name character varying(500),
    extra text
);


ALTER TABLE public.log OWNER TO indusflow_admin;

--
-- Name: log_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_id_seq OWNER TO indusflow_admin;

--
-- Name: log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.log_id_seq OWNED BY public.log.id;


--
-- Name: log_template; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.log_template (
    id integer NOT NULL,
    filename text NOT NULL,
    elasticsearch_id text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.log_template OWNER TO indusflow_admin;

--
-- Name: log_template_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.log_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_template_id_seq OWNER TO indusflow_admin;

--
-- Name: log_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.log_template_id_seq OWNED BY public.log_template.id;


--
-- Name: logs_erreurs_machines; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.logs_erreurs_machines (
    log_id integer NOT NULL,
    machine_id character varying(50) NOT NULL,
    error_code character varying(10),
    severity character varying(20),
    event_timestamp timestamp without time zone NOT NULL,
    resolved integer,
    resolution_time_min integer
);


ALTER TABLE public.logs_erreurs_machines OWNER TO indusflow_admin;

--
-- Name: logs_jobs_airflow; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.logs_jobs_airflow (
    job_id integer NOT NULL,
    dag_name character varying(100) NOT NULL,
    execution_date timestamp without time zone NOT NULL,
    duration_sec integer,
    status character varying(50),
    rows_processed numeric(12,2)
);


ALTER TABLE public.logs_jobs_airflow OWNER TO indusflow_admin;

--
-- Name: maintenance_machines; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.maintenance_machines (
    maintenance_id integer NOT NULL,
    machine_id character varying(50),
    maintenance_type character varying(50),
    maintenance_start timestamp without time zone,
    duration_min integer,
    maintenance_end timestamp without time zone,
    technician_id character varying(50),
    cost_eur numeric(10,2),
    status character varying(50)
);


ALTER TABLE public.maintenance_machines OWNER TO indusflow_admin;

--
-- Name: pieces_detachees; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.pieces_detachees (
    part_id integer NOT NULL,
    part_name character varying(100),
    machine_id character varying(50),
    supplier character varying(100),
    stock_qty integer,
    reorder_threshold integer,
    unit_price_eur numeric(10,2),
    last_restock_date timestamp without time zone
);


ALTER TABLE public.pieces_detachees OWNER TO indusflow_admin;

--
-- Name: planning_production; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.planning_production (
    plan_id integer NOT NULL,
    factory_id integer,
    product_id integer,
    planned_start timestamp without time zone,
    planned_end timestamp without time zone,
    planned_quantity integer,
    priority character varying(20),
    status character varying(50)
);


ALTER TABLE public.planning_production OWNER TO indusflow_admin;

--
-- Name: produits; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.produits (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    category character varying(50),
    unit_cost numeric(10,2)
);


ALTER TABLE public.produits OWNER TO indusflow_admin;

--
-- Name: rendered_task_instance_fields; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.rendered_task_instance_fields (
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    rendered_fields json NOT NULL,
    k8s_pod_yaml json
);


ALTER TABLE public.rendered_task_instance_fields OWNER TO indusflow_admin;

--
-- Name: serialized_dag; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.serialized_dag (
    dag_id character varying(250) NOT NULL,
    fileloc character varying(2000) NOT NULL,
    fileloc_hash bigint NOT NULL,
    data json,
    data_compressed bytea,
    last_updated timestamp with time zone NOT NULL,
    dag_hash character varying(32) NOT NULL,
    processor_subdir character varying(2000)
);


ALTER TABLE public.serialized_dag OWNER TO indusflow_admin;

--
-- Name: session; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.session (
    id integer NOT NULL,
    session_id character varying(255),
    data bytea,
    expiry timestamp without time zone
);


ALTER TABLE public.session OWNER TO indusflow_admin;

--
-- Name: session_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.session_id_seq OWNER TO indusflow_admin;

--
-- Name: session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.session_id_seq OWNED BY public.session.id;


--
-- Name: sla_miss; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.sla_miss (
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    execution_date timestamp with time zone NOT NULL,
    email_sent boolean,
    "timestamp" timestamp with time zone,
    description text,
    notification_sent boolean
);


ALTER TABLE public.sla_miss OWNER TO indusflow_admin;

--
-- Name: slot_pool; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.slot_pool (
    id integer NOT NULL,
    pool character varying(256),
    slots integer,
    description text,
    include_deferred boolean NOT NULL
);


ALTER TABLE public.slot_pool OWNER TO indusflow_admin;

--
-- Name: slot_pool_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.slot_pool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.slot_pool_id_seq OWNER TO indusflow_admin;

--
-- Name: slot_pool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.slot_pool_id_seq OWNED BY public.slot_pool.id;


--
-- Name: spark_error_aggregates; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.spark_error_aggregates (
    machine_id text,
    severity text,
    total_errors bigint NOT NULL,
    avg_resolution_time_min double precision
);


ALTER TABLE public.spark_error_aggregates OWNER TO indusflow_admin;

--
-- Name: spark_sensor_aggregates; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.spark_sensor_aggregates (
    machine_id text,
    total_readings bigint NOT NULL,
    avg_temperature double precision,
    min_temperature double precision,
    max_temperature double precision,
    avg_vibration double precision,
    avg_pressure double precision
);


ALTER TABLE public.spark_sensor_aggregates OWNER TO indusflow_admin;

--
-- Name: task_fail; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.task_fail (
    id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    duration integer
);


ALTER TABLE public.task_fail OWNER TO indusflow_admin;

--
-- Name: task_fail_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.task_fail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.task_fail_id_seq OWNER TO indusflow_admin;

--
-- Name: task_fail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.task_fail_id_seq OWNED BY public.task_fail.id;


--
-- Name: task_instance; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.task_instance (
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    duration double precision,
    state character varying(20),
    try_number integer,
    max_tries integer DEFAULT '-1'::integer,
    hostname character varying(1000),
    unixname character varying(1000),
    job_id integer,
    pool character varying(256) NOT NULL,
    pool_slots integer NOT NULL,
    queue character varying(256),
    priority_weight integer,
    operator character varying(1000),
    custom_operator_name character varying(1000),
    queued_dttm timestamp with time zone,
    queued_by_job_id integer,
    pid integer,
    executor_config bytea,
    updated_at timestamp with time zone,
    rendered_map_index character varying(250),
    external_executor_id character varying(250),
    trigger_id integer,
    trigger_timeout timestamp without time zone,
    next_method character varying(1000),
    next_kwargs json,
    task_display_name character varying(2000)
);


ALTER TABLE public.task_instance OWNER TO indusflow_admin;

--
-- Name: task_instance_note; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.task_instance_note (
    user_id integer,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer NOT NULL,
    content character varying(1000),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.task_instance_note OWNER TO indusflow_admin;

--
-- Name: task_map; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.task_map (
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer NOT NULL,
    length integer NOT NULL,
    keys json,
    CONSTRAINT ck_task_map_task_map_length_not_negative CHECK ((length >= 0))
);


ALTER TABLE public.task_map OWNER TO indusflow_admin;

--
-- Name: task_outlet_dataset_reference; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.task_outlet_dataset_reference (
    dataset_id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.task_outlet_dataset_reference OWNER TO indusflow_admin;

--
-- Name: task_reschedule; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.task_reschedule (
    id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    try_number integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    duration integer NOT NULL,
    reschedule_date timestamp with time zone NOT NULL
);


ALTER TABLE public.task_reschedule OWNER TO indusflow_admin;

--
-- Name: task_reschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.task_reschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.task_reschedule_id_seq OWNER TO indusflow_admin;

--
-- Name: task_reschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.task_reschedule_id_seq OWNED BY public.task_reschedule.id;


--
-- Name: trigger; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.trigger (
    id integer NOT NULL,
    classpath character varying(1000) NOT NULL,
    kwargs text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    triggerer_id integer
);


ALTER TABLE public.trigger OWNER TO indusflow_admin;

--
-- Name: trigger_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.trigger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trigger_id_seq OWNER TO indusflow_admin;

--
-- Name: trigger_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.trigger_id_seq OWNED BY public.trigger.id;


--
-- Name: usines; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.usines (
    factory_id integer NOT NULL,
    factory_name character varying(100) NOT NULL,
    city character varying(100),
    country character varying(100)
);


ALTER TABLE public.usines OWNER TO indusflow_admin;

--
-- Name: variable; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.variable (
    id integer NOT NULL,
    key character varying(250),
    val text,
    description text,
    is_encrypted boolean
);


ALTER TABLE public.variable OWNER TO indusflow_admin;

--
-- Name: variable_id_seq; Type: SEQUENCE; Schema: public; Owner: indusflow_admin
--

CREATE SEQUENCE public.variable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.variable_id_seq OWNER TO indusflow_admin;

--
-- Name: variable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: indusflow_admin
--

ALTER SEQUENCE public.variable_id_seq OWNED BY public.variable.id;


--
-- Name: xcom; Type: TABLE; Schema: public; Owner: indusflow_admin
--

CREATE TABLE public.xcom (
    dag_run_id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    key character varying(512) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    value bytea,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.xcom OWNER TO indusflow_admin;

--
-- Name: ab_permission id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_id_seq'::regclass);


--
-- Name: ab_permission_view id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_view_id_seq'::regclass);


--
-- Name: ab_permission_view_role id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view_role ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_view_role_id_seq'::regclass);


--
-- Name: ab_register_user id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_register_user ALTER COLUMN id SET DEFAULT nextval('public.ab_register_user_id_seq'::regclass);


--
-- Name: ab_role id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_role ALTER COLUMN id SET DEFAULT nextval('public.ab_role_id_seq'::regclass);


--
-- Name: ab_user id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user ALTER COLUMN id SET DEFAULT nextval('public.ab_user_id_seq'::regclass);


--
-- Name: ab_user_role id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user_role ALTER COLUMN id SET DEFAULT nextval('public.ab_user_role_id_seq'::regclass);


--
-- Name: ab_view_menu id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_view_menu ALTER COLUMN id SET DEFAULT nextval('public.ab_view_menu_id_seq'::regclass);


--
-- Name: callback_request id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.callback_request ALTER COLUMN id SET DEFAULT nextval('public.callback_request_id_seq'::regclass);


--
-- Name: connection id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.connection ALTER COLUMN id SET DEFAULT nextval('public.connection_id_seq'::regclass);


--
-- Name: dag_pickle id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_pickle ALTER COLUMN id SET DEFAULT nextval('public.dag_pickle_id_seq'::regclass);


--
-- Name: dag_run id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run ALTER COLUMN id SET DEFAULT nextval('public.dag_run_id_seq'::regclass);


--
-- Name: dataset id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dataset ALTER COLUMN id SET DEFAULT nextval('public.dataset_id_seq'::regclass);


--
-- Name: dataset_event id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dataset_event ALTER COLUMN id SET DEFAULT nextval('public.dataset_event_id_seq'::regclass);


--
-- Name: import_error id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.import_error ALTER COLUMN id SET DEFAULT nextval('public.import_error_id_seq'::regclass);


--
-- Name: job id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.job ALTER COLUMN id SET DEFAULT nextval('public.job_id_seq'::regclass);


--
-- Name: log id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.log ALTER COLUMN id SET DEFAULT nextval('public.log_id_seq'::regclass);


--
-- Name: log_template id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.log_template ALTER COLUMN id SET DEFAULT nextval('public.log_template_id_seq'::regclass);


--
-- Name: session id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.session ALTER COLUMN id SET DEFAULT nextval('public.session_id_seq'::regclass);


--
-- Name: slot_pool id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.slot_pool ALTER COLUMN id SET DEFAULT nextval('public.slot_pool_id_seq'::regclass);


--
-- Name: task_fail id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_fail ALTER COLUMN id SET DEFAULT nextval('public.task_fail_id_seq'::regclass);


--
-- Name: task_reschedule id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_reschedule ALTER COLUMN id SET DEFAULT nextval('public.task_reschedule_id_seq'::regclass);


--
-- Name: trigger id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.trigger ALTER COLUMN id SET DEFAULT nextval('public.trigger_id_seq'::regclass);


--
-- Name: variable id; Type: DEFAULT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.variable ALTER COLUMN id SET DEFAULT nextval('public.variable_id_seq'::regclass);


--
-- Data for Name: ab_permission; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_permission (id, name) FROM stdin;
1	can_edit
2	can_read
3	can_create
4	can_delete
5	menu_access
\.


--
-- Data for Name: ab_permission_view; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_permission_view (id, permission_id, view_menu_id) FROM stdin;
1	1	4
2	2	4
3	1	5
4	2	5
5	1	6
6	2	6
7	3	8
8	2	8
9	1	8
10	4	8
11	5	9
12	5	10
13	3	11
14	2	11
15	1	11
16	4	11
17	5	12
18	2	13
19	5	14
20	2	15
21	5	16
22	2	17
23	5	18
24	2	19
25	5	20
26	2	21
27	4	21
28	1	21
29	3	24
30	2	24
31	1	24
32	4	24
33	5	24
34	5	25
35	2	26
36	5	26
37	2	27
38	5	27
39	3	28
40	2	28
41	1	28
42	4	28
43	5	28
44	5	29
45	3	30
46	2	30
47	1	30
48	4	30
49	5	30
50	2	31
51	5	31
52	2	32
53	5	32
54	2	33
55	5	33
56	3	34
57	2	34
58	1	34
59	4	34
60	5	34
61	2	35
62	5	35
63	4	35
64	1	35
65	2	36
66	5	36
67	2	37
68	5	37
69	3	38
70	2	38
71	1	38
72	4	38
73	5	38
74	2	39
75	4	39
76	5	39
77	5	41
78	5	45
79	5	46
80	5	47
81	5	48
82	5	49
83	2	45
84	4	45
85	1	45
86	2	41
87	2	50
88	2	47
89	2	46
90	2	51
91	2	52
92	2	53
93	2	54
94	3	47
95	4	47
\.


--
-- Data for Name: ab_permission_view_role; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_permission_view_role (id, permission_view_id, role_id) FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	1
9	9	1
10	10	1
11	11	1
12	12	1
13	13	1
14	14	1
15	15	1
16	16	1
17	17	1
18	18	1
19	19	1
20	20	1
21	21	1
22	22	1
23	23	1
24	24	1
25	25	1
26	29	1
27	30	1
28	31	1
29	32	1
30	33	1
31	34	1
32	35	1
33	36	1
34	37	1
35	38	1
36	39	1
37	40	1
38	41	1
39	42	1
40	43	1
41	44	1
42	45	1
43	46	1
44	47	1
45	48	1
46	49	1
47	50	1
48	51	1
49	52	1
50	53	1
51	54	1
52	55	1
53	56	1
54	57	1
55	58	1
56	59	1
57	60	1
58	61	1
59	62	1
60	63	1
61	64	1
62	65	1
63	66	1
64	67	1
65	68	1
66	69	1
67	70	1
68	71	1
69	72	1
70	73	1
71	74	1
72	75	1
73	76	1
74	77	1
75	78	1
76	79	1
77	80	1
78	81	1
79	82	1
80	83	3
81	86	3
82	87	3
83	30	3
84	88	3
85	89	3
86	70	3
87	90	3
88	91	3
89	35	3
90	4	3
91	3	3
92	6	3
93	5	3
94	61	3
95	46	3
96	92	3
97	74	3
98	93	3
99	34	3
100	78	3
101	77	3
102	33	3
103	80	3
104	79	3
105	81	3
106	82	3
107	36	3
108	62	3
109	49	3
110	83	4
111	86	4
112	87	4
113	30	4
114	88	4
115	89	4
116	70	4
117	90	4
118	91	4
119	35	4
120	4	4
121	3	4
122	6	4
123	5	4
124	61	4
125	46	4
126	92	4
127	74	4
128	93	4
129	34	4
130	78	4
131	77	4
132	33	4
133	80	4
134	79	4
135	81	4
136	82	4
137	36	4
138	62	4
139	49	4
140	85	4
141	84	4
142	45	4
143	47	4
144	48	4
145	29	4
146	31	4
147	32	4
148	94	4
149	83	5
150	86	5
151	87	5
152	30	5
153	88	5
154	89	5
155	70	5
156	90	5
157	91	5
158	35	5
159	4	5
160	3	5
161	6	5
162	5	5
163	61	5
164	46	5
165	92	5
166	74	5
167	93	5
168	34	5
169	78	5
170	77	5
171	33	5
172	80	5
173	79	5
174	81	5
175	82	5
176	36	5
177	62	5
178	49	5
179	85	5
180	84	5
181	45	5
182	47	5
183	48	5
184	29	5
185	31	5
186	32	5
187	94	5
188	54	5
189	44	5
190	55	5
191	60	5
192	73	5
193	66	5
194	43	5
195	68	5
196	76	5
197	56	5
198	57	5
199	58	5
200	59	5
201	69	5
202	71	5
203	72	5
204	65	5
205	67	5
206	39	5
207	40	5
208	41	5
209	42	5
210	75	5
211	95	5
212	83	1
213	86	1
214	87	1
215	88	1
216	89	1
217	90	1
218	91	1
219	92	1
220	93	1
221	85	1
222	84	1
223	94	1
224	95	1
\.


--
-- Data for Name: ab_register_user; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_register_user (id, first_name, last_name, username, password, email, registration_date, registration_hash) FROM stdin;
\.


--
-- Data for Name: ab_role; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_role (id, name) FROM stdin;
1	Admin
2	Public
3	Viewer
4	User
5	Op
\.


--
-- Data for Name: ab_user; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_user (id, first_name, last_name, username, password, active, email, last_login, login_count, fail_login_count, created_on, changed_on, created_by_fk, changed_by_fk) FROM stdin;
1	Admin	Admin	admin	pbkdf2:sha256:260000$zxkxti8g3X1JOY1k$0795f0d298b30172f9d05fa143d79866a7d7375daab282ab97a261f08ac5dedf	t	admin@example.com	2026-07-06 14:40:14.109421	2	0	2026-07-06 14:30:56.323913	2026-07-06 14:30:56.323924	\N	\N
\.


--
-- Data for Name: ab_user_role; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_user_role (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: ab_view_menu; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.ab_view_menu (id, name) FROM stdin;
1	IndexView
2	UtilView
3	LocaleView
4	Passwords
5	My Password
6	My Profile
7	AuthDBView
8	Users
9	List Users
10	Security
11	Roles
12	List Roles
13	User Stats Chart
14	User's Statistics
15	Permissions
16	Actions
17	View Menus
18	Resources
19	Permission Views
20	Permission Pairs
21	DAG:indusflow_data_pipeline
22	AutocompleteView
23	Airflow
24	DAG Runs
25	Browse
26	Jobs
27	Audit Logs
28	Variables
29	Admin
30	Task Instances
31	Task Reschedules
32	Triggers
33	Configurations
34	Connections
35	SLA Misses
36	Plugins
37	Providers
38	Pools
39	XComs
40	DagDependenciesView
41	DAG Dependencies
42	RedocView
43	DevView
44	DocsView
45	DAGs
46	Cluster Activity
47	Datasets
48	Documentation
49	Docs
50	DAG Code
51	ImportError
52	DAG Warnings
53	Task Logs
54	Website
\.


--
-- Data for Name: acces_utilisateurs; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.acces_utilisateurs (user_id, username, role, is_active, last_login) FROM stdin;
1	admin	ADMIN	1	2024-06-05 20:30:20
2	data_eng_1	DATA_ENGINEER	1	2024-05-11 00:57:59
3	data_eng_2	\N	1	2024-11-14 05:15:28
4	analyst_1	ANALYST	1	2024-10-04 01:36:03
5	analyst_2	ANALYST	1	2024-08-31 12:03:48
6	ops_1	OPS	1	2024-05-21 00:15:35
7	manager_1	MANAGER	1	2024-08-04 17:51:24
8	auditor	AUDITOR	1	2024-06-30 00:11:32
9	guest_tmp	ADMIN	1	\N
\.


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.alembic_version (version_num) FROM stdin;
686269002441
\.


--
-- Data for Name: alertes_monitoring; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp) FROM stdin;
1	postgresql	WARNING	latency_ms	37.44	1	2024-07-24 19:56:18
2	postgresql	HIGH	failed_jobs	23.41	0	2024-03-03 17:54:02
3	spark_cluster	WARNING	disk_usage	7.31	1	2024-04-13 22:16:23
4	postgresql	\N	ram_usage	59.55	1	2024-07-01 16:00:58
5	spark_cluster	INFO	ram_usage	26.36	1	2024-11-13 20:13:41
6	airflow	INFO	failed_jobs	43.13	1	2024-11-21 09:00:14
7	spark_cluster	HIGH	latency_ms	150.00	1	2024-07-03 16:05:38
8	postgresql	WARNING	login_attempts	98.76	1	2024-04-18 06:14:05
9	api_prediction	WARNING	failed_jobs	150.00	1	2024-06-27 11:51:33
10	storage_node	CRITICAL	disk_usage	47.84	0	2024-01-06 10:34:08
11	auth_service	CRITICAL	login_attempts	64.26	0	2024-02-19 13:09:38
12	api_prediction	INFO	cpu_usage	84.92	1	2024-12-16 22:30:32
13	storage_node	INFO	disk_usage	70.15	1	2024-06-29 12:44:21
14	spark_cluster	WARNING	disk_usage	40.12	1	2024-03-27 05:56:46
15	api_prediction	INFO	ram_usage	54.68	0	2024-01-18 23:49:19
16	spark_cluster	INFO	ram_usage	5.01	1	2024-10-31 20:27:33
17	storage_node	INFO	failed_jobs	24.73	1	2024-02-02 08:51:50
18	storage_node	CRITICAL	cpu_usage	7.46	1	2024-09-02 15:28:21
19	auth_service	CRITICAL	ram_usage	86.13	1	2024-01-25 12:12:06
20	storage_node	WARNING	login_attempts	51.39	1	2024-10-19 04:31:38
21	storage_node	HIGH	ram_usage	52.03	1	2024-06-26 23:36:56
22	airflow	HIGH	login_attempts	23.23	1	2024-05-12 15:44:55
23	airflow	WARNING	cpu_usage	41.78	0	2024-12-09 02:17:11
24	airflow	CRITICAL	failed_jobs	74.87	1	2024-04-28 06:01:15
25	api_prediction	INFO	ram_usage	19.06	1	2024-07-28 20:29:27
26	auth_service	INFO	disk_usage	54.20	0	2024-12-25 04:17:14
27	airflow	CRITICAL	login_attempts	85.18	1	2024-11-17 23:47:11
28	postgresql	INFO	latency_ms	40.03	0	2024-04-13 14:11:46
29	spark_cluster	WARNING	cpu_usage	82.61	0	2024-08-21 16:17:39
30	spark_cluster	INFO	latency_ms	1.16	1	2024-08-05 02:02:35
31	postgresql	CRITICAL	failed_jobs	87.26	1	2024-02-13 09:03:52
32	storage_node	HIGH	failed_jobs	8.11	1	2024-06-15 07:10:33
33	postgresql	INFO	disk_usage	97.48	0	2024-09-27 10:30:30
34	api_prediction	WARNING	login_attempts	52.56	0	2024-07-05 13:01:16
35	storage_node	WARNING	disk_usage	48.00	1	2024-05-06 13:35:57
36	auth_service	INFO	disk_usage	69.71	1	2024-12-23 14:26:39
37	postgresql	INFO	failed_jobs	41.94	1	2024-11-06 12:17:54
38	api_prediction	WARNING	cpu_usage	81.61	1	2024-11-17 05:50:55
39	auth_service	INFO	failed_jobs	19.93	1	2024-09-25 02:02:28
40	api_prediction	INFO	disk_usage	66.91	1	2024-04-15 14:17:01
41	airflow	WARNING	login_attempts	10.09	0	2024-06-21 08:17:53
42	postgresql	WARNING	latency_ms	73.21	0	2024-11-18 12:08:04
43	storage_node	WARNING	login_attempts	22.35	0	2024-10-19 07:59:16
44	airflow	HIGH	failed_jobs	24.10	0	2024-03-26 19:12:07
45	api_prediction	WARNING	login_attempts	24.33	1	2024-01-15 02:36:00
46	postgresql	WARNING	latency_ms	23.88	1	2024-02-01 12:04:14
47	airflow	HIGH	disk_usage	81.73	1	2024-09-11 13:03:58
48	airflow	WARNING	failed_jobs	47.78	1	2024-11-25 06:32:35
49	airflow	HIGH	login_attempts	86.54	1	2024-02-25 13:58:26
50	postgresql	INFO	latency_ms	69.47	0	2024-11-20 04:56:05
51	storage_node	WARNING	ram_usage	35.07	1	2024-12-09 02:25:53
52	api_prediction	WARNING	disk_usage	77.56	1	2024-04-08 03:21:17
53	postgresql	HIGH	login_attempts	3.00	1	2024-08-10 14:23:23
54	postgresql	WARNING	disk_usage	58.10	1	2024-06-27 11:19:13
55	auth_service	CRITICAL	failed_jobs	85.03	1	2024-02-26 15:23:38
56	spark_cluster	HIGH	cpu_usage	67.95	0	2024-11-07 18:40:09
57	airflow	INFO	login_attempts	92.44	1	2024-05-25 07:16:50
58	spark_cluster	CRITICAL	disk_usage	25.12	1	2024-06-18 01:25:47
59	storage_node	WARNING	login_attempts	90.25	1	2024-04-21 14:58:15
60	auth_service	WARNING	ram_usage	40.41	1	2024-11-20 07:38:40
61	postgresql	WARNING	login_attempts	53.51	1	2024-01-29 12:23:35
62	storage_node	WARNING	failed_jobs	22.95	0	2024-05-09 11:23:34
63	auth_service	CRITICAL	login_attempts	49.43	0	2024-02-06 16:19:09
64	spark_cluster	INFO	latency_ms	48.26	1	2024-08-04 16:02:43
65	airflow	INFO	failed_jobs	4.92	0	2024-09-13 06:29:56
66	api_prediction	WARNING	disk_usage	32.93	1	2024-08-21 14:30:33
67	spark_cluster	INFO	disk_usage	86.81	1	2024-09-11 03:26:01
68	storage_node	INFO	disk_usage	12.88	1	2024-02-17 03:45:41
69	postgresql	WARNING	disk_usage	62.84	1	2024-07-25 00:47:35
70	spark_cluster	INFO	login_attempts	78.00	1	2024-09-22 20:09:27
71	spark_cluster	INFO	cpu_usage	29.13	0	2024-11-02 00:47:45
72	postgresql	CRITICAL	disk_usage	20.88	1	2024-05-01 14:36:27
73	storage_node	CRITICAL	disk_usage	11.84	0	2024-04-02 13:07:34
74	spark_cluster	INFO	disk_usage	85.38	1	2024-05-03 15:52:23
75	spark_cluster	CRITICAL	latency_ms	66.04	0	2024-11-05 02:51:00
76	spark_cluster	INFO	cpu_usage	6.36	1	2024-11-26 11:58:49
77	api_prediction	INFO	login_attempts	38.27	1	2024-08-12 05:55:30
78	spark_cluster	HIGH	latency_ms	39.45	1	2024-01-24 20:58:16
79	postgresql	WARNING	failed_jobs	17.54	1	2024-08-24 15:02:11
80	postgresql	WARNING	login_attempts	63.33	1	2024-05-28 00:33:11
81	postgresql	WARNING	ram_usage	59.67	1	2024-10-23 16:11:18
82	spark_cluster	\N	login_attempts	21.81	1	2024-03-06 01:48:24
83	storage_node	HIGH	disk_usage	17.74	1	2024-11-13 03:08:29
84	spark_cluster	WARNING	disk_usage	54.91	0	2024-04-30 05:58:28
85	airflow	INFO	ram_usage	78.49	1	2024-09-02 14:54:53
86	storage_node	WARNING	disk_usage	28.88	0	2024-11-14 22:16:18
87	api_prediction	WARNING	disk_usage	73.14	0	2024-05-26 06:41:14
88	api_prediction	HIGH	disk_usage	30.33	1	2024-02-16 20:13:22
89	api_prediction	INFO	cpu_usage	27.69	1	2024-12-20 02:44:24
90	storage_node	INFO	login_attempts	18.22	1	2024-02-02 08:05:05
91	auth_service	WARNING	cpu_usage	6.04	0	2024-09-29 07:44:12
92	auth_service	INFO	failed_jobs	88.76	1	2024-08-18 11:41:57
93	airflow	WARNING	login_attempts	87.67	0	2024-05-13 09:05:43
94	storage_node	INFO	latency_ms	24.37	0	2024-06-14 09:01:02
95	auth_service	HIGH	login_attempts	5.60	1	2024-03-26 11:58:31
96	storage_node	INFO	latency_ms	63.10	1	2024-02-08 02:13:05
97	postgresql	INFO	ram_usage	42.18	1	2024-04-10 23:23:18
98	airflow	HIGH	cpu_usage	84.57	1	2024-10-28 14:32:00
99	postgresql	INFO	latency_ms	34.67	1	2024-09-05 19:59:08
100	api_prediction	WARNING	login_attempts	24.30	1	2024-02-19 04:56:37
101	spark_cluster	WARNING	failed_jobs	89.99	1	2024-09-06 16:10:11
102	postgresql	WARNING	ram_usage	51.60	1	2024-04-03 21:47:40
103	api_prediction	HIGH	latency_ms	28.87	1	2024-12-18 01:31:59
104	api_prediction	HIGH	disk_usage	41.24	0	2024-03-01 16:20:58
105	spark_cluster	\N	login_attempts	19.74	0	2024-03-14 05:32:46
106	postgresql	WARNING	disk_usage	13.27	1	2024-09-18 10:25:30
107	auth_service	WARNING	failed_jobs	32.84	1	2024-12-01 20:39:50
108	storage_node	WARNING	login_attempts	10.57	1	2024-03-04 22:26:51
109	spark_cluster	HIGH	failed_jobs	21.27	1	2024-02-10 15:12:28
110	postgresql	CRITICAL	failed_jobs	150.00	1	2024-10-10 14:02:22
111	api_prediction	HIGH	cpu_usage	27.49	0	2024-10-03 17:18:49
112	storage_node	CRITICAL	latency_ms	70.14	1	2024-05-04 01:50:40
113	spark_cluster	HIGH	latency_ms	2.80	0	2024-11-25 17:58:59
114	airflow	WARNING	login_attempts	91.30	1	2024-03-27 03:26:18
115	auth_service	HIGH	ram_usage	38.34	1	2024-06-26 05:14:23
116	storage_node	INFO	login_attempts	85.31	0	2024-11-06 13:25:45
117	postgresql	WARNING	latency_ms	24.31	0	2024-01-12 09:48:54
118	storage_node	WARNING	login_attempts	30.04	1	2024-10-30 01:05:15
119	api_prediction	INFO	failed_jobs	8.27	1	2024-07-06 21:55:35
120	api_prediction	INFO	cpu_usage	42.63	1	2024-01-01 14:17:08
121	spark_cluster	INFO	latency_ms	19.68	0	2024-05-30 01:47:08
122	auth_service	WARNING	latency_ms	10.58	0	2024-03-14 10:25:49
123	spark_cluster	INFO	login_attempts	35.21	0	2024-04-21 22:42:58
124	api_prediction	INFO	latency_ms	32.48	1	2024-11-17 03:21:39
125	auth_service	INFO	login_attempts	77.65	1	2024-08-27 19:34:24
126	airflow	INFO	cpu_usage	67.21	1	2024-12-04 15:08:23
127	postgresql	CRITICAL	disk_usage	56.45	1	2024-11-23 12:18:33
128	auth_service	HIGH	ram_usage	66.61	1	2024-06-07 00:24:18
129	storage_node	HIGH	disk_usage	1.20	1	2024-10-30 06:31:35
130	spark_cluster	WARNING	failed_jobs	96.54	0	2024-02-28 02:55:15
131	storage_node	INFO	cpu_usage	48.79	1	2024-12-21 18:23:23
132	auth_service	INFO	latency_ms	6.18	1	2024-12-27 17:08:39
133	postgresql	HIGH	ram_usage	16.11	1	2024-10-02 08:38:54
134	spark_cluster	HIGH	login_attempts	50.10	1	2024-01-11 01:44:11
135	airflow	WARNING	failed_jobs	39.41	1	2024-02-27 01:49:56
136	spark_cluster	\N	login_attempts	3.17	1	2024-05-06 17:00:31
137	postgresql	WARNING	disk_usage	82.36	0	2024-09-01 08:53:04
138	api_prediction	INFO	disk_usage	150.00	1	2024-01-23 01:42:48
139	auth_service	WARNING	failed_jobs	10.21	1	2024-12-12 12:19:03
140	api_prediction	HIGH	ram_usage	2.88	1	2024-12-02 15:27:36
141	api_prediction	\N	login_attempts	53.27	1	2024-01-27 15:26:03
142	storage_node	INFO	ram_usage	56.34	1	2024-12-28 22:50:17
143	airflow	HIGH	failed_jobs	25.88	0	2024-01-16 13:41:21
144	spark_cluster	WARNING	cpu_usage	38.33	1	2024-07-27 13:24:32
145	spark_cluster	INFO	disk_usage	53.89	1	2024-03-29 00:01:47
146	airflow	CRITICAL	login_attempts	80.84	0	2024-09-11 20:42:27
147	airflow	HIGH	login_attempts	31.63	1	2024-08-12 18:31:58
148	auth_service	CRITICAL	failed_jobs	75.02	1	2024-09-13 20:43:31
149	postgresql	WARNING	disk_usage	29.02	1	2024-05-24 04:24:09
150	storage_node	INFO	cpu_usage	84.85	1	2024-03-19 04:34:20
151	postgresql	INFO	latency_ms	5.82	1	2024-12-28 10:11:58
152	api_prediction	HIGH	disk_usage	22.81	1	2024-01-13 08:09:25
153	storage_node	INFO	latency_ms	77.12	1	2024-10-08 02:40:54
154	airflow	WARNING	ram_usage	96.24	0	2024-02-22 12:27:57
155	postgresql	CRITICAL	ram_usage	97.80	1	2024-01-24 21:53:12
156	spark_cluster	INFO	ram_usage	49.99	1	2024-11-07 01:12:35
157	api_prediction	HIGH	login_attempts	10.96	0	2024-04-29 12:31:30
158	storage_node	HIGH	failed_jobs	89.49	1	2024-11-10 14:54:59
159	airflow	INFO	latency_ms	65.78	1	2024-11-01 16:43:10
160	auth_service	CRITICAL	ram_usage	9.70	1	2024-02-02 21:00:59
161	api_prediction	INFO	ram_usage	7.14	0	2024-04-02 11:29:01
162	auth_service	WARNING	failed_jobs	11.66	1	2024-01-27 06:18:34
163	postgresql	CRITICAL	cpu_usage	45.82	1	2024-11-29 16:57:11
164	api_prediction	WARNING	disk_usage	51.60	1	2024-05-10 04:12:10
165	storage_node	CRITICAL	failed_jobs	67.67	1	2024-04-08 14:56:12
166	storage_node	CRITICAL	latency_ms	20.84	1	2024-01-23 12:34:58
167	auth_service	INFO	disk_usage	65.53	1	2024-09-25 02:10:29
168	airflow	HIGH	failed_jobs	150.00	1	2024-06-22 05:25:47
169	auth_service	INFO	failed_jobs	26.96	1	2024-02-26 01:29:36
170	airflow	HIGH	latency_ms	63.33	1	2024-01-29 22:28:48
171	postgresql	HIGH	cpu_usage	81.29	1	2024-08-11 06:52:28
172	postgresql	INFO	login_attempts	60.68	1	2024-01-09 08:54:38
173	auth_service	INFO	ram_usage	97.14	1	2024-10-24 16:10:45
174	postgresql	WARNING	login_attempts	85.91	1	2024-05-09 01:25:26
175	auth_service	INFO	failed_jobs	89.82	1	2024-08-16 08:23:16
176	postgresql	INFO	ram_usage	4.26	0	2024-03-27 12:30:48
177	auth_service	INFO	latency_ms	46.55	1	2024-04-25 21:27:18
178	storage_node	CRITICAL	login_attempts	26.39	1	2024-05-02 10:03:23
179	airflow	WARNING	login_attempts	52.02	0	2024-06-23 02:11:48
180	auth_service	WARNING	disk_usage	69.78	0	2024-03-25 18:28:59
181	spark_cluster	WARNING	ram_usage	91.39	0	2024-10-10 05:03:22
182	storage_node	INFO	login_attempts	2.42	1	2024-11-08 17:26:07
183	airflow	HIGH	latency_ms	85.91	1	2024-10-12 20:45:44
184	storage_node	HIGH	disk_usage	28.03	1	2024-12-26 17:38:41
185	api_prediction	WARNING	failed_jobs	67.71	1	2024-01-28 02:55:30
186	airflow	INFO	login_attempts	34.74	1	2024-10-18 01:59:37
187	storage_node	HIGH	login_attempts	39.59	0	2024-07-13 10:27:44
188	postgresql	INFO	latency_ms	68.92	0	2024-06-03 02:47:23
189	spark_cluster	WARNING	disk_usage	28.31	1	2024-12-21 15:23:31
190	airflow	WARNING	failed_jobs	58.91	1	2024-05-16 23:19:46
191	airflow	HIGH	latency_ms	42.85	1	2024-11-10 09:27:23
192	api_prediction	INFO	failed_jobs	22.86	1	2024-04-15 16:36:55
193	spark_cluster	WARNING	ram_usage	38.16	1	2024-07-07 08:36:37
194	auth_service	CRITICAL	failed_jobs	21.56	1	2024-11-14 18:50:15
195	auth_service	INFO	disk_usage	28.92	0	2024-05-30 09:12:30
196	airflow	WARNING	login_attempts	82.19	1	2024-05-13 18:50:42
197	airflow	WARNING	cpu_usage	91.07	1	2024-12-05 02:42:16
198	airflow	HIGH	cpu_usage	70.24	1	2024-10-05 21:16:44
199	postgresql	HIGH	failed_jobs	9.78	0	2024-06-18 02:56:04
200	spark_cluster	INFO	latency_ms	95.43	1	2024-10-13 06:28:32
201	spark_cluster	HIGH	cpu_usage	81.49	1	2024-10-04 02:14:50
202	airflow	HIGH	latency_ms	18.22	1	2024-08-08 03:48:14
203	spark_cluster	INFO	latency_ms	90.38	1	2024-01-15 05:51:16
204	airflow	WARNING	cpu_usage	64.97	1	2024-04-19 09:01:17
205	airflow	INFO	disk_usage	7.99	1	2024-09-28 02:14:07
206	airflow	CRITICAL	login_attempts	77.74	0	2024-07-31 05:56:14
207	airflow	INFO	login_attempts	74.02	1	2024-04-11 00:05:22
208	auth_service	WARNING	login_attempts	92.72	1	2024-04-23 06:34:12
209	postgresql	HIGH	cpu_usage	68.10	1	2024-12-22 12:49:50
210	auth_service	INFO	cpu_usage	74.78	1	2024-02-19 19:18:49
211	postgresql	HIGH	cpu_usage	150.00	1	2024-05-20 13:13:26
212	storage_node	WARNING	latency_ms	44.07	1	2024-08-23 05:42:03
213	airflow	WARNING	latency_ms	70.30	0	2024-03-27 05:00:44
214	postgresql	INFO	cpu_usage	77.75	1	2024-04-13 18:05:38
215	spark_cluster	HIGH	login_attempts	150.00	1	2024-06-16 12:03:55
216	postgresql	INFO	cpu_usage	41.07	1	2024-06-30 08:49:41
217	api_prediction	WARNING	latency_ms	34.08	1	2024-05-20 05:26:44
218	airflow	HIGH	latency_ms	37.55	1	2024-05-23 02:53:18
219	spark_cluster	INFO	disk_usage	90.59	1	2024-10-04 08:40:11
220	api_prediction	WARNING	login_attempts	0.50	1	2024-03-17 02:04:35
221	storage_node	INFO	login_attempts	85.71	0	2024-01-25 09:27:32
222	auth_service	CRITICAL	ram_usage	75.86	0	2024-02-28 16:00:19
223	api_prediction	INFO	disk_usage	23.63	1	2024-07-19 02:01:23
224	api_prediction	INFO	disk_usage	42.25	1	2024-09-27 18:05:49
225	airflow	INFO	ram_usage	58.63	1	2024-04-10 15:38:08
226	auth_service	INFO	latency_ms	12.13	1	2024-03-17 02:24:37
227	postgresql	WARNING	cpu_usage	79.95	0	2024-11-02 02:38:12
228	auth_service	\N	cpu_usage	12.26	1	2024-04-28 09:00:37
229	auth_service	INFO	cpu_usage	97.85	0	2024-11-24 17:20:41
230	storage_node	WARNING	latency_ms	81.56	1	2024-01-21 02:03:38
231	auth_service	WARNING	ram_usage	46.67	1	2024-04-27 07:13:00
232	storage_node	WARNING	cpu_usage	83.94	1	2024-01-04 04:14:20
233	storage_node	\N	cpu_usage	28.57	1	2024-02-29 19:23:07
234	api_prediction	WARNING	disk_usage	94.48	1	2024-12-21 13:58:57
235	storage_node	INFO	ram_usage	67.20	1	2024-08-06 19:26:09
236	storage_node	HIGH	cpu_usage	48.99	1	2024-08-01 14:18:21
237	postgresql	INFO	cpu_usage	94.22	1	2024-07-04 22:21:09
238	postgresql	WARNING	ram_usage	80.56	1	2024-11-01 18:22:37
239	api_prediction	INFO	login_attempts	20.28	1	2024-05-20 06:00:12
240	api_prediction	INFO	latency_ms	83.86	0	2024-12-11 13:53:18
241	airflow	INFO	login_attempts	64.62	1	2024-02-02 23:33:15
242	storage_node	WARNING	failed_jobs	28.87	1	2024-10-19 17:38:35
243	airflow	WARNING	latency_ms	82.89	0	2024-03-03 18:01:08
244	auth_service	WARNING	failed_jobs	92.97	1	2024-10-24 02:46:39
245	storage_node	INFO	ram_usage	61.57	0	2024-10-26 03:12:24
246	spark_cluster	WARNING	latency_ms	88.22	0	2024-12-16 02:03:44
247	postgresql	WARNING	latency_ms	74.84	1	2024-05-11 13:35:31
248	auth_service	WARNING	disk_usage	83.29	1	2024-01-13 03:24:43
249	auth_service	HIGH	disk_usage	99.13	1	2024-06-28 14:40:17
250	api_prediction	WARNING	ram_usage	77.45	1	2024-02-27 18:49:09
251	postgresql	WARNING	disk_usage	37.01	1	2024-12-02 21:50:53
252	auth_service	INFO	ram_usage	44.75	1	2024-11-09 09:22:10
253	spark_cluster	INFO	cpu_usage	62.81	1	2024-05-16 18:17:02
254	storage_node	WARNING	failed_jobs	20.10	1	2024-05-03 12:52:43
255	storage_node	CRITICAL	failed_jobs	16.01	1	2024-08-13 21:39:54
256	auth_service	HIGH	cpu_usage	30.64	1	2024-05-25 14:37:31
257	airflow	INFO	cpu_usage	93.51	1	2024-06-18 06:14:36
258	spark_cluster	CRITICAL	ram_usage	50.33	1	2024-07-20 23:33:02
259	spark_cluster	INFO	login_attempts	12.45	1	2024-06-11 07:47:29
260	spark_cluster	INFO	failed_jobs	63.46	1	2024-02-16 21:36:35
261	storage_node	INFO	failed_jobs	13.10	1	2024-07-26 15:00:28
262	postgresql	WARNING	cpu_usage	46.86	1	2024-01-10 03:36:48
263	airflow	INFO	latency_ms	70.55	1	2024-09-26 03:53:43
264	storage_node	HIGH	cpu_usage	74.00	1	2024-06-13 22:28:34
265	postgresql	WARNING	ram_usage	20.51	1	2024-06-05 19:31:48
266	api_prediction	CRITICAL	failed_jobs	13.78	1	2024-09-27 07:35:20
267	spark_cluster	CRITICAL	ram_usage	30.33	1	2024-05-27 20:18:13
268	auth_service	INFO	cpu_usage	67.03	1	2024-06-13 15:47:20
269	spark_cluster	INFO	login_attempts	50.40	1	2024-03-17 21:38:43
270	api_prediction	HIGH	login_attempts	16.49	1	2024-09-03 11:48:48
271	postgresql	CRITICAL	login_attempts	62.02	1	2024-09-09 19:45:28
272	spark_cluster	WARNING	ram_usage	89.03	1	2024-12-06 15:13:18
273	auth_service	CRITICAL	disk_usage	55.19	0	2024-12-25 16:25:51
274	storage_node	WARNING	latency_ms	73.66	1	2024-07-03 05:45:08
275	airflow	CRITICAL	failed_jobs	76.94	1	2024-08-14 03:22:01
276	postgresql	WARNING	disk_usage	98.87	0	2024-05-20 18:52:07
277	storage_node	INFO	cpu_usage	30.26	1	2024-02-23 14:20:53
278	api_prediction	CRITICAL	failed_jobs	93.68	1	2024-10-28 04:52:40
279	airflow	WARNING	latency_ms	16.28	0	2024-07-30 03:31:37
280	auth_service	HIGH	failed_jobs	68.90	1	2024-08-07 19:14:12
281	api_prediction	CRITICAL	latency_ms	79.61	1	2024-11-02 04:42:19
282	spark_cluster	HIGH	cpu_usage	88.80	1	2024-11-20 22:25:10
283	spark_cluster	CRITICAL	cpu_usage	8.58	1	2024-09-30 17:27:25
284	auth_service	WARNING	ram_usage	32.57	0	2024-01-24 16:43:27
285	postgresql	INFO	failed_jobs	13.16	0	2024-02-25 21:05:01
286	airflow	INFO	login_attempts	53.24	0	2024-03-17 11:04:48
287	spark_cluster	WARNING	ram_usage	35.19	1	2024-02-11 13:40:01
288	api_prediction	CRITICAL	cpu_usage	57.48	1	2024-05-14 17:11:48
289	storage_node	WARNING	disk_usage	3.63	0	2024-04-18 07:34:41
290	postgresql	HIGH	ram_usage	93.22	0	2024-12-27 14:57:20
291	airflow	HIGH	latency_ms	26.69	0	2024-08-27 20:55:55
292	auth_service	INFO	login_attempts	67.36	1	2024-06-06 22:54:03
293	spark_cluster	HIGH	failed_jobs	58.11	1	2024-09-22 19:36:04
294	auth_service	WARNING	cpu_usage	38.61	0	2024-12-25 18:55:02
295	auth_service	HIGH	ram_usage	46.90	1	2024-10-20 00:35:29
296	storage_node	WARNING	disk_usage	70.60	1	2024-06-01 01:51:45
297	postgresql	WARNING	login_attempts	17.51	0	2024-10-17 07:54:35
298	api_prediction	HIGH	cpu_usage	94.56	1	2024-08-11 23:12:36
299	api_prediction	INFO	ram_usage	73.54	1	2024-07-18 23:55:01
300	spark_cluster	INFO	disk_usage	36.14	1	2024-06-21 17:29:58
301	spark_cluster	WARNING	login_attempts	19.76	0	2024-05-24 22:16:44
302	auth_service	INFO	ram_usage	46.71	1	2024-03-12 10:22:03
303	storage_node	INFO	ram_usage	11.10	1	2024-09-08 03:35:01
304	airflow	CRITICAL	failed_jobs	41.37	1	2024-12-18 10:36:48
305	postgresql	INFO	ram_usage	51.56	0	2024-07-15 23:36:13
306	auth_service	WARNING	failed_jobs	47.26	0	2024-11-08 13:53:24
307	postgresql	HIGH	cpu_usage	76.43	1	2024-12-11 03:09:17
308	storage_node	CRITICAL	cpu_usage	66.39	0	2024-04-21 02:52:36
309	storage_node	CRITICAL	disk_usage	3.18	1	2024-04-28 21:13:50
310	storage_node	WARNING	login_attempts	78.73	1	2024-07-03 07:46:33
311	spark_cluster	WARNING	cpu_usage	74.38	1	2024-12-28 00:20:26
312	auth_service	INFO	disk_usage	37.10	1	2024-08-18 23:04:18
313	airflow	HIGH	disk_usage	71.27	1	2024-01-13 16:54:07
314	postgresql	WARNING	ram_usage	86.29	1	2024-02-01 00:58:09
315	api_prediction	INFO	login_attempts	75.81	1	2024-12-10 14:01:09
316	api_prediction	INFO	failed_jobs	4.57	0	2024-08-15 22:11:30
317	auth_service	INFO	failed_jobs	8.27	1	2024-10-11 17:40:33
318	postgresql	CRITICAL	ram_usage	50.23	0	2024-05-27 18:08:25
319	postgresql	WARNING	failed_jobs	25.40	1	2024-07-08 01:00:59
320	storage_node	WARNING	login_attempts	66.83	1	2024-02-19 00:13:33
321	airflow	CRITICAL	failed_jobs	11.43	0	2024-12-12 09:40:33
322	postgresql	HIGH	login_attempts	97.58	1	2024-04-30 03:11:17
323	airflow	INFO	ram_usage	47.81	1	2024-12-20 09:21:54
324	spark_cluster	HIGH	ram_usage	97.16	0	2024-05-26 14:23:19
325	auth_service	INFO	cpu_usage	12.38	1	2024-02-21 10:56:11
326	airflow	INFO	login_attempts	11.94	0	2024-07-28 12:51:29
327	spark_cluster	WARNING	cpu_usage	94.83	0	2024-07-20 15:28:29
328	spark_cluster	INFO	cpu_usage	20.36	0	2024-12-07 03:02:43
329	spark_cluster	WARNING	cpu_usage	29.87	0	2024-01-24 12:05:59
330	auth_service	WARNING	login_attempts	0.48	1	2024-02-12 03:36:54
331	auth_service	WARNING	disk_usage	16.30	1	2024-02-27 16:57:16
332	api_prediction	INFO	failed_jobs	42.29	0	2024-12-16 17:32:19
333	auth_service	WARNING	failed_jobs	12.75	0	2024-07-30 03:11:31
334	airflow	WARNING	latency_ms	24.84	0	2024-12-29 10:10:29
335	api_prediction	HIGH	ram_usage	30.23	1	2024-01-14 02:38:15
336	spark_cluster	WARNING	ram_usage	16.46	1	2024-06-05 18:20:39
337	storage_node	WARNING	disk_usage	62.77	1	2024-11-10 01:42:50
338	spark_cluster	WARNING	cpu_usage	74.96	1	2024-11-28 15:06:48
339	postgresql	HIGH	failed_jobs	83.55	1	2024-10-04 07:51:25
340	api_prediction	HIGH	latency_ms	10.54	1	2024-12-13 18:40:22
341	auth_service	INFO	cpu_usage	25.52	1	2024-04-25 16:50:45
342	airflow	INFO	login_attempts	51.61	1	2024-03-29 00:07:34
343	storage_node	WARNING	latency_ms	80.77	1	2024-07-19 22:17:51
344	spark_cluster	HIGH	ram_usage	61.10	1	2024-01-22 12:05:52
345	api_prediction	HIGH	failed_jobs	62.75	1	2024-06-09 13:12:01
346	postgresql	INFO	ram_usage	78.76	1	2024-09-04 07:12:13
347	spark_cluster	INFO	ram_usage	76.49	1	2024-05-16 14:10:12
348	airflow	WARNING	ram_usage	13.35	0	2024-02-19 18:46:45
349	api_prediction	INFO	latency_ms	49.85	0	2024-03-20 00:43:42
350	airflow	CRITICAL	disk_usage	51.93	1	2024-07-12 18:49:01
351	postgresql	WARNING	login_attempts	11.14	0	2024-04-14 12:40:12
352	spark_cluster	INFO	failed_jobs	58.78	1	2024-01-05 13:21:29
353	airflow	WARNING	cpu_usage	12.54	1	2024-07-08 10:16:44
354	postgresql	INFO	latency_ms	97.52	1	2024-06-16 02:01:31
355	storage_node	WARNING	cpu_usage	65.17	1	2024-09-16 18:44:31
356	postgresql	HIGH	latency_ms	33.12	1	2024-12-24 12:36:42
357	auth_service	INFO	cpu_usage	99.05	1	2024-02-05 09:43:45
358	airflow	CRITICAL	login_attempts	77.57	1	2024-01-29 23:31:53
359	storage_node	WARNING	failed_jobs	74.69	1	2024-02-23 23:45:23
360	api_prediction	WARNING	failed_jobs	65.78	0	2024-06-04 17:05:30
361	api_prediction	WARNING	cpu_usage	91.55	0	2024-09-28 03:34:52
362	airflow	HIGH	latency_ms	95.58	1	2024-09-14 18:03:03
363	airflow	INFO	failed_jobs	84.42	0	2024-06-02 21:34:55
364	auth_service	WARNING	login_attempts	49.20	0	2024-11-15 20:36:40
365	storage_node	INFO	latency_ms	65.24	1	2024-08-16 16:37:16
366	airflow	INFO	latency_ms	53.83	1	2024-01-12 01:16:36
367	auth_service	CRITICAL	login_attempts	66.96	1	2024-01-16 17:13:12
368	airflow	CRITICAL	latency_ms	28.22	1	2024-12-05 04:06:15
369	storage_node	INFO	login_attempts	87.58	0	2024-12-30 03:10:58
370	spark_cluster	INFO	ram_usage	88.58	1	2024-09-18 04:48:40
371	api_prediction	INFO	ram_usage	83.55	1	2024-03-31 16:31:35
372	storage_node	HIGH	disk_usage	43.79	1	2024-03-27 14:38:27
373	storage_node	HIGH	failed_jobs	74.53	0	2024-05-08 16:00:58
374	postgresql	WARNING	latency_ms	48.19	1	2024-12-11 08:20:04
375	storage_node	INFO	failed_jobs	71.76	1	2024-08-04 04:41:13
376	auth_service	INFO	cpu_usage	15.85	1	2024-07-30 11:40:33
377	storage_node	INFO	cpu_usage	53.03	1	2024-10-17 03:38:32
378	storage_node	INFO	login_attempts	21.50	1	2024-09-12 07:03:18
379	storage_node	CRITICAL	login_attempts	94.77	1	2024-01-15 09:03:07
380	airflow	INFO	ram_usage	67.59	0	2024-09-17 05:20:20
381	postgresql	INFO	ram_usage	18.89	1	2024-11-08 16:51:40
382	storage_node	INFO	failed_jobs	98.87	0	2024-09-15 12:47:06
383	airflow	HIGH	failed_jobs	51.61	1	2024-11-03 20:26:36
384	spark_cluster	HIGH	ram_usage	69.84	1	2024-01-01 13:15:15
385	api_prediction	INFO	latency_ms	65.27	1	2024-09-20 07:05:15
386	storage_node	HIGH	disk_usage	25.68	0	2024-03-01 13:47:51
387	airflow	INFO	latency_ms	23.13	0	2024-07-18 02:08:47
388	spark_cluster	HIGH	latency_ms	4.19	1	2024-04-08 13:14:22
389	postgresql	WARNING	failed_jobs	29.91	1	2024-10-31 20:09:28
390	spark_cluster	HIGH	cpu_usage	31.22	1	2024-07-05 03:57:48
391	airflow	CRITICAL	ram_usage	85.62	0	2024-01-04 20:27:57
392	airflow	WARNING	login_attempts	29.70	0	2024-09-19 15:14:51
393	storage_node	\N	latency_ms	26.49	0	2024-05-06 23:03:04
394	postgresql	INFO	failed_jobs	44.99	1	2024-06-13 08:44:04
395	airflow	WARNING	latency_ms	90.36	1	2024-10-21 01:02:22
396	auth_service	HIGH	cpu_usage	69.89	1	2024-02-15 08:09:59
397	storage_node	HIGH	failed_jobs	96.82	1	2024-06-27 21:03:34
398	spark_cluster	\N	failed_jobs	83.16	0	2024-06-01 12:54:19
399	api_prediction	HIGH	login_attempts	12.25	0	2024-11-15 20:52:32
400	api_prediction	CRITICAL	failed_jobs	0.48	1	2024-08-26 13:17:17
401	postgresql	CRITICAL	ram_usage	94.82	0	2024-03-20 06:20:59
402	storage_node	WARNING	ram_usage	72.02	1	2024-08-09 12:53:55
403	airflow	INFO	login_attempts	61.27	1	2024-12-22 15:44:51
404	storage_node	INFO	disk_usage	99.60	1	2024-03-09 15:22:17
405	spark_cluster	INFO	login_attempts	25.08	0	2024-08-17 00:00:30
406	auth_service	INFO	latency_ms	90.16	1	2024-05-02 19:26:45
407	storage_node	WARNING	login_attempts	42.03	1	2024-11-19 12:56:34
408	spark_cluster	INFO	latency_ms	80.18	1	2024-11-22 08:06:05
409	storage_node	INFO	login_attempts	24.63	1	2024-10-21 11:43:13
410	auth_service	INFO	cpu_usage	33.72	1	2024-11-04 19:46:13
411	storage_node	WARNING	login_attempts	99.39	0	2024-01-16 13:28:38
412	spark_cluster	WARNING	latency_ms	150.00	1	2024-10-29 08:04:11
413	storage_node	INFO	latency_ms	27.35	0	2024-05-02 09:28:40
414	api_prediction	WARNING	latency_ms	87.89	0	2024-03-29 14:33:53
415	auth_service	WARNING	latency_ms	40.35	1	2024-11-23 02:18:47
416	auth_service	HIGH	failed_jobs	61.77	1	2024-05-24 09:45:57
417	auth_service	CRITICAL	latency_ms	10.77	0	2024-09-26 18:47:03
418	storage_node	HIGH	login_attempts	21.73	1	2024-01-11 06:10:26
419	auth_service	INFO	disk_usage	27.90	0	2024-08-29 13:53:02
420	auth_service	INFO	failed_jobs	9.69	0	2024-12-20 02:47:15
421	api_prediction	HIGH	cpu_usage	0.15	1	2024-05-31 11:50:20
422	postgresql	WARNING	disk_usage	38.49	1	2024-06-16 09:17:01
423	api_prediction	INFO	disk_usage	80.73	0	2024-04-11 16:50:12
424	auth_service	\N	cpu_usage	40.47	1	2024-08-12 18:26:19
425	auth_service	WARNING	login_attempts	76.43	1	2024-02-23 07:40:50
426	api_prediction	INFO	latency_ms	3.87	1	2024-01-01 17:39:34
427	postgresql	INFO	cpu_usage	8.17	0	2024-10-12 07:12:44
428	auth_service	HIGH	failed_jobs	64.42	1	2024-12-30 20:12:41
429	auth_service	INFO	latency_ms	79.53	1	2024-02-28 12:49:01
430	auth_service	WARNING	disk_usage	150.00	0	2024-03-20 01:33:14
431	postgresql	HIGH	cpu_usage	62.21	1	2024-04-27 06:22:18
432	api_prediction	WARNING	disk_usage	58.54	0	2024-03-03 12:10:23
433	spark_cluster	INFO	cpu_usage	23.21	1	2024-01-08 12:18:53
434	postgresql	WARNING	ram_usage	150.00	1	2024-05-27 09:44:42
435	postgresql	INFO	cpu_usage	60.89	1	2024-06-24 05:14:17
436	storage_node	WARNING	failed_jobs	73.05	1	2024-03-22 05:00:48
437	airflow	INFO	latency_ms	150.00	0	2024-12-20 12:26:48
438	api_prediction	INFO	failed_jobs	46.02	1	2024-06-02 04:25:57
439	spark_cluster	INFO	failed_jobs	96.74	1	2024-07-13 05:21:25
440	auth_service	INFO	failed_jobs	77.18	1	2024-09-25 00:38:15
441	auth_service	HIGH	ram_usage	6.37	1	2024-07-23 22:30:57
442	airflow	WARNING	cpu_usage	54.74	1	2024-05-03 16:58:00
443	auth_service	WARNING	cpu_usage	68.93	1	2024-02-16 12:41:39
444	storage_node	WARNING	disk_usage	63.37	0	2024-11-14 11:18:30
445	postgresql	INFO	disk_usage	81.29	1	2024-01-27 21:01:59
446	api_prediction	INFO	latency_ms	52.29	1	2024-08-03 09:56:48
447	airflow	HIGH	latency_ms	70.28	1	2024-10-21 16:10:20
448	airflow	WARNING	latency_ms	59.46	1	2024-03-03 18:25:37
449	storage_node	HIGH	ram_usage	52.09	0	2024-04-14 17:30:57
450	auth_service	INFO	login_attempts	150.00	0	2024-06-05 06:49:03
\.


--
-- Data for Name: callback_request; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.callback_request (id, created_at, priority_weight, callback_data, callback_type, processor_subdir) FROM stdin;
\.


--
-- Data for Name: cameras_qualite; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.cameras_qualite (camera_event_id, machine_id, defect_detected, confidence_score, "timestamp") FROM stdin;
1	M-4	0	0.89	2024-09-07 17:43:30
2	M-17	0	0.71	2024-06-26 13:26:01
3	M-6	0	0.89	2024-02-19 14:51:59
4	M-14	0	0.63	2024-07-06 07:02:29
5	M-5	0	0.79	2024-02-18 04:23:06
6	M-18	0	0.83	2024-03-13 05:23:31
7	M-10	0	0.98	2024-05-24 15:29:01
8	M-11	0	0.71	2024-11-05 19:32:52
9	M-6	0	0.62	2024-01-05 09:05:25
10	M-5	0	0.63	2024-04-13 07:15:55
11	M-15	0	0.94	2024-11-06 08:34:18
12	M-6	0	0.86	2024-07-29 16:55:34
13	M-15	0	0.83	2024-06-22 18:07:21
14	M-13	1	0.76	2024-06-18 02:38:33
15	M-6	0	0.85	2024-03-14 03:39:25
16	M-5	0	0.78	2024-07-19 09:33:38
17	M-10	0	0.63	2024-05-06 19:32:25
18	M-13	0	0.63	2024-05-24 10:48:58
19	M-5	0	0.68	2024-10-03 15:51:30
20	M-18	0	0.87	2024-03-27 18:16:44
21	M-11	1	0.76	2024-11-07 12:01:51
22	M-18	0	0.65	2024-07-20 05:36:37
23	M-8	0	0.98	2024-05-27 11:48:14
24	M-13	0	0.90	2024-01-11 21:37:27
25	M-12	0	0.68	2024-11-27 13:03:29
26	M-3	0	0.72	2024-08-11 23:01:55
27	M-17	0	0.95	2024-08-21 22:38:50
28	M-11	0	0.89	2024-03-29 00:59:56
29	M-20	1	0.93	2024-01-01 07:32:01
30	M-15	0	0.93	2024-12-22 00:03:23
31	M-4	0	0.75	2024-08-18 09:55:58
32	M-18	0	0.82	2024-11-12 22:15:47
33	M-18	0	0.64	2024-07-02 13:02:23
34	M-19	0	0.80	2024-05-18 14:45:22
35	M-4	0	0.74	2024-09-10 22:11:36
36	M-19	1	0.95	2024-10-09 09:56:51
37	M-9	0	0.92	2024-05-18 23:28:32
38	M-20	0	0.83	2024-05-31 18:19:55
39	M-4	0	0.78	2024-06-14 17:36:39
40	M-5	0	0.92	2024-07-16 17:10:38
41	M-11	0	0.72	2024-07-03 03:22:56
42	M-11	0	0.67	2024-05-07 18:12:47
43	M-14	0	0.90	2024-03-01 14:37:25
44	M-1	0	0.88	2024-03-01 08:34:05
45	M-18	0	0.95	2024-03-29 19:48:03
46	M-4	0	0.94	2024-05-29 00:23:30
47	M-4	0	0.72	2024-07-29 07:23:48
48	M-6	0	0.62	2024-02-17 08:31:54
49	M-14	0	0.63	2024-01-16 10:00:11
50	M-9	0	0.61	2024-03-08 11:52:16
51	M-11	0	0.69	2024-05-10 02:27:49
52	M-2	0	0.89	2024-05-28 02:33:35
53	M-5	0	0.95	2024-04-25 20:24:10
54	M-9	0	0.64	2024-10-27 16:22:36
55	M-4	0	0.72	2024-01-28 19:23:18
56	M-12	0	0.96	2024-03-12 20:58:30
57	M-12	0	0.94	2024-02-02 10:11:42
58	M-11	0	0.60	2024-03-09 11:12:47
59	M-5	0	0.98	2024-12-14 22:57:56
60	M-15	0	0.79	2024-07-24 19:53:14
61	M-15	0	0.82	2024-12-07 22:05:23
62	M-2	0	0.94	2024-07-20 02:29:57
63	M-11	1	0.78	2024-08-07 03:09:12
64	M-10	0	0.72	2024-02-03 22:33:44
65	M-11	0	0.77	2024-12-22 22:17:34
66	M-17	0	0.81	2024-04-26 09:49:03
67	M-4	0	0.78	2024-11-06 23:07:15
68	M-11	0	0.81	2024-02-19 06:51:18
69	M-2	0	0.85	2024-09-05 20:09:20
70	M-12	0	0.61	2024-11-13 14:13:19
71	M-17	0	0.68	2024-01-26 12:40:01
72	M-13	0	0.67	2024-07-29 18:01:29
73	M-12	0	0.89	2024-10-23 00:51:13
74	M-18	1	0.69	2024-12-19 15:05:41
75	M-18	0	0.76	2024-04-28 06:11:57
76	M-19	1	0.71	2024-10-26 08:18:18
77	M-12	0	0.85	2024-03-12 04:59:08
78	M-15	0	0.92	2024-07-28 05:06:04
79	M-9	0	0.72	2024-01-07 22:13:54
80	M-5	0	0.77	2024-02-18 08:44:36
81	M-3	0	0.70	2024-04-09 14:08:30
82	M-10	0	0.84	2024-03-03 12:37:34
83	M-3	0	0.92	2024-06-09 03:01:15
84	M-7	0	0.79	2024-09-06 17:25:44
85	M-14	0	0.84	2024-08-08 08:21:04
86	M-2	0	0.86	2024-03-17 17:06:41
87	M-2	0	0.97	2024-06-08 04:33:47
88	M-17	0	0.93	2024-04-19 22:36:59
89	M-10	0	0.93	2024-06-17 16:35:14
90	M-18	0	0.95	2024-09-28 18:41:11
91	M-18	0	0.95	2024-06-01 06:12:36
92	M-6	0	0.75	2024-07-31 08:30:38
93	M-14	0	0.72	2024-03-26 06:25:31
94	M-18	0	0.90	2024-10-11 20:32:22
95	M-18	0	0.85	2024-07-22 10:42:12
96	M-3	0	0.78	2024-10-18 10:22:17
97	M-5	0	0.84	2024-10-13 11:07:00
98	M-8	0	0.77	2024-04-16 14:56:26
99	M-4	0	0.64	2024-02-07 12:53:46
100	M-5	0	0.95	2024-10-07 13:46:18
101	M-15	0	0.75	2024-10-30 01:01:53
102	M-20	0	0.66	2024-05-18 22:18:25
103	M-1	0	0.66	2024-08-08 04:02:24
104	M-8	0	0.62	2024-04-26 20:19:17
105	M-2	0	0.91	2024-04-22 09:06:09
106	M-8	0	0.91	2024-04-19 06:54:48
107	M-1	0	0.68	2024-12-01 00:55:14
108	M-8	0	0.96	2024-08-14 13:25:36
109	M-5	0	0.95	2024-09-05 06:36:17
110	M-13	0	0.80	2024-07-05 14:50:09
111	M-18	0	0.97	2024-08-26 07:14:19
112	M-5	0	0.83	2024-01-29 03:59:34
113	M-6	0	0.62	2024-06-22 14:45:38
114	M-17	1	0.89	2024-04-07 17:08:30
115	M-19	0	0.75	2024-04-12 21:34:31
116	M-13	0	0.81	2024-08-07 18:26:04
117	M-16	0	0.75	2024-03-16 07:28:17
118	M-9	0	0.98	2024-05-05 06:39:44
119	M-1	0	0.86	2024-10-09 04:52:42
120	M-8	0	0.63	2024-08-14 16:48:44
121	M-11	0	0.98	2024-08-14 15:25:15
122	M-10	0	0.90	2024-12-28 20:49:27
123	M-18	0	0.77	2024-12-09 04:00:10
124	M-16	0	0.61	2024-06-08 14:39:07
125	M-2	0	0.94	2024-03-26 15:09:42
126	M-12	0	0.69	2024-04-20 16:40:26
127	M-14	0	0.86	2024-04-21 07:13:51
128	M-5	0	0.69	2024-10-31 21:47:33
129	M-20	0	0.66	2024-12-15 09:26:04
130	M-15	0	0.96	2024-06-25 17:31:46
131	M-5	0	0.75	2024-09-24 20:46:07
132	M-19	0	0.99	2024-05-16 03:57:18
133	M-20	0	0.84	2024-01-17 05:51:58
134	M-17	0	0.91	2024-07-19 09:15:19
135	M-11	0	0.62	2024-09-07 05:25:55
136	M-1	0	0.65	2024-07-05 12:26:22
137	M-16	0	0.67	2024-09-17 06:47:33
138	M-18	0	0.83	2024-10-07 12:01:55
139	M-18	1	0.86	2024-10-12 18:34:07
140	M-5	0	0.91	2024-09-07 23:33:11
141	M-1	0	0.62	2024-04-21 21:14:04
142	M-11	0	0.80	2024-09-30 06:14:59
143	M-16	0	0.77	2024-10-03 11:36:42
144	M-13	1	0.87	2024-01-29 06:58:06
145	M-12	0	0.89	2024-09-23 16:02:44
146	M-19	0	0.61	2024-06-27 15:14:13
147	M-1	0	0.62	2024-10-08 21:12:13
148	M-16	0	0.79	2024-10-15 08:06:38
149	M-2	0	0.82	2024-04-25 10:49:16
150	M-4	0	0.96	2024-07-10 03:50:04
151	M-16	0	0.82	2024-06-26 03:44:25
152	M-3	0	0.77	2024-10-18 15:49:16
153	M-3	0	0.93	2024-11-27 02:54:12
154	M-19	0	0.76	2024-04-09 01:55:31
155	M-13	0	0.75	2024-11-18 22:51:39
156	M-11	0	0.83	2024-03-13 16:38:43
157	M-8	0	0.88	2024-04-17 16:10:51
158	M-9	0	0.69	2024-02-20 17:52:00
159	M-15	0	0.82	2024-01-20 17:15:16
160	M-3	0	0.74	2024-03-25 12:48:27
161	M-15	0	0.64	2024-07-06 11:50:43
162	M-18	0	0.83	2024-08-31 00:51:21
163	M-18	1	0.63	2024-11-08 19:55:20
164	M-15	0	0.68	2024-08-10 20:36:55
165	M-19	0	0.90	2024-01-20 06:22:37
166	M-10	1	0.92	2024-05-07 06:05:41
167	M-17	0	0.76	2024-05-18 12:51:09
168	M-20	0	0.77	2024-06-20 21:21:38
169	M-18	0	0.72	2024-04-29 19:05:28
170	M-12	0	0.68	2024-02-09 09:12:50
171	M-16	0	0.72	2024-10-31 16:02:24
172	M-7	0	0.76	2024-11-22 10:26:55
173	M-14	0	0.80	2024-11-21 14:28:23
174	M-3	0	0.61	2024-11-10 07:59:32
175	M-14	0	0.87	2024-03-14 14:22:35
176	M-4	0	0.83	2024-09-01 00:59:10
177	M-17	1	0.60	2024-05-24 19:55:56
178	M-12	0	0.86	2024-02-27 16:59:23
179	M-5	0	0.66	2024-07-06 16:32:44
180	M-18	0	0.81	2024-07-24 20:52:22
181	M-14	0	0.85	2024-12-02 22:23:59
182	M-7	0	0.80	2024-05-04 02:48:36
183	M-8	0	0.73	2024-05-24 19:28:36
184	M-8	0	0.88	2024-06-18 00:37:52
185	M-8	0	0.79	2024-08-10 02:00:45
186	M-8	1	0.86	2024-12-09 03:13:35
187	M-11	0	0.92	2024-12-01 11:22:17
188	M-1	0	0.80	2024-07-15 10:09:02
189	M-13	0	0.94	2024-01-14 20:46:32
190	M-9	0	0.64	2024-04-17 20:42:13
191	M-10	0	0.97	2024-01-21 02:46:45
192	M-2	0	0.90	2024-07-03 05:53:21
193	M-1	0	0.94	2024-03-07 11:19:39
194	M-17	0	0.67	2024-07-03 15:36:52
195	M-14	0	0.61	2024-10-09 01:01:12
196	M-10	0	0.65	2024-07-20 21:38:59
197	M-18	0	0.73	2024-02-19 05:23:36
198	M-13	0	0.82	2024-05-21 03:22:14
199	M-20	0	0.90	2024-11-12 19:21:28
200	M-10	1	0.95	2024-01-04 04:01:27
201	M-19	0	0.92	2024-08-28 06:34:21
202	M-6	1	0.87	2024-11-25 15:19:33
203	M-16	0	0.81	2024-11-12 23:01:43
204	M-15	0	0.61	2024-05-21 05:35:11
205	M-15	1	0.67	2024-08-27 04:21:58
206	M-10	0	0.97	2024-07-22 21:07:19
207	M-13	0	0.70	2024-03-31 07:35:53
208	M-2	0	0.75	2024-11-01 15:54:48
209	M-4	0	0.62	2024-04-02 21:27:40
210	M-15	0	0.69	2024-01-07 22:19:31
211	M-20	0	0.81	2024-07-26 03:16:56
212	M-11	1	0.83	2024-02-03 21:23:06
213	M-6	0	0.97	2024-09-01 02:24:31
214	M-17	0	0.73	2024-03-03 13:30:26
215	M-1	0	0.68	2024-04-07 02:15:41
216	M-16	0	0.84	2024-01-26 05:46:46
217	M-6	0	0.80	2024-07-15 11:49:25
218	M-8	0	0.70	2024-01-14 04:38:59
219	M-9	0	0.80	2024-03-30 17:49:39
220	M-12	0	0.79	2024-06-19 10:21:47
221	M-20	0	0.97	2024-01-06 22:36:22
222	M-20	1	0.73	2024-08-25 02:47:27
223	M-4	0	0.69	2024-09-03 14:46:06
224	M-11	0	0.97	2024-03-19 23:31:41
225	M-1	0	0.75	2024-08-08 11:45:31
226	M-19	1	0.68	2024-07-02 02:43:43
227	M-12	0	0.80	2024-05-28 09:33:40
228	M-12	0	0.65	2024-05-05 07:43:15
229	M-13	0	0.80	2024-06-18 05:30:44
230	M-20	0	0.64	2024-08-14 06:37:01
231	M-4	0	0.79	2024-09-19 07:39:04
232	M-11	0	0.93	2024-03-13 06:47:28
233	M-11	0	0.83	2024-08-05 07:52:25
234	M-11	0	0.66	2024-05-26 13:16:32
235	M-10	0	0.74	2024-07-04 22:30:06
236	M-5	0	0.73	2024-04-16 22:35:04
237	M-6	0	0.93	2024-11-19 20:46:01
238	M-1	0	0.61	2024-04-02 11:14:12
239	M-19	0	0.76	2024-03-26 04:04:48
240	M-3	0	0.97	2024-12-19 04:04:33
241	M-15	0	0.68	2024-05-17 04:12:34
242	M-18	0	0.96	2024-10-08 22:48:36
243	M-11	0	0.71	2024-04-20 04:11:16
244	M-8	0	0.95	2024-11-02 20:50:16
245	M-17	0	0.83	2024-07-07 02:08:02
246	M-4	0	0.95	2024-04-24 04:42:57
247	M-1	0	0.81	2024-09-14 20:56:00
248	M-12	0	0.62	2024-05-23 22:46:23
249	M-7	0	0.80	2024-01-01 02:17:01
250	M-14	0	0.85	2024-09-15 00:32:37
251	M-18	0	0.72	2024-11-09 03:21:01
252	M-9	0	0.71	2024-01-05 01:16:19
253	M-11	1	0.81	2024-02-08 01:53:01
254	M-9	0	0.79	2024-04-21 22:31:54
255	M-18	1	0.99	2024-02-20 22:33:43
256	M-1	0	0.87	2024-05-08 07:23:07
257	M-3	0	0.80	2024-01-18 04:31:36
258	M-18	1	0.95	2024-07-23 03:38:27
259	M-9	0	0.84	2024-03-09 14:26:47
260	M-18	0	0.76	2024-11-24 06:51:33
261	M-12	0	0.77	2024-10-17 23:20:19
262	M-3	0	0.94	2024-04-15 04:00:12
263	M-19	0	0.65	2024-08-20 05:09:49
264	M-18	0	0.80	2024-06-06 11:10:18
265	M-13	1	0.86	2024-06-15 18:13:27
266	M-19	0	0.86	2024-10-15 12:36:12
267	M-9	0	0.80	2024-05-24 18:48:19
268	M-1	0	0.70	2024-07-31 01:27:20
269	M-12	0	0.99	2024-09-23 12:50:30
270	M-14	0	0.94	2024-08-07 08:53:51
271	M-1	0	0.64	2024-06-22 21:38:53
272	M-10	0	0.65	2024-04-07 03:25:46
273	M-9	0	0.85	2024-08-17 05:34:42
274	M-1	0	0.71	2024-01-25 08:36:23
275	M-12	0	0.91	2024-05-20 03:39:40
276	M-2	0	0.88	2024-10-11 08:09:07
277	M-19	1	0.96	2024-03-22 14:24:41
278	M-2	1	0.97	2024-08-21 17:01:12
279	M-8	1	0.99	2024-10-10 00:56:40
280	M-18	1	0.79	2024-03-07 20:09:33
281	M-17	0	0.61	2024-10-09 07:32:08
282	M-15	0	0.83	2024-03-02 04:21:00
283	M-4	0	0.68	2024-03-13 11:27:37
284	M-20	0	0.72	2024-09-27 20:29:34
285	M-11	0	0.86	2024-11-13 15:38:39
286	M-3	0	0.63	2024-09-05 13:20:09
287	M-18	0	0.76	2024-06-26 13:25:12
288	M-9	0	0.67	2024-09-17 17:02:05
289	M-12	0	0.68	2024-08-28 09:15:45
290	M-4	0	0.67	2024-08-03 20:15:56
291	M-5	0	0.81	2024-08-22 09:14:30
292	M-3	0	0.86	2024-08-24 21:25:15
293	M-15	0	0.88	2024-10-16 10:37:03
294	M-15	0	0.82	2024-05-16 15:49:48
295	M-8	0	0.97	2024-05-28 16:25:37
296	M-6	1	0.80	2024-09-04 05:51:43
297	M-18	0	0.94	2024-12-30 07:19:59
298	M-9	0	0.71	2024-09-17 11:32:17
299	M-17	0	0.74	2024-03-31 21:48:55
300	M-11	0	0.92	2024-01-22 06:56:47
301	M-16	0	0.72	2024-06-17 10:42:38
302	M-9	0	0.90	2024-12-13 10:45:52
303	M-14	0	0.85	2024-12-03 05:00:06
304	M-20	0	0.78	2024-03-14 12:46:00
305	M-18	0	0.75	2024-04-29 06:59:42
306	M-19	0	0.70	2024-05-05 04:52:10
307	M-7	0	0.88	2024-07-24 06:17:56
308	M-3	0	0.69	2024-02-06 13:08:18
309	M-1	1	0.71	2024-03-09 18:46:04
310	M-18	0	0.83	2024-04-07 09:22:21
311	M-18	0	0.88	2024-10-24 21:39:40
312	M-19	0	0.72	2024-05-20 15:45:15
313	M-2	0	0.67	2024-01-01 13:45:30
314	M-5	0	0.74	2024-05-04 13:36:12
315	M-15	0	0.93	2024-06-06 13:18:49
316	M-11	0	0.79	2024-06-05 13:29:54
317	M-6	0	0.96	2024-11-21 16:45:01
318	M-14	0	0.70	2024-12-07 02:02:30
319	M-14	0	0.63	2024-03-09 14:54:25
320	M-19	0	0.89	2024-11-11 18:31:40
321	M-10	1	0.94	2024-04-13 04:31:55
322	M-14	0	0.71	2024-02-10 04:52:06
323	M-7	0	0.77	2024-07-25 21:52:22
324	M-1	0	0.79	2024-02-20 18:59:30
325	M-3	0	0.62	2024-03-07 02:42:38
326	M-18	0	0.86	2024-06-09 23:05:46
327	M-5	0	0.67	2024-12-19 17:06:27
328	M-5	1	0.85	2024-07-02 20:59:57
329	M-9	0	0.67	2024-08-16 12:25:07
330	M-15	1	0.97	2024-01-14 00:32:42
331	M-19	0	0.60	2024-10-23 01:35:33
332	M-6	0	0.84	2024-12-16 18:04:38
333	M-1	0	0.77	2024-12-05 08:53:41
334	M-1	1	0.90	2024-06-04 20:10:53
335	M-20	0	0.64	2024-02-13 06:54:13
336	M-12	1	0.68	2024-05-02 06:28:31
337	M-11	0	0.84	2024-12-18 16:49:16
338	M-1	0	0.61	2024-09-11 15:54:24
339	M-2	1	0.62	2024-04-08 23:33:54
340	M-14	0	0.71	2024-06-21 21:28:33
341	M-9	0	0.74	2024-07-21 00:00:14
342	M-8	0	0.85	2024-11-27 15:41:29
343	M-8	0	0.64	2024-02-18 06:23:34
344	M-19	0	0.62	2024-10-05 11:39:03
345	M-4	0	0.90	2024-10-31 07:27:41
346	M-15	0	0.67	2024-06-12 07:05:52
347	M-7	0	0.92	2024-01-18 09:47:04
348	M-3	0	0.71	2024-12-12 19:02:14
349	M-8	0	0.77	2024-10-29 09:21:50
350	M-4	0	0.98	2024-03-12 06:49:39
351	M-8	0	0.63	2024-07-11 20:15:58
352	M-8	0	0.62	2024-01-13 07:11:46
353	M-4	0	0.68	2024-10-11 05:33:23
354	M-15	0	0.78	2024-06-11 20:27:09
355	M-19	0	0.85	2024-10-27 15:20:14
356	M-4	0	0.88	2024-08-27 21:32:12
357	M-11	0	0.76	2024-11-25 18:07:23
358	M-14	0	0.61	2024-02-19 02:17:18
359	M-11	0	0.72	2024-09-11 14:51:52
360	M-16	0	0.98	2024-01-18 12:15:47
361	M-6	0	0.93	2024-08-27 03:36:20
362	M-13	0	0.97	2024-02-12 13:48:12
363	M-16	0	0.84	2024-08-26 22:28:14
364	M-6	0	0.85	2024-10-02 04:15:34
365	M-11	0	0.72	2024-05-27 05:58:16
366	M-13	0	0.80	2024-06-02 07:43:38
367	M-15	0	0.82	2024-04-25 02:12:35
368	M-6	0	0.70	2024-07-08 23:51:00
369	M-18	1	0.79	2024-11-03 20:21:23
370	M-4	0	0.84	2024-01-25 16:07:58
371	M-4	0	0.77	2024-02-28 22:04:45
372	M-15	0	0.66	2024-07-10 17:04:40
373	M-18	0	0.93	2024-10-27 19:19:30
374	M-16	0	0.87	2024-05-26 06:53:10
375	M-4	0	0.83	2024-04-23 09:17:44
376	M-3	1	0.98	2024-05-18 15:46:02
377	M-8	0	0.99	2024-11-17 14:41:20
378	M-12	0	0.98	2024-02-29 07:13:03
379	M-5	0	0.62	2024-11-28 21:27:33
380	M-3	0	0.97	2024-01-16 12:44:32
381	M-20	0	0.72	2024-06-01 14:03:46
382	M-14	0	0.85	2024-12-26 17:07:48
383	M-16	1	0.99	2024-05-23 11:10:35
384	M-16	0	0.94	2024-03-01 11:29:11
385	M-13	0	0.67	2024-10-19 09:40:45
386	M-5	0	0.79	2024-06-19 06:24:18
387	M-20	0	0.64	2024-11-08 18:30:42
388	M-14	0	0.80	2024-09-16 23:14:33
389	M-16	0	0.95	2024-03-02 22:26:19
390	M-6	0	0.77	2024-02-04 23:23:29
391	M-15	0	0.74	2024-11-11 01:53:57
392	M-10	0	0.95	2024-05-09 21:10:27
393	M-18	0	0.79	2024-05-06 23:41:58
394	M-4	0	0.98	2024-01-18 23:51:12
395	M-20	0	0.66	2024-05-23 16:42:43
396	M-18	0	0.81	2024-02-08 12:30:53
397	M-6	0	0.74	2024-09-11 10:38:56
398	M-11	0	0.60	2024-05-12 11:07:40
399	M-12	0	0.91	2024-07-04 15:12:28
400	M-8	1	0.77	2024-03-31 00:44:25
401	M-20	0	0.79	2024-10-31 19:01:18
402	M-8	0	0.95	2024-05-18 13:08:19
403	M-8	1	0.63	2024-10-17 10:59:54
404	M-15	0	0.85	2024-05-29 01:07:55
405	M-13	0	0.92	2024-08-16 06:06:31
406	M-17	0	0.81	2024-05-17 12:07:12
407	M-16	0	0.97	2024-07-06 19:59:42
408	M-14	0	0.63	2024-07-25 00:09:35
409	M-18	0	0.80	2024-04-11 12:05:29
410	M-5	0	0.94	2024-05-10 03:02:38
411	M-7	1	0.67	2024-08-07 00:35:07
412	M-8	0	0.68	2024-07-20 04:03:08
413	M-12	0	0.79	2024-03-13 17:55:26
414	M-11	0	0.77	2024-01-07 14:43:12
415	M-3	1	0.85	2024-04-23 00:39:51
416	M-3	0	0.90	2024-03-09 16:17:20
417	M-10	0	0.78	2024-05-17 17:22:18
418	M-4	0	0.64	2024-04-14 18:51:00
419	M-16	0	0.70	2024-03-19 20:34:13
420	M-6	0	0.67	2024-07-30 18:07:55
421	M-15	0	0.86	2024-02-13 00:52:08
422	M-15	0	0.89	2024-04-09 12:33:48
423	M-1	0	0.79	2024-12-28 23:01:50
424	M-13	0	0.93	2024-11-11 14:25:30
425	M-3	0	0.75	2024-01-31 06:28:19
426	M-19	0	0.84	2024-07-22 06:50:28
427	M-2	1	0.98	2024-12-11 19:19:44
428	M-17	0	0.86	2024-02-15 21:53:19
429	M-14	0	0.79	2024-08-31 13:03:57
430	M-7	0	0.93	2024-09-17 20:51:49
431	M-1	0	0.66	2024-08-31 20:38:01
432	M-17	0	0.86	2024-03-06 01:36:30
433	M-5	0	0.92	2024-10-13 14:31:53
434	M-7	0	0.87	2024-07-05 01:28:02
435	M-12	0	0.70	2024-06-03 16:17:24
436	M-14	0	0.64	2024-05-14 22:10:36
437	M-11	0	0.81	2024-11-03 16:21:58
438	M-7	0	0.68	2024-07-13 22:37:12
439	M-12	0	0.90	2024-04-20 00:49:49
440	M-20	0	0.69	2024-08-13 17:35:41
441	M-7	0	0.83	2024-07-25 02:20:45
442	M-18	0	0.96	2024-12-18 15:46:56
443	M-9	0	0.89	2024-06-29 23:48:30
444	M-7	0	0.78	2024-04-26 01:49:49
445	M-1	0	0.89	2024-11-06 03:36:03
446	M-8	0	0.81	2024-10-02 02:20:28
447	M-11	0	0.98	2024-03-23 16:34:41
448	M-17	0	0.85	2024-04-05 08:29:38
449	M-2	0	0.69	2024-09-20 01:37:40
450	M-2	0	0.63	2024-03-08 01:55:17
451	M-10	0	0.70	2024-11-09 08:42:47
452	M-1	0	0.71	2024-12-15 10:17:26
453	M-20	0	0.66	2024-07-19 21:16:03
454	M-4	1	0.95	2024-05-29 12:07:09
455	M-1	0	0.82	2024-09-01 13:19:44
456	M-13	0	0.76	2024-12-13 20:16:54
457	M-17	1	0.95	2024-01-24 00:46:23
458	M-14	0	0.64	2024-04-20 17:30:52
459	M-15	1	0.76	2024-06-23 04:24:45
460	M-12	0	0.77	2024-02-05 20:41:22
461	M-1	0	0.63	2024-11-24 17:15:57
462	M-20	0	0.87	2024-11-26 09:03:17
463	M-15	0	0.74	2024-07-18 04:05:15
464	M-5	0	0.76	2024-03-26 01:38:03
465	M-19	0	0.69	2024-04-27 11:07:04
466	M-2	0	0.73	2024-09-01 05:06:13
467	M-6	1	0.62	2024-07-08 23:46:23
468	M-15	0	0.92	2024-04-04 05:38:35
469	M-11	0	0.95	2024-04-01 18:10:58
470	M-19	1	0.89	2024-07-04 06:11:39
471	M-9	0	0.65	2024-09-03 21:10:41
472	M-18	0	0.64	2024-03-09 01:44:18
473	M-15	0	0.62	2024-11-25 01:27:32
474	M-1	0	0.85	2024-11-26 21:30:59
475	M-10	0	0.88	2024-03-27 13:11:45
476	M-11	0	0.69	2024-02-29 19:17:38
477	M-12	0	0.81	2024-02-02 09:56:19
478	M-1	0	0.69	2024-10-02 00:00:57
479	M-3	0	0.78	2024-07-17 13:27:15
480	M-3	0	0.67	2024-08-01 22:22:33
481	M-15	0	0.72	2024-09-10 15:32:35
482	M-1	1	0.70	2024-08-28 12:22:54
483	M-17	0	0.78	2024-06-17 23:03:07
484	M-14	0	0.94	2024-06-07 19:31:45
485	M-4	0	0.71	2024-04-10 00:54:20
486	M-16	0	0.61	2024-03-27 07:45:16
487	M-3	0	0.85	2024-07-24 11:56:37
488	M-4	0	0.80	2024-10-12 14:50:23
489	M-9	0	0.93	2024-02-22 05:49:07
490	M-1	0	0.69	2024-11-25 03:32:40
491	M-13	0	0.87	2024-04-26 15:13:20
492	M-3	1	0.69	2024-05-24 23:56:26
493	M-18	0	0.78	2024-10-29 05:50:26
494	M-17	0	0.79	2024-07-31 23:02:48
495	M-8	0	0.79	2024-08-16 17:06:29
496	M-13	0	0.95	2024-09-20 16:38:13
497	M-8	0	0.78	2024-10-14 22:17:09
498	M-4	0	0.69	2024-09-02 01:20:27
499	M-11	0	0.66	2024-03-31 21:47:46
500	M-20	0	0.91	2024-11-17 03:49:49
501	M-1	0	0.93	2024-02-17 05:14:30
502	M-17	0	0.66	2024-04-12 12:48:00
503	M-14	0	0.84	2024-01-11 07:24:38
504	M-19	0	0.80	2024-09-27 15:58:06
505	M-19	0	0.93	2024-08-02 15:45:33
506	M-6	0	0.85	2024-02-23 18:32:51
507	M-17	0	0.86	2024-04-24 01:39:14
508	M-1	1	0.64	2024-12-03 21:24:37
509	M-3	0	0.63	2024-04-18 19:43:21
510	M-6	0	0.93	2024-05-11 03:02:04
511	M-8	0	0.82	2024-07-25 09:14:00
512	M-8	0	0.93	2024-08-19 18:38:28
513	M-6	0	0.90	2024-04-07 19:20:54
514	M-11	0	0.97	2024-11-26 00:12:09
515	M-11	0	0.82	2024-02-06 11:09:02
516	M-13	0	0.72	2024-03-01 14:21:47
517	M-2	0	0.87	2024-12-27 13:50:07
518	M-12	0	0.99	2024-03-04 16:26:02
519	M-14	0	0.90	2024-07-31 11:43:44
520	M-5	0	0.95	2024-08-15 19:48:57
521	M-17	1	0.63	2024-10-23 23:16:29
522	M-16	0	0.80	2024-10-29 16:46:58
523	M-7	0	0.84	2024-01-14 14:08:39
524	M-10	0	0.71	2024-10-11 08:18:47
525	M-17	0	0.85	2024-01-03 05:22:30
526	M-1	0	0.77	2024-04-22 11:06:00
527	M-7	0	0.98	2024-09-21 18:37:39
528	M-11	0	0.81	2024-02-06 00:31:35
529	M-14	0	0.89	2024-11-01 22:42:50
530	M-7	0	0.87	2024-06-18 23:43:34
531	M-15	0	0.96	2024-06-29 10:18:47
532	M-8	0	0.94	2024-09-16 18:08:28
533	M-10	0	0.62	2024-02-18 00:59:58
534	M-2	0	0.72	2024-09-27 07:28:54
535	M-11	1	0.97	2024-08-03 02:48:27
536	M-13	0	0.85	2024-01-02 23:27:32
537	M-19	0	0.76	2024-02-02 20:24:00
538	M-8	0	0.78	2024-12-20 23:22:37
539	M-14	0	0.68	2024-12-29 04:59:40
540	M-19	1	0.70	2024-04-29 14:21:05
541	M-13	0	0.90	2024-08-09 03:10:37
542	M-3	0	0.93	2024-05-08 22:08:20
543	M-3	0	0.69	2024-11-24 12:52:03
544	M-4	0	0.96	2024-10-02 13:02:44
545	M-4	1	0.93	2024-10-22 04:34:02
546	M-10	0	0.82	2024-10-17 11:34:42
547	M-18	0	0.82	2024-02-18 17:43:40
548	M-4	0	0.76	2024-05-20 15:40:24
549	M-16	0	0.85	2024-07-16 15:56:07
550	M-2	0	0.71	2024-11-10 08:59:33
551	M-3	0	0.85	2024-01-17 01:40:56
552	M-20	0	0.91	2024-03-15 02:37:25
553	M-2	1	0.86	2024-11-11 09:13:45
554	M-7	0	0.67	2024-10-10 00:40:39
555	M-2	0	0.66	2024-04-12 10:12:47
556	M-5	0	0.87	2024-02-11 02:08:07
557	M-20	0	0.87	2024-09-13 09:09:47
558	M-17	0	0.73	2024-05-21 12:58:32
559	M-8	0	0.95	2024-06-14 15:29:16
560	M-20	0	0.80	2024-05-22 01:37:07
561	M-19	0	0.88	2024-04-23 17:55:53
562	M-14	0	0.65	2024-07-22 21:39:44
563	M-13	0	0.62	2024-01-18 13:08:29
564	M-8	0	0.77	2024-02-05 16:10:04
565	M-9	0	0.93	2024-02-16 14:51:39
566	M-12	0	0.63	2024-12-11 15:25:28
567	M-5	0	0.80	2024-02-17 05:34:15
568	M-11	0	0.63	2024-06-03 14:31:31
569	M-15	0	0.79	2024-05-11 18:19:23
570	M-6	1	0.75	2024-12-17 19:56:11
571	M-15	0	0.72	2024-12-06 17:33:32
572	M-9	0	0.85	2024-12-03 04:12:29
573	M-17	0	0.84	2024-01-22 10:01:38
574	M-15	0	0.98	2024-09-03 16:35:00
575	M-2	0	0.88	2024-05-06 22:16:08
576	M-10	0	0.87	2024-05-13 01:36:05
577	M-7	0	0.66	2024-07-09 22:13:18
578	M-18	0	0.91	2024-05-29 10:33:23
579	M-8	1	0.73	2024-04-02 12:31:40
580	M-16	0	0.68	2024-05-14 05:31:13
581	M-10	0	0.89	2024-03-23 00:08:51
582	M-19	0	0.94	2024-06-23 21:58:18
583	M-19	0	0.64	2024-07-25 02:28:43
584	M-19	0	0.85	2024-06-12 21:31:15
585	M-18	0	0.70	2024-10-25 12:18:53
586	M-12	0	0.84	2024-01-31 22:42:31
587	M-1	0	0.86	2024-07-29 21:16:12
588	M-18	0	0.61	2024-02-24 03:45:35
589	M-5	0	0.63	2024-12-07 07:43:45
590	M-3	0	0.63	2024-07-18 11:53:59
591	M-4	0	0.78	2024-04-26 09:12:52
592	M-8	1	0.83	2024-06-16 18:39:46
593	M-5	0	0.85	2024-09-09 12:38:11
594	M-1	0	0.62	2024-07-01 05:44:55
595	M-6	0	0.80	2024-02-22 16:57:05
596	M-16	0	0.87	2024-01-05 18:38:04
597	M-6	0	0.91	2024-06-20 04:43:25
598	M-1	0	0.83	2024-10-27 21:02:44
599	M-18	1	0.72	2024-12-04 11:09:53
600	M-9	0	0.75	2024-06-04 02:07:53
601	M-12	1	0.63	2024-12-04 08:27:46
602	M-13	0	0.95	2024-10-29 09:11:33
603	M-7	0	0.85	2024-08-09 04:47:48
604	M-16	1	0.91	2024-04-19 08:31:08
605	M-1	1	0.97	2024-12-04 23:33:43
606	M-9	0	0.95	2024-02-23 17:17:02
607	M-8	0	0.70	2024-07-05 07:22:58
608	M-11	0	0.75	2024-10-30 23:01:01
609	M-5	0	0.88	2024-12-24 10:09:46
610	M-14	0	0.63	2024-10-10 08:23:43
611	M-9	0	0.70	2024-02-27 22:51:21
612	M-12	0	0.61	2024-07-20 00:28:32
613	M-11	0	0.77	2024-05-29 01:46:10
614	M-11	0	0.79	2024-01-03 18:25:20
615	M-5	0	0.85	2024-03-17 15:25:05
616	M-1	0	0.90	2024-07-18 16:37:53
617	M-17	0	0.99	2024-05-18 17:34:29
618	M-10	1	0.79	2024-11-21 12:56:38
619	M-20	0	0.70	2024-08-11 11:38:13
620	M-16	0	0.80	2024-02-20 09:23:40
621	M-1	0	0.98	2024-11-09 06:17:04
622	M-8	0	0.88	2024-02-14 19:24:11
623	M-3	0	0.83	2024-10-25 04:01:59
624	M-16	0	0.63	2024-10-24 22:52:54
625	M-15	0	0.94	2024-12-26 17:18:28
626	M-7	0	0.75	2024-05-15 16:11:22
627	M-16	1	0.63	2024-03-12 05:54:34
628	M-5	0	0.68	2024-07-28 12:13:54
629	M-4	0	0.64	2024-09-09 05:53:23
630	M-17	0	0.84	2024-06-17 01:56:46
631	M-15	1	0.97	2024-01-06 07:16:23
632	M-18	0	0.67	2024-07-05 10:54:16
633	M-4	0	0.65	2024-12-16 17:15:30
634	M-1	0	0.75	2024-05-27 21:17:52
635	M-11	0	0.79	2024-05-23 17:39:00
636	M-6	1	0.63	2024-08-14 07:10:43
637	M-20	0	0.88	2024-07-07 19:21:59
638	M-18	0	0.82	2024-04-22 03:09:21
639	M-7	0	0.63	2024-07-14 16:28:30
640	M-20	0	0.93	2024-12-01 04:41:16
641	M-20	1	0.63	2024-06-19 07:58:23
642	M-13	1	0.78	2024-01-31 15:37:08
643	M-17	0	0.77	2024-12-30 13:53:07
644	M-3	0	0.80	2024-03-24 17:02:55
645	M-1	0	0.85	2024-03-04 18:07:18
646	M-7	0	0.93	2024-03-29 10:27:04
647	M-19	0	0.99	2024-06-19 06:03:56
648	M-10	1	0.91	2024-04-19 07:58:11
649	M-3	0	0.74	2024-05-10 02:40:18
650	M-4	0	0.92	2024-04-04 12:40:05
651	M-6	0	0.79	2024-04-17 13:11:40
652	M-15	0	0.70	2024-03-03 01:12:43
653	M-12	0	0.74	2024-12-14 16:09:23
654	M-4	1	0.80	2024-07-18 23:59:37
655	M-7	0	0.65	2024-10-27 19:59:13
656	M-19	0	0.69	2024-04-06 14:05:44
657	M-13	0	0.82	2024-07-25 05:54:22
658	M-9	1	0.84	2024-01-24 09:16:21
659	M-7	0	0.70	2024-06-05 08:37:48
660	M-9	0	0.82	2024-02-20 09:53:58
661	M-13	0	0.65	2024-06-16 16:19:19
662	M-19	0	0.61	2024-08-25 16:51:57
663	M-4	0	0.69	2024-09-05 15:33:52
664	M-14	0	0.79	2024-07-12 08:44:38
665	M-8	0	0.72	2024-03-07 16:55:44
666	M-9	0	0.83	2024-10-27 06:15:23
667	M-13	0	0.96	2024-10-15 01:23:42
668	M-14	0	0.89	2024-07-06 14:33:41
669	M-4	0	0.86	2024-09-10 09:55:49
670	M-14	0	0.70	2024-06-23 20:27:04
671	M-17	0	0.65	2024-03-09 07:58:59
672	M-6	0	0.61	2024-10-07 02:20:07
673	M-6	0	0.99	2024-06-28 21:40:00
674	M-5	0	0.76	2024-11-10 11:16:00
675	M-9	0	0.66	2024-11-26 11:00:36
676	M-5	0	0.69	2024-02-13 06:20:53
677	M-5	1	0.82	2024-09-25 11:16:51
678	M-17	0	0.90	2024-08-27 12:11:17
679	M-7	0	0.73	2024-06-21 18:05:31
680	M-16	0	0.96	2024-04-06 06:54:40
681	M-18	0	0.79	2024-02-07 19:51:23
682	M-6	0	0.99	2024-04-08 01:32:58
683	M-7	0	0.95	2024-03-11 11:20:43
684	M-8	0	0.72	2024-08-05 10:39:46
685	M-6	0	0.65	2024-09-21 19:35:49
686	M-5	0	0.91	2024-09-25 12:40:10
687	M-13	0	0.88	2024-05-15 13:38:01
688	M-3	0	0.69	2024-07-15 23:04:56
689	M-16	1	0.97	2024-05-09 06:16:14
690	M-12	0	0.73	2024-09-20 04:46:59
691	M-11	0	0.76	2024-12-01 20:45:35
692	M-3	0	0.70	2024-03-13 13:37:27
693	M-8	0	0.66	2024-01-13 01:32:13
694	M-3	0	0.78	2024-04-19 15:25:30
695	M-19	0	0.89	2024-08-24 17:12:51
696	M-17	0	0.97	2024-12-27 05:08:35
697	M-1	0	0.83	2024-01-13 01:07:25
698	M-1	0	0.68	2024-09-30 19:49:21
699	M-4	0	0.65	2024-12-01 10:15:12
700	M-19	0	0.76	2024-06-07 00:29:58
701	M-19	1	0.85	2024-04-06 11:17:10
702	M-20	0	0.83	2024-04-09 02:00:12
703	M-3	0	0.61	2024-12-05 16:47:21
704	M-4	0	0.76	2024-03-31 21:49:41
705	M-12	0	0.64	2024-05-05 11:50:17
706	M-8	0	0.94	2024-01-19 14:31:53
707	M-19	0	0.60	2024-04-13 05:01:19
708	M-14	0	0.93	2024-04-19 08:48:00
709	M-17	0	0.96	2024-02-23 02:05:51
710	M-11	0	0.60	2024-11-13 13:23:34
711	M-12	0	0.94	2024-02-10 19:04:12
712	M-13	0	0.84	2024-01-22 02:18:50
713	M-19	0	0.98	2024-11-16 06:08:21
714	M-14	0	0.82	2024-06-22 16:40:57
715	M-18	0	0.67	2024-04-12 05:40:36
716	M-18	0	0.86	2024-05-02 17:02:58
717	M-6	0	0.64	2024-10-19 05:22:51
718	M-18	0	0.97	2024-12-16 23:36:01
719	M-2	0	0.85	2024-08-31 15:27:57
720	M-10	0	0.74	2024-10-26 06:23:05
721	M-7	0	0.61	2024-03-04 08:53:58
722	M-7	0	0.75	2024-07-04 00:29:11
723	M-6	0	0.68	2024-06-16 12:39:46
724	M-19	0	0.66	2024-06-09 07:18:54
725	M-13	1	0.68	2024-03-05 03:19:44
726	M-15	0	0.72	2024-12-20 02:16:08
727	M-8	0	0.88	2024-03-06 18:10:13
728	M-14	0	0.61	2024-08-28 21:27:55
729	M-16	0	0.68	2024-11-21 09:03:10
730	M-8	0	0.76	2024-05-20 01:17:40
731	M-3	0	0.86	2024-05-27 22:09:36
732	M-16	0	0.67	2024-01-24 23:11:51
733	M-14	0	0.79	2024-08-09 09:49:11
734	M-14	1	0.73	2024-08-12 21:04:26
735	M-9	0	0.96	2024-12-10 01:03:04
736	M-10	0	0.89	2024-11-19 20:31:26
737	M-14	1	0.90	2024-02-09 12:53:03
738	M-9	0	0.69	2024-10-22 00:43:21
739	M-16	0	0.81	2024-03-22 08:32:53
740	M-2	0	0.84	2024-08-04 02:29:25
741	M-15	0	0.69	2024-03-15 18:59:16
742	M-16	0	0.84	2024-01-27 07:43:01
743	M-12	0	0.85	2024-02-13 05:03:08
744	M-17	0	0.80	2024-06-25 19:11:19
745	M-1	0	0.91	2024-11-25 23:26:35
746	M-16	0	0.69	2024-04-04 14:26:40
747	M-6	0	0.84	2024-02-24 20:42:54
748	M-18	0	0.78	2024-03-07 09:26:08
749	M-10	0	0.79	2024-04-11 12:33:13
750	M-10	0	0.80	2024-11-21 12:55:18
751	M-4	0	0.82	2024-06-25 18:09:33
752	M-16	0	0.72	2024-01-15 21:16:24
753	M-16	0	0.73	2024-05-18 19:00:29
754	M-3	1	0.83	2024-07-29 10:11:02
755	M-3	0	0.74	2024-10-08 20:55:56
756	M-6	0	0.99	2024-03-05 05:33:13
757	M-15	0	0.67	2024-07-14 23:33:44
758	M-15	1	0.90	2024-07-14 03:59:23
759	M-12	0	0.80	2024-02-29 10:54:21
760	M-16	0	0.81	2024-07-23 20:24:17
761	M-17	0	0.92	2024-10-28 12:47:26
762	M-9	0	0.70	2024-03-16 22:45:06
763	M-17	0	0.90	2024-01-28 02:07:02
764	M-11	0	0.91	2024-12-19 06:46:48
765	M-13	0	0.74	2024-01-30 16:11:24
766	M-20	0	0.94	2024-08-16 17:22:05
767	M-5	0	0.78	2024-07-04 22:42:47
768	M-15	0	0.76	2024-07-16 07:34:24
769	M-1	0	0.98	2024-02-16 23:02:00
770	M-18	0	0.95	2024-12-06 02:50:30
771	M-3	0	0.94	2024-06-07 14:48:56
772	M-12	0	0.78	2024-07-23 00:16:36
773	M-10	0	0.72	2024-03-26 23:27:58
774	M-5	0	0.82	2024-09-05 21:47:49
775	M-12	0	0.67	2024-09-01 07:36:40
776	M-11	0	0.69	2024-11-10 20:24:59
777	M-11	0	0.60	2024-11-14 16:14:23
778	M-14	0	0.85	2024-06-27 14:06:53
779	M-16	0	0.67	2024-08-06 12:42:59
780	M-20	0	0.90	2024-10-31 04:39:01
781	M-1	0	0.70	2024-12-16 13:02:21
782	M-5	0	0.96	2024-10-27 13:47:21
783	M-5	0	0.90	2024-11-07 19:29:18
784	M-7	0	0.84	2024-08-15 03:40:16
785	M-12	0	0.71	2024-11-05 14:35:08
786	M-8	0	0.66	2024-07-30 07:58:58
787	M-13	0	0.64	2024-07-02 07:11:04
788	M-11	1	0.86	2024-08-06 20:31:32
789	M-13	0	0.84	2024-01-12 12:19:55
790	M-5	0	0.66	2024-01-29 12:17:13
791	M-19	0	0.86	2024-01-08 20:41:12
792	M-15	0	0.93	2024-06-26 10:10:11
793	M-19	0	0.96	2024-01-17 17:48:22
794	M-19	0	0.95	2024-09-18 20:19:22
795	M-17	0	0.99	2024-10-05 11:31:38
796	M-2	0	0.62	2024-02-23 03:10:33
797	M-19	1	0.96	2024-10-03 06:08:11
798	M-20	0	0.84	2024-07-08 11:03:38
799	M-8	0	0.67	2024-05-03 23:40:48
800	M-11	1	0.61	2024-09-14 10:33:09
801	M-2	0	0.73	2024-02-23 03:41:53
802	M-5	0	0.65	2024-03-14 16:52:16
803	M-18	1	0.99	2024-03-02 18:17:57
804	M-19	0	0.86	2024-04-17 17:40:32
805	M-19	0	0.97	2024-11-11 23:38:16
806	M-3	0	0.73	2024-03-23 03:28:57
807	M-10	1	0.68	2024-05-16 10:17:24
808	M-12	0	0.70	2024-11-15 09:36:14
809	M-14	0	0.81	2024-08-21 16:24:33
810	M-16	0	0.72	2024-11-16 17:20:06
811	M-10	0	0.66	2024-04-08 01:56:22
812	M-13	0	0.79	2024-11-07 21:30:55
813	M-17	1	0.79	2024-09-09 10:43:10
814	M-12	1	0.92	2024-05-18 05:54:02
815	M-7	0	0.83	2024-10-15 17:19:04
816	M-9	0	0.80	2024-08-02 20:35:06
817	M-17	0	0.80	2024-11-05 22:18:54
818	M-8	0	0.95	2024-05-24 23:27:22
819	M-8	0	0.84	2024-05-19 07:41:32
820	M-16	0	0.66	2024-05-07 09:02:47
821	M-9	0	0.91	2024-05-13 16:26:48
822	M-6	0	0.71	2024-12-02 04:04:45
823	M-16	0	0.72	2024-05-21 02:27:08
824	M-18	0	0.69	2024-09-08 09:18:13
825	M-4	0	0.92	2024-01-06 01:15:12
826	M-7	0	0.90	2024-01-17 15:19:28
827	M-16	0	0.83	2024-01-31 10:51:00
828	M-3	0	0.67	2024-09-21 20:47:09
829	M-14	0	0.80	2024-06-10 20:59:27
830	M-17	1	0.91	2024-08-13 21:10:01
831	M-9	0	0.98	2024-12-06 01:00:41
832	M-3	0	0.94	2024-10-14 21:30:24
833	M-4	0	0.80	2024-08-10 22:58:11
834	M-4	0	0.88	2024-09-20 13:13:08
835	M-12	0	0.67	2024-11-07 00:26:47
836	M-16	0	0.90	2024-08-26 03:03:55
837	M-8	0	0.81	2024-10-30 23:08:24
838	M-16	0	0.99	2024-12-12 05:49:38
839	M-3	0	0.82	2024-04-08 20:42:07
840	M-16	0	0.97	2024-07-12 08:57:38
841	M-12	0	0.83	2024-08-13 00:19:39
842	M-9	0	0.70	2024-02-05 04:04:12
843	M-5	0	0.82	2024-09-12 20:29:02
844	M-16	0	0.88	2024-08-26 20:58:12
845	M-5	0	0.61	2024-02-04 14:15:29
846	M-2	0	0.93	2024-06-10 22:06:18
847	M-6	0	0.87	2024-04-19 06:17:50
848	M-7	0	0.71	2024-02-03 20:13:23
849	M-19	0	0.75	2024-11-18 17:05:10
850	M-16	0	0.92	2024-10-23 17:46:58
851	M-20	0	0.83	2024-10-02 05:32:50
852	M-5	1	0.62	2024-07-18 09:05:11
853	M-8	0	0.70	2024-12-13 02:45:01
854	M-16	0	0.86	2024-01-21 11:31:37
855	M-9	0	0.90	2024-12-28 14:24:40
856	M-15	0	0.61	2024-07-15 02:43:33
857	M-1	0	0.82	2024-09-14 00:05:02
858	M-4	1	0.75	2024-03-23 15:42:38
859	M-13	0	0.62	2024-12-01 11:40:40
860	M-9	0	0.96	2024-03-03 10:05:52
861	M-8	0	0.69	2024-05-07 05:05:32
862	M-17	0	0.66	2024-12-25 21:18:17
863	M-20	0	0.62	2024-10-01 02:53:47
864	M-10	0	0.93	2024-12-22 19:04:42
865	M-4	0	0.71	2024-01-25 13:02:55
866	M-10	1	0.77	2024-03-15 05:40:48
867	M-20	0	0.68	2024-11-08 19:40:06
868	M-2	0	0.79	2024-06-13 07:31:39
869	M-9	0	0.91	2024-12-21 00:03:16
870	M-6	0	0.87	2024-05-23 22:24:31
871	M-8	0	0.96	2024-03-06 03:17:03
872	M-5	0	0.85	2024-10-26 09:39:39
873	M-20	0	0.84	2024-08-26 18:25:09
874	M-17	0	0.61	2024-11-01 08:32:05
875	M-19	0	0.93	2024-10-12 09:14:43
876	M-15	0	0.76	2024-10-08 21:02:12
877	M-5	0	0.99	2024-03-13 21:38:57
878	M-16	0	0.91	2024-06-03 01:34:29
879	M-1	0	0.96	2024-04-09 21:57:17
880	M-5	1	0.66	2024-01-02 06:04:21
881	M-7	0	0.94	2024-06-16 15:48:11
882	M-18	0	0.63	2024-06-14 00:45:10
883	M-12	0	0.62	2024-05-20 17:38:50
884	M-10	0	0.62	2024-08-11 21:43:54
885	M-10	0	0.61	2024-07-23 10:21:28
886	M-2	0	0.78	2024-01-11 13:09:43
887	M-11	0	0.87	2024-06-14 03:51:06
888	M-15	0	0.94	2024-01-11 04:59:08
889	M-3	0	0.64	2024-10-06 09:38:02
890	M-8	0	0.82	2024-07-06 01:16:50
891	M-13	0	0.72	2024-10-05 13:03:04
892	M-9	0	0.77	2024-08-19 16:41:26
893	M-15	0	0.98	2024-05-09 02:15:56
894	M-5	0	0.78	2024-09-15 00:27:54
895	M-9	0	0.87	2024-09-12 02:59:45
896	M-4	0	0.94	2024-07-03 11:46:51
897	M-5	0	0.83	2024-11-06 09:47:27
898	M-8	0	0.81	2024-05-04 10:33:58
899	M-17	1	0.73	2024-08-07 05:55:24
900	M-7	0	0.91	2024-08-03 08:27:24
901	M-15	0	0.76	2024-09-21 07:50:53
902	M-6	0	0.96	2024-03-27 08:51:56
903	M-4	1	0.64	2024-05-22 20:02:09
904	M-11	0	0.73	2024-05-09 09:33:27
905	M-15	0	0.72	2024-07-30 18:45:16
906	M-11	0	0.89	2024-10-18 10:02:53
907	M-17	0	0.94	2024-04-12 01:01:57
908	M-13	0	0.70	2024-06-20 17:55:10
909	M-6	0	0.65	2024-08-17 20:42:05
910	M-6	0	0.64	2024-10-19 19:35:43
911	M-5	0	0.96	2024-04-04 07:28:40
912	M-9	0	0.69	2024-08-19 12:57:35
913	M-13	1	0.63	2024-08-01 09:35:31
914	M-1	0	0.81	2024-01-25 09:58:10
915	M-20	0	0.99	2024-11-11 06:19:14
916	M-16	0	0.63	2024-01-24 17:09:50
917	M-4	0	0.81	2024-04-16 11:06:54
918	M-3	0	0.81	2024-06-04 03:29:54
919	M-3	0	0.63	2024-12-19 13:16:59
920	M-14	0	0.61	2024-06-09 14:26:54
921	M-6	0	0.70	2024-05-08 13:32:27
922	M-8	0	0.71	2024-09-03 19:26:53
923	M-4	1	0.80	2024-05-25 09:31:37
924	M-8	0	0.96	2024-08-11 14:14:41
925	M-8	0	0.72	2024-10-19 23:45:01
926	M-2	1	0.93	2024-06-20 08:35:19
927	M-11	0	0.62	2024-04-29 08:03:22
928	M-3	0	0.69	2024-01-30 22:40:57
929	M-3	0	0.65	2024-02-21 03:15:12
930	M-13	1	0.72	2024-11-28 10:36:48
931	M-17	0	0.75	2024-10-25 06:00:52
932	M-12	0	0.67	2024-04-16 20:34:59
933	M-4	1	0.80	2024-03-10 08:14:54
934	M-2	0	0.87	2024-11-22 14:43:49
935	M-17	0	0.71	2024-05-06 22:35:17
936	M-5	0	0.91	2024-09-03 16:43:10
937	M-18	0	0.70	2024-07-19 03:41:49
938	M-17	0	0.64	2024-10-29 03:01:53
939	M-4	0	0.91	2024-09-17 22:09:40
940	M-16	0	0.67	2024-12-25 20:56:35
941	M-19	0	0.68	2024-04-08 02:58:48
942	M-15	0	0.91	2024-04-01 15:39:08
943	M-11	0	0.87	2024-09-12 09:40:11
944	M-3	0	0.91	2024-01-16 01:37:33
945	M-11	0	0.68	2024-09-07 06:30:07
946	M-3	0	0.91	2024-08-19 17:06:22
947	M-4	0	0.76	2024-06-27 07:12:51
948	M-13	0	0.83	2024-03-12 15:32:12
949	M-4	0	0.66	2024-05-12 18:11:07
950	M-11	0	0.79	2024-03-10 02:48:07
951	M-2	0	0.75	2024-03-21 15:22:29
952	M-8	0	0.77	2024-07-28 12:29:16
953	M-9	0	0.78	2024-04-10 07:48:07
954	M-20	0	0.72	2024-02-09 10:42:51
955	M-18	0	0.76	2024-09-02 11:48:04
956	M-2	0	0.94	2024-11-08 14:05:21
957	M-11	0	0.94	2024-07-12 07:44:15
958	M-12	0	0.99	2024-02-22 17:58:38
959	M-4	1	0.98	2024-10-25 01:55:25
960	M-16	0	0.86	2024-03-14 20:29:43
961	M-8	0	0.88	2024-04-12 19:18:27
962	M-20	1	0.74	2024-08-19 23:37:19
963	M-16	1	0.77	2024-01-06 13:58:57
964	M-4	0	0.63	2024-06-12 13:12:00
965	M-7	0	0.76	2024-01-25 02:26:05
966	M-7	0	0.86	2024-04-09 09:06:39
967	M-5	0	0.96	2024-10-15 00:40:47
968	M-1	0	0.85	2024-08-05 08:26:37
969	M-20	0	0.85	2024-05-14 17:03:35
970	M-5	0	0.94	2024-03-21 18:41:57
971	M-20	0	0.78	2024-07-26 05:38:18
972	M-1	0	0.89	2024-08-02 09:57:47
973	M-1	0	0.86	2024-01-11 17:13:27
974	M-3	1	0.70	2024-06-26 15:51:36
975	M-6	0	0.69	2024-10-28 09:46:29
976	M-9	0	0.62	2024-04-24 23:12:11
977	M-19	0	0.85	2024-08-05 02:59:43
978	M-9	0	0.87	2024-02-01 20:52:33
979	M-7	0	0.76	2024-07-16 22:51:48
980	M-4	0	0.61	2024-01-30 21:37:16
981	M-4	0	0.90	2024-10-25 04:46:19
982	M-11	0	0.70	2024-07-11 15:22:03
983	M-8	0	0.66	2024-01-12 07:48:38
984	M-18	0	0.70	2024-10-31 02:50:33
985	M-20	0	0.90	2024-03-15 14:36:46
986	M-1	0	0.96	2024-05-31 16:57:54
987	M-6	0	0.80	2024-10-01 17:13:28
988	M-20	1	0.61	2024-05-03 19:41:45
989	M-7	0	0.89	2024-11-10 16:02:22
990	M-20	0	0.92	2024-05-24 13:39:18
991	M-14	0	0.82	2024-11-03 21:49:43
992	M-17	1	0.95	2024-11-26 16:54:43
993	M-17	0	0.77	2024-04-12 01:22:35
994	M-2	0	0.65	2024-12-23 09:11:32
995	M-4	0	0.77	2024-05-27 13:54:48
996	M-4	0	0.82	2024-06-13 07:45:07
997	M-8	0	0.91	2024-08-03 08:48:48
998	M-6	0	0.99	2024-01-01 21:13:59
999	M-2	0	0.85	2024-08-07 23:48:06
1000	M-3	0	0.92	2024-04-19 06:00:58
\.


--
-- Data for Name: capteurs_machines; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.capteurs_machines (sensor_id, machine_id, temperature_c, vibration_level, pressure_bar, "timestamp") FROM stdin;
1	M-7	82.65	5.22	7.55	2024-07-02 03:57:36
2	M-14	68.48	4.71	8.69	2024-08-06 09:49:43
3	M-9	72.75	3.77	11.94	2024-03-27 03:41:18
4	M-15	89.14	7.59	10.32	2024-04-29 19:12:11
5	M-3	70.86	3.03	10.51	2024-08-06 20:02:55
6	M-8	81.67	1.28	9.58	2024-06-22 19:12:55
7	M-15	73.96	4.79	5.07	2024-05-31 21:07:42
8	M-1	72.52	7.99	8.07	2024-01-04 21:12:47
9	M-8	76.60	5.38	8.82	2024-06-26 17:26:55
10	M-13	52.52	6.18	7.54	2024-03-01 22:30:56
11	M-4	88.40	6.86	10.84	2024-04-09 15:36:38
12	M-7	80.12	4.08	12.13	2024-06-01 16:55:11
13	M-14	77.96	3.07	9.60	2024-01-04 16:17:59
14	M-3	84.84	5.49	7.02	2024-04-13 11:19:27
15	M-18	90.40	6.09	10.56	2024-07-27 22:41:05
16	M-10	81.86	5.45	10.87	2024-03-31 01:19:33
17	M-12	62.26	8.55	11.34	2024-12-06 01:45:02
18	M-11	72.27	3.26	7.97	2024-05-11 01:29:45
19	M-8	64.53	4.53	3.69	2024-11-24 13:31:52
20	M-9	61.66	3.98	12.16	2024-05-12 13:41:10
21	M-11	69.40	6.13	9.39	2024-06-29 15:02:38
22	M-8	77.79	5.46	9.92	2024-04-14 20:13:19
23	M-2	73.72	5.18	10.87	2024-10-17 23:49:49
24	M-13	70.90	5.58	10.49	2024-09-11 05:02:53
25	M-14	74.20	4.88	10.60	2024-02-09 23:42:59
26	M-14	67.81	4.13	9.32	2024-04-28 08:21:31
27	M-3	63.26	4.54	9.53	2024-05-26 06:22:49
28	M-5	73.98	5.94	9.63	2024-11-15 12:06:52
29	M-3	68.47	5.48	11.95	2024-07-27 06:41:40
30	M-3	78.03	5.82	8.75	2024-07-20 00:10:45
31	M-2	70.46	5.78	6.80	2024-11-22 04:28:43
32	M-18	75.09	3.80	11.82	2024-11-15 08:08:31
33	M-7	71.13	4.46	12.96	2024-07-21 22:53:22
34	M-9	52.27	4.20	11.61	2024-12-23 17:34:41
35	M-4	66.86	5.47	12.79	2024-08-30 03:25:22
36	M-13	45.07	5.74	6.08	2024-11-22 04:05:28
37	M-17	65.56	6.42	11.75	2024-06-06 01:53:37
38	M-16	82.84	5.02	10.88	2024-07-24 02:53:47
39	M-9	62.01	5.92	11.59	2024-12-28 07:17:49
40	M-7	60.57	4.37	9.50	2024-10-02 12:47:37
41	M-4	53.99	3.84	8.60	2024-05-12 02:33:01
42	M-16	68.78	5.04	12.21	2024-10-24 14:52:14
43	M-19	77.31	4.40	7.02	2024-02-07 02:42:18
44	M-15	81.57	2.36	13.11	2024-05-09 03:49:00
45	M-10	70.61	6.60	10.88	2024-07-26 19:37:13
46	M-3	71.07	4.96	9.69	2024-01-16 07:39:05
47	M-19	56.82	4.45	10.77	2024-03-12 08:41:00
48	M-16	68.06	2.76	13.15	2024-05-27 11:45:14
49	M-5	74.19	5.45	11.02	2024-10-06 14:47:01
50	M-5	67.13	7.06	6.02	2024-01-02 18:47:34
51	M-3	61.88	7.12	14.68	2024-04-20 00:43:47
52	M-16	72.80	6.29	9.22	2024-01-27 17:10:27
53	M-14	85.88	5.02	9.56	2024-02-19 04:32:24
54	M-5	69.99	5.21	11.93	2024-04-26 19:55:09
55	M-1	74.51	5.22	10.82	2024-10-27 11:10:26
56	M-6	74.05	4.80	12.91	2024-12-08 04:43:16
57	M-19	69.62	6.24	10.33	2024-06-09 16:10:09
58	M-2	78.82	3.86	10.97	2024-09-06 12:03:28
59	M-3	64.50	8.72	9.82	2024-08-20 13:51:53
60	M-4	72.16	7.50	8.59	2024-11-02 08:45:14
61	M-11	71.91	3.09	7.06	2024-12-21 08:40:06
62	M-8	91.13	6.65	11.12	2024-08-19 03:55:33
63	M-2	69.84	4.95	10.82	2024-03-20 23:00:40
64	M-8	62.01	7.22	8.32	2024-01-10 18:34:24
65	M-19	60.25	3.36	9.95	2024-05-05 22:39:48
66	M-9	77.39	3.68	11.09	2024-08-20 19:04:43
67	M-12	58.20	6.02	8.04	2024-10-03 13:49:02
68	M-6	54.91	9.29	11.63	2024-06-08 00:41:53
69	M-12	62.93	4.54	8.72	2024-02-29 18:16:05
70	M-14	76.01	5.10	14.01	2024-11-22 09:03:43
71	M-9	68.65	5.35	11.84	2024-11-02 02:57:14
72	M-6	70.64	4.01	9.22	2024-12-28 09:01:41
73	M-15	72.28	6.10	9.83	2024-04-20 18:56:27
74	M-15	99.69	5.49	9.21	2024-01-16 13:48:39
75	M-6	55.14	7.13	9.13	2024-09-18 03:51:56
76	M-1	57.75	6.02	10.73	2024-04-01 22:52:17
77	M-5	62.93	2.00	9.66	2024-03-07 23:47:24
78	M-3	70.62	7.00	9.27	2024-11-08 11:00:28
79	M-18	61.74	5.91	8.62	2024-01-04 11:27:32
80	M-14	52.49	4.91	13.20	2024-06-28 03:05:30
81	M-8	70.79	2.89	13.11	2024-08-12 18:13:31
82	M-5	58.53	5.54	11.74	2024-06-25 18:55:08
83	M-9	65.80	4.58	7.43	2024-12-12 11:23:26
84	M-4	68.16	3.84	8.99	2024-08-10 02:52:43
85	M-4	66.25	4.20	7.84	2024-10-07 00:04:03
86	M-13	61.91	5.02	12.10	2024-05-16 14:36:39
87	M-3	80.89	4.04	12.85	2024-12-30 04:48:52
88	M-8	75.87	6.08	11.80	2024-01-28 02:25:37
89	M-1	63.75	6.05	11.31	2024-02-02 20:15:02
90	M-5	69.81	6.41	11.05	2024-07-15 07:06:42
91	M-2	78.12	3.57	7.53	2024-03-10 20:45:42
92	M-12	72.14	3.12	12.63	2024-08-07 11:53:26
93	M-3	68.50	6.58	9.98	2024-06-07 01:16:18
94	M-10	65.59	2.19	7.22	2024-05-05 15:44:14
95	M-19	70.46	5.15	10.71	2024-12-05 05:57:57
96	M-11	67.09	6.33	9.82	2024-06-24 20:39:03
97	M-18	87.32	2.29	6.91	2024-08-01 14:16:59
98	M-19	56.78	2.92	10.85	2024-11-20 22:20:10
99	M-15	58.05	5.78	8.10	2024-05-17 03:00:30
100	M-19	57.53	3.52	9.39	2024-04-27 16:36:54
101	M-18	60.88	6.46	11.48	2024-03-15 15:58:19
102	M-7	61.65	4.98	7.08	2024-06-15 02:52:26
103	M-10	58.89	5.91	9.17	2024-06-06 20:04:38
104	M-17	65.07	5.03	11.11	2024-01-20 00:27:37
105	M-7	58.73	6.09	12.35	2024-11-25 05:49:51
106	M-16	60.34	0.80	7.90	2024-10-12 04:21:15
107	M-11	77.82	5.79	9.06	2024-11-13 16:58:26
108	M-5	64.98	4.14	8.58	2024-03-22 03:50:19
109	M-12	70.77	6.34	11.52	2024-09-13 06:33:03
110	M-12	64.83	4.27	11.24	2024-12-29 21:45:52
111	M-17	66.49	2.66	15.46	2024-03-21 17:01:37
112	M-18	74.51	6.35	8.44	2024-12-22 21:52:32
113	M-19	74.31	6.11	8.31	2024-03-23 10:28:13
114	M-8	65.04	5.59	11.83	2024-08-14 19:50:47
115	M-20	71.11	5.79	9.86	2024-10-16 02:47:27
116	M-9	70.36	5.50	9.21	2024-01-23 22:00:44
117	M-17	67.95	3.94	9.69	2024-11-08 10:07:55
118	M-5	68.01	4.86	12.16	2024-02-07 02:01:44
119	M-17	68.44	5.94	10.48	2024-08-12 02:27:33
120	M-1	66.06	5.37	8.52	2024-10-16 11:45:10
121	M-14	71.29	7.56	9.34	2024-10-24 10:38:13
122	M-14	64.89	2.39	14.82	2024-08-09 17:56:18
123	M-20	69.06	5.02	12.90	2024-11-25 21:45:24
124	M-6	61.51	4.44	11.74	2024-07-08 22:43:27
125	M-2	61.31	5.53	11.46	2024-10-04 16:17:32
126	M-18	70.32	4.06	8.89	2024-05-02 18:51:32
127	M-10	73.67	4.62	10.57	2024-07-29 23:11:49
128	M-9	45.81	6.14	8.54	2024-11-03 10:15:16
129	M-4	71.79	5.27	7.23	2024-03-10 08:07:08
130	M-15	69.54	4.70	10.25	2024-12-27 18:33:50
131	M-12	54.41	6.30	10.53	2024-03-16 03:10:57
132	M-17	60.36	3.85	7.83	2024-05-25 04:31:36
133	M-16	70.99	3.01	9.75	2024-09-28 05:17:12
134	M-8	75.37	6.59	8.14	2024-03-14 07:47:15
135	M-17	58.03	1.54	10.17	2024-12-22 02:24:17
136	M-18	68.11	5.30	11.50	2024-02-24 01:41:27
137	M-13	81.25	4.52	8.11	2024-11-22 22:13:45
138	M-18	86.89	4.35	8.77	2024-04-09 01:54:44
139	M-10	79.15	7.15	9.35	2024-07-08 23:43:39
140	M-10	78.68	5.55	10.36	2024-12-09 20:01:17
141	M-13	75.88	4.61	10.55	2024-08-21 02:39:09
142	M-2	89.20	3.73	7.98	2024-04-28 09:41:49
143	M-9	83.55	5.00	10.51	2024-07-20 03:06:48
144	M-16	67.02	3.97	11.41	2024-08-30 05:11:51
145	M-11	65.95	5.62	6.30	2024-09-22 12:48:05
146	M-7	63.15	8.38	15.22	2024-06-01 13:10:05
147	M-15	73.24	3.39	13.89	2024-05-04 11:11:11
148	M-12	72.35	6.00	8.18	2024-11-05 23:44:54
149	M-10	66.05	5.18	8.26	2024-05-19 17:54:05
150	M-15	71.42	5.29	10.81	2024-06-22 17:37:49
151	M-12	47.30	4.69	13.21	2024-02-14 06:45:24
152	M-3	61.80	2.98	7.15	2024-07-10 16:19:28
153	M-12	81.76	5.09	11.43	2024-10-29 04:21:24
154	M-7	53.70	6.44	12.74	2024-08-09 03:56:21
155	M-8	68.18	6.74	13.48	2024-04-23 19:45:30
156	M-14	68.35	4.18	13.10	2024-04-17 23:36:36
157	M-9	70.01	4.37	10.16	2024-07-05 09:25:52
158	M-12	72.72	4.80	10.91	2024-07-21 21:32:50
159	M-1	50.86	3.54	10.36	2024-08-26 04:25:46
160	M-9	71.42	7.57	9.31	2024-06-17 09:04:21
161	M-18	71.43	5.01	11.26	2024-09-28 14:35:58
162	M-2	66.89	5.22	9.34	2024-06-03 22:49:27
163	M-11	74.39	5.38	12.16	2024-01-30 22:23:13
164	M-12	67.84	4.48	9.78	2024-12-13 22:02:42
165	M-14	41.77	4.75	11.39	2024-11-04 08:15:19
166	M-2	64.36	1.98	8.56	2024-02-03 18:37:48
167	M-14	52.71	6.55	11.77	2024-09-27 16:45:28
168	M-20	62.89	6.58	8.25	2024-12-18 11:28:57
169	M-17	56.98	6.46	7.36	2024-08-06 05:36:02
170	M-10	72.64	5.50	8.00	2024-04-24 00:51:44
171	M-8	76.43	6.63	13.61	2024-05-05 16:59:07
172	M-11	72.92	6.00	13.99	2024-10-24 04:09:25
173	M-11	68.16	3.55	11.19	2024-09-04 14:31:24
174	M-16	87.04	5.55	8.10	2024-03-01 16:55:22
175	M-4	70.13	6.12	4.83	2024-09-02 09:35:52
176	M-6	65.89	4.15	9.72	2024-11-10 23:14:37
177	M-16	86.92	5.02	9.04	2024-01-11 04:39:18
178	M-4	72.83	5.66	10.77	2024-07-31 22:38:40
179	M-12	73.27	4.85	3.36	2024-10-10 06:25:03
180	M-7	79.38	2.93	13.72	2024-07-26 17:10:08
181	M-9	63.22	4.62	11.27	2024-06-04 09:30:34
182	M-16	68.44	3.72	12.90	2024-09-14 22:35:51
183	M-2	68.21	4.47	7.28	2024-02-18 17:02:17
184	M-5	77.91	6.48	8.93	2024-01-25 21:22:46
185	M-11	83.23	5.98	10.41	2024-06-16 14:53:41
186	M-14	68.50	5.04	10.07	2024-06-29 03:13:38
187	M-15	72.05	2.94	9.45	2024-10-19 15:45:15
188	M-10	53.89	3.73	11.22	2024-11-13 15:53:16
189	M-14	52.20	2.29	8.45	2024-04-25 23:12:16
190	M-5	86.41	2.96	10.26	2024-08-29 06:27:35
191	M-11	68.01	5.62	11.79	2024-12-05 20:33:49
192	M-5	60.08	4.24	8.98	2024-09-20 05:54:45
193	M-6	66.66	4.52	9.77	2024-08-04 00:35:23
194	M-6	62.91	5.21	8.47	2024-04-29 07:19:04
195	M-12	57.52	3.27	7.20	2024-10-20 22:01:45
196	M-9	65.98	3.58	14.31	2024-05-26 23:41:11
197	M-2	62.55	8.53	12.81	2024-04-13 16:48:55
198	M-8	65.53	5.35	8.44	2024-08-30 15:06:12
199	M-11	70.05	4.50	5.98	2024-10-07 23:07:20
200	M-2	72.57	5.32	12.37	2024-12-24 13:14:53
201	M-6	78.17	6.20	14.33	2024-08-02 09:54:04
202	M-2	73.95	3.81	13.57	2024-08-05 23:37:11
203	M-14	79.96	4.44	11.23	2024-09-25 14:13:59
204	M-14	52.71	6.19	9.45	2024-02-18 23:14:48
205	M-7	60.18	4.41	9.32	2024-02-23 18:49:22
206	M-5	63.07	5.47	12.80	2024-07-26 06:04:12
207	M-12	78.32	4.08	11.11	2024-01-26 07:59:14
208	M-17	61.57	4.16	14.42	2024-08-09 06:19:27
209	M-4	85.50	7.69	9.15	2024-05-12 04:47:55
210	M-4	70.92	3.37	11.88	2024-08-21 16:53:01
211	M-9	60.72	4.87	14.01	2024-08-29 23:15:34
212	M-15	63.09	3.31	8.92	2024-06-19 05:59:04
213	M-17	53.86	4.99	11.35	2024-07-24 15:20:22
214	M-13	75.50	6.18	9.60	2024-12-08 11:13:30
215	M-20	63.58	7.62	5.68	2024-11-30 17:19:32
216	M-9	83.81	4.87	11.87	2024-01-15 07:06:40
217	M-1	79.57	2.11	10.33	2024-02-07 16:45:06
218	M-13	61.72	7.83	10.99	2024-05-11 15:36:38
219	M-13	76.02	4.80	11.65	2024-08-12 18:44:06
220	M-6	61.67	5.19	7.54	2024-07-19 13:21:16
221	M-13	62.45	4.52	10.55	2024-09-18 21:25:33
222	M-1	68.00	4.73	9.93	2024-05-04 00:24:45
223	M-12	83.57	5.20	8.53	2024-06-30 06:25:39
224	M-4	85.87	2.99	10.71	2024-08-27 07:09:56
225	M-11	69.07	6.47	12.16	2024-08-26 17:50:19
226	M-11	60.71	3.64	6.15	2024-05-19 11:27:34
227	M-5	87.90	3.72	8.15	2024-09-10 03:50:43
228	M-2	69.84	3.01	9.04	2024-05-01 11:02:16
229	M-20	72.68	7.05	9.99	2024-11-07 17:05:25
230	M-7	56.39	5.41	11.98	2024-12-01 21:55:06
231	M-7	60.88	3.66	11.90	2024-10-10 17:33:46
232	M-1	83.14	4.26	14.35	2024-04-26 21:15:24
233	M-19	51.84	5.94	12.55	2024-10-28 18:32:13
234	M-19	68.77	5.38	8.99	2024-10-17 18:15:29
235	M-20	66.52	3.23	10.81	2024-08-27 00:47:03
236	M-8	38.43	5.02	9.41	2024-03-28 13:35:38
237	M-10	83.38	3.81	9.34	2024-07-03 15:40:13
238	M-4	64.98	5.35	10.29	2024-03-09 18:43:24
239	M-7	75.54	5.28	8.54	2024-06-05 07:35:03
240	M-8	86.27	6.01	13.21	2024-06-19 19:42:02
241	M-8	75.18	3.31	9.23	2024-03-06 22:33:18
242	M-16	58.13	4.44	11.85	2024-05-07 03:10:27
243	M-19	80.75	5.22	8.08	2024-05-26 02:51:02
244	M-19	83.16	8.05	10.44	2024-04-20 13:41:19
245	M-11	81.29	3.58	9.31	2024-11-21 13:58:10
246	M-4	64.45	8.07	11.25	2024-02-14 14:34:51
247	M-2	73.24	4.65	11.29	2024-03-29 14:30:08
248	M-19	59.03	8.17	11.46	2024-12-29 09:17:23
249	M-11	70.87	7.90	8.48	2024-01-10 14:30:08
250	M-17	63.27	3.25	7.06	2024-04-22 04:00:25
251	M-20	57.91	6.28	9.96	2024-11-25 10:00:56
252	M-3	85.82	5.00	10.96	2024-11-05 11:11:14
253	M-17	67.89	5.44	11.91	2024-04-12 01:32:26
254	M-15	88.01	5.24	11.77	2024-01-12 12:41:36
255	M-4	68.54	5.91	10.05	2024-02-04 11:20:08
256	M-8	65.92	3.01	7.53	2024-03-23 11:22:32
257	M-7	67.90	5.26	12.03	2024-08-31 06:33:14
258	M-15	75.25	5.40	8.08	2024-02-02 12:45:53
259	M-10	75.05	7.17	11.26	2024-10-22 13:52:05
260	M-14	81.00	4.00	7.46	2024-03-28 15:18:17
261	M-12	79.97	2.49	11.43	2024-06-18 06:41:59
262	M-1	82.99	6.04	9.92	2024-11-08 01:01:52
263	M-8	73.40	4.32	9.16	2024-12-24 16:21:06
264	M-4	67.27	5.02	13.61	2024-07-13 21:10:25
265	M-11	76.87	7.79	6.56	2024-02-07 21:08:48
266	M-13	68.71	3.19	8.64	2024-08-31 09:49:54
267	M-8	74.08	3.73	8.68	2024-03-15 17:13:54
268	M-14	63.44	5.43	12.09	2024-11-04 18:27:17
269	M-8	68.37	2.99	8.74	2024-05-20 11:40:41
270	M-11	60.63	5.19	11.10	2024-09-18 07:30:43
271	M-19	95.86	3.80	11.30	2024-09-29 20:02:51
272	M-8	95.10	3.77	10.82	2024-03-06 01:12:10
273	M-13	76.65	5.96	8.17	2024-09-10 12:38:18
274	M-2	66.42	4.40	11.81	2024-11-15 03:28:41
275	M-17	57.15	4.35	11.12	2024-02-13 01:32:55
276	M-18	68.12	5.57	12.64	2024-11-14 20:12:45
277	M-10	60.22	3.39	12.85	2024-03-10 23:12:10
278	M-9	71.46	6.11	12.45	2024-03-26 12:59:44
279	M-16	69.84	6.20	8.98	2024-05-04 18:32:06
280	M-16	75.10	6.71	9.27	2024-04-19 05:16:44
281	M-15	59.75	3.37	12.33	2024-09-13 18:12:29
282	M-1	63.14	5.13	9.58	2024-10-15 11:46:21
283	M-2	50.62	5.07	12.12	2024-03-24 20:23:10
284	M-13	84.26	7.14	8.67	2024-07-04 10:53:08
285	M-15	49.36	6.90	10.29	2024-11-17 14:57:44
286	M-8	51.12	5.45	15.30	2024-01-31 20:20:25
287	M-20	55.49	3.39	9.26	2024-02-26 23:43:57
288	M-20	76.82	3.31	12.03	2024-01-12 21:33:01
289	M-6	58.50	4.55	7.33	2024-09-20 21:45:34
290	M-20	61.53	3.93	8.65	2024-06-15 03:31:05
291	M-16	73.52	5.69	9.53	2024-02-28 02:04:56
292	M-18	59.93	6.75	7.92	2024-05-09 06:49:26
293	M-13	66.16	3.64	13.18	2024-10-30 07:01:48
294	M-6	71.95	5.02	10.28	2024-03-02 15:37:15
295	M-4	73.87	6.45	12.10	2024-01-14 07:14:13
296	M-9	73.55	5.63	11.18	2024-05-27 02:06:54
297	M-15	73.18	4.37	12.19	2024-09-10 04:15:38
298	M-3	69.86	5.18	9.24	2024-09-30 21:09:51
299	M-10	92.23	2.30	9.24	2024-10-15 09:23:24
300	M-15	50.29	4.34	7.85	2024-04-20 20:03:54
301	M-7	80.34	4.74	10.21	2024-01-05 11:53:56
302	M-1	64.75	3.83	9.62	2024-08-29 21:22:30
303	M-3	70.27	9.11	13.53	2024-08-08 22:12:02
304	M-3	98.70	9.08	8.57	2024-12-06 02:21:08
305	M-3	85.31	3.57	10.60	2024-12-29 08:55:33
306	M-6	65.46	3.76	13.79	2024-01-13 01:11:02
307	M-12	71.96	8.82	9.17	2024-04-05 00:27:41
308	M-1	63.66	6.98	8.69	2024-01-18 09:52:22
309	M-14	70.22	9.76	10.13	2024-09-16 19:05:36
310	M-14	64.80	5.33	11.20	2024-07-12 20:41:34
311	M-17	70.69	4.43	10.78	2024-12-06 16:55:45
312	M-15	59.95	5.02	8.96	2024-12-10 05:03:06
313	M-10	62.06	7.17	11.45	2024-01-12 02:50:54
314	M-12	68.97	4.33	10.38	2024-04-04 04:35:06
315	M-17	67.35	5.41	8.95	2024-09-09 12:26:08
316	M-12	78.85	6.71	9.29	2024-06-04 23:45:32
317	M-6	60.63	3.46	6.89	2024-04-09 04:41:59
318	M-4	72.11	5.45	9.43	2024-11-27 01:05:21
319	M-17	61.29	2.58	10.20	2024-11-19 14:53:43
320	M-17	69.29	5.04	10.73	2024-02-03 04:46:08
321	M-16	62.39	4.39	10.07	2024-09-10 04:05:19
322	M-4	67.89	6.72	10.64	2024-07-15 11:50:08
323	M-12	94.71	7.00	10.16	2024-04-08 21:11:57
324	M-10	57.43	5.97	10.09	2024-12-22 01:27:42
325	M-18	75.87	6.08	10.64	2024-05-04 14:22:00
326	M-7	63.22	4.84	8.13	2024-06-12 22:34:44
327	M-8	71.35	2.37	8.27	2024-07-12 21:21:30
328	M-13	62.38	5.33	12.79	2024-07-19 15:29:15
329	M-12	74.45	5.62	11.37	2024-06-28 14:56:17
330	M-11	82.08	6.31	8.69	2024-04-26 18:54:52
331	M-20	75.76	6.12	10.10	2024-05-15 12:03:19
332	M-20	70.33	6.79	13.50	2024-02-05 03:45:41
333	M-18	82.29	5.96	8.50	2024-09-25 18:25:01
334	M-19	64.41	4.95	10.94	2024-12-29 02:12:44
335	M-9	57.82	6.92	8.61	2024-06-08 11:10:50
336	M-10	65.32	3.45	9.77	2024-04-30 23:29:56
337	M-3	68.29	3.05	10.85	2024-05-06 07:20:36
338	M-20	68.63	3.74	7.89	2024-12-01 21:48:18
339	M-12	62.88	5.02	9.20	2024-12-12 02:10:17
340	M-4	74.48	4.75	11.90	2024-10-25 14:00:58
341	M-12	61.77	5.04	9.89	2024-03-26 13:20:27
342	M-18	93.33	4.98	11.79	2024-06-28 20:49:02
343	M-11	74.17	4.70	13.55	2024-01-03 09:06:55
344	M-5	55.03	3.22	8.23	2024-07-21 18:22:05
345	M-11	68.00	4.51	11.86	2024-05-29 02:46:06
346	M-4	47.53	3.02	11.08	2024-02-12 05:28:37
347	M-11	77.88	5.33	11.08	2024-01-08 19:30:28
348	M-6	59.89	2.52	6.77	2024-07-21 10:00:43
349	M-14	54.16	4.99	10.68	2024-05-17 13:57:05
350	M-1	67.85	4.55	6.25	2024-05-20 06:35:20
351	M-12	54.78	7.24	10.78	2024-02-19 03:35:51
352	M-8	73.33	4.37	5.72	2024-08-17 03:06:13
353	M-13	64.06	4.24	9.01	2024-03-23 17:44:28
354	M-1	79.02	6.37	5.46	2024-01-20 06:05:56
355	M-6	75.29	5.31	11.52	2024-10-30 11:19:04
356	M-7	61.60	7.06	11.45	2024-03-29 18:10:08
357	M-18	69.84	5.77	9.56	2024-04-08 21:49:10
358	M-15	76.46	5.81	14.08	2024-01-28 11:20:13
359	M-12	84.52	5.66	7.82	2024-03-07 20:42:27
360	M-13	56.38	3.54	9.85	2024-06-19 06:46:56
361	M-9	82.78	4.41	15.52	2024-01-29 03:22:35
362	M-8	81.37	4.89	10.45	2024-12-23 05:39:51
363	M-6	71.56	3.92	15.67	2024-01-16 20:08:12
364	M-15	96.68	4.00	9.00	2024-04-24 00:21:56
365	M-6	69.28	1.93	12.23	2024-10-18 21:16:59
366	M-12	69.44	6.12	11.48	2024-12-15 01:39:56
367	M-2	58.52	5.76	8.89	2024-04-30 09:16:00
368	M-1	69.84	4.15	8.02	2024-10-13 13:59:33
369	M-13	78.37	5.76	9.14	2024-02-28 06:07:26
370	M-8	65.81	3.95	13.02	2024-07-03 04:18:11
371	M-11	57.28	3.73	6.43	2024-01-07 15:18:47
372	M-13	87.97	5.82	13.85	2024-11-30 00:08:06
373	M-2	63.48	6.62	9.63	2024-12-27 17:56:29
374	M-16	85.22	6.67	13.37	2024-04-26 05:43:10
375	M-18	73.79	5.33	9.06	2024-04-10 13:09:38
376	M-16	75.92	5.12	10.94	2024-01-17 08:37:12
377	M-7	70.58	5.02	10.88	2024-10-15 22:53:03
378	M-18	51.86	6.12	9.37	2024-05-30 23:17:52
379	M-6	68.87	3.94	10.12	2024-05-01 20:53:55
380	M-3	76.14	4.49	13.01	2024-12-01 10:10:57
381	M-6	76.64	6.74	7.60	2024-09-18 07:56:22
382	M-6	63.53	2.99	10.14	2024-11-28 07:38:04
383	M-9	90.87	4.64	11.38	2024-11-23 00:10:42
384	M-17	73.35	5.34	9.99	2024-02-04 05:12:14
385	M-5	68.67	3.17	10.32	2024-11-17 12:31:27
386	M-20	60.41	5.11	15.19	2024-06-03 13:17:19
387	M-6	53.69	4.66	8.84	2024-05-19 19:07:49
388	M-17	62.72	6.82	7.00	2024-05-28 03:58:54
389	M-11	71.79	4.69	10.93	2024-04-13 15:53:37
390	M-10	68.46	5.48	12.65	2024-11-19 12:39:03
391	M-18	74.22	5.43	9.52	2024-10-28 17:17:27
392	M-18	86.08	4.76	6.23	2024-02-27 14:17:20
393	M-5	78.14	4.85	9.90	2024-07-11 03:06:23
394	M-16	56.23	6.11	10.06	2024-06-05 22:40:48
395	M-20	85.14	7.10	7.29	2024-05-31 00:31:35
396	M-4	81.18	4.40	10.50	2024-05-24 16:00:13
397	M-5	67.68	4.41	9.34	2024-12-26 15:38:56
398	M-9	64.66	3.85	12.96	2024-12-06 16:14:29
399	M-10	55.49	4.39	14.33	2024-11-07 21:24:11
400	M-10	68.26	3.73	10.38	2024-09-12 04:03:24
401	M-7	71.66	5.10	9.05	2024-03-11 18:05:28
402	M-18	64.26	5.06	8.12	2024-07-03 04:14:12
403	M-20	68.84	4.25	15.06	2024-07-20 19:52:39
404	M-19	67.43	4.29	9.55	2024-12-29 20:42:23
405	M-8	69.14	7.96	9.55	2024-12-17 16:40:05
406	M-15	65.01	5.83	11.49	2024-08-23 10:24:24
407	M-11	69.67	5.34	13.51	2024-03-21 16:12:56
408	M-19	87.59	7.29	7.97	2024-09-04 03:05:31
409	M-5	82.70	3.35	8.16	2024-01-30 12:00:34
410	M-12	70.75	4.85	10.42	2024-06-21 23:30:33
411	M-16	58.93	6.76	10.75	2024-12-22 20:45:30
412	M-15	58.05	5.71	10.62	2024-11-16 06:08:00
413	M-18	63.58	5.83	9.10	2024-10-02 11:19:25
414	M-6	74.25	5.13	8.68	2024-03-04 00:42:04
415	M-2	67.93	5.18	10.98	2024-04-08 15:40:34
416	M-4	60.95	7.33	10.91	2024-12-17 07:32:43
417	M-3	54.22	7.81	12.60	2024-01-21 08:01:29
418	M-20	61.53	4.53	7.80	2024-08-02 17:20:20
419	M-20	75.27	4.61	12.17	2024-06-12 14:22:55
420	M-2	66.59	3.32	8.73	2024-07-21 10:23:26
421	M-19	53.22	4.73	13.61	2024-02-21 04:18:51
422	M-17	62.07	3.84	13.38	2024-12-14 01:46:31
423	M-5	75.03	5.01	11.20	2024-10-05 19:53:09
424	M-9	74.17	6.31	9.71	2024-07-05 04:54:20
425	M-3	68.57	4.36	8.13	2024-12-11 09:17:13
426	M-6	59.66	5.36	9.85	2024-11-27 15:21:28
427	M-17	76.33	4.08	9.98	2024-06-02 05:51:13
428	M-1	62.16	5.97	9.97	2024-05-08 23:43:32
429	M-1	65.32	5.67	11.80	2024-01-27 19:56:35
430	M-20	56.80	3.99	7.11	2024-01-17 03:59:43
431	M-8	78.08	3.21	11.18	2024-08-24 04:12:06
432	M-15	77.51	5.37	11.13	2024-11-10 07:00:58
433	M-3	70.75	2.62	7.90	2024-12-13 09:38:08
434	M-15	75.08	5.07	10.55	2024-08-28 10:38:49
435	M-18	54.45	5.73	10.45	2024-07-26 06:04:49
436	M-8	74.98	1.51	7.39	2024-12-07 18:44:23
437	M-6	52.97	4.88	6.67	2024-11-15 22:52:09
438	M-7	66.33	5.48	11.30	2024-06-30 13:10:33
439	M-11	65.78	5.66	12.79	2024-06-16 13:58:59
440	M-11	62.89	3.64	8.61	2024-10-08 17:05:09
441	M-20	80.94	5.48	8.96	2024-08-18 06:38:52
442	M-1	96.72	5.52	12.41	2024-11-14 10:51:49
443	M-5	48.79	5.65	10.79	2024-01-27 12:31:10
444	M-11	73.33	4.60	14.06	2024-10-21 03:32:38
445	M-12	80.37	6.20	11.10	2024-05-21 10:56:23
446	M-3	68.23	6.45	13.31	2024-06-19 01:27:36
447	M-3	76.54	7.86	9.31	2024-09-20 10:13:58
448	M-1	57.14	5.30	10.53	2024-09-02 19:56:25
449	M-20	62.73	5.36	11.44	2024-07-03 08:37:52
450	M-4	81.30	4.83	9.32	2024-01-25 02:45:34
451	M-2	81.58	7.09	9.96	2024-08-30 09:13:14
452	M-6	69.26	4.25	8.95	2024-06-05 23:01:23
453	M-10	80.49	5.04	14.19	2024-09-13 15:50:01
454	M-9	79.43	6.52	10.22	2024-01-29 02:43:06
455	M-10	76.81	5.61	12.14	2024-05-04 01:47:51
456	M-3	87.73	5.34	8.79	2024-04-18 05:02:51
457	M-7	76.18	5.21	8.46	2024-09-28 08:11:42
458	M-15	56.69	5.38	8.95	2024-08-21 01:04:22
459	M-20	83.98	5.40	9.21	2024-02-10 21:39:06
460	M-9	57.21	6.65	9.97	2024-12-08 06:46:22
461	M-18	74.18	6.01	11.03	2024-09-08 12:13:56
462	M-1	60.24	3.22	10.49	2024-03-19 20:22:41
463	M-2	63.90	3.59	8.88	2024-06-21 07:50:22
464	M-10	80.25	6.44	9.61	2024-01-30 00:39:04
465	M-8	59.23	7.07	13.01	2024-11-09 11:58:52
466	M-10	67.25	5.17	10.65	2024-08-28 17:30:37
467	M-3	65.59	4.09	10.82	2024-02-27 13:00:04
468	M-18	57.06	6.90	13.13	2024-08-28 10:01:15
469	M-16	70.48	6.02	9.25	2024-07-14 04:23:13
470	M-20	51.32	5.54	12.48	2024-02-03 11:22:35
471	M-20	65.55	3.33	8.12	2024-03-19 02:37:15
472	M-5	53.51	3.69	11.47	2024-05-03 10:20:55
473	M-13	70.03	2.93	11.09	2024-07-17 14:30:48
474	M-18	65.10	4.75	9.81	2024-05-15 06:02:17
475	M-15	78.58	5.76	8.27	2024-03-19 01:51:43
476	M-13	72.17	4.02	8.93	2024-11-08 07:55:34
477	M-15	65.83	2.63	5.63	2024-10-23 12:01:03
478	M-7	72.14	4.42	9.98	2024-04-11 09:33:57
479	M-8	82.99	4.38	8.10	2024-10-12 21:10:31
480	M-9	63.22	3.60	14.69	2024-04-03 05:57:55
481	M-9	68.60	5.70	13.91	2024-12-20 13:47:01
482	M-17	70.68	6.82	9.76	2024-04-27 08:13:26
483	M-8	69.96	5.76	10.52	2024-06-27 08:24:23
484	M-5	65.18	5.82	10.31	2024-07-24 02:29:22
485	M-10	58.97	3.61	8.29	2024-03-26 13:32:15
486	M-13	68.40	5.96	7.52	2024-03-26 04:40:30
487	M-2	61.77	4.85	11.96	2024-11-30 01:56:25
488	M-8	57.14	4.91	6.94	2024-07-23 10:46:54
489	M-4	63.10	3.05	10.86	2024-02-27 11:25:43
490	M-7	78.23	5.40	8.43	2024-06-03 16:47:38
491	M-15	74.44	3.89	9.62	2024-03-22 11:54:56
492	M-12	73.99	6.68	9.07	2024-11-15 00:01:34
493	M-15	76.10	4.31	12.53	2024-07-09 02:29:39
494	M-17	65.62	2.81	8.64	2024-07-24 03:12:58
495	M-12	67.99	4.24	10.75	2024-05-25 15:36:59
496	M-17	69.84	4.17	10.45	2024-03-06 21:58:09
497	M-16	67.06	4.09	9.18	2024-11-12 22:30:13
498	M-1	63.33	4.91	11.16	2024-02-01 08:53:39
499	M-20	79.57	5.02	14.51	2024-01-24 22:31:13
500	M-12	62.05	4.87	11.97	2024-01-27 16:50:54
501	M-13	65.13	5.68	9.00	2024-12-11 23:57:43
502	M-7	79.75	4.80	8.38	2024-02-07 07:44:41
503	M-6	72.44	2.81	12.50	2024-09-04 04:04:27
504	M-12	69.16	6.01	7.53	2024-02-11 05:55:50
505	M-16	69.01	5.25	12.79	2024-09-20 06:59:51
506	M-13	57.56	4.54	9.06	2024-07-16 22:49:05
507	M-6	87.34	2.68	10.53	2024-03-30 22:24:51
508	M-17	80.10	3.99	8.05	2024-04-10 04:34:23
509	M-5	65.39	3.14	12.23	2024-04-02 01:18:08
510	M-14	61.26	4.85	9.96	2024-08-23 06:17:00
511	M-6	74.38	3.10	14.19	2024-10-19 00:32:47
512	M-16	64.00	6.84	9.18	2024-07-22 16:52:36
513	M-17	77.96	5.21	11.03	2024-03-08 21:42:38
514	M-7	75.63	5.82	11.42	2024-10-14 03:12:52
515	M-7	66.70	4.23	14.79	2024-09-01 09:41:47
516	M-8	69.52	1.04	10.30	2024-07-28 22:20:01
517	M-12	85.93	7.81	14.37	2024-10-14 23:50:04
518	M-19	61.43	6.86	11.00	2024-06-17 01:56:10
519	M-4	70.86	4.46	13.17	2024-11-17 08:30:15
520	M-9	77.62	5.60	10.47	2024-07-17 20:53:12
521	M-9	69.43	7.32	8.59	2024-04-29 05:37:32
522	M-12	69.23	6.27	13.29	2024-01-13 14:55:12
523	M-4	73.53	3.67	7.11	2024-09-01 08:24:02
524	M-16	67.44	4.50	11.99	2024-05-03 05:32:51
525	M-10	81.31	6.93	8.00	2024-09-04 14:55:41
526	M-13	67.02	7.64	9.23	2024-09-04 22:14:00
527	M-19	59.45	5.85	10.88	2024-02-26 00:55:09
528	M-19	97.04	5.26	8.40	2024-12-08 14:16:40
529	M-7	63.57	6.39	13.85	2024-05-28 17:21:49
530	M-11	76.38	5.98	11.32	2024-04-10 19:20:16
531	M-14	74.31	7.88	14.35	2024-09-10 07:32:22
532	M-1	67.61	4.97	6.49	2024-10-03 14:51:43
533	M-10	53.82	4.92	10.24	2024-05-13 08:30:04
534	M-9	84.09	4.42	11.19	2024-10-01 11:53:57
535	M-5	83.49	7.22	12.42	2024-11-18 07:57:39
536	M-18	76.99	4.33	5.70	2024-04-19 15:51:07
537	M-18	70.50	5.64	9.41	2024-04-01 16:40:47
538	M-20	88.51	4.67	10.24	2024-04-12 15:21:09
539	M-19	56.69	6.55	8.78	2024-02-24 11:40:18
540	M-5	76.27	6.36	8.47	2024-05-13 09:30:34
541	M-6	80.30	5.04	9.64	2024-09-30 10:36:07
542	M-10	69.52	6.12	12.13	2024-01-24 04:00:50
543	M-4	61.42	4.53	7.59	2024-10-19 21:13:33
544	M-14	61.17	5.00	7.03	2024-10-04 09:20:28
545	M-15	57.91	7.18	7.20	2024-05-04 08:21:41
546	M-14	59.37	5.93	8.29	2024-02-03 02:48:35
547	M-14	67.80	3.22	10.23	2024-09-24 23:50:58
548	M-7	52.03	4.66	9.64	2024-06-20 20:47:09
549	M-4	78.04	4.02	8.13	2024-06-23 21:06:22
550	M-5	60.95	5.66	10.53	2024-08-18 19:03:54
551	M-14	77.37	3.74	7.51	2024-08-23 20:25:55
552	M-6	73.44	4.18	9.26	2024-08-12 03:05:51
553	M-17	51.43	6.51	9.02	2024-05-01 10:28:10
554	M-5	63.14	2.70	10.54	2024-06-05 05:14:55
555	M-11	57.61	6.78	8.08	2024-04-10 13:58:53
556	M-8	74.49	4.57	11.92	2024-11-09 06:24:08
557	M-14	82.26	5.79	10.43	2024-11-02 14:57:09
558	M-13	46.79	5.67	7.11	2024-02-25 02:56:58
559	M-9	72.37	3.21	11.50	2024-06-24 06:20:21
560	M-5	67.04	6.03	12.28	2024-03-28 21:56:17
561	M-4	88.29	3.83	9.71	2024-09-30 00:59:02
562	M-6	46.19	5.28	9.41	2024-05-15 21:42:00
563	M-19	76.72	0.93	9.03	2024-08-20 17:37:26
564	M-7	73.02	6.68	8.51	2024-12-09 04:49:20
565	M-6	67.12	5.17	8.15	2024-04-13 06:11:53
566	M-16	66.61	4.72	9.78	2024-01-20 22:40:05
567	M-19	86.87	6.16	7.71	2024-02-06 09:24:47
568	M-18	64.69	5.76	8.39	2024-03-25 03:59:22
569	M-7	73.70	7.07	9.52	2024-07-11 14:29:43
570	M-15	62.10	5.08	11.03	2024-06-15 18:52:15
571	M-17	85.65	5.13	11.69	2024-08-04 01:51:52
572	M-16	56.33	6.09	12.19	2024-09-17 22:22:33
573	M-4	57.04	6.10	11.90	2024-03-12 01:59:09
574	M-1	74.33	5.26	11.50	2024-09-23 18:16:37
575	M-7	69.46	6.48	14.53	2024-02-16 23:02:58
576	M-15	69.95	3.55	11.33	2024-03-06 19:20:33
577	M-2	67.68	6.46	11.19	2024-12-29 08:35:43
578	M-19	84.73	6.86	9.78	2024-11-26 13:39:47
579	M-4	62.75	3.20	8.21	2024-11-30 01:33:15
580	M-18	54.83	6.16	8.64	2024-10-21 15:20:40
581	M-14	58.60	5.38	9.44	2024-06-01 10:44:30
582	M-7	66.92	6.24	10.10	2024-09-22 03:43:15
583	M-10	84.39	3.44	11.24	2024-11-12 21:29:03
584	M-20	59.10	4.12	9.15	2024-03-30 14:27:58
585	M-8	71.85	2.84	10.72	2024-12-04 19:24:48
586	M-19	70.22	5.23	9.41	2024-11-18 00:07:58
587	M-6	77.02	5.36	9.01	2024-05-08 19:02:38
588	M-12	75.31	5.68	13.24	2024-01-23 00:50:20
589	M-12	70.68	8.20	6.36	2024-12-06 19:01:11
590	M-4	58.24	3.46	8.09	2024-12-17 18:49:50
591	M-16	62.00	3.86	5.37	2024-07-05 14:10:43
592	M-3	62.17	4.96	9.94	2024-07-17 11:18:00
593	M-6	77.51	7.82	11.89	2024-08-28 15:33:29
594	M-10	51.49	3.13	9.36	2024-07-08 07:52:13
595	M-5	52.37	6.00	10.73	2024-05-21 12:16:12
596	M-9	55.20	5.01	9.60	2024-09-28 07:28:27
597	M-18	77.89	5.85	10.71	2024-11-15 19:50:16
598	M-4	68.54	1.66	11.27	2024-02-23 06:59:53
599	M-2	75.87	6.32	13.79	2024-04-07 04:23:30
600	M-19	78.60	4.57	7.08	2024-09-13 21:24:50
601	M-2	63.81	4.92	6.67	2024-07-14 22:25:06
602	M-7	64.54	6.29	8.80	2024-06-18 20:12:48
603	M-8	44.30	5.02	7.73	2024-11-20 22:31:21
604	M-7	81.53	3.00	8.37	2024-01-29 21:51:35
605	M-3	69.84	4.25	9.47	2024-12-03 23:13:29
606	M-9	80.41	6.77	9.59	2024-06-24 18:27:01
607	M-9	54.89	5.15	11.20	2024-01-21 18:56:18
608	M-3	83.10	3.35	9.16	2024-03-09 23:31:23
609	M-9	76.93	9.90	10.44	2024-05-30 05:51:29
610	M-16	63.00	2.80	10.20	2024-01-30 19:48:12
611	M-6	71.70	5.64	10.28	2024-08-07 21:51:18
612	M-9	51.36	4.61	9.35	2024-02-05 04:34:31
613	M-1	77.57	6.09	8.95	2024-05-23 13:00:45
614	M-10	57.31	3.50	6.05	2024-06-30 05:56:26
615	M-15	68.96	5.20	9.95	2024-03-11 23:01:28
616	M-8	93.39	4.21	10.40	2024-01-29 01:24:15
617	M-12	63.77	4.81	8.68	2024-03-12 05:04:11
618	M-8	72.23	6.71	12.59	2024-09-01 23:30:07
619	M-14	63.80	6.00	7.58	2024-10-24 11:46:48
620	M-4	79.96	4.74	12.98	2024-02-15 21:56:12
621	M-8	79.34	2.87	8.74	2024-10-16 07:15:11
622	M-1	82.62	4.57	11.68	2024-09-21 06:49:44
623	M-4	63.99	4.26	10.36	2024-05-14 06:06:04
624	M-11	92.21	5.02	12.34	2024-06-16 14:57:20
625	M-4	56.11	5.65	8.28	2024-05-02 16:06:42
626	M-15	69.57	5.63	11.52	2024-08-13 09:28:51
627	M-16	76.63	4.57	10.88	2024-11-12 02:23:59
628	M-1	66.69	2.93	13.86	2024-04-11 04:22:21
629	M-8	72.75	4.44	10.30	2024-05-25 08:29:00
630	M-7	69.21	3.02	6.96	2024-05-09 08:19:35
631	M-12	71.20	4.64	11.01	2024-06-02 15:59:40
632	M-2	57.39	5.83	12.68	2024-08-08 11:10:21
633	M-11	84.07	2.75	12.36	2024-02-12 14:01:07
634	M-13	80.46	5.36	9.34	2024-01-08 19:41:29
635	M-14	76.12	4.35	8.19	2024-07-15 07:27:03
636	M-18	77.29	3.68	8.25	2024-08-28 23:35:02
637	M-13	76.35	7.44	10.94	2024-01-20 02:53:29
638	M-8	61.21	4.57	9.29	2024-12-01 19:41:04
639	M-10	88.30	7.07	9.71	2024-05-23 21:13:44
640	M-14	73.35	4.46	8.51	2024-04-18 04:15:30
641	M-3	82.48	3.44	5.58	2024-10-15 06:46:33
642	M-20	90.73	6.34	10.26	2024-11-01 21:33:24
643	M-17	73.19	3.87	8.98	2024-09-04 07:07:42
644	M-15	67.22	4.64	8.52	2024-02-11 23:04:12
645	M-14	77.37	6.59	5.91	2024-08-07 17:03:25
646	M-19	77.85	5.44	7.13	2024-08-29 18:07:16
647	M-17	68.38	6.78	9.14	2024-01-14 19:31:01
648	M-16	76.68	3.44	11.61	2024-07-15 13:25:14
649	M-9	60.71	4.54	11.38	2024-03-05 03:42:50
650	M-6	44.89	6.93	9.93	2024-06-24 11:11:46
651	M-14	71.63	3.95	13.01	2024-08-16 15:48:06
652	M-14	48.16	5.02	8.54	2024-11-26 00:17:35
653	M-7	82.37	4.68	10.30	2024-05-24 14:14:07
654	M-2	87.87	5.76	9.86	2024-01-04 16:30:38
655	M-18	75.57	4.68	7.61	2024-01-12 13:08:40
656	M-7	62.00	8.09	10.57	2024-04-27 12:58:23
657	M-15	81.72	4.31	9.43	2024-01-17 00:10:17
658	M-19	66.29	6.37	9.42	2024-04-12 09:04:24
659	M-8	77.07	4.30	10.94	2024-06-27 23:59:11
660	M-18	64.65	6.38	12.23	2024-10-25 19:14:21
661	M-17	87.04	4.05	7.85	2024-01-28 02:55:55
662	M-4	76.90	2.39	9.11	2024-04-21 01:38:33
663	M-3	63.63	5.94	11.89	2024-01-30 10:26:25
664	M-12	72.29	6.76	11.06	2024-11-29 11:18:16
665	M-14	68.52	4.66	8.85	2024-11-02 01:17:14
666	M-1	83.84	2.51	8.74	2024-08-22 11:29:24
667	M-1	75.12	6.04	9.52	2024-09-19 06:22:26
668	M-9	78.54	4.12	9.81	2024-08-16 01:00:19
669	M-16	81.58	4.44	12.87	2024-09-19 21:19:19
670	M-6	77.27	6.31	12.06	2024-01-14 09:25:17
671	M-7	76.33	5.02	12.81	2024-05-20 04:20:32
672	M-16	83.82	5.93	8.12	2024-03-03 17:30:54
673	M-5	74.99	4.33	9.59	2024-12-17 11:16:19
674	M-10	83.56	4.85	8.70	2024-10-26 15:00:18
675	M-14	74.03	6.34	8.98	2024-03-28 00:12:19
676	M-7	69.85	4.37	9.63	2024-09-09 04:12:52
677	M-5	60.50	5.52	11.04	2024-11-19 05:08:42
678	M-13	69.86	5.27	11.86	2024-06-26 01:02:14
679	M-1	68.69	6.02	8.33	2024-04-29 02:30:49
680	M-10	65.46	5.08	8.10	2024-05-31 22:13:06
681	M-1	92.05	5.17	10.70	2024-10-04 09:36:26
682	M-13	52.88	7.45	11.25	2024-11-15 06:16:00
683	M-15	70.88	5.45	9.59	2024-09-04 09:08:56
684	M-11	62.48	5.15	8.68	2024-02-12 13:47:48
685	M-17	71.41	2.47	9.17	2024-03-27 18:41:33
686	M-20	88.89	3.88	8.83	2024-05-15 04:22:37
687	M-8	77.28	8.16	7.97	2024-12-26 16:32:12
688	M-11	79.47	6.78	12.34	2024-07-06 09:29:13
689	M-3	68.16	4.60	12.69	2024-08-21 05:05:32
690	M-5	46.32	5.47	11.09	2024-09-20 21:40:02
691	M-2	57.65	3.91	9.19	2024-01-12 10:01:39
692	M-3	57.47	3.67	10.56	2024-02-26 07:06:26
693	M-10	48.57	3.38	9.58	2024-11-25 13:19:48
694	M-2	72.85	3.93	10.80	2024-09-16 09:09:52
695	M-10	71.77	3.58	12.03	2024-05-23 15:46:16
696	M-10	82.92	5.82	10.28	2024-10-08 19:33:13
697	M-18	74.13	5.21	5.66	2024-02-28 07:12:39
698	M-6	66.94	6.60	10.00	2024-02-04 10:17:30
699	M-4	61.00	5.31	11.81	2024-11-25 18:04:21
700	M-3	71.18	5.21	9.51	2024-05-20 10:06:59
701	M-3	65.95	5.31	10.87	2024-04-30 14:16:39
702	M-10	76.52	6.16	6.28	2024-04-21 12:36:02
703	M-1	88.13	3.47	8.80	2024-08-27 05:39:22
704	M-12	77.26	6.30	7.95	2024-11-29 12:33:28
705	M-6	78.68	4.98	9.34	2024-04-16 21:16:06
706	M-20	79.77	1.83	9.38	2024-06-05 17:06:50
707	M-13	74.99	4.66	10.22	2024-05-23 00:05:34
708	M-17	76.11	1.79	12.59	2024-10-02 16:09:38
709	M-14	72.44	3.09	10.26	2024-07-20 14:09:46
710	M-4	56.70	1.06	8.77	2024-03-01 00:18:49
711	M-4	58.87	3.03	8.70	2024-06-11 00:59:48
712	M-17	69.81	4.37	11.15	2024-04-16 03:35:17
713	M-15	84.59	3.55	7.65	2024-11-06 09:07:14
714	M-10	66.48	6.10	11.60	2024-03-13 07:26:30
715	M-16	48.83	4.23	11.35	2024-08-01 22:34:17
716	M-15	59.12	4.07	9.65	2024-11-08 06:23:29
717	M-13	96.43	4.28	11.98	2024-03-03 10:59:59
718	M-4	60.36	5.06	8.41	2024-12-03 02:19:59
719	M-14	75.64	3.08	10.98	2024-04-23 07:33:35
720	M-8	74.23	6.57	10.59	2024-09-05 15:21:17
721	M-13	59.92	6.49	11.37	2024-11-23 21:12:26
722	M-7	61.00	3.09	10.66	2024-06-30 14:21:09
723	M-11	78.01	4.30	9.07	2024-05-31 02:26:29
724	M-16	65.96	5.53	7.90	2024-03-10 01:58:26
725	M-13	67.16	2.92	11.13	2024-11-20 16:25:49
726	M-13	77.19	1.86	11.85	2024-10-01 02:37:36
727	M-17	71.66	6.25	6.86	2024-06-24 17:53:10
728	M-18	82.48	4.30	12.16	2024-06-20 13:05:45
729	M-9	70.84	4.53	11.56	2024-06-29 03:57:32
730	M-4	75.46	4.31	6.93	2024-11-27 08:18:17
731	M-19	71.21	6.59	10.68	2024-04-23 21:24:36
732	M-2	78.95	2.14	10.30	2024-01-30 21:58:27
733	M-15	79.60	4.12	10.37	2024-12-19 21:23:26
734	M-9	65.85	3.76	8.67	2024-04-12 17:46:29
735	M-7	81.18	2.61	13.16	2024-08-24 10:12:37
736	M-5	63.70	1.92	11.80	2024-09-29 11:24:39
737	M-15	50.03	3.41	14.14	2024-06-24 02:52:11
738	M-13	73.47	5.26	8.99	2024-06-29 01:23:36
739	M-20	79.07	7.79	8.97	2024-06-04 11:52:51
740	M-9	69.47	5.71	10.54	2024-09-06 02:31:57
741	M-12	64.86	5.00	9.13	2024-09-11 22:13:53
742	M-5	67.48	5.09	11.47	2024-10-06 20:47:54
743	M-20	68.82	4.89	7.12	2024-01-22 15:41:44
744	M-17	54.34	5.86	8.55	2024-05-01 16:31:33
745	M-6	64.28	5.46	9.64	2024-08-30 18:08:34
746	M-14	63.30	5.81	9.79	2024-12-03 05:34:46
747	M-5	66.45	4.22	11.01	2024-09-26 01:00:28
748	M-9	79.54	4.76	15.60	2024-05-28 19:13:17
749	M-8	76.79	4.16	9.91	2024-01-25 18:12:06
750	M-4	66.20	4.58	8.67	2024-12-01 19:18:30
751	M-18	63.32	7.10	7.46	2024-08-27 01:11:20
752	M-1	61.65	4.06	8.24	2024-07-29 04:45:53
753	M-14	55.48	8.12	8.04	2024-12-11 02:56:35
754	M-3	69.84	7.96	14.82	2024-12-19 08:05:19
755	M-2	64.80	5.85	9.58	2024-05-21 12:52:54
756	M-20	61.75	5.80	7.50	2024-04-15 06:03:12
757	M-15	71.29	6.16	10.94	2024-02-10 03:49:16
758	M-10	57.09	6.29	12.04	2024-03-28 22:36:09
759	M-19	71.56	2.75	9.51	2024-07-23 11:33:11
760	M-15	89.33	3.67	7.78	2024-10-30 08:19:22
761	M-3	71.49	2.98	12.56	2024-12-12 04:18:26
762	M-4	62.92	5.12	9.26	2024-08-16 04:05:45
763	M-4	61.55	5.02	10.60	2024-06-09 09:53:23
764	M-13	75.57	5.35	13.14	2024-05-02 16:43:44
765	M-10	74.89	6.90	5.63	2024-11-24 18:11:14
766	M-17	69.84	6.37	11.43	2024-10-03 05:17:10
767	M-1	68.28	4.67	11.16	2024-01-15 13:52:49
768	M-13	82.77	4.06	8.08	2024-12-25 18:38:10
769	M-12	63.03	4.50	10.35	2024-05-11 03:34:34
770	M-5	65.05	8.44	12.32	2024-10-06 20:05:33
771	M-16	65.11	5.65	10.76	2024-10-29 22:03:12
772	M-3	31.57	4.72	9.98	2024-06-02 01:28:58
773	M-1	68.22	6.13	9.40	2024-05-03 04:37:27
774	M-1	57.26	3.32	11.39	2024-08-26 00:36:52
775	M-5	83.35	5.76	9.77	2024-01-24 12:10:38
776	M-17	67.46	4.95	11.44	2024-12-13 13:15:56
777	M-8	81.88	5.65	7.04	2024-10-08 09:45:28
778	M-3	69.56	5.81	11.44	2024-05-28 14:10:28
779	M-3	61.79	1.06	12.62	2024-09-03 00:47:27
780	M-18	72.48	4.23	12.91	2024-12-07 09:41:19
781	M-7	71.71	5.81	8.82	2024-07-23 10:53:43
782	M-20	63.05	5.16	9.13	2024-07-29 09:10:01
783	M-17	81.09	2.27	11.68	2024-07-26 08:10:57
784	M-3	83.28	5.23	6.83	2024-08-02 01:43:05
785	M-5	95.47	5.82	11.49	2024-01-02 13:19:53
786	M-10	65.58	6.33	10.00	2024-08-24 10:48:04
787	M-14	82.59	5.54	9.23	2024-12-20 15:08:04
788	M-15	80.09	2.13	11.32	2024-04-08 02:19:35
789	M-9	69.22	3.07	9.34	2024-04-19 05:13:52
790	M-19	58.41	2.91	8.27	2024-07-19 21:28:07
791	M-8	67.98	7.03	9.60	2024-04-10 05:27:12
792	M-11	49.31	5.28	12.93	2024-11-13 18:46:14
793	M-2	63.08	3.89	11.99	2024-12-09 20:55:03
794	M-19	68.27	4.46	10.37	2024-06-22 06:25:30
795	M-4	71.11	4.55	8.42	2024-01-19 22:19:56
796	M-18	84.68	5.93	9.62	2024-06-05 23:21:51
797	M-14	70.20	5.77	9.39	2024-05-14 09:41:06
798	M-10	80.96	4.35	6.28	2024-04-08 01:23:03
799	M-20	67.74	6.84	8.89	2024-06-20 11:50:43
800	M-2	71.34	4.78	7.63	2024-09-10 04:53:00
801	M-4	67.42	3.86	11.75	2024-11-25 13:34:53
802	M-4	71.50	7.25	12.12	2024-04-11 22:32:25
803	M-14	70.26	2.51	12.57	2024-04-20 04:03:27
804	M-3	78.88	3.11	8.17	2024-11-28 19:17:14
805	M-19	71.17	7.56	10.44	2024-12-11 18:49:12
806	M-7	73.99	5.14	5.11	2024-02-13 11:42:33
807	M-19	58.50	4.52	9.19	2024-06-19 06:11:56
808	M-9	73.51	3.32	11.33	2024-03-06 14:00:07
809	M-16	83.25	4.36	6.11	2024-02-13 23:20:09
810	M-10	76.89	4.47	7.08	2024-10-01 10:14:29
811	M-6	85.69	4.80	10.46	2024-09-10 02:00:56
812	M-19	79.15	1.69	9.57	2024-11-25 01:54:27
813	M-14	73.50	4.75	6.28	2024-01-15 00:50:14
814	M-1	76.83	2.83	9.00	2024-09-04 11:20:53
815	M-10	74.21	5.02	8.50	2024-06-12 12:46:08
816	M-15	91.83	4.81	9.55	2024-03-16 00:59:29
817	M-19	87.86	4.07	11.52	2024-05-05 01:05:30
818	M-11	66.25	2.66	8.11	2024-02-14 05:21:32
819	M-10	75.41	5.53	11.24	2024-07-07 12:26:30
820	M-18	77.76	4.09	9.41	2024-01-15 04:18:23
821	M-9	67.33	5.53	8.05	2024-06-22 12:37:16
822	M-17	65.63	6.29	11.47	2024-12-24 16:27:49
823	M-3	81.75	7.65	9.38	2024-03-10 18:38:01
824	M-4	89.85	3.81	8.36	2024-10-27 08:15:37
825	M-17	72.31	2.10	7.28	2024-08-07 18:19:16
826	M-16	78.62	4.92	11.76	2024-06-29 20:43:13
827	M-11	77.45	4.61	10.79	2024-08-04 16:06:58
828	M-8	74.69	3.51	10.83	2024-12-27 13:10:39
829	M-12	65.59	4.45	9.75	2024-07-24 20:55:56
830	M-4	61.66	5.41	11.71	2024-06-10 15:42:53
831	M-11	70.68	3.39	8.61	2024-02-11 03:12:05
832	M-17	67.38	5.52	13.37	2024-08-18 11:32:30
833	M-17	67.42	6.06	5.72	2024-05-15 02:42:55
834	M-10	66.78	4.39	10.97	2024-05-14 20:57:39
835	M-10	64.12	6.57	6.78	2024-08-23 22:42:01
836	M-12	82.62	4.32	10.01	2024-10-28 10:50:42
837	M-8	64.94	3.51	9.70	2024-11-05 12:04:10
838	M-14	58.03	5.36	5.86	2024-06-25 12:09:09
839	M-17	61.41	4.04	10.41	2024-09-03 01:04:53
840	M-9	61.61	2.76	9.70	2024-09-16 10:56:14
841	M-20	88.72	5.60	9.27	2024-03-30 11:00:59
842	M-20	77.23	5.70	8.51	2024-07-22 16:34:40
843	M-8	73.20	4.75	8.05	2024-06-30 17:05:47
844	M-14	53.93	5.81	8.93	2024-10-15 14:42:17
845	M-15	71.37	4.18	9.15	2024-02-04 05:31:39
846	M-9	60.75	6.34	9.17	2024-09-06 11:45:32
847	M-20	79.98	5.89	8.86	2024-01-21 14:28:44
848	M-7	61.09	4.37	12.15	2024-09-25 03:43:56
849	M-5	52.85	3.70	13.38	2024-04-10 22:24:22
850	M-18	67.48	4.37	8.36	2024-07-25 21:10:06
851	M-5	82.35	6.39	8.98	2024-03-25 02:42:33
852	M-18	72.75	3.55	9.03	2024-10-02 07:11:30
853	M-1	58.41	3.42	11.44	2024-02-29 01:36:14
854	M-3	77.54	5.83	12.64	2024-08-24 17:17:40
855	M-9	75.28	4.67	9.80	2024-01-22 03:50:08
856	M-6	72.06	3.25	7.52	2024-12-29 11:56:16
857	M-12	75.59	4.18	12.73	2024-01-30 06:12:13
858	M-9	58.84	4.86	11.84	2024-05-12 04:38:37
859	M-20	69.84	5.62	6.77	2024-03-01 12:49:47
860	M-7	69.95	7.15	12.75	2024-05-08 00:27:41
861	M-13	66.15	6.62	10.20	2024-02-09 12:43:45
862	M-15	64.78	6.23	11.06	2024-04-03 21:35:46
863	M-6	79.91	4.85	10.29	2024-03-26 00:06:48
864	M-4	65.55	3.30	11.51	2024-02-01 19:48:46
865	M-10	54.38	4.78	13.13	2024-04-29 19:36:00
866	M-4	58.89	2.64	9.57	2024-07-22 00:28:27
867	M-6	63.78	5.49	10.63	2024-04-12 21:08:47
868	M-16	74.16	6.77	9.75	2024-08-31 10:20:32
869	M-17	75.39	5.87	12.58	2024-11-15 12:39:59
870	M-14	50.91	5.11	10.08	2024-12-11 00:12:12
871	M-2	80.80	3.80	11.83	2024-03-27 02:13:06
872	M-7	53.05	7.67	12.17	2024-11-29 11:59:21
873	M-13	59.57	6.57	7.02	2024-05-16 02:37:28
874	M-13	72.95	2.87	11.04	2024-06-12 05:46:57
875	M-14	73.36	6.43	8.01	2024-06-15 11:01:25
876	M-7	65.67	5.81	6.09	2024-02-07 06:20:48
877	M-12	58.86	5.07	6.48	2024-01-09 17:03:44
878	M-18	67.38	5.17	9.08	2024-12-12 15:57:21
879	M-10	68.55	4.77	12.83	2024-07-04 21:51:06
880	M-13	62.45	6.50	14.97	2024-12-23 04:45:11
881	M-19	65.84	4.54	8.55	2024-12-21 15:45:15
882	M-13	74.83	5.29	8.81	2024-06-29 07:17:39
883	M-17	86.40	5.38	10.26	2024-06-10 08:42:34
884	M-13	77.71	3.30	11.42	2024-10-17 02:07:58
885	M-7	53.16	8.44	9.96	2024-11-23 10:53:52
886	M-13	72.26	4.79	9.22	2024-07-06 04:25:43
887	M-5	75.52	5.56	8.38	2024-10-20 10:06:11
888	M-17	51.19	4.26	4.13	2024-02-24 00:44:22
889	M-11	68.16	7.10	10.69	2024-11-09 04:21:01
890	M-18	79.08	4.30	5.44	2024-10-07 07:13:19
891	M-15	59.21	5.60	12.77	2024-02-09 10:11:50
892	M-2	53.19	4.53	10.06	2024-12-09 09:39:06
893	M-3	74.39	3.54	9.21	2024-09-21 18:25:15
894	M-8	71.20	3.11	7.14	2024-07-15 20:27:24
895	M-3	78.43	3.95	10.54	2024-01-09 14:28:10
896	M-18	65.68	4.72	11.11	2024-10-22 19:58:50
897	M-6	70.18	3.67	11.62	2024-06-29 16:40:50
898	M-12	69.74	4.16	7.96	2024-11-28 02:19:56
899	M-9	65.47	5.63	9.25	2024-12-23 12:49:49
900	M-15	50.14	6.75	12.20	2024-09-15 18:32:50
901	M-16	75.40	2.86	13.76	2024-12-23 00:45:34
902	M-11	81.90	6.41	9.25	2024-01-22 12:23:01
903	M-10	51.82	6.20	7.71	2024-11-06 19:58:19
904	M-20	66.34	4.99	7.75	2024-08-08 14:36:15
905	M-12	67.84	6.26	11.72	2024-09-08 19:24:16
906	M-6	86.14	4.31	11.05	2024-05-19 10:51:29
907	M-18	64.02	6.79	6.05	2024-10-23 03:10:17
908	M-6	55.85	4.23	11.35	2024-12-03 14:04:07
909	M-6	81.68	2.75	7.97	2024-06-27 17:28:46
910	M-3	60.87	2.11	12.02	2024-04-09 04:48:10
911	M-5	58.95	8.63	10.30	2024-01-17 19:54:40
912	M-19	90.57	2.65	8.88	2024-02-22 09:18:57
913	M-17	86.37	2.45	11.99	2024-11-02 00:34:24
914	M-7	61.40	4.79	5.47	2024-03-15 13:59:38
915	M-16	74.72	6.16	11.85	2024-05-14 01:21:59
916	M-11	67.28	5.45	7.32	2024-04-19 17:42:20
917	M-4	61.80	5.35	9.29	2024-01-25 18:05:13
918	M-17	91.89	6.40	12.12	2024-06-08 06:17:35
919	M-5	61.86	5.05	10.55	2024-01-23 11:36:07
920	M-5	80.35	5.39	10.04	2024-11-17 02:41:18
921	M-18	67.26	5.97	7.27	2024-02-02 22:24:48
922	M-8	78.15	5.27	10.35	2024-04-04 08:04:02
923	M-11	79.25	3.23	6.59	2024-04-20 08:59:55
924	M-10	69.91	5.77	10.90	2024-07-10 21:36:44
925	M-10	68.54	2.89	7.07	2024-07-19 05:51:02
926	M-3	68.10	6.54	7.12	2024-08-25 14:30:47
927	M-9	79.66	5.34	9.22	2024-10-22 11:31:56
928	M-7	69.60	7.25	9.46	2024-03-21 13:39:19
929	M-13	70.84	5.18	11.27	2024-12-13 20:08:22
930	M-1	61.12	5.34	8.43	2024-04-21 02:22:12
931	M-14	64.06	3.55	14.93	2024-10-05 05:39:56
932	M-8	84.00	5.57	7.68	2024-04-04 14:46:34
933	M-13	77.27	5.61	9.10	2024-04-28 21:54:29
934	M-15	69.08	5.51	10.69	2024-01-01 13:46:24
935	M-1	89.12	4.56	10.07	2024-10-11 02:55:35
936	M-15	73.73	4.59	6.96	2024-08-24 04:11:52
937	M-13	76.94	3.65	7.99	2024-04-05 11:18:14
938	M-1	73.02	4.23	8.32	2024-08-11 18:11:31
939	M-4	76.00	9.06	10.49	2024-04-08 03:11:01
940	M-8	49.84	5.81	10.90	2024-08-01 22:34:23
941	M-13	63.54	3.24	10.69	2024-08-09 11:44:08
942	M-9	58.93	3.40	7.44	2024-08-12 06:55:14
943	M-8	81.43	5.71	10.16	2024-10-20 00:04:20
944	M-1	62.49	6.67	11.61	2024-04-05 10:37:07
945	M-19	88.98	5.56	9.73	2024-03-07 00:42:42
946	M-4	73.71	6.23	13.18	2024-08-20 13:51:04
947	M-15	55.79	4.84	9.54	2024-02-23 11:48:32
948	M-14	57.05	2.02	10.23	2024-04-22 06:52:51
949	M-19	70.07	3.34	6.86	2024-08-19 03:50:30
950	M-17	55.41	3.97	11.95	2024-05-12 16:32:32
951	M-3	76.86	3.44	10.98	2024-01-19 03:26:15
952	M-8	56.87	7.56	7.88	2024-06-02 11:09:44
953	M-15	48.23	4.25	10.26	2024-06-17 22:13:23
954	M-10	70.84	7.47	10.95	2024-05-04 23:12:46
955	M-7	64.38	4.67	5.35	2024-09-10 04:42:40
956	M-2	73.47	6.60	7.44	2024-02-24 12:46:14
957	M-12	90.96	5.04	10.46	2024-02-16 23:35:09
958	M-19	64.78	6.02	11.23	2024-01-22 00:19:11
959	M-2	72.84	4.17	10.77	2024-11-19 00:52:01
960	M-4	64.13	5.02	11.43	2024-06-22 23:44:45
961	M-19	65.14	5.43	13.44	2024-03-25 13:18:51
962	M-1	70.02	5.87	9.29	2024-01-30 16:42:00
963	M-19	75.94	6.03	12.07	2024-10-19 07:11:10
964	M-16	64.32	5.66	9.04	2024-07-27 09:09:15
965	M-18	73.57	7.10	11.41	2024-08-17 19:24:44
966	M-5	59.74	6.48	12.60	2024-03-31 13:10:48
967	M-13	62.79	4.45	9.88	2024-02-21 00:48:46
968	M-5	89.91	1.22	8.27	2024-06-20 02:18:04
969	M-18	66.23	4.81	11.19	2024-07-15 06:44:00
970	M-15	72.85	3.52	7.63	2024-09-24 04:16:11
971	M-9	55.32	3.69	7.51	2024-06-22 12:06:13
972	M-12	84.75	4.49	10.96	2024-03-29 17:07:44
973	M-13	66.97	4.54	7.05	2024-07-19 11:16:52
974	M-6	80.43	4.44	11.88	2024-01-12 06:34:00
975	M-7	64.61	7.94	8.46	2024-07-22 19:58:13
976	M-3	69.84	4.43	12.05	2024-11-03 11:43:39
977	M-19	61.70	6.23	11.45	2024-09-25 05:08:40
978	M-11	70.49	4.13	5.91	2024-02-06 14:25:00
979	M-20	73.75	7.02	5.85	2024-03-26 12:18:05
980	M-14	79.02	6.91	6.75	2024-11-02 05:19:07
981	M-7	79.15	3.98	7.11	2024-03-16 06:54:13
982	M-10	54.14	6.66	10.02	2024-08-18 01:50:38
983	M-19	70.44	4.55	9.57	2024-12-04 10:44:54
984	M-11	72.05	6.24	10.95	2024-10-15 03:46:53
985	M-2	86.81	6.41	6.82	2024-01-08 15:45:20
986	M-17	61.31	5.46	8.71	2024-09-03 14:38:04
987	M-12	77.95	7.50	11.26	2024-11-12 17:36:03
988	M-17	80.91	1.61	11.48	2024-10-04 04:09:23
989	M-4	63.47	3.59	9.15	2024-05-23 19:19:05
990	M-2	51.69	4.47	7.42	2024-02-08 19:57:26
991	M-11	61.45	1.70	9.65	2024-03-17 09:49:19
992	M-9	53.42	3.36	9.73	2024-08-16 22:22:02
993	M-9	52.98	4.20	14.90	2024-12-18 19:01:12
994	M-9	66.13	6.01	8.76	2024-06-22 02:10:04
995	M-14	71.25	7.33	5.97	2024-08-31 20:37:56
996	M-17	75.07	5.29	13.58	2024-12-10 02:19:52
997	M-15	79.54	5.01	10.89	2024-10-10 07:48:04
998	M-15	53.41	5.18	11.72	2024-12-10 03:29:11
999	M-15	78.63	3.09	8.61	2024-07-01 01:36:18
1000	M-15	74.22	1.81	13.73	2024-10-07 00:28:33
1001	M-19	68.07	6.91	9.58	2024-06-29 04:28:38
1002	M-11	79.49	5.24	8.16	2024-02-17 08:59:29
1003	M-4	87.24	4.53	11.14	2024-06-07 01:25:07
1004	M-20	72.51	5.53	10.19	2024-02-11 16:32:15
1005	M-6	46.07	6.08	7.74	2024-12-21 13:48:00
1006	M-4	67.73	3.35	8.39	2024-10-30 14:27:05
1007	M-8	58.69	7.95	9.83	2024-04-21 09:25:40
1008	M-5	56.34	4.93	11.53	2024-10-23 15:38:11
1009	M-7	88.48	3.72	9.02	2024-02-16 20:02:47
1010	M-5	77.59	7.13	9.40	2024-03-27 11:43:37
1011	M-7	79.71	6.62	11.62	2024-08-03 09:38:27
1012	M-16	77.60	5.10	11.37	2024-03-25 09:54:00
1013	M-11	74.60	5.00	9.80	2024-06-02 20:20:49
1014	M-7	97.33	5.05	9.96	2024-03-30 17:50:36
1015	M-11	85.38	6.25	9.76	2024-09-28 07:43:49
1016	M-15	78.48	6.75	9.63	2024-01-01 17:21:46
1017	M-16	65.31	3.50	12.68	2024-06-30 08:11:34
1018	M-2	76.53	9.27	9.85	2024-05-13 11:44:05
1019	M-6	66.75	5.79	9.14	2024-04-09 14:50:51
1020	M-2	73.86	6.52	9.95	2024-01-05 01:43:41
1021	M-6	75.96	5.78	15.30	2024-09-25 12:15:58
1022	M-15	65.26	6.87	8.98	2024-01-29 02:06:02
1023	M-3	56.48	4.82	12.12	2024-02-12 10:02:02
1024	M-3	56.84	4.05	12.23	2024-07-15 04:02:29
1025	M-15	73.67	4.32	7.97	2024-06-29 07:03:17
1026	M-1	75.24	4.86	11.01	2024-12-24 23:38:58
1027	M-1	76.26	6.49	8.39	2024-09-30 03:36:46
1028	M-16	59.04	5.99	6.43	2024-11-02 15:25:22
1029	M-14	76.67	7.67	10.73	2024-02-22 00:45:26
1030	M-17	69.83	5.54	10.10	2024-05-20 18:04:43
1031	M-3	58.95	6.84	10.90	2024-09-11 10:03:29
1032	M-14	78.20	3.56	8.66	2024-08-21 07:41:58
1033	M-8	70.72	4.10	12.75	2024-12-06 16:46:37
1034	M-5	75.00	5.04	9.24	2024-06-22 07:37:00
1035	M-2	63.19	5.63	11.09	2024-02-19 08:52:01
1036	M-19	51.51	7.64	7.16	2024-05-30 09:05:52
1037	M-14	73.18	2.02	11.24	2024-01-24 18:58:49
1038	M-8	56.77	4.91	9.91	2024-11-09 20:09:54
1039	M-11	58.13	4.72	14.29	2024-07-07 16:07:30
1040	M-10	72.33	5.56	8.70	2024-04-06 01:33:38
1041	M-16	54.30	3.64	9.27	2024-05-29 07:01:12
1042	M-14	64.28	5.11	12.02	2024-08-16 15:31:12
1043	M-13	69.65	4.45	8.75	2024-07-10 22:41:08
1044	M-2	70.45	4.32	11.15	2024-05-07 22:26:33
1045	M-17	86.12	4.43	12.28	2024-02-17 10:39:28
1046	M-1	69.84	5.96	9.21	2024-07-01 13:40:43
1047	M-11	53.64	4.96	9.55	2024-11-22 05:07:49
1048	M-2	83.37	6.43	9.03	2024-05-11 03:30:22
1049	M-20	75.61	2.67	10.39	2024-12-17 06:37:49
1050	M-14	64.72	4.91	10.79	2024-02-02 02:18:34
1051	M-7	72.71	2.99	8.73	2024-11-23 06:19:49
1052	M-8	52.31	3.81	9.75	2024-10-13 09:30:35
1053	M-11	69.84	3.50	12.72	2024-05-01 21:59:11
1054	M-1	68.32	7.02	10.95	2024-03-06 21:28:53
1055	M-1	71.05	5.01	9.05	2024-01-28 17:36:18
1056	M-4	69.83	4.69	9.50	2024-05-22 01:55:34
1057	M-2	53.21	4.32	11.56	2024-02-21 10:29:44
1058	M-14	60.08	5.49	10.30	2024-10-19 11:04:28
1059	M-16	50.98	6.52	11.42	2024-07-18 12:02:44
1060	M-16	79.81	5.32	9.39	2024-10-12 15:05:58
1061	M-12	63.95	5.52	14.68	2024-05-25 07:58:02
1062	M-4	56.50	5.25	11.54	2024-01-30 08:53:12
1063	M-19	73.76	2.12	7.44	2024-04-21 09:36:33
1064	M-13	64.54	2.52	15.38	2024-08-04 06:37:28
1065	M-19	67.21	4.50	11.00	2024-03-16 09:36:45
1066	M-11	67.64	4.34	10.25	2024-11-04 13:47:48
1067	M-1	74.75	5.50	8.32	2024-07-18 19:11:17
1068	M-13	66.81	6.31	11.86	2024-10-14 11:52:11
1069	M-9	76.12	3.99	10.77	2024-04-09 17:01:51
1070	M-14	67.19	5.89	10.29	2024-04-12 12:23:51
1071	M-20	69.70	4.50	10.11	2024-10-17 04:53:14
1072	M-3	62.67	4.77	16.13	2024-04-30 07:36:59
1073	M-16	50.65	3.08	10.50	2024-06-03 21:51:33
1074	M-18	89.92	4.99	11.80	2024-11-25 00:00:32
1075	M-17	87.36	7.08	9.87	2024-06-17 03:37:27
1076	M-13	68.32	2.45	10.47	2024-05-12 07:50:26
1077	M-4	65.76	4.63	9.17	2024-04-03 05:55:20
1078	M-16	72.87	5.11	14.53	2024-12-29 18:09:57
1079	M-4	58.32	5.02	9.71	2024-05-06 07:38:58
1080	M-13	57.97	7.34	10.36	2024-02-09 05:35:44
1081	M-4	67.87	6.07	11.61	2024-11-29 18:23:39
1082	M-16	64.52	4.66	10.44	2024-10-22 06:55:11
1083	M-14	70.99	6.67	12.61	2024-09-15 20:15:55
1084	M-17	55.72	4.24	14.61	2024-06-23 19:08:08
1085	M-20	70.93	4.32	10.85	2024-02-16 06:20:35
1086	M-1	71.31	6.86	12.14	2024-03-05 17:06:26
1087	M-4	62.71	7.59	6.75	2024-02-29 09:00:05
1088	M-20	79.21	6.03	7.78	2024-12-21 15:23:15
1089	M-16	74.45	3.37	8.08	2024-02-10 21:00:35
1090	M-10	81.55	2.72	8.66	2024-06-25 02:46:27
1091	M-2	80.82	6.45	8.68	2024-08-26 14:51:16
1092	M-20	79.96	6.72	9.81	2024-01-18 15:58:29
1093	M-14	57.24	3.94	11.85	2024-01-28 04:24:37
1094	M-20	73.11	7.16	9.83	2024-04-14 22:09:49
1095	M-9	72.69	4.27	6.76	2024-04-05 16:57:53
1096	M-1	83.18	2.81	10.78	2024-06-30 08:58:37
1097	M-16	72.64	5.08	11.81	2024-03-23 12:02:03
1098	M-8	57.14	5.58	4.55	2024-12-10 16:16:39
1099	M-12	64.64	3.32	11.17	2024-06-24 20:12:47
1100	M-19	81.64	6.49	8.51	2024-08-29 13:58:21
1101	M-15	70.92	4.50	12.01	2024-08-01 19:17:58
1102	M-13	67.78	6.34	9.49	2024-05-25 08:17:16
1103	M-4	57.65	5.73	10.50	2024-03-19 19:06:12
1104	M-10	57.35	2.98	12.04	2024-06-24 15:41:04
1105	M-20	51.61	3.16	10.43	2024-05-22 23:58:15
1106	M-20	83.92	5.43	8.78	2024-08-03 10:37:09
1107	M-2	82.75	4.59	7.47	2024-06-19 20:05:46
1108	M-11	63.52	6.91	8.84	2024-12-06 01:26:43
1109	M-10	74.23	5.10	8.87	2024-03-30 07:41:23
1110	M-18	74.91	3.74	10.01	2024-01-10 23:54:09
1111	M-8	79.65	7.89	11.08	2024-09-16 08:59:13
1112	M-19	62.88	3.88	13.70	2024-04-07 05:34:46
1113	M-13	52.99	3.68	12.83	2024-11-10 15:40:49
1114	M-19	81.00	3.05	11.22	2024-05-26 05:53:12
1115	M-1	69.53	6.96	8.65	2024-01-22 20:15:58
1116	M-14	83.82	6.24	8.61	2024-05-20 01:02:01
1117	M-15	79.14	4.25	9.38	2024-10-02 05:42:27
1118	M-18	71.98	2.97	10.77	2024-04-09 23:26:22
1119	M-19	72.99	5.86	10.55	2024-02-29 04:52:02
1120	M-5	95.35	6.99	8.12	2024-08-20 04:49:21
1121	M-20	80.74	4.36	9.52	2024-09-21 13:09:33
1122	M-16	84.70	3.61	7.99	2024-03-27 22:47:25
1123	M-10	54.42	4.63	10.60	2024-01-31 08:19:02
1124	M-18	66.02	5.15	6.14	2024-11-19 09:05:51
1125	M-2	79.79	5.06	11.32	2024-11-02 13:17:14
1126	M-10	71.29	5.10	13.50	2024-10-29 07:02:12
1127	M-1	74.09	4.07	13.14	2024-05-26 13:55:26
1128	M-5	78.65	4.62	10.22	2024-01-01 21:25:25
1129	M-11	54.46	6.94	5.06	2024-01-24 17:33:12
1130	M-2	63.34	5.65	8.75	2024-10-10 17:59:52
1131	M-8	69.34	8.76	7.25	2024-12-23 00:23:58
1132	M-1	66.23	5.14	8.77	2024-03-07 17:00:21
1133	M-6	69.84	4.49	10.14	2024-06-26 22:19:29
1134	M-9	69.84	5.79	14.80	2024-09-15 10:08:52
1135	M-8	89.03	7.15	12.26	2024-03-10 10:45:35
1136	M-13	86.35	4.99	8.37	2024-07-03 03:25:25
1137	M-8	66.72	5.28	14.57	2024-02-01 22:35:17
1138	M-17	69.77	6.99	9.61	2024-07-21 04:23:02
1139	M-20	79.46	5.47	10.87	2024-03-20 07:21:39
1140	M-11	57.18	4.66	6.21	2024-06-12 08:16:58
1141	M-20	71.58	3.04	9.17	2024-07-03 09:37:57
1142	M-19	70.73	5.31	9.86	2024-08-15 19:06:35
1143	M-5	89.62	2.46	11.82	2024-04-24 08:39:18
1144	M-4	68.08	3.37	14.38	2024-03-17 00:31:15
1145	M-8	76.43	3.99	9.51	2024-05-26 03:37:43
1146	M-15	77.39	3.05	9.46	2024-05-18 02:05:12
1147	M-17	77.83	3.94	10.07	2024-10-27 17:22:58
1148	M-13	81.70	4.46	9.01	2024-10-11 04:46:55
1149	M-12	60.01	4.42	10.23	2024-08-16 02:44:14
1150	M-5	75.81	4.76	10.66	2024-03-31 07:31:10
1151	M-15	58.95	6.05	8.58	2024-07-01 07:49:44
1152	M-6	72.68	3.38	11.78	2024-03-26 10:49:58
1153	M-18	71.04	6.89	11.71	2024-05-14 15:44:54
1154	M-10	67.82	2.96	8.32	2024-07-12 20:48:46
1155	M-12	71.11	3.03	11.54	2024-06-23 06:39:32
1156	M-1	87.21	2.98	7.86	2024-09-12 06:45:55
1157	M-17	65.60	5.90	11.41	2024-12-23 05:16:01
1158	M-9	61.09	4.35	9.42	2024-09-28 02:18:49
1159	M-16	67.73	4.28	8.66	2024-01-11 19:21:10
1160	M-2	66.72	4.71	10.52	2024-05-29 12:07:21
1161	M-4	71.93	6.73	10.22	2024-07-14 05:21:11
1162	M-6	64.87	6.89	10.49	2024-02-09 09:43:01
1163	M-1	70.95	6.00	7.84	2024-12-08 16:43:46
1164	M-13	85.25	4.46	14.47	2024-07-21 01:50:39
1165	M-18	60.70	3.87	10.46	2024-03-01 11:35:30
1166	M-3	74.27	5.08	13.50	2024-09-07 16:28:13
1167	M-11	71.89	6.86	12.20	2024-07-16 20:32:28
1168	M-11	78.21	3.25	10.30	2024-09-30 23:30:52
1169	M-3	70.96	5.20	8.80	2024-08-07 12:04:04
1170	M-5	59.42	6.35	11.24	2024-02-18 00:56:12
1171	M-13	80.89	5.53	10.35	2024-07-09 18:31:44
1172	M-5	68.78	6.52	12.57	2024-02-02 17:43:58
1173	M-10	66.07	4.58	9.81	2024-09-18 01:26:30
1174	M-18	72.44	8.88	8.76	2024-12-30 11:22:21
1175	M-2	65.32	3.90	8.84	2024-08-20 05:26:44
1176	M-19	71.55	4.91	9.98	2024-01-22 01:57:20
1177	M-4	82.61	6.12	7.98	2024-02-23 23:44:35
1178	M-15	69.84	5.30	12.35	2024-10-12 12:44:19
1179	M-17	75.21	3.98	7.47	2024-06-25 14:57:44
1180	M-5	58.97	5.44	10.48	2024-04-02 16:13:31
1181	M-16	60.63	7.16	10.77	2024-08-01 22:42:56
1182	M-4	67.72	4.93	10.85	2024-02-15 15:30:40
1183	M-7	69.84	4.33	8.31	2024-01-01 01:29:17
1184	M-5	75.97	6.20	8.42	2024-07-19 09:46:37
1185	M-10	61.70	8.18	11.79	2024-03-25 00:14:59
1186	M-8	63.54	4.46	8.64	2024-07-15 06:24:01
1187	M-1	83.57	4.24	9.52	2024-01-30 01:35:29
1188	M-2	60.99	6.19	10.65	2024-01-31 14:14:38
1189	M-9	70.32	5.02	11.53	2024-09-13 04:08:59
1190	M-4	78.58	3.60	7.80	2024-01-19 03:20:35
1191	M-6	77.74	5.95	14.50	2024-06-24 00:00:21
1192	M-15	63.03	3.81	7.32	2024-05-25 02:31:30
1193	M-17	72.77	3.80	5.18	2024-06-12 23:08:07
1194	M-11	57.92	7.69	10.94	2024-03-17 08:53:14
1195	M-5	82.76	3.64	8.64	2024-05-13 15:14:58
1196	M-6	81.32	2.86	13.75	2024-10-25 19:45:32
1197	M-11	62.41	7.11	8.55	2024-10-11 02:32:58
1198	M-13	61.62	5.99	9.36	2024-03-17 19:57:46
1199	M-5	82.02	4.76	9.01	2024-01-05 21:01:26
1200	M-19	64.06	5.53	11.57	2024-03-20 16:01:04
1201	M-15	67.69	5.61	7.86	2024-11-30 14:54:13
1202	M-9	66.61	8.57	9.28	2024-12-10 19:01:21
1203	M-9	85.19	4.33	9.03	2024-10-15 23:16:41
1204	M-20	69.17	3.29	9.09	2024-07-23 08:43:56
1205	M-18	66.33	5.12	11.85	2024-07-24 20:58:58
1206	M-6	72.54	3.53	10.78	2024-10-28 09:09:00
1207	M-5	91.18	4.31	9.00	2024-04-26 09:19:12
1208	M-20	74.96	3.85	10.26	2024-10-25 06:01:23
1209	M-12	81.36	3.92	11.62	2024-08-26 09:58:05
1210	M-5	67.93	5.30	9.37	2024-01-14 14:44:08
1211	M-8	71.49	4.59	10.97	2024-10-09 08:19:38
1212	M-1	60.38	6.42	12.74	2024-12-14 05:33:10
1213	M-4	82.29	2.44	11.49	2024-05-29 18:05:08
1214	M-7	62.02	5.38	11.21	2024-07-06 14:04:25
1215	M-10	85.10	3.95	8.72	2024-11-03 14:05:25
1216	M-1	71.45	5.45	8.00	2024-10-14 17:28:43
1217	M-10	82.37	3.66	10.69	2024-10-20 14:26:44
1218	M-11	65.42	3.42	10.64	2024-03-06 01:07:03
1219	M-4	62.72	5.67	9.49	2024-07-25 07:42:08
1220	M-10	65.87	4.61	11.52	2024-06-12 05:37:40
1221	M-15	82.93	5.22	14.33	2024-09-22 15:09:29
1222	M-18	58.38	6.24	5.53	2024-01-19 23:20:09
1223	M-6	69.94	4.66	8.82	2024-07-24 06:52:26
1224	M-15	78.36	4.25	12.48	2024-09-12 06:00:26
1225	M-4	75.19	5.24	8.80	2024-04-17 03:33:18
1226	M-3	68.00	6.46	10.34	2024-12-30 21:56:57
1227	M-12	66.71	4.69	10.19	2024-02-27 13:35:59
1228	M-13	86.56	5.74	7.06	2024-07-16 09:31:51
1229	M-6	57.43	3.39	12.57	2024-02-10 17:26:31
1230	M-6	77.83	5.72	6.60	2024-04-19 03:07:33
1231	M-7	44.62	6.23	10.28	2024-02-16 01:45:25
1232	M-3	69.46	8.05	9.58	2024-08-23 09:42:35
1233	M-1	66.91	7.24	8.32	2024-09-20 20:25:39
1234	M-3	68.09	5.02	8.47	2024-02-08 15:15:49
1235	M-13	76.83	4.12	9.66	2024-04-07 18:04:08
1236	M-3	63.79	6.96	10.73	2024-02-20 08:00:37
1237	M-5	66.33	5.73	10.89	2024-09-10 05:25:29
1238	M-8	85.41	6.89	11.05	2024-06-12 21:30:50
1239	M-15	78.84	1.99	10.68	2024-01-27 21:40:56
1240	M-2	77.88	4.83	9.88	2024-07-07 10:26:46
1241	M-14	68.02	4.59	12.98	2024-07-25 18:22:54
1242	M-15	85.27	5.24	7.06	2024-03-19 11:01:27
1243	M-4	96.62	4.00	10.28	2024-06-03 21:24:08
1244	M-1	68.25	4.00	10.69	2024-04-21 23:25:02
1245	M-13	63.24	4.35	6.18	2024-11-14 10:29:53
1246	M-11	69.68	3.86	11.07	2024-09-19 03:47:00
1247	M-7	80.72	4.14	8.66	2024-10-07 02:55:03
1248	M-8	67.98	3.88	14.11	2024-03-26 16:40:21
1249	M-19	53.86	3.62	9.34	2024-06-19 10:33:17
1250	M-14	72.18	4.35	5.35	2024-03-16 13:27:30
1251	M-12	68.46	6.67	6.32	2024-11-18 02:12:48
1252	M-15	78.52	4.07	9.73	2024-02-04 20:21:52
1253	M-18	73.73	4.28	10.55	2024-02-23 21:24:54
1254	M-12	57.66	5.33	9.70	2024-04-28 01:13:08
1255	M-5	74.27	3.79	9.16	2024-07-24 01:12:44
1256	M-13	58.77	2.85	13.86	2024-03-29 10:44:37
1257	M-3	59.86	4.94	12.00	2024-12-03 01:11:34
1258	M-10	75.85	6.08	10.74	2024-04-05 16:42:07
1259	M-14	78.09	2.74	9.72	2024-11-27 01:10:43
1260	M-10	52.95	5.15	8.39	2024-02-25 19:56:47
1261	M-10	76.02	4.93	9.56	2024-05-29 14:40:03
1262	M-4	64.76	4.12	12.23	2024-06-03 15:35:12
1263	M-7	62.25	6.62	10.08	2024-05-16 00:15:47
1264	M-14	75.53	4.65	10.00	2024-06-21 16:31:02
1265	M-11	85.33	4.67	5.40	2024-09-30 14:27:12
1266	M-15	88.79	7.75	11.98	2024-10-27 03:24:30
1267	M-10	84.84	4.69	11.00	2024-10-14 13:25:10
1268	M-7	58.04	2.74	7.09	2024-03-19 06:44:56
1269	M-16	53.74	8.67	12.72	2024-07-06 02:09:50
1270	M-10	49.45	7.38	14.48	2024-08-29 02:22:02
1271	M-13	83.33	6.49	7.73	2024-02-04 22:25:48
1272	M-20	50.93	5.43	11.91	2024-05-05 20:25:43
1273	M-3	67.00	6.68	7.63	2024-05-10 20:17:12
1274	M-4	65.82	4.70	11.29	2024-01-16 02:01:07
1275	M-15	64.34	6.47	8.15	2024-02-25 02:04:22
1276	M-3	76.49	6.81	12.56	2024-03-05 18:35:32
1277	M-19	56.09	5.48	8.58	2024-04-01 14:48:50
1278	M-15	76.79	4.60	9.65	2024-10-31 09:17:41
1279	M-14	76.35	4.57	10.10	2024-04-10 04:52:19
1280	M-9	67.41	4.07	7.74	2024-07-29 14:33:37
1281	M-16	58.27	4.51	8.25	2024-07-15 00:50:11
1282	M-9	65.32	4.11	12.77	2024-12-01 18:16:02
1283	M-13	71.51	5.21	10.82	2024-01-17 07:35:47
1284	M-4	54.50	5.20	8.20	2024-11-26 08:04:44
1285	M-8	39.46	4.46	11.08	2024-01-09 00:02:43
1286	M-17	71.39	5.52	6.04	2024-05-15 15:11:30
1287	M-6	71.56	8.22	9.10	2024-09-21 10:15:45
1288	M-17	55.93	5.43	11.06	2024-08-09 16:35:25
1289	M-14	68.46	4.89	9.45	2024-08-19 19:20:41
1290	M-7	74.91	5.99	15.74	2024-12-13 01:13:42
1291	M-1	59.35	2.48	9.52	2024-03-13 20:22:33
1292	M-16	77.41	6.77	13.05	2024-05-14 20:57:48
1293	M-13	74.62	5.30	11.94	2024-06-26 00:03:27
1294	M-11	85.32	4.46	10.89	2024-09-26 11:28:19
1295	M-13	60.81	6.24	8.95	2024-05-03 12:11:15
1296	M-4	88.31	4.87	13.76	2024-10-27 08:00:07
1297	M-18	55.40	3.68	10.41	2024-03-15 02:15:55
1298	M-3	58.58	4.74	11.38	2024-05-31 12:13:04
1299	M-13	67.50	3.76	14.76	2024-06-23 13:27:40
1300	M-5	74.06	5.15	15.52	2024-04-29 00:45:57
1301	M-10	67.51	4.69	9.62	2024-12-20 23:01:02
1302	M-14	70.69	4.98	12.50	2024-05-07 18:26:07
1303	M-17	71.94	3.17	8.94	2024-06-05 04:41:02
1304	M-5	89.55	3.55	10.93	2024-03-07 21:11:15
1305	M-10	60.94	7.40	10.19	2024-08-15 21:19:18
1306	M-11	50.28	8.48	12.54	2024-09-09 16:42:05
1307	M-15	71.17	6.62	14.01	2024-09-26 17:22:57
1308	M-15	91.35	6.64	10.82	2024-10-07 05:12:15
1309	M-10	66.86	7.40	9.72	2024-03-26 04:24:02
1310	M-19	77.05	6.76	10.39	2024-01-21 03:40:12
1311	M-16	65.83	6.62	9.16	2024-05-09 04:31:50
1312	M-20	77.61	3.01	13.28	2024-02-08 20:45:23
1313	M-20	73.67	5.12	8.88	2024-10-24 18:23:46
1314	M-5	67.94	4.66	9.36	2024-02-24 03:02:57
1315	M-6	76.41	6.01	10.86	2024-04-20 22:29:45
1316	M-9	78.18	5.77	8.78	2024-12-16 11:56:41
1317	M-17	59.87	5.11	14.25	2024-04-28 23:13:01
1318	M-1	63.08	9.06	10.47	2024-01-29 09:51:41
1319	M-14	84.08	6.73	7.29	2024-09-14 07:05:25
1320	M-1	58.41	4.28	9.85	2024-04-18 00:34:19
1321	M-9	71.04	5.18	10.83	2024-10-29 19:34:53
1322	M-18	57.57	6.74	9.90	2024-10-18 15:48:21
1323	M-16	83.13	4.73	13.40	2024-07-29 22:46:01
1324	M-12	63.36	7.13	10.97	2024-04-08 11:06:45
1325	M-7	60.27	5.82	8.60	2024-03-13 08:48:38
1326	M-14	74.00	5.83	9.05	2024-12-23 00:27:39
1327	M-1	79.64	5.24	9.94	2024-08-05 17:40:10
1328	M-15	64.02	6.34	10.45	2024-12-16 14:55:00
1329	M-14	70.29	3.57	13.45	2024-07-06 07:06:46
1330	M-7	80.10	4.14	9.17	2024-07-09 07:22:21
1331	M-3	65.13	3.88	7.59	2024-06-02 20:35:22
1332	M-3	75.51	5.02	4.59	2024-02-05 17:01:54
1333	M-8	87.31	4.53	10.85	2024-06-08 08:11:43
1334	M-10	58.67	4.58	8.84	2024-06-23 07:49:39
1335	M-13	70.29	4.89	9.59	2024-03-10 20:01:42
1336	M-7	65.31	4.37	7.52	2024-11-14 16:35:43
1337	M-14	66.17	2.15	10.20	2024-09-17 20:20:34
1338	M-12	74.65	5.05	8.38	2024-04-28 12:49:14
1339	M-19	58.01	3.64	11.14	2024-05-14 20:42:42
1340	M-15	77.49	5.00	9.01	2024-02-13 14:55:38
1341	M-14	58.33	3.86	11.49	2024-02-10 14:07:15
1342	M-12	57.01	6.52	11.95	2024-09-15 18:40:29
1343	M-13	71.88	5.04	9.26	2024-03-11 21:56:48
1344	M-4	66.78	6.65	11.84	2024-02-04 19:36:54
1345	M-8	76.72	4.67	10.28	2024-08-27 17:50:16
1346	M-3	62.94	3.08	7.65	2024-10-08 23:32:23
1347	M-10	62.43	5.76	7.54	2024-07-04 10:05:48
1348	M-17	72.89	3.87	11.65	2024-10-30 13:56:10
1349	M-4	63.83	4.12	12.13	2024-10-09 12:14:12
1350	M-19	74.30	8.10	12.79	2024-04-12 17:13:02
1351	M-15	63.99	5.97	11.53	2024-02-18 03:05:59
1352	M-14	72.25	6.60	9.51	2024-08-09 14:13:04
1353	M-12	55.48	4.45	9.03	2024-12-17 18:22:40
1354	M-19	91.00	3.29	12.30	2024-06-12 02:39:35
1355	M-14	86.58	4.58	8.92	2024-01-24 03:36:29
1356	M-6	71.61	7.86	10.93	2024-09-24 08:10:54
1357	M-8	82.79	5.00	9.25	2024-09-07 04:51:19
1358	M-19	67.59	5.62	8.59	2024-07-31 22:57:56
1359	M-17	85.07	7.18	11.83	2024-03-15 10:54:16
1360	M-18	72.80	2.01	9.56	2024-01-09 03:05:29
1361	M-14	70.03	6.77	6.31	2024-03-21 07:58:41
1362	M-11	62.19	5.87	4.01	2024-06-14 22:09:59
1363	M-9	64.95	5.11	9.82	2024-01-23 23:39:45
1364	M-13	85.05	5.42	9.48	2024-11-01 04:14:43
1365	M-11	78.15	4.72	12.68	2024-12-05 17:11:34
1366	M-16	75.30	6.85	12.68	2024-03-19 07:01:25
1367	M-15	64.72	1.64	12.18	2024-09-16 08:05:30
1368	M-2	75.63	4.01	8.65	2024-01-05 07:38:24
1369	M-16	71.70	4.30	11.93	2024-06-16 18:03:47
1370	M-19	78.43	4.08	11.60	2024-07-11 11:48:25
1371	M-17	75.23	6.21	10.12	2024-10-15 08:50:00
1372	M-7	64.35	3.58	13.71	2024-06-03 07:59:15
1373	M-2	61.88	2.91	7.23	2024-05-29 06:45:10
1374	M-6	58.07	7.50	12.80	2024-07-20 01:11:01
1375	M-2	71.73	3.49	11.40	2024-03-27 09:19:28
1376	M-12	43.33	4.29	8.14	2024-07-11 13:24:18
1377	M-10	73.00	5.15	8.86	2024-05-23 10:34:29
1378	M-3	67.20	2.22	12.53	2024-03-22 13:49:30
1379	M-7	64.40	7.91	10.46	2024-10-31 17:43:44
1380	M-8	79.17	4.87	7.08	2024-05-12 05:11:01
1381	M-16	73.23	5.12	9.90	2024-04-01 14:08:10
1382	M-10	65.41	6.57	8.90	2024-12-09 17:12:13
1383	M-15	62.48	5.32	7.93	2024-03-31 09:53:40
1384	M-18	63.36	4.87	8.05	2024-04-22 16:38:10
1385	M-14	72.07	5.69	11.31	2024-02-17 22:35:09
1386	M-18	63.61	3.34	10.73	2024-11-28 05:13:42
1387	M-3	69.83	5.51	6.83	2024-09-15 08:53:42
1388	M-2	68.69	3.01	9.10	2024-10-14 03:43:37
1389	M-3	71.64	4.11	11.37	2024-04-27 21:03:39
1390	M-6	79.78	7.03	11.31	2024-09-10 05:25:55
1391	M-7	62.72	1.24	13.27	2024-08-14 04:53:04
1392	M-3	66.83	5.32	8.45	2024-09-01 10:51:43
1393	M-13	46.88	5.01	8.91	2024-02-12 03:45:55
1394	M-5	69.95	6.25	6.95	2024-08-03 11:15:38
1395	M-17	74.80	6.35	12.01	2024-12-27 05:27:25
1396	M-10	84.28	8.49	12.65	2024-05-27 12:19:19
1397	M-12	68.18	2.72	11.21	2024-03-05 17:31:12
1398	M-3	87.61	4.51	12.95	2024-07-23 23:32:59
1399	M-5	78.31	6.45	9.73	2024-06-14 18:08:45
1400	M-18	70.67	4.24	8.73	2024-03-01 19:01:46
1401	M-11	78.91	0.36	9.30	2024-12-21 05:02:29
1402	M-14	78.45	3.65	12.78	2024-03-22 04:37:08
1403	M-8	68.35	5.67	4.28	2024-10-13 07:50:49
1404	M-4	75.70	5.28	8.88	2024-05-27 05:38:14
1405	M-2	75.21	5.86	13.21	2024-06-10 12:54:01
1406	M-3	76.78	4.35	7.83	2024-05-29 16:37:54
1407	M-16	83.84	4.27	13.40	2024-02-27 01:43:01
1408	M-11	63.69	5.96	13.87	2024-06-29 03:47:45
1409	M-2	50.13	4.66	13.30	2024-08-14 03:48:17
1410	M-13	57.88	4.82	10.20	2024-02-13 13:14:58
1411	M-9	77.91	4.36	12.29	2024-02-26 19:51:29
1412	M-12	57.02	3.78	11.07	2024-06-05 16:46:19
1413	M-15	68.02	4.83	10.18	2024-12-26 10:46:24
1414	M-8	83.26	4.38	9.60	2024-12-17 06:45:26
1415	M-9	68.78	7.14	10.87	2024-01-19 05:44:48
1416	M-6	74.15	5.54	8.65	2024-02-19 07:52:50
1417	M-15	63.12	4.80	9.47	2024-12-03 06:08:53
1418	M-6	76.66	6.05	13.44	2024-09-10 06:41:23
1419	M-6	89.08	5.84	10.22	2024-12-06 00:36:28
1420	M-15	68.18	6.86	8.93	2024-01-23 18:24:12
1421	M-12	76.94	4.04	11.08	2024-08-24 23:46:59
1422	M-5	64.85	4.01	8.36	2024-05-01 06:09:02
1423	M-20	68.66	3.99	8.46	2024-02-15 06:25:30
1424	M-13	72.80	3.39	10.59	2024-11-19 09:39:41
1425	M-18	66.30	4.05	10.86	2024-09-12 07:10:33
1426	M-3	69.96	3.88	11.13	2024-04-27 03:09:47
1427	M-7	86.26	5.99	10.29	2024-05-04 04:00:42
1428	M-10	54.04	3.15	12.36	2024-07-05 16:53:26
1429	M-12	70.24	3.98	10.38	2024-04-09 12:04:43
1430	M-9	56.86	4.44	11.36	2024-04-20 12:55:17
1431	M-18	66.09	4.71	9.06	2024-12-10 22:54:06
1432	M-8	82.91	6.20	9.69	2024-01-05 21:12:59
1433	M-4	72.76	4.42	12.50	2024-05-26 20:46:04
1434	M-18	73.09	4.55	8.58	2024-07-16 09:38:35
1435	M-11	58.29	4.34	10.94	2024-09-03 10:34:31
1436	M-13	67.76	6.13	13.09	2024-03-10 14:43:03
1437	M-8	68.49	5.25	7.61	2024-12-17 07:24:07
1438	M-20	69.09	4.34	8.40	2024-09-16 22:58:40
1439	M-11	73.42	3.79	9.43	2024-05-09 12:00:44
1440	M-1	80.89	6.46	10.62	2024-08-23 09:47:08
1441	M-1	62.65	5.75	8.36	2024-03-05 05:01:15
1442	M-15	64.61	7.22	10.24	2024-04-26 05:21:29
1443	M-14	77.94	6.81	9.22	2024-08-01 21:24:39
1444	M-12	69.94	3.53	8.55	2024-02-27 04:27:08
1445	M-10	75.24	3.09	8.25	2024-03-10 00:51:46
1446	M-16	62.15	7.34	9.59	2024-03-04 06:56:10
1447	M-8	75.57	5.72	11.09	2024-08-09 00:50:58
1448	M-19	54.99	4.66	9.18	2024-07-18 07:22:50
1449	M-8	90.50	4.52	7.45	2024-12-26 21:28:31
1450	M-10	53.15	2.98	11.33	2024-04-06 00:21:02
1451	M-7	69.98	4.30	9.18	2024-03-17 08:32:42
1452	M-12	73.53	5.99	10.70	2024-05-01 01:46:57
1453	M-18	83.30	3.49	10.01	2024-12-08 07:58:34
1454	M-16	65.56	3.90	9.81	2024-08-19 14:55:56
1455	M-19	73.79	5.22	10.65	2024-09-15 00:18:43
1456	M-12	87.66	7.62	12.89	2024-01-06 11:44:20
1457	M-13	67.16	6.45	11.51	2024-07-22 02:22:19
1458	M-3	70.79	4.73	10.50	2024-08-27 02:26:11
1459	M-1	73.95	3.77	11.71	2024-01-20 05:33:44
1460	M-19	78.57	5.55	8.04	2024-08-10 21:02:20
1461	M-1	73.20	5.05	9.61	2024-05-17 17:12:51
1462	M-19	62.29	5.14	11.14	2024-11-24 16:31:00
1463	M-18	69.59	5.37	9.61	2024-07-14 01:11:47
1464	M-13	82.33	6.88	13.43	2024-03-09 16:18:01
1465	M-11	49.45	4.91	10.14	2024-09-12 03:38:11
1466	M-16	61.99	5.31	7.87	2024-05-16 13:19:16
1467	M-7	65.04	7.54	8.92	2024-05-20 07:12:57
1468	M-14	74.06	1.44	10.75	2024-03-29 22:23:37
1469	M-18	94.04	5.31	10.01	2024-09-28 00:57:34
1470	M-20	87.03	2.00	10.04	2024-11-30 20:24:32
1471	M-7	95.01	5.17	10.35	2024-03-12 11:01:03
1472	M-16	65.58	5.29	6.66	2024-04-02 20:14:09
1473	M-2	73.80	5.92	7.52	2024-06-18 03:33:32
1474	M-16	88.17	4.01	9.97	2024-06-20 14:01:57
1475	M-7	62.20	7.50	8.89	2024-09-22 11:25:00
1476	M-11	65.05	3.14	12.56	2024-04-24 01:53:26
1477	M-16	51.37	5.41	9.49	2024-07-06 19:32:29
1478	M-1	88.52	3.33	9.55	2024-12-26 09:19:55
1479	M-9	61.39	5.99	11.46	2024-12-11 02:51:26
1480	M-10	57.28	5.18	11.25	2024-06-28 09:02:22
1481	M-5	70.68	5.61	11.35	2024-07-15 22:47:12
1482	M-15	64.33	4.77	11.26	2024-04-22 23:49:26
1483	M-20	66.41	6.12	13.93	2024-02-02 07:09:15
1484	M-7	72.50	4.31	10.34	2024-06-28 03:59:01
1485	M-10	68.99	6.79	11.98	2024-02-03 15:54:09
1486	M-18	89.18	7.10	9.34	2024-10-25 14:02:29
1487	M-16	74.22	3.63	8.99	2024-11-22 00:01:30
1488	M-20	54.70	4.69	9.40	2024-02-11 21:39:25
1489	M-6	69.84	2.23	12.70	2024-07-12 10:31:00
1490	M-7	70.47	1.61	9.99	2024-04-27 18:24:41
1491	M-10	69.60	4.05	9.71	2024-10-13 16:57:47
1492	M-13	75.31	5.21	9.50	2024-06-09 17:17:29
1493	M-11	81.46	6.51	8.17	2024-05-29 01:44:22
1494	M-1	52.02	4.95	12.20	2024-06-26 04:58:36
1495	M-4	70.72	4.75	9.22	2024-01-16 17:43:46
1496	M-10	59.99	6.66	6.72	2024-06-11 15:03:54
1497	M-12	67.13	6.51	9.70	2024-12-30 00:29:57
1498	M-7	64.89	5.09	9.14	2024-10-29 02:50:33
1499	M-19	77.80	8.06	12.82	2024-05-21 16:05:18
1500	M-5	77.45	7.45	8.60	2024-09-19 06:52:16
1501	M-6	75.43	2.50	11.89	2024-04-06 00:18:14
1502	M-14	69.73	5.56	11.71	2024-06-12 07:13:51
1503	M-10	65.41	5.73	5.54	2024-11-08 05:21:55
1504	M-4	61.47	7.14	10.20	2024-06-27 00:04:05
1505	M-12	57.46	3.47	10.15	2024-03-10 04:12:40
1506	M-19	91.42	5.20	9.26	2024-07-14 19:06:44
1507	M-5	63.11	4.18	9.54	2024-02-23 12:07:05
1508	M-4	72.48	6.89	12.61	2024-03-13 11:23:41
1509	M-10	62.17	3.59	11.81	2024-04-13 08:30:59
1510	M-9	75.09	7.92	7.36	2024-07-22 09:22:38
1511	M-17	62.07	3.36	10.82	2024-09-05 14:10:29
1512	M-14	64.32	5.20	10.53	2024-01-17 11:45:52
1513	M-9	69.42	2.91	10.90	2024-04-24 16:50:19
1514	M-15	72.20	4.69	10.63	2024-12-02 21:30:35
1515	M-10	62.69	4.90	4.46	2024-05-12 17:16:10
1516	M-18	58.75	6.37	12.23	2024-01-15 12:02:45
1517	M-11	54.30	5.70	9.33	2024-09-22 16:19:05
1518	M-9	69.75	4.36	9.68	2024-04-19 20:07:24
1519	M-1	77.81	3.22	10.79	2024-02-07 00:27:47
1520	M-8	78.01	6.13	8.73	2024-02-19 02:35:29
1521	M-11	77.62	3.20	10.10	2024-04-27 15:32:32
1522	M-8	72.42	5.70	8.57	2024-05-26 18:18:10
1523	M-11	62.36	4.45	8.05	2024-05-08 03:36:52
1524	M-7	75.00	7.19	12.40	2024-09-06 03:09:42
1525	M-14	68.28	4.48	9.42	2024-08-14 20:23:38
1526	M-9	52.79	2.22	9.28	2024-11-08 00:36:49
1527	M-11	61.27	5.14	9.69	2024-12-03 15:54:25
1528	M-1	53.95	2.90	10.95	2024-01-28 08:53:34
1529	M-10	84.94	4.41	12.21	2024-02-06 21:09:21
1530	M-10	68.66	9.55	12.16	2024-11-06 08:18:11
1531	M-1	82.29	5.65	7.37	2024-10-26 11:37:30
1532	M-17	71.59	3.81	9.76	2024-12-25 04:03:29
1533	M-9	67.49	6.18	10.31	2024-12-02 13:04:09
1534	M-5	69.46	6.73	8.03	2024-01-21 06:24:35
1535	M-7	90.05	4.68	9.47	2024-07-16 14:39:38
1536	M-12	72.82	6.17	9.92	2024-11-05 11:37:02
1537	M-4	73.79	2.81	11.54	2024-01-03 10:36:22
1538	M-12	68.12	3.88	9.13	2024-06-28 09:54:40
1539	M-11	65.01	4.71	7.14	2024-07-22 19:59:30
1540	M-4	74.11	5.23	12.02	2024-09-27 04:42:08
1541	M-17	54.61	1.12	9.79	2024-01-07 02:05:39
1542	M-6	74.82	6.73	11.63	2024-03-13 23:53:56
1543	M-14	65.20	6.92	11.34	2024-12-05 09:47:26
1544	M-9	81.87	4.63	12.66	2024-08-05 10:11:01
1545	M-3	55.70	5.73	6.27	2024-02-18 18:54:12
1546	M-19	74.63	5.66	14.62	2024-11-24 15:16:14
1547	M-15	60.25	2.71	8.54	2024-11-09 08:29:53
1548	M-16	65.97	2.32	7.26	2024-09-22 14:43:37
1549	M-10	72.03	8.35	9.58	2024-10-25 20:11:01
1550	M-12	59.31	7.65	9.96	2024-07-28 02:45:21
1551	M-17	55.80	6.33	8.82	2024-01-09 18:53:22
1552	M-17	71.89	5.94	10.24	2024-11-28 14:52:03
1553	M-2	68.12	2.95	11.38	2024-11-30 08:58:51
1554	M-11	47.98	3.66	7.33	2024-11-21 16:32:20
1555	M-14	56.12	4.56	10.39	2024-09-23 14:07:50
1556	M-20	76.01	2.88	10.27	2024-07-26 20:11:25
1557	M-9	61.59	5.68	11.22	2024-03-05 02:53:25
1558	M-18	77.62	3.47	9.22	2024-12-20 18:14:34
1559	M-6	84.40	5.43	9.82	2024-10-23 09:21:55
1560	M-16	57.18	3.96	9.72	2024-12-09 10:41:19
1561	M-16	59.39	5.52	7.56	2024-10-23 09:01:37
1562	M-11	83.02	6.66	9.13	2024-12-07 01:19:39
1563	M-5	74.62	4.88	9.65	2024-02-25 20:00:08
1564	M-8	86.73	5.38	9.78	2024-11-29 12:47:15
1565	M-9	75.75	2.86	8.03	2024-03-11 17:40:36
1566	M-20	77.03	4.55	8.39	2024-11-30 13:54:53
1567	M-4	64.38	2.41	10.67	2024-12-11 09:28:25
1568	M-8	77.68	7.80	9.69	2024-03-17 09:06:11
1569	M-8	61.11	5.08	10.97	2024-02-11 04:44:29
1570	M-8	52.47	5.46	13.93	2024-07-29 10:29:53
1571	M-2	62.80	6.28	8.59	2024-03-10 07:04:52
1572	M-7	65.03	5.68	12.47	2024-07-18 20:15:38
1573	M-17	52.44	5.63	8.13	2024-03-05 17:04:31
1574	M-8	63.43	5.14	7.99	2024-06-18 15:05:46
1575	M-5	56.92	5.65	10.37	2024-07-29 05:58:54
1576	M-18	70.80	5.90	10.29	2024-05-01 02:40:51
1577	M-16	78.12	3.41	5.85	2024-02-14 11:09:20
1578	M-12	51.86	7.11	11.68	2024-05-18 15:59:32
1579	M-16	70.45	5.08	7.64	2024-04-20 05:51:45
1580	M-12	60.75	4.29	6.35	2024-10-20 21:42:09
1581	M-2	62.75	6.15	6.84	2024-11-20 00:57:53
1582	M-7	75.10	5.58	11.97	2024-08-25 13:43:47
1583	M-8	79.63	3.04	9.85	2024-03-12 12:18:11
1584	M-14	70.22	8.07	11.66	2024-05-21 05:01:14
1585	M-17	65.32	4.80	11.66	2024-12-27 00:57:48
1586	M-16	88.01	3.70	8.13	2024-10-21 20:23:25
1587	M-7	74.41	5.10	12.75	2024-06-22 23:36:59
1588	M-2	55.57	5.64	10.54	2024-03-24 13:26:40
1589	M-11	71.44	3.80	11.34	2024-05-12 12:16:17
1590	M-2	83.96	3.68	7.69	2024-04-25 08:25:20
1591	M-3	70.81	6.56	11.94	2024-11-18 20:55:01
1592	M-9	73.97	4.10	8.62	2024-08-05 20:56:57
1593	M-12	76.22	4.33	5.74	2024-09-09 16:23:56
1594	M-4	55.45	5.68	10.41	2024-05-22 12:26:48
1595	M-16	87.55	8.91	11.65	2024-11-11 07:50:52
1596	M-5	69.23	10.19	6.63	2024-04-08 23:02:25
1597	M-17	54.32	6.70	6.76	2024-05-05 04:42:39
1598	M-17	82.79	6.03	8.67	2024-04-22 14:25:14
1599	M-6	67.68	5.79	12.25	2024-10-27 13:06:03
1600	M-4	73.65	1.82	9.65	2024-01-31 04:52:30
1601	M-17	43.27	4.15	11.65	2024-07-13 09:03:57
1602	M-20	74.14	5.02	8.29	2024-08-12 15:46:22
1603	M-5	79.80	2.09	9.73	2024-10-05 17:03:22
1604	M-13	80.33	6.11	12.20	2024-07-28 14:36:48
1605	M-5	50.38	5.18	9.45	2024-02-14 06:08:52
1606	M-10	64.35	7.60	7.51	2024-10-28 22:59:17
1607	M-7	72.57	3.19	12.41	2024-05-21 15:13:40
1608	M-19	69.19	5.93	9.30	2024-09-17 18:14:02
1609	M-11	59.92	4.96	8.00	2024-06-27 21:07:55
1610	M-16	87.83	5.91	11.89	2024-01-03 14:03:27
1611	M-3	62.80	4.25	5.70	2024-01-16 10:08:21
1612	M-16	80.18	5.39	9.11	2024-03-11 02:21:07
1613	M-11	72.22	5.81	9.42	2024-06-07 14:02:26
1614	M-13	72.95	4.59	7.90	2024-07-26 14:09:42
1615	M-7	65.54	4.11	8.44	2024-04-07 01:50:42
1616	M-12	91.33	3.39	12.69	2024-06-02 05:29:26
1617	M-1	60.78	6.47	11.99	2024-04-29 05:58:34
1618	M-16	59.49	5.50	8.97	2024-10-28 07:41:41
1619	M-16	79.12	6.34	9.71	2024-04-15 08:21:52
1620	M-7	105.11	5.12	9.39	2024-02-14 10:43:08
1621	M-7	84.14	5.49	11.07	2024-10-28 13:42:22
1622	M-18	67.73	5.23	8.23	2024-05-29 09:39:45
1623	M-17	64.74	5.65	5.72	2024-11-02 17:21:36
1624	M-4	66.50	2.71	9.22	2024-08-28 00:13:41
1625	M-15	74.10	3.45	6.42	2024-10-22 11:11:51
1626	M-8	58.77	4.62	9.29	2024-08-20 19:08:48
1627	M-20	68.39	4.16	7.22	2024-04-28 13:17:32
1628	M-4	75.24	5.62	11.45	2024-02-13 16:43:19
1629	M-11	69.57	3.24	11.07	2024-02-07 08:24:42
1630	M-5	79.36	7.12	8.00	2024-03-03 07:23:55
1631	M-4	56.55	3.11	5.91	2024-12-06 12:53:56
1632	M-7	63.11	3.71	10.28	2024-09-10 05:02:55
1633	M-18	61.69	4.07	8.70	2024-12-12 04:41:50
1634	M-11	78.05	5.62	8.29	2024-08-25 16:32:00
1635	M-12	56.72	4.32	13.76	2024-08-03 13:06:56
1636	M-3	72.55	5.07	8.65	2024-10-15 19:49:13
1637	M-14	76.93	7.30	12.31	2024-01-15 14:51:09
1638	M-4	76.41	4.68	7.53	2024-02-28 00:07:59
1639	M-18	68.27	3.94	13.03	2024-01-07 21:22:41
1640	M-2	66.58	4.56	11.89	2024-06-18 13:54:18
1641	M-10	75.88	5.57	10.98	2024-10-09 00:43:01
1642	M-13	68.87	5.07	13.06	2024-08-29 02:51:42
1643	M-15	66.57	4.59	8.32	2024-08-20 15:54:05
1644	M-16	54.20	7.67	11.17	2024-09-23 21:22:46
1645	M-9	48.85	2.36	9.14	2024-06-04 23:52:13
1646	M-11	67.49	6.54	9.59	2024-04-29 12:04:30
1647	M-10	66.50	6.76	14.39	2024-11-05 09:41:15
1648	M-18	76.17	4.43	5.65	2024-01-06 02:49:36
1649	M-1	81.93	5.15	11.76	2024-06-11 23:39:59
1650	M-7	72.99	6.54	13.91	2024-03-22 10:55:54
1651	M-16	74.05	6.03	7.63	2024-05-21 07:58:01
1652	M-6	73.44	5.77	6.83	2024-01-06 19:04:31
1653	M-3	87.23	6.09	10.69	2024-08-30 07:44:30
1654	M-7	76.75	5.28	10.00	2024-10-11 00:41:22
1655	M-12	73.05	6.55	13.86	2024-03-30 10:59:12
1656	M-19	69.85	8.49	8.09	2024-07-07 08:22:09
1657	M-14	77.71	6.09	8.28	2024-01-06 13:42:50
1658	M-7	58.54	7.16	9.97	2024-08-16 11:03:31
1659	M-3	64.98	5.28	11.46	2024-12-29 02:42:42
1660	M-3	59.70	5.38	2.95	2024-03-25 13:06:56
1661	M-17	61.78	7.78	10.98	2024-08-13 03:05:56
1662	M-2	86.84	5.51	8.16	2024-08-06 18:26:35
1663	M-20	82.04	4.73	8.03	2024-09-07 20:48:16
1664	M-5	83.55	6.40	10.68	2024-07-14 07:07:29
1665	M-1	73.44	6.44	7.13	2024-11-12 08:06:40
1666	M-17	63.15	4.30	10.45	2024-06-11 04:26:29
1667	M-16	64.39	5.08	9.08	2024-10-16 04:17:02
1668	M-15	53.49	3.65	9.53	2024-07-17 10:59:18
1669	M-20	46.34	5.09	7.22	2024-05-03 04:55:11
1670	M-9	72.61	4.80	8.01	2024-09-22 06:31:31
1671	M-9	62.79	6.51	10.65	2024-01-01 05:47:12
1672	M-1	64.96	4.46	8.44	2024-10-09 11:30:19
1673	M-14	83.43	3.21	7.46	2024-02-19 23:39:25
1674	M-19	76.67	5.99	8.23	2024-12-01 02:16:36
1675	M-9	74.16	5.20	7.48	2024-07-09 10:45:47
1676	M-17	57.58	4.08	11.06	2024-08-20 13:06:07
1677	M-2	73.52	6.27	11.49	2024-02-05 06:31:33
1678	M-9	61.00	4.48	10.07	2024-03-05 17:49:59
1679	M-5	60.33	5.17	11.07	2024-04-13 11:51:30
1680	M-15	56.23	6.08	9.32	2024-10-17 22:24:43
1681	M-7	65.77	3.54	11.20	2024-03-25 03:11:29
1682	M-7	90.06	5.44	6.41	2024-08-23 18:43:48
1683	M-8	51.61	6.58	11.12	2024-01-11 06:04:30
1684	M-5	65.27	4.16	11.35	2024-03-09 09:06:06
1685	M-1	64.16	2.02	11.32	2024-09-04 11:04:53
1686	M-19	79.32	4.96	9.99	2024-07-02 05:45:49
1687	M-9	64.88	5.45	11.66	2024-07-18 09:17:48
1688	M-5	71.72	9.98	8.33	2024-09-04 16:25:55
1689	M-16	67.58	1.83	10.42	2024-02-09 03:56:30
1690	M-14	56.96	1.73	12.77	2024-04-23 17:36:46
1691	M-12	67.99	5.98	10.35	2024-08-30 07:43:00
1692	M-1	60.86	5.12	9.10	2024-05-10 14:38:10
1693	M-14	72.58	5.17	12.07	2024-08-27 11:55:33
1694	M-14	80.16	6.58	9.75	2024-08-16 07:36:34
1695	M-2	62.27	3.68	12.20	2024-04-21 21:40:21
1696	M-17	71.04	5.49	11.64	2024-01-19 17:40:38
1697	M-4	60.15	5.09	8.85	2024-11-22 01:55:21
1698	M-16	66.26	6.58	10.76	2024-05-07 08:24:43
1699	M-19	67.40	6.03	10.60	2024-09-29 00:18:00
1700	M-2	79.18	4.08	11.73	2024-03-21 19:49:52
1701	M-13	82.41	6.15	10.01	2024-03-16 16:36:01
1702	M-5	69.99	5.02	8.57	2024-05-30 21:57:19
1703	M-16	64.04	2.68	11.82	2024-06-30 19:37:20
1704	M-16	70.89	6.58	14.31	2024-05-26 05:07:44
1705	M-6	80.38	3.33	7.72	2024-07-16 06:21:35
1706	M-5	85.44	3.64	10.04	2024-02-29 02:39:55
1707	M-17	56.17	4.32	15.85	2024-02-16 17:17:04
1708	M-13	59.47	4.09	9.77	2024-04-27 05:58:29
1709	M-5	81.95	3.01	9.59	2024-02-24 22:24:27
1710	M-17	75.47	3.69	9.39	2024-09-04 20:32:03
1711	M-14	89.74	2.31	10.65	2024-03-06 23:52:25
1712	M-9	70.24	3.72	13.31	2024-05-21 08:11:05
1713	M-9	63.47	5.23	8.94	2024-04-11 07:02:32
1714	M-3	69.23	5.02	9.58	2024-02-27 00:21:50
1715	M-8	80.93	5.30	12.25	2024-07-26 10:30:13
1716	M-4	60.99	3.10	8.30	2024-10-01 01:09:01
1717	M-15	78.33	6.29	10.73	2024-03-12 15:39:47
1718	M-12	82.09	3.61	9.68	2024-09-25 17:53:15
1719	M-19	76.50	6.00	8.65	2024-01-28 03:23:49
1720	M-4	61.51	4.89	8.94	2024-06-07 18:31:01
1721	M-17	82.07	3.58	11.28	2024-01-30 02:49:55
1722	M-18	66.80	6.13	9.88	2024-05-04 12:25:11
1723	M-17	72.18	5.10	9.75	2024-11-15 15:23:55
1724	M-6	71.34	4.04	10.72	2024-11-30 13:05:24
1725	M-17	86.24	4.87	9.37	2024-06-08 20:41:12
1726	M-7	63.87	6.31	7.75	2024-01-10 14:47:47
1727	M-5	74.50	4.80	11.67	2024-05-26 09:59:51
1728	M-1	74.09	5.00	11.89	2024-04-04 21:46:19
1729	M-3	73.94	5.64	11.65	2024-10-26 05:33:51
1730	M-11	62.12	4.39	13.48	2024-05-18 11:43:50
1731	M-8	57.61	4.03	12.05	2024-03-14 15:17:58
1732	M-11	72.01	3.32	7.41	2024-05-03 03:24:59
1733	M-8	85.34	3.36	12.32	2024-02-09 03:03:04
1734	M-4	68.57	6.22	10.51	2024-10-31 13:53:21
1735	M-2	82.41	4.69	6.70	2024-07-18 06:45:21
1736	M-14	63.91	6.17	8.85	2024-07-19 13:12:01
1737	M-6	74.79	3.97	12.44	2024-03-31 04:07:39
1738	M-2	73.61	4.18	7.33	2024-06-16 03:07:35
1739	M-3	64.74	4.13	10.80	2024-02-20 07:42:39
1740	M-16	64.03	6.45	11.12	2024-10-05 01:41:25
1741	M-16	63.91	4.75	10.50	2024-06-16 15:45:16
1742	M-7	63.88	5.46	10.59	2024-05-14 10:11:59
1743	M-14	58.49	2.96	11.24	2024-10-26 18:03:13
1744	M-10	82.76	5.70	9.74	2024-09-07 11:01:10
1745	M-7	70.73	6.31	6.89	2024-07-18 05:06:01
1746	M-5	75.40	4.93	8.47	2024-06-28 01:52:41
1747	M-18	56.41	5.28	11.57	2024-11-21 15:29:35
1748	M-20	72.40	3.83	7.37	2024-11-03 23:18:52
1749	M-15	62.27	4.93	5.85	2024-12-06 05:55:04
1750	M-16	55.99	4.67	10.26	2024-06-09 19:32:57
1751	M-6	76.86	3.60	7.66	2024-07-12 13:04:37
1752	M-2	71.54	7.58	7.97	2024-06-09 14:48:19
1753	M-12	52.12	4.27	11.42	2024-08-30 22:48:25
1754	M-18	63.40	7.38	10.08	2024-03-08 17:08:20
1755	M-7	60.80	1.83	9.21	2024-08-18 12:20:48
1756	M-11	56.43	6.49	9.79	2024-11-27 07:30:31
1757	M-4	51.64	1.08	12.65	2024-02-02 12:26:53
1758	M-7	55.88	4.26	10.18	2024-11-10 02:54:17
1759	M-15	65.63	4.13	10.94	2024-07-04 05:35:13
1760	M-4	79.40	4.37	9.10	2024-10-25 20:21:41
1761	M-4	90.76	3.53	6.58	2024-05-11 07:05:15
1762	M-11	79.11	5.89	10.68	2024-12-04 16:14:02
1763	M-17	65.71	2.44	9.64	2024-05-10 06:18:56
1764	M-17	60.98	7.39	10.87	2024-09-26 14:49:24
1765	M-19	62.04	5.69	11.33	2024-03-14 03:21:07
1766	M-18	70.23	7.49	8.83	2024-08-01 16:54:30
1767	M-5	54.85	7.80	9.50	2024-12-04 12:01:21
1768	M-2	42.87	6.17	12.19	2024-01-12 08:18:55
1769	M-9	80.70	5.72	9.44	2024-09-04 03:57:53
1770	M-19	72.92	4.09	13.49	2024-12-09 21:17:38
1771	M-1	62.07	7.33	9.82	2024-10-26 23:51:46
1772	M-16	88.44	3.97	11.23	2024-12-02 00:21:50
1773	M-19	65.29	3.57	8.08	2024-02-29 12:51:12
1774	M-14	65.14	5.12	9.36	2024-05-18 09:24:57
1775	M-19	82.07	4.21	11.12	2024-11-16 20:57:09
1776	M-2	51.02	2.90	11.17	2024-07-08 10:36:32
1777	M-5	85.35	5.06	11.28	2024-01-29 08:56:27
1778	M-11	74.30	3.74	9.48	2024-12-16 17:51:18
1779	M-14	46.08	4.16	8.39	2024-05-06 19:58:52
1780	M-14	66.21	5.28	7.91	2024-10-28 05:00:24
1781	M-3	60.23	2.33	9.36	2024-05-29 19:58:17
1782	M-14	81.92	3.77	10.78	2024-02-22 04:28:16
1783	M-8	69.26	5.63	12.01	2024-06-10 14:24:02
1784	M-18	77.42	4.47	12.43	2024-08-07 20:43:19
1785	M-17	78.26	3.02	8.65	2024-11-12 11:59:11
1786	M-12	75.80	3.82	9.34	2024-11-18 07:19:11
1787	M-17	58.38	4.02	10.40	2024-12-24 07:47:58
1788	M-13	65.66	5.82	11.20	2024-12-17 15:40:25
1789	M-5	69.75	3.30	8.42	2024-08-27 05:25:28
1790	M-14	72.41	6.63	12.33	2024-05-12 09:26:36
1791	M-9	69.84	2.56	9.43	2024-08-04 09:17:52
1792	M-12	74.03	7.49	9.06	2024-05-28 22:10:09
1793	M-10	53.03	4.65	7.42	2024-07-10 11:19:17
1794	M-20	66.53	5.48	12.44	2024-04-20 01:53:50
1795	M-3	50.16	6.05	7.67	2024-10-23 20:17:26
1796	M-15	82.23	1.43	10.95	2024-01-24 22:11:18
1797	M-1	64.95	7.22	8.95	2024-09-24 06:35:26
1798	M-11	87.28	4.88	9.69	2024-11-17 16:29:21
1799	M-4	72.72	3.28	10.36	2024-03-17 13:03:20
1800	M-13	69.23	5.81	11.27	2024-04-03 16:58:55
1801	M-16	80.44	3.03	13.18	2024-06-01 08:25:25
1802	M-15	84.81	6.04	6.22	2024-05-14 11:12:32
1803	M-6	70.32	5.47	11.38	2024-04-04 21:06:08
1804	M-19	48.78	8.20	11.11	2024-04-15 01:50:19
1805	M-4	67.47	4.71	9.46	2024-06-22 07:31:20
1806	M-12	79.30	4.29	12.93	2024-05-03 07:46:47
1807	M-2	67.71	4.35	16.51	2024-06-24 03:24:54
1808	M-8	63.78	3.80	10.16	2024-03-26 22:01:17
1809	M-19	54.17	5.77	11.03	2024-06-22 22:08:55
1810	M-1	69.34	4.37	5.62	2024-07-13 15:14:22
1811	M-5	65.37	4.38	13.98	2024-04-12 16:55:07
1812	M-2	64.10	3.95	8.39	2024-03-11 19:51:17
1813	M-10	67.63	6.99	12.12	2024-04-13 18:50:28
1814	M-15	58.39	3.26	12.16	2024-10-20 06:44:27
1815	M-11	65.16	4.99	12.92	2024-11-26 03:07:22
1816	M-2	77.34	5.64	9.31	2024-10-19 08:11:58
1817	M-8	51.60	5.87	10.87	2024-11-26 20:46:45
1818	M-8	71.87	5.13	9.79	2024-01-13 10:45:12
1819	M-15	70.21	3.53	10.02	2024-03-21 10:42:37
1820	M-9	77.82	6.89	9.33	2024-07-18 06:45:52
1821	M-16	80.92	4.13	11.53	2024-09-18 00:22:15
1822	M-15	61.16	6.67	11.02	2024-09-25 01:46:03
1823	M-13	62.21	4.34	7.94	2024-10-31 00:17:20
1824	M-4	61.56	3.93	10.51	2024-12-07 23:54:23
1825	M-8	68.20	5.07	9.99	2024-10-01 22:24:59
1826	M-6	80.02	1.44	8.23	2024-12-29 13:39:25
1827	M-12	63.25	6.46	8.82	2024-12-16 09:53:00
1828	M-4	82.09	3.95	10.45	2024-01-18 06:36:00
1829	M-12	86.65	5.89	8.79	2024-08-29 17:45:10
1830	M-19	67.67	4.82	8.89	2024-08-01 00:09:58
1831	M-15	69.84	4.48	13.22	2024-01-30 02:14:36
1832	M-5	75.69	3.62	10.26	2024-09-19 11:22:31
1833	M-2	86.68	2.89	6.74	2024-12-23 12:08:10
1834	M-14	63.84	5.77	10.04	2024-01-03 18:40:56
1835	M-7	69.84	5.93	10.73	2024-02-02 11:31:38
1836	M-3	76.98	7.22	9.60	2024-10-16 01:38:46
1837	M-15	71.87	4.65	9.75	2024-04-18 21:08:13
1838	M-19	86.55	4.67	11.11	2024-09-09 09:10:16
1839	M-16	66.76	6.58	7.14	2024-01-27 23:42:06
1840	M-20	85.74	5.13	7.53	2024-04-10 05:08:23
1841	M-5	67.88	5.25	10.00	2024-06-24 07:35:53
1842	M-4	84.94	4.63	8.09	2024-02-25 03:27:53
1843	M-19	70.92	5.93	7.21	2024-12-10 19:54:21
1844	M-1	68.85	5.08	12.16	2024-03-07 09:35:36
1845	M-14	71.55	4.53	12.77	2024-04-29 20:02:46
1846	M-14	57.90	5.29	10.22	2024-10-26 08:55:06
1847	M-8	77.72	5.03	7.06	2024-05-06 14:14:26
1848	M-17	83.83	5.30	11.18	2024-12-21 01:19:00
1849	M-4	73.94	4.78	8.49	2024-08-21 02:24:30
1850	M-19	70.50	6.14	11.90	2024-12-16 00:16:46
1851	M-8	70.09	3.72	9.03	2024-09-25 11:39:06
1852	M-15	52.68	3.54	11.84	2024-12-14 18:17:20
1853	M-11	75.29	5.85	8.22	2024-01-20 05:00:16
1854	M-7	81.22	5.67	6.06	2024-06-16 03:40:46
1855	M-19	78.48	5.57	9.22	2024-12-01 17:30:50
1856	M-11	68.91	8.14	11.46	2024-05-11 02:51:04
1857	M-3	69.46	3.94	13.73	2024-04-12 09:39:27
1858	M-15	72.02	3.71	13.60	2024-04-22 06:15:39
1859	M-20	85.76	5.42	12.94	2024-10-28 20:53:12
1860	M-6	49.91	5.71	6.96	2024-12-17 01:26:35
1861	M-17	59.69	3.41	7.08	2024-12-04 13:53:07
1862	M-11	48.96	4.53	9.49	2024-12-18 19:15:14
1863	M-3	76.24	4.31	13.20	2024-05-24 09:07:46
1864	M-11	65.07	3.91	11.01	2024-04-23 13:53:13
1865	M-20	78.91	4.53	9.38	2024-12-26 03:13:36
1866	M-1	68.80	3.91	13.59	2024-01-01 09:13:57
1867	M-4	69.86	4.81	9.61	2024-04-22 17:53:54
1868	M-9	83.29	5.81	9.79	2024-09-17 02:23:08
1869	M-14	78.50	2.64	9.31	2024-06-27 20:21:08
1870	M-20	63.98	3.90	11.87	2024-12-21 08:48:39
1871	M-6	85.14	5.27	8.12	2024-09-15 21:08:17
1872	M-17	73.03	4.67	10.60	2024-05-07 13:22:00
1873	M-11	72.44	1.75	10.43	2024-06-04 09:37:34
1874	M-2	66.15	4.18	12.09	2024-09-19 02:54:56
1875	M-15	54.66	7.32	10.26	2024-07-02 07:41:15
1876	M-4	59.81	5.11	10.06	2024-10-06 02:28:40
1877	M-11	61.19	2.90	11.54	2024-09-04 08:01:05
1878	M-18	71.73	5.65	9.71	2024-08-21 23:58:53
1879	M-7	82.50	5.20	10.48	2024-07-13 20:05:36
1880	M-6	70.16	6.27	8.21	2024-01-22 12:15:06
1881	M-10	71.55	5.71	13.56	2024-11-16 04:38:46
1882	M-18	49.15	4.01	9.33	2024-10-24 06:47:39
1883	M-20	64.59	4.93	8.34	2024-04-27 16:09:21
1884	M-5	72.10	4.79	9.25	2024-10-10 08:06:35
1885	M-17	61.15	4.69	12.10	2024-10-04 15:47:02
1886	M-9	55.89	4.94	8.45	2024-07-02 23:09:01
1887	M-9	72.47	5.86	15.20	2024-12-16 17:40:09
1888	M-19	75.25	4.59	9.45	2024-02-25 20:58:11
1889	M-9	56.53	2.87	9.27	2024-04-11 20:34:06
1890	M-15	76.35	5.84	8.28	2024-10-07 19:26:42
1891	M-5	65.92	5.39	10.49	2024-11-20 11:10:36
1892	M-10	75.27	4.27	15.16	2024-04-12 00:53:07
1893	M-9	62.40	3.44	9.91	2024-08-05 08:30:23
1894	M-15	79.04	4.58	10.26	2024-05-28 10:12:51
1895	M-7	73.04	5.73	8.06	2024-12-18 15:19:44
1896	M-20	58.23	6.54	10.09	2024-11-05 03:59:58
1897	M-6	80.28	4.85	11.04	2024-10-03 06:10:22
1898	M-19	51.35	4.56	6.73	2024-04-19 19:50:26
1899	M-7	64.65	5.70	12.01	2024-09-09 19:59:29
1900	M-15	93.53	6.81	7.60	2024-06-11 20:09:39
1901	M-5	87.26	4.60	10.73	2024-05-11 11:37:35
1902	M-7	69.78	4.46	5.26	2024-07-26 03:54:52
1903	M-11	75.72	3.93	8.03	2024-08-28 12:42:26
1904	M-6	60.94	4.93	10.33	2024-12-17 16:14:48
1905	M-13	86.76	6.35	8.56	2024-09-25 16:47:21
1906	M-10	61.37	2.76	12.53	2024-07-14 11:14:04
1907	M-13	75.76	7.02	9.09	2024-08-23 02:30:50
1908	M-16	77.27	5.20	8.62	2024-01-19 16:51:44
1909	M-13	69.74	4.68	10.02	2024-11-29 01:25:03
1910	M-5	66.02	7.60	9.41	2024-03-21 11:44:01
1911	M-12	69.21	5.93	10.46	2024-01-12 09:01:28
1912	M-2	73.44	3.06	11.80	2024-02-23 15:11:43
1913	M-14	75.26	2.87	11.65	2024-09-09 08:31:59
1914	M-9	56.19	5.35	9.02	2024-10-15 09:33:29
1915	M-6	72.41	5.16	9.23	2024-06-04 10:00:38
1916	M-17	67.24	4.66	9.63	2024-03-14 16:04:23
1917	M-11	72.42	3.77	12.35	2024-06-12 09:59:08
1918	M-7	78.50	5.86	10.04	2024-11-24 00:01:35
1919	M-13	67.90	5.52	11.91	2024-04-03 11:07:50
1920	M-9	72.70	4.14	8.53	2024-06-03 16:05:56
1921	M-5	66.37	2.73	8.01	2024-11-03 18:33:37
1922	M-5	77.61	5.81	9.36	2024-03-26 14:04:41
1923	M-12	78.22	6.11	7.02	2024-06-19 14:39:17
1924	M-15	70.22	5.02	7.61	2024-01-15 08:18:12
1925	M-17	84.25	5.35	12.17	2024-03-03 16:18:34
1926	M-17	70.21	3.60	8.32	2024-01-31 09:22:34
1927	M-20	69.80	4.66	11.77	2024-11-10 22:08:47
1928	M-7	85.02	5.90	10.44	2024-04-29 04:23:36
1929	M-5	77.35	4.91	7.40	2024-04-09 05:12:06
1930	M-6	57.83	2.45	8.36	2024-11-13 20:18:05
1931	M-11	36.82	6.30	11.90	2024-02-25 05:18:49
1932	M-18	91.61	4.89	7.52	2024-12-20 01:38:07
1933	M-9	90.45	4.08	6.77	2024-06-15 16:07:05
1934	M-1	41.09	4.48	10.02	2024-11-23 14:26:02
1935	M-14	64.70	6.94	7.49	2024-06-11 17:02:29
1936	M-6	55.81	0.51	9.67	2024-01-28 09:10:11
1937	M-3	72.08	4.63	9.99	2024-12-20 03:31:58
1938	M-9	69.51	5.99	11.38	2024-10-06 09:56:37
1939	M-3	72.12	6.31	7.11	2024-04-24 17:02:20
1940	M-7	74.57	5.21	8.60	2024-08-14 17:04:15
1941	M-4	79.81	5.57	13.73	2024-01-26 21:00:33
1942	M-10	50.00	7.21	12.50	2024-11-03 20:04:06
1943	M-18	47.22	4.68	9.08	2024-05-16 15:45:09
1944	M-16	66.32	4.58	12.44	2024-07-11 21:20:00
1945	M-11	74.05	7.05	9.73	2024-08-08 13:58:52
1946	M-20	75.26	2.64	6.71	2024-11-20 16:15:31
1947	M-8	61.41	6.87	9.86	2024-06-26 08:36:19
1948	M-10	69.84	6.35	12.33	2024-08-16 13:57:36
1949	M-9	52.89	4.35	7.62	2024-03-05 07:44:19
1950	M-12	58.17	4.10	6.13	2024-12-18 02:24:32
1951	M-2	81.11	4.90	12.88	2024-12-10 11:35:29
1952	M-19	78.84	5.63	9.86	2024-04-22 15:34:55
1953	M-4	72.87	5.62	7.47	2024-05-07 09:43:02
1954	M-19	83.25	3.78	10.75	2024-07-21 12:26:50
1955	M-2	79.38	2.35	8.82	2024-07-26 09:53:20
1956	M-1	63.68	4.69	9.42	2024-10-11 18:10:17
1957	M-6	74.00	6.96	10.24	2024-06-04 14:46:43
1958	M-19	71.05	3.59	9.89	2024-09-05 11:30:32
1959	M-9	59.26	5.81	8.43	2024-02-28 21:25:13
1960	M-17	65.95	4.56	6.05	2024-07-12 16:17:28
1961	M-3	73.54	5.66	9.61	2024-01-26 19:13:26
1962	M-19	58.96	4.25	6.59	2024-09-10 08:38:16
1963	M-14	59.13	3.75	11.65	2024-05-04 16:02:58
1964	M-7	78.38	2.24	10.17	2024-03-08 08:47:12
1965	M-8	70.57	3.81	11.08	2024-12-21 10:35:05
1966	M-16	65.06	3.26	9.09	2024-04-22 03:23:48
1967	M-18	58.81	5.35	9.82	2024-10-09 04:32:51
1968	M-11	59.06	5.69	5.29	2024-09-30 01:38:33
1969	M-15	79.56	4.59	11.33	2024-10-29 13:33:06
1970	M-2	76.94	4.89	10.50	2024-09-18 08:14:02
1971	M-10	63.94	4.61	11.11	2024-09-23 04:54:59
1972	M-9	66.70	3.81	11.91	2024-04-06 14:33:00
1973	M-4	61.64	6.36	8.67	2024-07-06 14:07:06
1974	M-13	61.66	3.03	8.95	2024-12-27 20:18:44
1975	M-12	56.04	3.29	7.56	2024-03-19 20:01:54
1976	M-18	70.60	5.50	8.46	2024-12-15 04:17:49
1977	M-10	67.92	7.26	13.21	2024-08-12 18:39:52
1978	M-4	70.46	4.97	8.16	2024-07-22 07:28:14
1979	M-7	61.50	4.78	8.83	2024-11-16 03:10:48
1980	M-20	75.74	4.36	9.16	2024-03-28 13:51:04
1981	M-11	80.25	6.18	14.40	2024-08-21 05:58:25
1982	M-10	48.07	4.16	10.59	2024-03-25 12:16:34
1983	M-9	63.98	7.56	8.61	2024-06-15 08:23:35
1984	M-9	59.41	4.74	11.62	2024-07-30 22:01:12
1985	M-20	66.14	6.13	12.81	2024-04-02 09:14:01
1986	M-3	55.91	5.75	9.23	2024-04-22 17:38:35
1987	M-8	76.13	6.34	12.40	2024-08-19 11:40:21
1988	M-2	69.01	3.82	6.97	2024-08-25 19:21:57
1989	M-3	69.15	8.11	7.12	2024-11-19 23:54:05
1990	M-20	76.14	4.54	9.38	2024-10-22 12:28:09
1991	M-13	78.51	6.20	12.95	2024-09-28 08:39:26
1992	M-12	66.97	5.35	9.35	2024-05-28 16:57:27
1993	M-19	76.55	6.16	13.11	2024-05-25 07:57:43
1994	M-6	73.40	3.27	8.13	2024-12-05 16:05:57
1995	M-14	66.48	5.14	9.53	2024-08-25 13:41:46
1996	M-11	69.43	8.55	9.38	2024-02-23 10:47:33
1997	M-9	60.51	3.72	10.93	2024-05-04 23:50:13
1998	M-8	63.60	6.86	10.74	2024-09-23 21:12:26
1999	M-6	83.09	4.51	10.64	2024-03-15 09:03:09
2000	M-17	87.54	8.03	8.81	2024-03-20 21:47:12
\.


--
-- Data for Name: clients_industriels; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.clients_industriels (client_id, client_name, sector, country) FROM stdin;
1	Industrial_Client_1	Construction	France
2	Industrial_Client_2	Aerospace	France
3	Industrial_Client_3	Electronics	France
4	Industrial_Client_4	Electronics	Spain
5	Industrial_Client_5	Construction	France
6	Industrial_Client_6	Aerospace	Italy
7	Industrial_Client_7	Automotive	France
8	Industrial_Client_8	Aerospace	Germany
9	Industrial_Client_9	Energy	Belgium
10	Industrial_Client_10	Energy	Germany
11	Industrial_Client_11	Construction	Spain
12	Industrial_Client_12	Construction	Spain
13	Industrial_Client_13	Construction	France
14	Industrial_Client_14	Construction	Spain
15	Industrial_Client_15	Automotive	France
16	Industrial_Client_16	Electronics	Germany
17	Industrial_Client_17	Energy	France
18	Industrial_Client_18	Electronics	France
19	Industrial_Client_19	Construction	Belgium
20	Industrial_Client_20	Construction	Belgium
\.


--
-- Data for Name: connection; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.connection (id, conn_id, conn_type, description, host, schema, login, password, port, is_encrypted, is_extra_encrypted, extra) FROM stdin;
\.


--
-- Data for Name: cycles_production; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.cycles_production (cycle_id, factory_id, product_id, client_id, production_time_sec, cycle_timestamp) FROM stdin;
1	4	4	3	411	2024-05-24 15:01:16
2	5	1	8	535	2024-07-01 23:43:06
3	5	3	12	71	2024-04-04 00:42:28
4	1	10	4	419	2024-02-27 22:05:53
5	5	10	15	337	2024-04-28 07:04:28
6	4	5	19	254	2024-08-18 05:41:48
7	2	11	1	320	2024-12-17 21:05:22
8	3	4	16	389	2024-02-12 04:08:35
9	5	6	13	523	2024-07-05 20:15:31
10	5	7	11	385	2024-09-09 22:52:07
11	2	13	5	570	2024-12-05 23:43:37
12	2	4	16	108	2024-03-04 09:47:24
13	3	9	16	354	2024-02-24 19:51:12
14	1	5	12	86	2024-04-30 04:46:17
15	5	12	10	414	2024-05-07 06:23:33
16	3	9	4	439	2024-11-09 21:37:28
17	5	2	17	96	2024-10-01 01:02:40
18	1	5	18	239	2024-09-03 17:22:12
19	3	3	1	367	2024-10-30 21:10:25
20	4	15	13	184	2024-11-26 15:36:39
21	3	12	15	440	2024-07-15 02:04:03
22	5	14	12	133	2024-11-27 08:53:47
23	2	9	4	158	2024-08-20 03:10:46
24	3	6	19	174	2024-11-29 11:19:21
25	2	12	17	164	2024-06-30 00:46:51
26	2	1	14	279	2024-03-28 19:38:03
27	5	11	1	78	2024-01-18 02:52:03
28	2	10	20	476	2024-11-07 22:15:36
29	1	9	3	316	2024-12-19 19:10:54
30	5	2	1	305	2024-06-30 00:46:51
31	2	2	11	131	2024-12-29 22:48:20
32	5	12	1	596	2024-11-07 06:46:13
33	4	12	18	72	2024-10-18 15:34:38
34	5	5	8	506	2024-09-22 05:52:52
35	2	2	7	361	2024-07-09 04:26:49
36	4	10	16	381	2024-01-24 23:53:50
37	1	14	4	324	2024-06-19 18:07:23
38	2	15	14	311	2024-06-30 00:46:51
39	4	3	10	193	2024-05-07 20:05:38
40	5	10	15	52	2024-02-15 10:36:45
41	1	12	14	47	2024-11-30 12:07:12
42	4	7	10	417	2024-10-22 04:59:29
43	2	10	9	55	2024-02-21 17:25:57
44	5	10	9	164	2024-11-14 00:20:39
45	5	2	7	356	2024-07-07 08:48:22
46	5	3	1	468	2024-11-14 18:08:32
47	3	2	8	362	2024-08-11 11:24:18
48	2	6	1	276	2024-05-29 03:34:56
49	4	12	9	232	2024-06-30 00:46:51
50	4	7	17	317	2024-09-20 18:36:27
51	3	3	1	343	2024-03-03 14:09:33
52	5	15	4	400	2024-12-07 18:25:03
53	1	7	1	427	2024-09-09 19:21:46
54	4	9	6	295	2024-02-03 15:27:46
55	1	2	2	302	2024-07-06 09:50:43
56	2	7	9	231	2024-08-05 08:04:40
57	1	1	14	107	2024-04-09 15:57:46
58	5	1	16	252	2024-09-05 09:39:04
59	4	6	15	296	2024-04-23 22:32:03
60	2	2	17	158	2024-08-17 18:57:43
61	3	8	8	422	2024-12-17 07:00:14
62	1	13	12	319	2024-12-26 13:20:40
63	3	5	17	376	2024-01-27 21:41:39
64	1	13	7	135	2024-05-09 01:55:23
65	3	3	2	390	2024-04-20 04:39:14
66	2	7	13	387	2024-07-08 14:08:00
67	2	5	9	432	2024-01-23 21:15:17
68	4	15	12	49	2024-08-17 21:36:30
69	2	2	2	585	2024-09-26 19:47:42
70	1	8	1	194	2024-08-07 11:28:11
71	1	4	10	341	2024-09-15 03:11:26
72	2	1	2	94	2024-02-12 22:48:57
73	2	9	2	131	2024-10-28 17:40:48
74	2	2	13	557	2024-05-12 05:25:39
75	4	7	7	260	2024-03-23 15:53:05
76	3	11	16	384	2024-11-24 07:33:08
77	1	1	4	70	2024-12-18 16:05:17
78	3	10	11	139	2024-07-25 00:41:34
79	3	1	14	360	2024-02-18 08:40:38
80	5	8	20	545	2024-12-21 16:14:11
81	3	4	18	459	2024-01-06 03:29:53
82	4	12	17	465	2024-06-02 17:17:14
83	5	11	7	587	2024-01-08 12:46:22
84	1	4	1	440	2024-12-26 08:44:48
85	2	3	7	483	2024-05-31 07:57:03
86	5	13	17	92	2024-11-07 05:39:22
87	2	3	14	482	2024-01-08 12:07:49
88	5	10	15	535	2024-02-07 15:12:04
89	4	1	2	452	2024-08-10 01:46:20
90	3	10	18	111	2024-07-24 01:45:18
91	5	13	3	223	2024-01-12 02:56:42
92	2	14	2	454	2024-10-15 20:18:18
93	1	6	20	31	2024-05-24 03:36:50
94	3	1	1	538	2024-08-23 09:13:23
95	5	15	20	162	2024-12-26 11:55:38
96	1	12	11	257	2024-06-17 12:11:10
97	1	13	6	306	2024-02-16 21:35:36
98	5	3	1	253	2024-02-16 23:32:55
99	2	11	20	95	2024-05-28 10:59:01
100	1	11	9	336	2024-12-18 08:31:19
101	3	13	2	503	2024-04-23 07:21:29
102	1	4	14	588	2024-05-25 07:12:45
103	4	11	16	34	2024-11-11 04:14:12
104	1	6	16	350	2024-02-02 02:34:08
105	2	13	1	572	2024-01-13 00:19:58
106	4	12	18	400	2024-01-20 13:25:53
107	3	10	10	560	2024-01-01 02:20:12
108	1	1	2	414	2024-02-04 12:34:43
109	1	9	3	146	2024-02-12 18:38:48
110	5	1	7	114	2024-03-27 14:19:50
111	5	8	1	197	2024-01-28 08:48:00
112	4	1	1	377	2024-02-11 06:39:06
113	2	15	9	572	2024-05-07 09:40:05
114	3	6	7	65	2024-01-12 15:30:12
115	5	11	17	125	2024-03-19 14:43:24
116	1	8	1	561	2024-08-14 10:54:28
117	5	15	18	508	2024-07-01 19:32:55
118	3	12	1	354	2024-09-03 17:36:04
119	3	4	2	548	2024-09-22 00:16:33
120	1	2	8	252	2024-04-04 00:35:07
121	4	1	5	185	2024-06-12 06:14:42
122	2	3	6	143	2024-08-31 08:10:47
123	1	7	16	378	2024-02-06 12:26:52
124	4	2	6	582	2024-12-29 22:02:48
125	2	9	18	328	2024-05-26 03:03:11
126	3	2	1	196	2024-11-27 07:53:48
127	1	15	2	104	2024-12-27 12:47:40
128	2	3	6	465	2024-10-31 19:20:54
129	4	3	1	563	2024-05-25 21:07:11
130	4	15	8	253	2024-02-18 14:43:33
131	5	10	17	99	2024-09-28 05:23:57
132	4	8	17	508	2024-07-01 14:07:39
133	2	1	13	459	2024-01-22 03:19:31
134	5	5	4	265	2024-10-20 04:51:50
135	4	14	1	250	2024-08-10 06:30:55
136	5	13	5	470	2024-12-14 08:41:36
137	1	5	7	536	2024-07-10 09:43:41
138	2	15	6	571	2024-12-20 19:09:10
139	3	1	15	346	2024-11-13 01:09:49
140	3	6	1	53	2024-02-05 00:07:28
141	1	5	7	373	2024-03-21 12:42:17
142	5	8	8	53	2024-07-24 10:44:06
143	4	14	7	455	2024-04-30 01:10:34
144	2	2	16	352	2024-12-22 08:30:45
145	1	11	6	368	2024-03-30 14:55:27
146	5	1	1	164	2024-03-29 04:01:29
147	2	11	2	166	2024-12-05 04:41:13
148	1	14	15	484	2024-02-17 13:26:34
149	3	12	12	409	2024-04-18 11:17:32
150	5	8	17	568	2024-09-13 07:09:01
151	5	12	16	347	2024-05-13 22:50:21
152	5	2	14	141	2024-05-05 11:32:29
153	5	6	12	351	2024-10-03 16:34:25
154	4	7	16	294	2024-01-02 00:06:33
155	2	9	16	166	2024-07-30 12:32:37
156	3	11	1	452	2024-11-01 05:54:45
157	1	5	2	583	2024-03-12 06:51:57
158	3	1	8	227	2024-03-27 18:12:48
159	2	7	2	75	2024-03-29 13:41:44
160	3	10	16	438	2024-06-14 04:15:17
161	1	4	15	563	2024-02-22 01:32:29
162	3	13	1	424	2024-06-06 17:27:04
163	5	3	15	139	2024-10-22 00:40:30
164	3	1	4	176	2024-10-28 13:39:15
165	5	2	17	132	2024-11-02 05:34:09
166	1	13	9	113	2024-11-11 04:06:53
167	4	11	13	356	2024-04-17 10:50:50
168	4	11	17	294	2024-07-17 00:28:57
169	1	1	1	491	2024-01-19 03:42:23
170	5	9	8	594	2024-12-21 18:41:42
171	1	3	17	528	2024-12-13 22:09:50
172	2	8	6	134	2024-05-05 06:52:41
173	5	2	8	94	2024-10-24 23:38:31
174	3	14	17	291	2024-09-14 02:24:25
175	2	10	17	279	2024-06-01 23:10:48
176	2	7	14	578	2024-08-25 16:21:12
177	4	10	12	447	2024-05-14 10:04:58
178	5	5	19	523	2024-10-26 16:47:13
179	1	7	10	460	2024-05-08 13:34:09
180	4	9	13	334	2024-12-19 09:04:16
181	5	2	10	337	2024-07-06 05:19:08
182	1	8	3	279	2024-11-10 05:19:29
183	5	11	2	586	2024-06-03 00:38:37
184	2	10	5	173	2024-08-29 08:15:18
185	3	12	3	94	2024-12-16 21:08:55
186	4	6	6	339	2024-05-05 04:42:40
187	4	14	3	229	2024-07-07 08:39:50
188	5	11	18	339	2024-06-30 00:46:51
189	1	9	9	237	2024-03-30 12:40:12
190	4	7	3	455	2024-04-22 00:32:01
191	4	2	18	287	2024-06-13 12:32:26
192	3	15	15	341	2024-06-27 18:16:27
193	4	1	7	178	2024-08-23 14:26:03
194	2	8	1	364	2024-08-14 13:50:33
195	2	1	11	260	2024-02-01 22:11:43
196	1	8	8	507	2024-09-16 17:10:04
197	5	1	20	139	2024-06-27 18:08:03
198	3	12	3	97	2024-05-13 00:26:28
199	3	15	10	410	2024-10-07 11:46:20
200	4	12	6	227	2024-11-28 12:42:47
201	4	4	12	144	2024-11-26 09:44:46
202	2	11	1	481	2024-07-15 18:15:11
203	3	1	1	363	2024-10-16 07:42:23
204	1	5	16	261	2024-12-10 12:22:18
205	1	1	9	523	2024-03-22 02:40:39
206	1	12	3	324	2024-07-17 02:04:55
207	5	9	1	507	2024-10-04 14:05:53
208	2	7	4	408	2024-03-12 22:09:17
209	3	3	10	174	2024-07-19 02:01:36
210	4	7	4	398	2024-04-23 17:44:19
211	5	3	9	293	2024-04-28 07:48:21
212	1	1	7	153	2024-11-04 02:13:59
213	3	2	6	276	2024-11-18 20:11:04
214	2	14	1	237	2024-08-14 04:40:40
215	4	14	12	190	2024-07-17 12:45:10
216	2	7	14	114	2024-03-25 19:20:16
217	1	13	11	489	2024-10-10 09:22:51
218	2	5	5	215	2024-01-08 04:51:52
219	4	10	17	261	2024-08-22 12:01:14
220	4	15	3	86	2024-07-16 14:13:02
221	4	5	6	254	2024-10-25 13:43:55
222	3	2	16	192	2024-09-24 13:36:12
223	5	8	1	367	2024-03-15 14:41:23
224	3	7	1	482	2024-01-19 08:58:41
225	1	3	17	531	2024-12-10 09:59:13
226	3	8	19	204	2024-08-18 01:17:43
227	5	15	2	391	2024-10-07 09:21:08
228	2	1	15	143	2024-06-13 18:23:32
229	1	2	6	362	2024-12-26 06:03:11
230	3	8	10	158	2024-07-04 07:13:29
231	1	14	1	531	2024-02-13 04:08:40
232	3	8	5	190	2024-06-03 11:24:51
233	3	3	1	40	2024-02-20 18:01:47
234	5	4	17	451	2024-01-15 13:53:54
235	4	1	13	40	2024-04-03 07:09:52
236	2	1	15	383	2024-05-01 08:09:13
237	5	6	1	121	2024-02-03 02:41:25
238	5	14	11	235	2024-10-16 20:10:08
239	2	15	18	515	2024-10-25 00:07:38
240	2	10	19	311	2024-02-11 09:49:35
241	2	10	1	346	2024-01-28 08:27:08
242	5	14	11	179	2024-07-17 14:58:58
243	1	9	18	310	2024-03-29 09:36:44
244	5	1	9	291	2024-11-06 14:10:52
245	3	10	1	460	2024-07-27 10:55:03
246	5	2	7	173	2024-07-10 06:55:37
247	4	5	9	106	2024-06-07 04:49:34
248	4	1	11	562	2024-09-04 01:51:25
249	3	15	4	77	2024-08-28 10:07:10
250	5	11	3	218	2024-03-30 17:36:52
251	4	11	1	363	2024-06-30 00:46:51
252	3	10	18	342	2024-03-20 08:28:05
253	5	4	6	95	2024-12-06 09:06:15
254	2	3	7	40	2024-02-16 09:42:00
255	1	4	5	40	2024-04-05 03:36:45
256	4	6	1	537	2024-11-11 17:22:04
257	3	14	2	138	2024-11-20 03:25:22
258	3	3	6	135	2024-02-25 23:37:14
259	1	1	20	393	2024-10-17 06:47:18
260	2	9	9	103	2024-03-14 02:02:08
261	4	7	3	338	2024-03-10 00:09:16
262	3	12	6	534	2024-07-05 21:51:13
263	3	7	12	579	2024-04-02 18:57:29
264	3	1	16	492	2024-11-07 12:46:43
265	5	6	7	320	2024-05-16 17:35:38
266	4	12	2	61	2024-05-06 15:16:03
267	5	2	15	488	2024-07-11 16:38:40
268	1	15	1	268	2024-08-22 19:59:19
269	3	3	4	366	2024-05-15 00:45:29
270	3	8	5	485	2024-08-20 10:02:37
271	1	4	7	155	2024-12-28 01:14:24
272	3	11	16	372	2024-07-05 11:06:14
273	1	3	17	85	2024-12-14 23:51:55
274	3	11	5	500	2024-05-11 05:08:39
275	1	2	8	336	2024-06-30 00:46:51
276	5	7	16	314	2024-09-13 13:35:57
277	1	11	7	157	2024-11-02 08:43:03
278	5	15	14	381	2024-09-24 21:13:24
279	2	10	12	321	2024-05-26 12:38:28
280	5	11	7	551	2024-03-20 05:28:17
281	5	6	12	160	2024-07-20 13:58:13
282	2	15	6	527	2024-04-21 21:19:24
283	1	15	17	314	2024-06-21 08:05:12
284	2	8	11	100	2024-02-06 04:12:20
285	1	14	20	208	2024-06-26 12:57:22
286	3	15	19	211	2024-08-27 02:48:38
287	3	11	11	479	2024-01-31 07:03:48
288	1	14	5	526	2024-11-24 19:54:49
289	3	9	18	374	2024-04-25 15:44:56
290	5	13	1	63	2024-09-24 00:41:30
291	5	9	11	137	2024-09-26 07:30:44
292	2	9	17	461	2024-06-05 11:12:16
293	3	9	17	398	2024-10-17 21:57:19
294	1	10	3	484	2024-08-22 13:05:51
295	1	10	17	324	2024-09-21 16:47:19
296	3	11	13	316	2024-11-21 10:52:14
297	4	9	4	205	2024-10-07 20:18:19
298	5	15	19	75	2024-09-16 12:16:05
299	2	10	1	439	2024-06-30 00:46:51
300	4	4	6	53	2024-06-08 15:32:41
301	1	11	4	259	2024-05-28 14:14:33
302	5	2	9	517	2024-03-19 00:36:19
303	5	11	2	343	2024-06-24 18:56:46
304	4	11	10	320	2024-10-01 17:59:27
305	4	1	15	550	2024-05-10 02:35:38
306	1	12	5	219	2024-10-27 01:20:07
307	4	13	4	385	2024-06-15 00:13:30
308	5	2	17	233	2024-11-14 07:43:10
309	5	14	5	535	2024-12-05 05:27:25
310	3	9	18	410	2024-05-09 19:22:47
311	2	15	8	85	2024-12-23 11:07:49
312	3	12	10	424	2024-10-04 07:43:33
313	3	1	19	210	2024-02-23 19:14:08
314	1	10	11	51	2024-11-30 12:39:20
315	3	9	1	439	2024-08-17 02:55:28
316	2	8	20	469	2024-01-01 01:06:02
317	1	5	5	86	2024-02-13 18:14:34
318	1	5	6	167	2024-07-22 15:06:53
319	5	15	10	344	2024-08-14 11:41:31
320	4	1	16	196	2024-03-18 16:55:15
321	1	6	16	454	2024-10-22 07:18:02
322	5	11	15	104	2024-09-05 13:53:51
323	5	13	2	423	2024-09-18 23:14:36
324	5	13	20	564	2024-12-10 17:00:32
325	1	4	10	498	2024-03-26 04:37:08
326	1	4	15	111	2024-05-11 01:51:38
327	3	13	1	374	2024-01-31 00:00:02
328	4	7	18	497	2024-07-14 22:40:32
329	1	2	19	591	2024-08-11 07:55:56
330	5	14	4	518	2024-10-22 13:49:58
331	4	2	1	583	2024-05-14 20:53:09
332	3	13	1	330	2024-11-16 21:20:33
333	5	6	4	192	2024-03-24 18:41:10
334	2	3	18	539	2024-06-30 00:46:51
335	2	1	1	70	2024-07-31 16:33:51
336	5	6	16	454	2024-02-04 00:26:23
337	2	1	3	164	2024-09-09 10:01:24
338	2	4	11	179	2024-05-25 21:49:27
339	3	5	3	407	2024-02-28 02:39:47
340	4	11	1	160	2024-04-20 01:36:14
341	1	14	1	240	2024-01-01 07:31:27
342	2	2	4	477	2024-03-16 22:22:28
343	5	4	13	53	2024-09-26 21:16:08
344	1	9	14	294	2024-01-14 16:03:25
345	3	6	1	282	2024-11-24 00:45:58
346	3	5	16	491	2024-08-13 13:12:08
347	4	3	12	571	2024-11-10 09:10:41
348	2	2	2	184	2024-09-08 16:30:37
349	1	4	1	364	2024-07-04 18:36:03
350	1	15	2	586	2024-02-22 00:44:09
351	5	4	2	579	2024-03-23 13:55:03
352	1	2	1	441	2024-03-26 13:54:02
353	3	7	10	496	2024-04-27 15:06:10
354	2	7	5	75	2024-03-15 11:00:26
355	2	14	15	33	2024-06-19 12:47:25
356	3	8	9	497	2024-05-03 01:21:34
357	3	7	20	109	2024-04-23 14:08:08
358	1	8	4	559	2024-10-05 00:35:34
359	5	2	10	153	2024-04-04 12:42:58
360	2	14	12	94	2024-10-18 05:50:17
361	3	6	2	125	2024-06-03 19:06:25
362	3	4	16	357	2024-01-01 15:21:19
363	5	7	15	117	2024-03-20 09:20:19
364	5	5	14	204	2024-10-15 13:01:36
365	5	10	11	521	2024-04-04 07:23:33
366	4	1	19	468	2024-06-13 22:05:52
367	2	5	11	422	2024-09-29 04:08:04
368	2	12	1	360	2024-11-02 08:22:06
369	1	4	4	149	2024-11-24 19:28:42
370	2	9	1	75	2024-06-20 09:09:51
371	1	3	9	48	2024-04-13 00:46:52
372	3	13	8	372	2024-09-10 08:42:45
373	5	13	1	338	2024-12-22 20:21:03
374	3	9	1	202	2024-11-10 06:34:40
375	4	11	8	471	2024-07-06 11:24:07
376	2	4	14	527	2024-07-18 09:56:09
377	5	14	8	126	2024-09-03 11:25:45
378	1	10	15	309	2024-01-10 13:40:11
379	4	13	17	50	2024-05-03 14:11:52
380	4	3	18	311	2024-01-28 06:24:09
381	4	2	1	417	2024-05-26 08:19:15
382	5	10	12	490	2024-01-05 22:29:14
383	2	12	3	225	2024-10-21 11:58:39
384	2	15	16	366	2024-09-21 05:16:22
385	3	7	7	61	2024-01-21 10:31:00
386	5	10	6	558	2024-03-05 13:52:07
387	2	5	10	33	2024-03-06 15:49:14
388	2	10	11	281	2024-01-31 00:36:20
389	1	7	14	82	2024-03-10 23:26:45
390	4	12	2	534	2024-09-05 01:38:05
391	1	8	4	153	2024-04-06 01:11:05
392	4	9	6	433	2024-07-23 22:50:43
393	3	14	5	54	2024-05-21 15:40:30
394	3	11	12	33	2024-03-20 04:06:10
395	3	11	19	100	2024-12-18 21:05:26
396	4	15	17	39	2024-01-06 11:22:30
397	2	10	19	139	2024-03-14 09:40:13
398	5	7	10	569	2024-12-26 07:32:50
399	2	5	5	299	2024-02-08 10:27:18
400	5	7	17	237	2024-07-07 08:34:09
401	2	15	3	427	2024-09-17 07:14:22
402	4	5	8	98	2024-09-26 06:16:35
403	3	6	10	329	2024-04-22 09:03:48
404	4	8	17	138	2024-08-03 12:27:02
405	1	13	2	495	2024-01-13 10:24:11
406	1	5	13	170	2024-11-12 09:55:36
407	3	1	3	198	2024-04-26 19:48:37
408	5	14	1	454	2024-05-20 11:09:17
409	1	6	6	413	2024-01-31 11:45:54
410	5	3	15	188	2024-01-24 01:19:19
411	5	6	7	144	2024-01-28 19:26:01
412	5	14	12	345	2024-01-02 04:51:58
413	1	5	4	66	2024-11-21 21:49:45
414	5	15	2	277	2024-01-28 20:12:49
415	3	6	1	195	2024-01-20 04:45:59
416	1	13	18	61	2024-03-31 19:42:24
417	4	14	19	380	2024-02-01 11:10:43
418	4	2	15	121	2024-04-27 01:43:03
419	2	8	1	546	2024-06-30 08:36:18
420	1	5	18	473	2024-01-12 12:46:06
421	1	5	18	306	2024-06-30 00:46:51
422	4	5	1	279	2024-10-21 19:50:13
423	5	15	20	458	2024-03-19 09:42:32
424	4	15	2	34	2024-05-31 01:19:52
425	1	3	5	531	2024-05-09 22:32:41
426	3	9	17	132	2024-10-05 00:58:59
427	2	8	1	294	2024-08-29 06:12:16
428	4	7	1	152	2024-03-28 03:11:15
429	3	7	1	316	2024-02-26 12:29:06
430	4	14	1	324	2024-12-11 01:21:19
431	2	14	1	507	2024-09-12 12:21:30
432	3	9	15	112	2024-06-04 16:17:14
433	5	15	14	39	2024-07-09 05:27:32
434	5	1	1	414	2024-03-10 12:32:25
435	3	7	1	573	2024-10-27 21:47:18
436	2	13	1	221	2024-11-19 23:29:10
437	2	3	12	383	2024-01-03 07:23:52
438	5	7	18	327	2024-01-31 17:46:47
439	2	15	2	44	2024-12-22 12:03:26
440	3	9	6	477	2024-05-17 07:55:05
441	2	5	9	104	2024-12-14 10:44:52
442	2	15	10	58	2024-06-29 09:23:16
443	3	8	19	540	2024-09-10 00:20:28
444	1	9	4	446	2024-02-13 11:21:33
445	1	11	11	227	2024-08-16 22:56:19
446	4	4	1	411	2024-07-29 06:59:33
447	3	4	6	194	2024-03-12 13:12:12
448	2	12	11	394	2024-01-24 07:00:00
449	1	15	5	127	2024-05-13 21:56:12
450	5	5	1	125	2024-01-19 19:47:47
451	4	1	19	143	2024-08-27 01:35:17
452	5	14	19	560	2024-01-20 12:21:07
453	5	3	20	275	2024-03-28 14:05:08
454	5	11	7	238	2024-10-11 08:48:05
455	1	9	1	397	2024-02-07 11:20:13
456	3	14	1	51	2024-09-04 05:04:33
457	2	9	10	499	2024-09-11 11:53:16
458	4	3	17	164	2024-07-16 03:45:01
459	5	12	6	91	2024-12-18 14:36:53
460	3	6	13	160	2024-02-02 23:43:43
461	1	7	20	158	2024-06-12 04:53:50
462	4	9	1	121	2024-04-21 11:48:16
463	1	1	3	302	2024-02-04 06:17:46
464	4	8	10	497	2024-06-22 09:11:50
465	4	15	20	548	2024-01-28 06:58:12
466	1	4	1	351	2024-06-30 00:46:51
467	1	8	6	305	2024-02-05 23:04:22
468	1	9	17	245	2024-12-09 12:41:05
469	5	12	1	493	2024-12-12 14:39:42
470	3	6	12	59	2024-10-20 22:14:18
471	5	13	6	588	2024-01-03 14:53:59
472	3	6	7	206	2024-08-14 02:32:57
473	1	1	6	187	2024-02-02 10:32:17
474	1	7	14	204	2024-10-12 14:15:24
475	4	5	4	342	2024-09-18 05:14:08
476	4	12	20	412	2024-10-19 02:35:01
477	3	2	13	487	2024-05-28 23:25:43
478	5	14	10	199	2024-11-15 15:36:49
479	4	11	11	214	2024-08-31 16:02:40
480	5	15	12	115	2024-05-26 13:57:22
481	1	11	7	89	2024-06-24 21:57:10
482	3	9	5	296	2024-06-15 23:49:31
483	4	4	8	84	2024-10-27 02:48:02
484	1	10	13	525	2024-08-05 16:09:51
485	2	6	3	105	2024-03-16 03:06:25
486	4	12	8	552	2024-07-09 07:15:02
487	1	5	13	399	2024-06-29 23:08:15
488	2	15	17	290	2024-10-24 20:34:29
489	3	8	19	107	2024-11-30 06:58:25
490	3	4	9	531	2024-08-09 11:43:51
491	4	11	19	204	2024-06-17 15:51:25
492	5	10	3	267	2024-07-06 12:50:24
493	5	7	17	311	2024-02-12 16:14:39
494	1	7	4	345	2024-05-13 22:18:13
495	3	14	16	447	2024-05-17 06:33:35
496	5	11	1	70	2024-01-07 23:29:14
497	4	15	18	393	2024-02-12 22:33:20
498	3	6	19	159	2024-11-28 11:26:02
499	5	10	18	560	2024-02-03 16:39:34
500	2	12	18	91	2024-04-29 19:09:53
\.


--
-- Data for Name: dag; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag (dag_id, root_dag_id, is_paused, is_subdag, is_active, last_parsed_time, last_pickled, last_expired, scheduler_lock, pickle_id, fileloc, processor_subdir, owners, dag_display_name, description, default_view, schedule_interval, timetable_description, dataset_expression, max_active_tasks, max_active_runs, max_consecutive_failed_dag_runs, has_task_concurrency_limits, has_import_errors, next_dagrun, next_dagrun_data_interval_start, next_dagrun_data_interval_end, next_dagrun_create_after) FROM stdin;
indusflow_data_pipeline	\N	f	f	t	2026-07-06 15:19:59.457733+00	\N	\N	\N	\N	/opt/airflow/dags/pipeline_ingest.py	/opt/airflow/dags	data_engineer	\N	Pipeline orchestration industrialisé - Ingestion & Chargement IndusFlow	grid	"@daily"	At 00:00	null	16	16	0	f	f	2026-07-06 00:00:00+00	2026-07-06 00:00:00+00	2026-07-07 00:00:00+00	2026-07-07 00:00:00+00
\.


--
-- Data for Name: dag_code; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_code (fileloc_hash, fileloc, last_updated, source_code) FROM stdin;
62802376418429746	/opt/airflow/dags/pipeline_ingest.py	2026-07-06 15:10:43.545429+00	from datetime import datetime, timedelta\nfrom airflow import DAG\nfrom airflow.operators.python import PythonOperator\nfrom airflow.providers.postgres.operators.postgres import PostgresOperator\nimport os\nimport pandas as pd\nfrom sqlalchemy import create_engine\n\n# Configuration des connexions\nPOSTGRES_USER = os.getenv("POSTGRES_USER", "indusflow_admin")\nPOSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD", "SecurePassword2026!")\nPOSTGRES_DB = os.getenv("POSTGRES_DB", "indusflow_warehouse")\nDATABASE_URL = f"postgresql://{POSTGRES_USER}:{POSTGRES_PASSWORD}@postgres:5432/{POSTGRES_DB}"\n\ndef task_failure_alert(context):\n    """Callback appelée lorsqu'une tâche du DAG échoue pour insérer une alerte de monitoring"""\n    from sqlalchemy import create_engine, text\n    import datetime\n    \n    dag_id = context['dag'].dag_id\n    task_id = context['task_instance'].task_id\n    \n    engine = create_engine(DATABASE_URL)\n    with engine.connect() as conn:\n        query = text("""\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\n            VALUES (\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\n                'airflow',\n                'CRITICAL',\n                'task_failure',\n                1.0,\n                0,\n                :timestamp\n            )\n        """)\n        conn.execute(query, {"timestamp": datetime.datetime.utcnow()})\n        conn.commit()\n    print(f"🚨 Alerte insérée en base suite à l'échec de la tâche {task_id} du DAG {dag_id}.")\n\n# Configuration par défaut du DAG\ndefault_args = {\n    'owner': 'data_engineer',\n    'depends_on_past': False,\n    'start_date': datetime(2026, 1, 1),\n    'email_on_failure': False,\n    'retries': 2,\n    'retry_delay': timedelta(minutes=5),\n    'on_failure_callback': task_failure_alert,\n}\n\ndef execute_ingestion(filename, table_name):\n    """Fonction Python exécutée par Airflow pour charger un CSV"""\n    # Chemin absolu partagé ou local dans le conteneur Airflow\n    data_folder = "/opt/airflow/dags" \n    file_path = os.path.join(data_folder, filename)\n    \n    if not os.path.exists(file_path):\n        raise FileNotFoundError(f"Fichier requis manquant : {file_path}")\n        \n    engine = create_engine(DATABASE_URL)\n    df = pd.read_csv(file_path)\n    # Mode append pour respecter l'initialisation DDL\n    df.to_sql(table_name, con=engine, if_exists='append', index=False, chunksize=500)\n    print(f"✅ {len(df)} lignes injectées dans la table {table_name}")\n\n# Définition du DAG d'orchestration globale\nwith DAG(\n    'indusflow_data_pipeline',\n    default_args=default_args,\n    description='Pipeline orchestration industrialisé - Ingestion & Chargement IndusFlow',\n    schedule_interval='@daily',\n    catchup=False,\n) as dag:\n\n    # 1. Tâche de vérification / initialisation du schéma\n    init_db_schema = PostgresOperator(\n        task_id='init_db_schema',\n        postgres_conn_id='postgres_default',\n        sql='init_schema.sql', # Doit être accessible par Airflow\n    )\n\n    # 2. Ingestion des Tables de Dimensions (Priorité Absolue pour les FK)\n    ingest_usines = PythonOperator(\n        task_id='ingest_usines',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'usines_bloc3_propre.csv', 'table_name': 'usines'}\n    )\n\n    ingest_produits = PythonOperator(\n        task_id='ingest_produits',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'produits_bloc3_propre.csv', 'table_name': 'produits'}\n    )\n\n    ingest_clients = PythonOperator(\n        task_id='ingest_clients',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'clients_industriels_bloc3_propre.csv', 'table_name': 'clients_industriels'}\n    )\n\n    # 3. Ingestion de la Table de Faits Centrale\n    ingest_cycles = PythonOperator(\n        task_id='ingest_cycles_production',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'cycles_production_bloc3_propre.csv', 'table_name': 'cycles_production'}\n    )\n\n    # 4. Ingestion des Logs Opérationnels et IoT\n    ingest_etapes = PythonOperator(\n        task_id='ingest_etapes_fabrication',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'etapes_fabrication_bloc3_propre.csv', 'table_name': 'etapes_fabrication'}\n    )\n\n    ingest_capteurs = PythonOperator(\n        task_id='ingest_capteurs_machines',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'capteurs_machines_bloc3_propre.csv', 'table_name': 'capteurs_machines'}\n    )\n\n    ingest_erreurs = PythonOperator(\n        task_id='ingest_logs_erreurs',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'logs_erreurs_machines_bloc3_propre.csv', 'table_name': 'logs_erreurs_machines'}\n    )\n\n    ingest_cameras = PythonOperator(\n        task_id='ingest_cameras_qualite',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'cameras_qualite_bloc3_propre.csv', 'table_name': 'cameras_qualite'}\n    )\n\n    ingest_planning = PythonOperator(\n        task_id='ingest_planning_production',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'planning_production_bloc3_propre.csv', 'table_name': 'planning_production'}\n    )\n\n    ingest_pieces = PythonOperator(\n        task_id='ingest_pieces_detachees',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'pieces_detachees_bloc3_propre.csv', 'table_name': 'pieces_detachees'}\n    )\n\n    ingest_maintenance = PythonOperator(\n        task_id='ingest_maintenance_machines',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'maintenance_machines_bloc3_propre.csv', 'table_name': 'maintenance_machines'}\n    )\n\n    ingest_acces = PythonOperator(\n        task_id='ingest_acces_utilisateurs',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'acces_utilisateurs.csv', 'table_name': 'acces_utilisateurs'}\n    )\n\n    ingest_alertes = PythonOperator(\n        task_id='ingest_alertes_monitoring',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'alertes_monitoring.csv', 'table_name': 'alertes_monitoring'}\n    )\n\n    ingest_logs_jobs = PythonOperator(\n        task_id='ingest_logs_jobs_airflow',\n        python_callable=execute_ingestion,\n        op_kwargs={'filename': 'logs_jobs_airflow.csv', 'table_name': 'logs_jobs_airflow'}\n    )\n\n    # --- STRUCTURE DE DÉPENDANCE DU PIPELINE ---\n    # Étape 1 : Initialisation\n    # Étape 2 : Dimensions en parallèle\n    init_db_schema >> [ingest_usines, ingest_produits, ingest_clients]\n    \n    # Étape 3 : Les dimensions doivent être prêtes avant d'insérer les faits\n    [ingest_usines, ingest_produits, ingest_clients] >> ingest_cycles\n    \n    # Étape 4 : Les faits structurent le reste des tables opérationnelles rattachées\n    ingest_cycles >> [\n        ingest_etapes,\n        ingest_capteurs,\n        ingest_erreurs,\n        ingest_cameras,\n        ingest_planning,\n        ingest_pieces,\n        ingest_maintenance,\n        ingest_acces,\n        ingest_alertes,\n        ingest_logs_jobs\n    ]
\.


--
-- Data for Name: dag_owner_attributes; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_owner_attributes (dag_id, owner, link) FROM stdin;
\.


--
-- Data for Name: dag_pickle; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_pickle (id, pickle, created_dttm, pickle_hash) FROM stdin;
\.


--
-- Data for Name: dag_run; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_run (id, dag_id, queued_at, execution_date, start_date, end_date, state, run_id, creating_job_id, external_trigger, run_type, conf, data_interval_start, data_interval_end, last_scheduling_decision, dag_hash, log_template_id, updated_at, clear_number) FROM stdin;
1	indusflow_data_pipeline	2026-07-06 14:31:25.775174+00	2026-07-06 14:31:25.743527+00	2026-07-06 14:31:26.788206+00	2026-07-06 14:51:34.634725+00	failed	manual__2026-07-06T14:31:25.743527+00:00	\N	t	manual	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 14:51:34.633061+00	3eb84d965c49e77e2699a8ed1f2cf94a	2	2026-07-06 14:51:34.635756+00	0
2	indusflow_data_pipeline	2026-07-06 14:31:26.756764+00	2026-07-05 00:00:00+00	2026-07-06 14:31:26.787689+00	2026-07-06 14:51:35.361859+00	failed	scheduled__2026-07-05T00:00:00+00:00	1	f	scheduled	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 14:51:35.359768+00	3eb84d965c49e77e2699a8ed1f2cf94a	2	2026-07-06 14:51:35.362569+00	0
5	indusflow_data_pipeline	2026-07-06 14:39:49.849214+00	2026-07-06 14:39:49+00	2026-07-06 14:39:50.124835+00	2026-07-06 14:39:54.304418+00	success	manual__2026-07-06T14:39:49+00:00	\N	t	manual	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 14:39:54.300791+00	3eb84d965c49e77e2699a8ed1f2cf94a	2	2026-07-06 14:39:54.306306+00	0
4	indusflow_data_pipeline	2026-07-06 14:39:17.905015+00	2026-07-06 14:39:17+00	2026-07-06 14:39:18.69417+00	2026-07-06 14:49:22.582459+00	failed	manual__2026-07-06T14:39:17+00:00	\N	t	manual	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 14:49:22.580167+00	3eb84d965c49e77e2699a8ed1f2cf94a	2	2026-07-06 14:49:22.584155+00	0
8	indusflow_data_pipeline	2026-07-06 15:18:41.307559+00	2026-07-06 15:18:41+00	2026-07-06 15:18:41.859241+00	2026-07-06 15:18:50.042952+00	success	manual__2026-07-06T15:18:41+00:00	\N	t	manual	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 15:18:50.039499+00	a2cdd50781703c792950c52d5a86730d	2	2026-07-06 15:18:50.044183+00	0
3	indusflow_data_pipeline	2026-07-06 14:38:12.105976+00	2026-07-06 14:38:12+00	2026-07-06 14:38:12.165499+00	2026-07-06 14:53:18.738505+00	failed	manual__2026-07-06T14:38:12+00:00	\N	t	manual	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 14:53:18.73604+00	3eb84d965c49e77e2699a8ed1f2cf94a	2	2026-07-06 14:53:18.739219+00	0
7	indusflow_data_pipeline	2026-07-06 15:05:48.975283+00	2026-07-06 15:05:48+00	2026-07-06 15:05:49.037255+00	2026-07-06 15:05:55.154271+00	success	manual__2026-07-06T15:05:48+00:00	\N	t	manual	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 15:05:55.152048+00	d2780b530b16c2a8add50f0accd49bd6	2	2026-07-06 15:05:55.154797+00	0
6	indusflow_data_pipeline	2026-07-06 15:04:40.277545+00	2026-07-06 15:04:40+00	2026-07-06 15:04:40.485225+00	2026-07-06 15:14:45.669673+00	failed	manual__2026-07-06T15:04:40+00:00	\N	t	manual	\\x80057d942e	2026-07-05 00:00:00+00	2026-07-06 00:00:00+00	2026-07-06 15:14:45.664391+00	a2cdd50781703c792950c52d5a86730d	2	2026-07-06 15:14:45.670684+00	0
\.


--
-- Data for Name: dag_run_note; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_run_note (user_id, dag_run_id, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: dag_schedule_dataset_reference; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_schedule_dataset_reference (dataset_id, dag_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: dag_tag; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_tag (name, dag_id) FROM stdin;
\.


--
-- Data for Name: dag_warning; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dag_warning (dag_id, warning_type, message, "timestamp") FROM stdin;
\.


--
-- Data for Name: dagrun_dataset_event; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dagrun_dataset_event (dag_run_id, event_id) FROM stdin;
\.


--
-- Data for Name: dataset; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dataset (id, uri, extra, created_at, updated_at, is_orphaned) FROM stdin;
\.


--
-- Data for Name: dataset_dag_run_queue; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dataset_dag_run_queue (dataset_id, target_dag_id, created_at) FROM stdin;
\.


--
-- Data for Name: dataset_event; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.dataset_event (id, dataset_id, extra, source_task_id, source_dag_id, source_run_id, source_map_index, "timestamp") FROM stdin;
\.


--
-- Data for Name: etapes_fabrication; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.etapes_fabrication (cycle_id, step_name, duration_sec, machine_id) FROM stdin;
1	Assembly	98	M-2
1	Cutting	97	M-3
1	Packaging	51	M-3
2	Assembly	91	M-2
2	Cutting	46	M-2
3	Cutting	36	M-4
3	Quality_Check	68	M-18
3	Welding	20	M-19
4	Cutting	5	M-20
4	Packaging	42	M-16
4	Welding	6	M-19
5	Assembly	66	M-17
5	Cutting	116	M-11
5	Packaging	10	M-19
5	Quality_Check	36	M-8
5	Welding	66	M-8
6	Assembly	70	M-11
6	Cutting	115	M-14
6	Packaging	79	M-20
6	Quality_Check	57	M-3
6	Welding	77	M-5
7	Assembly	57	M-15
7	Cutting	104	M-10
7	Packaging	111	M-3
7	Quality_Check	5	M-10
7	Welding	88	M-12
8	Assembly	45	M-10
8	Cutting	23	M-8
8	Packaging	91	M-13
8	Quality_Check	117	M-3
9	Packaging	100	M-18
9	Quality_Check	61	M-5
9	Welding	61	M-14
10	Assembly	49	M-8
10	Cutting	57	M-16
10	Quality_Check	35	M-5
10	Welding	36	M-9
11	Assembly	3	M-15
11	Cutting	71	M-5
11	Quality_Check	90	M-13
11	Welding	92	M-13
12	Packaging	7	M-7
12	Quality_Check	5	M-7
13	Assembly	57	M-19
13	Cutting	28	M-18
13	Packaging	15	M-12
13	Quality_Check	57	M-3
13	Welding	43	M-20
14	Assembly	21	M-4
14	Cutting	26	M-4
14	Packaging	112	M-16
14	Quality_Check	69	M-3
14	Welding	114	M-15
15	Cutting	66	M-3
15	Packaging	57	M-17
15	Quality_Check	82	M-5
15	Welding	57	M-7
16	Assembly	39	M-8
16	Cutting	47	M-20
16	Packaging	47	M-18
16	Welding	118	M-11
17	Assembly	57	M-1
17	Cutting	79	M-12
17	Packaging	61	M-16
17	Quality_Check	78	M-15
17	Welding	56	M-7
18	Assembly	48	M-16
18	Cutting	40	M-11
19	Assembly	41	M-16
19	Cutting	20	M-13
19	Quality_Check	78	M-3
20	Cutting	30	M-6
20	Quality_Check	91	M-15
20	Welding	92	M-3
21	Assembly	111	M-12
21	Cutting	109	M-5
21	Welding	29	M-18
22	Cutting	16	M-17
22	Packaging	25	M-14
22	Welding	39	M-7
23	Assembly	51	M-19
23	Welding	64	M-17
24	Cutting	23	M-18
24	Packaging	28	M-17
24	Quality_Check	97	M-17
24	Welding	80	M-15
25	Assembly	34	M-5
25	Quality_Check	57	M-5
26	Assembly	119	M-15
26	Cutting	4	M-8
26	Packaging	113	M-4
26	Quality_Check	57	M-4
26	Welding	38	M-9
27	Cutting	73	M-20
27	Quality_Check	119	M-20
28	Packaging	56	M-18
28	Quality_Check	53	M-17
28	Welding	112	M-17
29	Assembly	103	M-11
29	Packaging	8	M-8
29	Quality_Check	21	M-13
30	Assembly	26	M-9
30	Cutting	29	M-12
30	Packaging	91	M-16
30	Quality_Check	46	M-4
30	Welding	25	M-15
31	Assembly	100	M-17
31	Packaging	93	M-11
31	Welding	97	M-7
32	Assembly	74	M-17
32	Cutting	107	M-15
32	Packaging	57	M-13
32	Welding	57	M-11
33	Cutting	57	M-9
33	Packaging	16	M-3
33	Quality_Check	57	M-6
33	Welding	59	M-5
34	Assembly	58	M-1
34	Cutting	98	M-3
34	Packaging	12	M-9
34	Quality_Check	4	M-6
34	Welding	12	M-9
35	Assembly	21	M-15
35	Packaging	7	M-9
36	Quality_Check	23	M-2
36	Welding	58	M-20
37	Assembly	41	M-10
37	Cutting	2	M-6
37	Quality_Check	68	M-17
38	Packaging	54	M-2
38	Quality_Check	78	M-1
38	Welding	35	M-9
39	Assembly	104	M-4
39	Cutting	111	M-8
40	Assembly	3	M-5
40	Cutting	57	M-3
40	Packaging	40	M-5
40	Quality_Check	48	M-11
40	Welding	93	M-12
41	Assembly	62	M-20
41	Cutting	52	M-10
41	Quality_Check	87	M-17
41	Welding	1	M-15
42	Assembly	57	M-9
42	Packaging	72	M-8
42	Welding	83	M-11
43	Assembly	57	M-11
43	Welding	81	M-6
44	Assembly	12	M-5
44	Cutting	119	M-1
44	Packaging	92	M-19
44	Quality_Check	13	M-9
44	Welding	57	M-13
45	Packaging	29	M-20
45	Welding	49	M-3
46	Assembly	119	M-19
46	Cutting	25	M-17
46	Packaging	57	M-19
46	Quality_Check	99	M-17
46	Welding	1	M-17
47	Cutting	24	M-12
47	Packaging	16	M-13
47	Quality_Check	105	M-18
48	Assembly	57	M-15
48	Cutting	115	M-9
49	Cutting	54	M-3
49	Packaging	6	M-16
50	Assembly	116	M-13
50	Cutting	63	M-2
50	Packaging	9	M-16
50	Quality_Check	40	M-3
51	Packaging	24	M-1
51	Quality_Check	113	M-2
51	Welding	67	M-20
52	Assembly	41	M-10
52	Cutting	63	M-15
52	Packaging	109	M-15
52	Quality_Check	20	M-18
52	Welding	64	M-17
53	Cutting	9	M-17
53	Quality_Check	64	M-15
54	Assembly	18	M-12
54	Cutting	23	M-20
54	Packaging	120	M-9
54	Quality_Check	57	M-12
54	Welding	13	M-5
55	Assembly	105	M-13
55	Packaging	57	M-16
55	Quality_Check	57	M-6
56	Assembly	70	M-4
56	Packaging	73	M-11
56	Quality_Check	74	M-1
56	Welding	91	M-4
57	Assembly	9	M-12
57	Cutting	85	M-3
57	Welding	90	M-13
58	Assembly	101	M-17
58	Cutting	53	M-9
58	Packaging	85	M-14
58	Quality_Check	70	M-7
58	Welding	63	M-5
59	Assembly	95	M-15
59	Quality_Check	10	M-2
60	Cutting	77	M-10
60	Quality_Check	110	M-14
60	Welding	22	M-6
61	Assembly	32	M-6
61	Cutting	9	M-7
61	Packaging	90	M-4
61	Welding	67	M-16
62	Assembly	39	M-8
62	Cutting	13	M-11
62	Packaging	99	M-5
62	Quality_Check	13	M-6
62	Welding	77	M-18
63	Packaging	95	M-13
63	Quality_Check	95	M-17
63	Welding	41	M-1
64	Assembly	82	M-5
64	Quality_Check	5	M-16
64	Welding	61	M-19
65	Cutting	88	M-13
65	Packaging	69	M-1
65	Welding	104	M-14
66	Cutting	111	M-19
66	Quality_Check	115	M-1
66	Welding	8	M-13
67	Assembly	17	M-15
67	Cutting	11	M-18
67	Packaging	22	M-8
67	Quality_Check	28	M-17
67	Welding	57	M-1
68	Assembly	101	M-4
68	Welding	54	M-17
69	Cutting	39	M-13
69	Welding	56	M-8
70	Cutting	107	M-9
70	Welding	70	M-8
71	Assembly	4	M-1
71	Cutting	97	M-3
71	Packaging	95	M-10
71	Quality_Check	55	M-8
71	Welding	39	M-16
72	Assembly	91	M-7
72	Cutting	119	M-3
72	Packaging	42	M-16
72	Quality_Check	57	M-10
72	Welding	97	M-12
73	Assembly	57	M-10
73	Cutting	17	M-20
73	Welding	109	M-8
74	Assembly	27	M-13
74	Cutting	3	M-7
74	Packaging	4	M-20
74	Quality_Check	57	M-20
74	Welding	26	M-14
75	Assembly	70	M-4
75	Cutting	90	M-15
76	Assembly	38	M-6
76	Welding	109	M-2
77	Assembly	61	M-3
77	Packaging	79	M-14
77	Quality_Check	33	M-4
77	Welding	57	M-3
78	Assembly	69	M-14
78	Packaging	87	M-12
79	Cutting	40	M-12
79	Quality_Check	104	M-7
80	Assembly	6	M-2
80	Cutting	57	M-15
80	Quality_Check	57	M-13
80	Welding	53	M-13
81	Assembly	82	M-9
81	Cutting	75	M-20
81	Packaging	71	M-9
81	Welding	1	M-9
82	Cutting	17	M-16
82	Packaging	109	M-13
82	Quality_Check	54	M-14
82	Welding	116	M-5
83	Assembly	50	M-11
83	Cutting	71	M-15
83	Packaging	10	M-17
83	Quality_Check	40	M-13
83	Welding	82	M-20
84	Assembly	57	M-16
84	Cutting	99	M-4
84	Quality_Check	73	M-6
85	Cutting	97	M-16
85	Welding	43	M-4
86	Assembly	50	M-18
86	Cutting	65	M-9
86	Packaging	21	M-10
86	Quality_Check	58	M-12
86	Welding	55	M-9
87	Assembly	29	M-10
87	Cutting	38	M-11
87	Quality_Check	52	M-8
88	Quality_Check	52	M-17
88	Welding	49	M-4
89	Assembly	2	M-7
89	Cutting	104	M-12
89	Packaging	57	M-10
89	Quality_Check	49	M-4
89	Welding	39	M-3
90	Assembly	79	M-7
90	Packaging	57	M-4
90	Quality_Check	57	M-12
90	Welding	77	M-5
91	Assembly	57	M-20
91	Welding	42	M-1
92	Assembly	94	M-4
92	Cutting	113	M-3
92	Quality_Check	9	M-7
92	Welding	57	M-16
93	Assembly	94	M-10
93	Cutting	3	M-10
93	Packaging	91	M-9
93	Quality_Check	81	M-14
93	Welding	68	M-14
94	Assembly	93	M-19
94	Cutting	93	M-7
94	Packaging	19	M-3
94	Quality_Check	30	M-14
94	Welding	57	M-14
95	Assembly	26	M-13
95	Cutting	12	M-19
95	Quality_Check	3	M-18
95	Welding	84	M-17
96	Assembly	31	M-17
96	Packaging	17	M-13
96	Welding	33	M-3
97	Assembly	70	M-2
97	Cutting	31	M-8
97	Packaging	40	M-16
97	Quality_Check	93	M-20
97	Welding	89	M-3
98	Assembly	30	M-13
98	Cutting	81	M-4
98	Packaging	92	M-17
99	Assembly	57	M-11
99	Cutting	106	M-18
99	Packaging	20	M-13
100	Cutting	35	M-1
100	Packaging	118	M-15
100	Quality_Check	98	M-13
100	Welding	84	M-15
101	Packaging	109	M-8
101	Quality_Check	104	M-20
102	Assembly	22	M-12
102	Cutting	119	M-17
102	Packaging	13	M-15
102	Quality_Check	100	M-12
102	Welding	57	M-2
103	Cutting	120	M-3
103	Quality_Check	86	M-5
103	Welding	3	M-17
104	Cutting	39	M-5
104	Packaging	115	M-10
105	Assembly	54	M-6
105	Cutting	72	M-20
105	Packaging	60	M-15
106	Cutting	71	M-12
106	Quality_Check	119	M-8
106	Welding	57	M-20
107	Assembly	93	M-6
107	Packaging	61	M-11
108	Assembly	105	M-18
108	Cutting	90	M-12
108	Packaging	84	M-19
108	Quality_Check	57	M-13
108	Welding	16	M-9
109	Cutting	2	M-10
109	Packaging	35	M-20
109	Welding	103	M-8
110	Cutting	83	M-2
110	Packaging	28	M-10
110	Quality_Check	100	M-14
110	Welding	57	M-8
111	Assembly	3	M-1
111	Quality_Check	1	M-1
111	Welding	80	M-10
112	Packaging	47	M-14
112	Welding	67	M-19
113	Assembly	111	M-6
113	Quality_Check	52	M-5
113	Welding	24	M-1
114	Assembly	116	M-8
114	Cutting	92	M-9
114	Packaging	57	M-2
114	Quality_Check	103	M-20
114	Welding	79	M-20
115	Cutting	57	M-13
115	Packaging	37	M-8
115	Quality_Check	30	M-2
116	Assembly	41	M-17
116	Cutting	26	M-14
117	Assembly	112	M-18
117	Cutting	10	M-15
117	Packaging	66	M-2
117	Quality_Check	101	M-15
117	Welding	57	M-13
118	Assembly	49	M-2
118	Cutting	21	M-11
118	Packaging	57	M-2
119	Assembly	56	M-8
119	Packaging	65	M-7
119	Quality_Check	11	M-17
119	Welding	57	M-6
120	Assembly	89	M-11
120	Cutting	110	M-16
120	Welding	51	M-13
121	Cutting	49	M-19
121	Quality_Check	68	M-7
122	Assembly	57	M-2
122	Cutting	18	M-4
122	Packaging	57	M-1
122	Quality_Check	26	M-1
122	Welding	31	M-12
123	Cutting	1	M-3
123	Packaging	83	M-7
123	Welding	6	M-13
124	Assembly	42	M-4
124	Packaging	57	M-2
125	Quality_Check	15	M-7
125	Welding	15	M-5
126	Assembly	2	M-12
126	Packaging	55	M-10
126	Quality_Check	72	M-20
126	Welding	57	M-12
127	Assembly	45	M-3
127	Cutting	110	M-2
127	Packaging	101	M-1
127	Quality_Check	63	M-6
127	Welding	15	M-12
128	Cutting	14	M-16
128	Quality_Check	37	M-16
128	Welding	79	M-16
129	Cutting	10	M-16
129	Packaging	62	M-7
129	Quality_Check	32	M-4
129	Welding	49	M-16
130	Packaging	91	M-3
130	Welding	14	M-13
131	Assembly	107	M-5
131	Cutting	99	M-18
131	Packaging	87	M-8
131	Quality_Check	57	M-12
131	Welding	118	M-6
132	Assembly	102	M-9
132	Packaging	33	M-15
132	Quality_Check	49	M-5
132	Welding	75	M-15
133	Assembly	29	M-5
133	Packaging	67	M-20
133	Quality_Check	53	M-11
134	Assembly	56	M-4
134	Cutting	28	M-5
134	Packaging	32	M-4
134	Quality_Check	40	M-13
135	Assembly	89	M-15
135	Cutting	57	M-1
135	Quality_Check	61	M-7
135	Welding	17	M-4
136	Assembly	55	M-20
136	Cutting	97	M-8
136	Packaging	52	M-14
136	Quality_Check	57	M-5
136	Welding	93	M-1
137	Assembly	100	M-11
137	Cutting	56	M-4
137	Packaging	97	M-8
138	Assembly	57	M-20
138	Cutting	115	M-4
138	Packaging	36	M-11
138	Quality_Check	57	M-13
138	Welding	94	M-17
139	Assembly	79	M-4
139	Welding	31	M-7
140	Assembly	77	M-14
140	Cutting	21	M-20
140	Packaging	84	M-17
140	Quality_Check	37	M-13
140	Welding	106	M-7
141	Assembly	97	M-14
141	Cutting	92	M-2
141	Quality_Check	80	M-19
141	Welding	57	M-3
142	Assembly	108	M-7
142	Cutting	46	M-13
142	Quality_Check	32	M-5
142	Welding	7	M-7
143	Assembly	22	M-16
143	Cutting	80	M-8
143	Packaging	109	M-10
143	Quality_Check	58	M-13
143	Welding	54	M-14
144	Cutting	52	M-10
144	Quality_Check	61	M-12
144	Welding	72	M-16
145	Assembly	78	M-19
145	Cutting	4	M-3
145	Packaging	57	M-1
145	Quality_Check	67	M-13
145	Welding	73	M-5
146	Assembly	37	M-15
146	Cutting	15	M-19
146	Welding	26	M-8
147	Assembly	13	M-18
147	Cutting	10	M-15
147	Packaging	66	M-7
147	Quality_Check	116	M-7
148	Cutting	49	M-5
148	Packaging	57	M-14
149	Assembly	57	M-6
149	Cutting	117	M-6
149	Packaging	117	M-10
149	Quality_Check	115	M-8
149	Welding	72	M-15
150	Assembly	1	M-11
150	Cutting	14	M-17
150	Packaging	113	M-16
150	Quality_Check	57	M-20
150	Welding	82	M-1
151	Assembly	76	M-4
151	Cutting	96	M-5
151	Welding	83	M-11
152	Assembly	3	M-10
152	Cutting	75	M-17
152	Packaging	98	M-9
152	Quality_Check	64	M-12
152	Welding	116	M-13
153	Assembly	12	M-2
153	Cutting	66	M-5
153	Packaging	20	M-11
153	Welding	39	M-11
154	Assembly	86	M-20
154	Cutting	5	M-17
154	Packaging	66	M-4
154	Quality_Check	57	M-2
154	Welding	38	M-16
155	Cutting	34	M-4
155	Packaging	57	M-15
155	Quality_Check	36	M-2
156	Assembly	57	M-11
156	Cutting	56	M-10
156	Packaging	37	M-14
156	Quality_Check	57	M-14
156	Welding	3	M-16
157	Cutting	93	M-15
157	Quality_Check	7	M-1
158	Assembly	44	M-5
158	Cutting	21	M-3
158	Packaging	11	M-16
158	Quality_Check	57	M-14
158	Welding	57	M-1
159	Assembly	52	M-15
159	Cutting	57	M-9
159	Quality_Check	37	M-2
160	Assembly	107	M-9
160	Cutting	3	M-2
160	Packaging	57	M-2
160	Welding	57	M-20
161	Quality_Check	69	M-20
161	Welding	32	M-16
162	Packaging	32	M-5
162	Welding	102	M-16
163	Assembly	88	M-15
163	Welding	96	M-16
164	Assembly	57	M-5
164	Packaging	5	M-20
164	Quality_Check	69	M-19
164	Welding	75	M-20
165	Assembly	105	M-10
165	Cutting	57	M-10
165	Packaging	57	M-9
165	Quality_Check	57	M-11
165	Welding	98	M-6
166	Assembly	11	M-18
166	Packaging	117	M-12
166	Quality_Check	114	M-13
167	Assembly	4	M-13
167	Quality_Check	55	M-19
167	Welding	109	M-7
168	Packaging	80	M-3
168	Quality_Check	12	M-18
169	Packaging	41	M-7
169	Quality_Check	72	M-16
169	Welding	119	M-19
170	Assembly	64	M-12
170	Cutting	81	M-13
170	Quality_Check	28	M-8
171	Quality_Check	17	M-12
171	Welding	108	M-3
172	Assembly	57	M-7
172	Cutting	57	M-4
172	Welding	61	M-17
173	Assembly	23	M-9
173	Cutting	86	M-3
173	Packaging	14	M-15
173	Quality_Check	57	M-11
173	Welding	41	M-6
174	Cutting	84	M-15
174	Packaging	114	M-3
175	Assembly	104	M-6
175	Cutting	12	M-17
175	Packaging	90	M-6
175	Quality_Check	46	M-6
175	Welding	84	M-8
176	Packaging	57	M-2
176	Welding	5	M-18
177	Cutting	66	M-19
177	Packaging	27	M-11
177	Quality_Check	57	M-7
177	Welding	102	M-4
178	Assembly	102	M-8
178	Cutting	109	M-7
178	Packaging	87	M-6
178	Quality_Check	26	M-1
178	Welding	85	M-16
179	Assembly	9	M-20
179	Packaging	85	M-5
180	Assembly	46	M-2
180	Cutting	76	M-11
180	Packaging	19	M-12
180	Quality_Check	49	M-16
180	Welding	26	M-11
181	Assembly	97	M-14
181	Packaging	53	M-5
181	Quality_Check	28	M-9
182	Packaging	56	M-16
182	Welding	75	M-6
183	Quality_Check	29	M-17
183	Welding	113	M-4
184	Assembly	63	M-4
184	Quality_Check	55	M-7
185	Cutting	31	M-2
185	Packaging	65	M-5
185	Quality_Check	14	M-13
185	Welding	64	M-14
186	Quality_Check	120	M-5
186	Welding	103	M-1
187	Assembly	94	M-7
187	Cutting	36	M-17
187	Packaging	36	M-5
187	Welding	60	M-19
188	Assembly	10	M-3
188	Packaging	116	M-9
188	Welding	34	M-7
189	Assembly	57	M-3
189	Packaging	68	M-7
189	Welding	94	M-2
190	Assembly	53	M-6
190	Packaging	94	M-16
190	Quality_Check	24	M-9
190	Welding	13	M-1
191	Assembly	104	M-17
191	Cutting	57	M-12
191	Quality_Check	81	M-8
191	Welding	8	M-4
192	Assembly	24	M-1
192	Cutting	57	M-17
192	Packaging	52	M-3
192	Quality_Check	116	M-15
193	Assembly	54	M-18
193	Cutting	57	M-1
193	Packaging	16	M-10
194	Assembly	57	M-20
194	Welding	108	M-17
195	Assembly	21	M-15
195	Cutting	1	M-9
195	Quality_Check	14	M-6
196	Assembly	32	M-1
196	Cutting	27	M-19
196	Packaging	93	M-5
196	Quality_Check	108	M-13
196	Welding	48	M-8
197	Assembly	101	M-19
197	Cutting	51	M-11
197	Packaging	72	M-13
197	Quality_Check	76	M-13
197	Welding	3	M-11
198	Assembly	17	M-17
198	Quality_Check	37	M-3
198	Welding	57	M-12
199	Assembly	97	M-13
199	Cutting	57	M-2
199	Quality_Check	47	M-5
199	Welding	106	M-2
200	Cutting	50	M-2
200	Packaging	15	M-9
200	Quality_Check	57	M-14
200	Welding	21	M-17
201	Assembly	109	M-19
201	Cutting	20	M-2
201	Packaging	27	M-15
201	Welding	58	M-3
202	Assembly	63	M-9
202	Packaging	65	M-14
203	Assembly	83	M-15
203	Cutting	46	M-13
203	Welding	41	M-18
204	Assembly	38	M-17
204	Packaging	57	M-8
204	Quality_Check	75	M-8
204	Welding	88	M-19
205	Assembly	30	M-18
205	Cutting	73	M-16
205	Packaging	45	M-10
205	Quality_Check	4	M-1
205	Welding	59	M-10
206	Packaging	102	M-2
206	Welding	89	M-15
207	Assembly	80	M-5
207	Cutting	96	M-11
207	Packaging	60	M-17
207	Welding	41	M-20
208	Quality_Check	22	M-14
208	Welding	16	M-1
209	Assembly	105	M-15
209	Cutting	18	M-13
209	Packaging	96	M-9
209	Quality_Check	64	M-12
209	Welding	63	M-12
210	Assembly	67	M-5
210	Cutting	101	M-19
210	Packaging	117	M-13
210	Quality_Check	103	M-10
210	Welding	37	M-18
211	Assembly	42	M-14
211	Cutting	57	M-1
211	Packaging	52	M-11
211	Quality_Check	2	M-9
211	Welding	117	M-10
212	Assembly	57	M-3
212	Packaging	89	M-15
212	Quality_Check	81	M-2
212	Welding	79	M-15
213	Assembly	97	M-16
213	Cutting	118	M-13
213	Quality_Check	29	M-7
214	Assembly	65	M-11
214	Cutting	34	M-4
214	Packaging	69	M-17
214	Quality_Check	82	M-11
214	Welding	83	M-3
215	Assembly	95	M-6
215	Cutting	57	M-14
215	Packaging	57	M-1
215	Quality_Check	17	M-12
215	Welding	5	M-19
216	Assembly	40	M-6
216	Cutting	57	M-1
216	Packaging	15	M-19
216	Welding	117	M-18
217	Assembly	21	M-5
217	Cutting	120	M-4
217	Packaging	95	M-20
217	Welding	30	M-17
218	Cutting	33	M-17
218	Packaging	115	M-15
219	Assembly	15	M-19
219	Cutting	50	M-12
219	Packaging	60	M-6
219	Quality_Check	6	M-12
219	Welding	57	M-9
220	Cutting	1	M-15
220	Packaging	91	M-19
220	Quality_Check	3	M-8
221	Assembly	1	M-6
221	Packaging	53	M-8
222	Assembly	7	M-8
222	Cutting	54	M-16
222	Welding	67	M-14
223	Assembly	52	M-3
223	Cutting	37	M-1
223	Packaging	114	M-1
223	Quality_Check	34	M-6
223	Welding	81	M-13
224	Assembly	79	M-18
224	Cutting	21	M-14
224	Quality_Check	88	M-11
224	Welding	93	M-3
225	Assembly	50	M-14
225	Packaging	57	M-9
225	Quality_Check	62	M-12
226	Assembly	13	M-7
226	Welding	51	M-5
227	Assembly	30	M-12
227	Packaging	109	M-8
227	Quality_Check	93	M-13
227	Welding	80	M-7
228	Packaging	56	M-20
228	Quality_Check	105	M-5
228	Welding	42	M-8
229	Assembly	57	M-19
229	Cutting	59	M-13
229	Packaging	120	M-7
229	Quality_Check	13	M-18
229	Welding	22	M-4
230	Assembly	38	M-4
230	Cutting	49	M-11
230	Welding	12	M-6
231	Packaging	118	M-10
231	Welding	39	M-3
232	Assembly	81	M-13
232	Cutting	92	M-10
232	Packaging	60	M-6
232	Quality_Check	108	M-5
233	Packaging	108	M-8
233	Welding	95	M-1
234	Assembly	31	M-14
234	Cutting	46	M-2
234	Packaging	40	M-10
234	Quality_Check	93	M-2
234	Welding	59	M-20
235	Cutting	48	M-19
235	Quality_Check	69	M-6
235	Welding	117	M-17
236	Cutting	18	M-2
236	Packaging	71	M-7
236	Quality_Check	63	M-2
236	Welding	2	M-8
237	Assembly	77	M-17
237	Cutting	46	M-9
237	Quality_Check	13	M-12
237	Welding	98	M-15
238	Assembly	56	M-8
238	Cutting	38	M-2
238	Packaging	22	M-16
238	Quality_Check	31	M-8
238	Welding	56	M-6
239	Assembly	78	M-14
239	Welding	13	M-7
240	Assembly	113	M-8
240	Packaging	51	M-1
240	Quality_Check	79	M-10
240	Welding	103	M-5
241	Assembly	20	M-18
241	Packaging	98	M-6
241	Quality_Check	29	M-20
242	Assembly	42	M-2
242	Cutting	5	M-9
242	Packaging	67	M-7
242	Quality_Check	82	M-16
242	Welding	18	M-10
243	Assembly	33	M-18
243	Cutting	82	M-10
243	Packaging	114	M-3
243	Quality_Check	8	M-2
243	Welding	57	M-15
244	Assembly	81	M-3
244	Cutting	72	M-1
244	Packaging	101	M-16
244	Welding	38	M-18
245	Cutting	65	M-12
245	Packaging	10	M-5
245	Quality_Check	91	M-5
245	Welding	57	M-1
246	Assembly	73	M-13
246	Cutting	37	M-12
246	Packaging	69	M-20
247	Assembly	54	M-8
247	Cutting	17	M-19
247	Packaging	93	M-2
247	Welding	4	M-2
248	Assembly	48	M-6
248	Packaging	10	M-5
248	Quality_Check	30	M-10
249	Cutting	45	M-12
249	Packaging	112	M-7
249	Quality_Check	57	M-15
250	Cutting	26	M-10
250	Quality_Check	8	M-2
251	Assembly	103	M-19
251	Cutting	65	M-1
251	Packaging	40	M-16
251	Quality_Check	79	M-19
251	Welding	32	M-13
252	Packaging	107	M-14
252	Welding	29	M-13
253	Cutting	66	M-19
253	Welding	97	M-12
254	Assembly	46	M-15
254	Cutting	96	M-12
254	Packaging	85	M-18
254	Quality_Check	51	M-19
254	Welding	11	M-5
255	Assembly	54	M-16
255	Cutting	54	M-4
255	Packaging	38	M-17
255	Quality_Check	41	M-18
255	Welding	18	M-8
256	Cutting	8	M-15
256	Packaging	18	M-17
256	Quality_Check	10	M-14
257	Cutting	90	M-18
257	Packaging	16	M-15
257	Welding	33	M-7
258	Assembly	85	M-2
258	Cutting	50	M-2
258	Packaging	44	M-15
258	Quality_Check	57	M-20
258	Welding	66	M-4
259	Cutting	19	M-12
259	Quality_Check	41	M-19
259	Welding	33	M-12
260	Cutting	85	M-17
260	Packaging	1	M-20
260	Quality_Check	80	M-4
260	Welding	81	M-16
261	Cutting	57	M-19
261	Packaging	57	M-8
261	Quality_Check	39	M-15
261	Welding	55	M-12
262	Assembly	64	M-13
262	Cutting	56	M-6
262	Packaging	28	M-18
262	Quality_Check	26	M-19
262	Welding	54	M-18
263	Assembly	9	M-6
263	Cutting	118	M-16
263	Packaging	57	M-2
263	Quality_Check	28	M-16
264	Assembly	9	M-12
264	Cutting	23	M-19
264	Packaging	45	M-10
264	Quality_Check	48	M-20
264	Welding	74	M-17
265	Assembly	82	M-15
265	Packaging	74	M-19
266	Assembly	53	M-15
266	Cutting	1	M-5
266	Packaging	26	M-9
266	Quality_Check	113	M-11
266	Welding	48	M-1
267	Assembly	15	M-12
267	Cutting	14	M-7
267	Packaging	99	M-19
267	Quality_Check	62	M-8
267	Welding	25	M-2
268	Assembly	93	M-11
268	Cutting	82	M-17
268	Welding	52	M-12
269	Packaging	84	M-8
269	Welding	113	M-17
270	Assembly	106	M-13
270	Cutting	104	M-13
270	Welding	42	M-1
271	Assembly	68	M-9
271	Cutting	77	M-3
271	Packaging	10	M-19
271	Quality_Check	38	M-19
272	Assembly	71	M-6
272	Packaging	7	M-16
272	Welding	81	M-14
273	Assembly	41	M-20
273	Cutting	45	M-2
273	Quality_Check	92	M-15
273	Welding	50	M-1
274	Cutting	2	M-3
274	Packaging	4	M-5
274	Quality_Check	8	M-19
274	Welding	77	M-5
275	Assembly	57	M-11
275	Welding	57	M-7
276	Assembly	1	M-3
276	Cutting	76	M-6
276	Packaging	4	M-14
276	Welding	93	M-20
277	Assembly	70	M-2
277	Packaging	71	M-19
277	Quality_Check	57	M-1
277	Welding	96	M-20
278	Assembly	43	M-5
278	Cutting	13	M-12
278	Quality_Check	82	M-14
278	Welding	78	M-18
279	Cutting	106	M-18
279	Packaging	56	M-16
279	Welding	57	M-10
280	Assembly	48	M-13
280	Cutting	82	M-5
280	Packaging	111	M-4
280	Welding	57	M-18
281	Assembly	118	M-7
281	Cutting	21	M-2
282	Packaging	31	M-17
282	Quality_Check	57	M-12
282	Welding	28	M-6
283	Cutting	72	M-1
283	Packaging	107	M-7
283	Quality_Check	78	M-13
284	Cutting	92	M-12
284	Packaging	5	M-8
285	Assembly	73	M-14
285	Cutting	80	M-7
285	Packaging	57	M-14
285	Quality_Check	54	M-1
285	Welding	51	M-8
286	Cutting	62	M-3
286	Packaging	74	M-1
286	Quality_Check	24	M-10
286	Welding	112	M-9
287	Assembly	3	M-7
287	Cutting	66	M-1
287	Packaging	82	M-2
287	Quality_Check	102	M-6
287	Welding	101	M-5
288	Assembly	24	M-10
288	Cutting	28	M-17
289	Assembly	76	M-13
289	Cutting	13	M-14
289	Quality_Check	75	M-2
289	Welding	50	M-7
290	Assembly	49	M-19
290	Cutting	119	M-20
291	Assembly	35	M-8
291	Cutting	18	M-4
291	Packaging	114	M-5
291	Quality_Check	99	M-1
291	Welding	27	M-18
292	Packaging	117	M-3
292	Welding	79	M-7
293	Cutting	35	M-1
293	Quality_Check	7	M-2
293	Welding	57	M-9
294	Assembly	57	M-15
294	Cutting	57	M-11
294	Packaging	82	M-9
295	Assembly	28	M-13
295	Packaging	58	M-13
295	Quality_Check	97	M-13
295	Welding	98	M-11
296	Assembly	86	M-8
296	Cutting	12	M-20
296	Packaging	57	M-2
296	Quality_Check	118	M-9
296	Welding	40	M-4
297	Assembly	77	M-19
297	Cutting	87	M-8
297	Packaging	106	M-19
297	Quality_Check	110	M-17
297	Welding	57	M-16
298	Assembly	57	M-9
298	Cutting	47	M-20
298	Packaging	111	M-12
298	Quality_Check	112	M-19
298	Welding	8	M-18
299	Assembly	83	M-17
299	Cutting	42	M-17
299	Welding	33	M-12
300	Assembly	107	M-6
300	Packaging	1	M-11
300	Welding	87	M-12
301	Assembly	12	M-9
301	Cutting	16	M-12
301	Packaging	67	M-15
301	Quality_Check	81	M-17
301	Welding	91	M-10
302	Assembly	50	M-20
302	Cutting	28	M-1
302	Packaging	84	M-17
302	Quality_Check	23	M-12
302	Welding	115	M-17
303	Cutting	35	M-10
303	Packaging	60	M-11
303	Quality_Check	57	M-19
303	Welding	56	M-2
304	Assembly	116	M-3
304	Cutting	85	M-2
304	Packaging	98	M-10
304	Welding	41	M-5
305	Assembly	23	M-20
305	Cutting	51	M-13
305	Packaging	39	M-19
305	Quality_Check	100	M-20
305	Welding	55	M-12
306	Assembly	87	M-13
306	Cutting	10	M-15
306	Packaging	57	M-4
306	Quality_Check	96	M-16
307	Assembly	24	M-17
307	Cutting	41	M-13
307	Packaging	91	M-16
307	Quality_Check	6	M-15
307	Welding	57	M-8
308	Packaging	20	M-3
308	Welding	89	M-15
309	Cutting	117	M-3
309	Packaging	45	M-19
309	Quality_Check	106	M-2
310	Cutting	2	M-5
310	Quality_Check	25	M-14
310	Welding	96	M-19
311	Assembly	60	M-17
311	Cutting	70	M-13
311	Packaging	57	M-3
311	Welding	37	M-18
312	Assembly	55	M-10
312	Packaging	87	M-14
312	Quality_Check	67	M-8
312	Welding	3	M-10
313	Assembly	85	M-15
313	Cutting	115	M-19
313	Quality_Check	26	M-12
314	Assembly	70	M-1
314	Cutting	60	M-8
314	Quality_Check	7	M-14
314	Welding	72	M-2
315	Assembly	42	M-7
315	Cutting	101	M-4
315	Packaging	4	M-6
315	Quality_Check	2	M-5
315	Welding	93	M-15
316	Packaging	36	M-1
316	Quality_Check	32	M-16
317	Assembly	42	M-17
317	Packaging	15	M-15
317	Welding	30	M-5
318	Assembly	2	M-14
318	Cutting	47	M-9
319	Assembly	65	M-8
319	Cutting	71	M-18
319	Packaging	56	M-11
319	Quality_Check	30	M-15
319	Welding	29	M-10
320	Assembly	57	M-11
320	Packaging	87	M-5
320	Quality_Check	64	M-8
321	Assembly	28	M-6
321	Quality_Check	100	M-11
322	Assembly	57	M-16
322	Cutting	8	M-10
322	Packaging	115	M-12
322	Quality_Check	13	M-7
322	Welding	114	M-9
323	Cutting	48	M-19
323	Packaging	110	M-9
323	Quality_Check	66	M-2
323	Welding	15	M-1
324	Assembly	2	M-6
324	Packaging	75	M-12
324	Quality_Check	53	M-11
324	Welding	105	M-16
325	Assembly	106	M-4
325	Cutting	18	M-6
325	Packaging	90	M-15
325	Quality_Check	57	M-2
326	Cutting	96	M-19
326	Packaging	95	M-5
327	Cutting	82	M-6
327	Packaging	67	M-5
327	Quality_Check	57	M-16
327	Welding	13	M-11
328	Cutting	29	M-16
328	Packaging	59	M-18
328	Quality_Check	20	M-11
328	Welding	109	M-8
329	Cutting	40	M-10
329	Packaging	55	M-12
329	Welding	93	M-18
330	Assembly	118	M-8
330	Packaging	14	M-1
330	Welding	17	M-2
331	Assembly	57	M-1
331	Cutting	18	M-10
331	Packaging	33	M-5
331	Quality_Check	20	M-3
331	Welding	98	M-13
332	Assembly	5	M-8
332	Packaging	8	M-20
332	Welding	76	M-4
333	Assembly	67	M-11
333	Packaging	11	M-15
334	Assembly	27	M-17
334	Cutting	94	M-2
334	Welding	12	M-8
335	Assembly	42	M-7
335	Cutting	7	M-1
335	Welding	46	M-11
336	Assembly	79	M-19
336	Cutting	6	M-7
336	Packaging	31	M-16
336	Quality_Check	2	M-12
336	Welding	95	M-3
337	Assembly	109	M-19
337	Cutting	19	M-3
337	Packaging	66	M-19
337	Quality_Check	88	M-17
337	Welding	32	M-14
338	Assembly	50	M-16
338	Cutting	91	M-11
338	Packaging	2	M-13
338	Quality_Check	87	M-13
339	Assembly	99	M-10
339	Welding	57	M-10
340	Assembly	44	M-3
340	Cutting	66	M-15
340	Packaging	95	M-20
340	Quality_Check	27	M-11
340	Welding	80	M-13
341	Assembly	51	M-4
341	Cutting	103	M-14
341	Packaging	59	M-6
341	Quality_Check	86	M-6
341	Welding	45	M-2
342	Assembly	119	M-20
342	Cutting	117	M-11
342	Packaging	90	M-10
342	Quality_Check	38	M-6
342	Welding	47	M-12
343	Assembly	54	M-14
343	Cutting	54	M-12
343	Packaging	52	M-15
343	Quality_Check	15	M-18
343	Welding	86	M-5
344	Packaging	103	M-9
344	Welding	65	M-12
345	Assembly	86	M-15
345	Cutting	57	M-2
345	Quality_Check	116	M-12
345	Welding	20	M-18
346	Assembly	113	M-5
346	Packaging	57	M-11
346	Quality_Check	26	M-7
346	Welding	57	M-9
347	Assembly	64	M-18
347	Quality_Check	61	M-8
348	Packaging	116	M-12
348	Quality_Check	11	M-13
349	Assembly	78	M-5
349	Packaging	41	M-17
349	Quality_Check	5	M-6
349	Welding	2	M-18
350	Assembly	66	M-13
350	Packaging	3	M-19
350	Quality_Check	59	M-10
350	Welding	82	M-6
351	Assembly	56	M-12
351	Cutting	42	M-20
351	Packaging	88	M-16
351	Quality_Check	58	M-4
351	Welding	90	M-11
352	Assembly	60	M-13
352	Cutting	95	M-3
352	Packaging	1	M-5
352	Quality_Check	61	M-18
352	Welding	110	M-18
353	Cutting	82	M-9
353	Packaging	68	M-12
353	Quality_Check	56	M-15
353	Welding	57	M-2
354	Cutting	95	M-4
354	Packaging	68	M-6
354	Welding	35	M-4
355	Assembly	95	M-10
355	Cutting	76	M-3
355	Packaging	24	M-7
355	Quality_Check	76	M-12
355	Welding	37	M-5
356	Assembly	21	M-10
356	Cutting	93	M-7
356	Packaging	60	M-5
356	Quality_Check	51	M-17
356	Welding	28	M-8
357	Quality_Check	23	M-13
357	Welding	60	M-3
358	Assembly	10	M-12
358	Cutting	57	M-17
358	Packaging	14	M-12
358	Quality_Check	8	M-4
359	Assembly	104	M-9
359	Cutting	118	M-2
359	Packaging	104	M-19
359	Quality_Check	57	M-2
360	Assembly	57	M-8
360	Cutting	74	M-17
360	Packaging	43	M-10
360	Quality_Check	48	M-7
360	Welding	34	M-1
361	Assembly	94	M-8
361	Cutting	89	M-17
361	Quality_Check	12	M-19
361	Welding	18	M-13
362	Packaging	112	M-19
362	Welding	54	M-3
363	Packaging	77	M-20
363	Quality_Check	106	M-7
363	Welding	38	M-4
364	Assembly	102	M-7
364	Cutting	41	M-18
364	Packaging	57	M-3
364	Quality_Check	65	M-1
364	Welding	40	M-9
365	Assembly	80	M-6
365	Cutting	68	M-4
365	Packaging	1	M-6
365	Quality_Check	70	M-12
366	Assembly	114	M-3
366	Cutting	17	M-5
366	Quality_Check	16	M-11
366	Welding	83	M-16
367	Cutting	80	M-9
367	Packaging	57	M-7
367	Quality_Check	89	M-7
367	Welding	54	M-17
368	Assembly	44	M-19
368	Packaging	31	M-14
368	Quality_Check	24	M-5
368	Welding	57	M-4
369	Assembly	108	M-16
369	Cutting	42	M-19
369	Packaging	8	M-11
369	Quality_Check	76	M-20
369	Welding	42	M-1
370	Assembly	16	M-4
370	Packaging	102	M-15
370	Welding	22	M-7
371	Assembly	26	M-4
371	Cutting	51	M-16
371	Packaging	110	M-20
371	Quality_Check	117	M-20
371	Welding	87	M-3
372	Assembly	47	M-2
372	Cutting	52	M-4
372	Packaging	41	M-1
373	Cutting	46	M-2
373	Quality_Check	92	M-8
374	Assembly	31	M-20
374	Cutting	14	M-6
374	Packaging	72	M-4
374	Quality_Check	26	M-17
374	Welding	112	M-4
375	Assembly	37	M-17
375	Cutting	3	M-18
375	Packaging	64	M-15
375	Quality_Check	91	M-1
375	Welding	43	M-1
376	Assembly	18	M-20
376	Cutting	12	M-18
376	Packaging	15	M-3
376	Quality_Check	12	M-8
376	Welding	80	M-4
377	Assembly	57	M-3
377	Packaging	75	M-7
377	Quality_Check	9	M-2
377	Welding	27	M-16
378	Assembly	94	M-20
378	Packaging	88	M-15
379	Cutting	57	M-5
379	Packaging	100	M-2
379	Quality_Check	36	M-20
380	Cutting	14	M-6
380	Packaging	73	M-13
380	Quality_Check	54	M-10
380	Welding	79	M-1
381	Assembly	53	M-1
381	Cutting	81	M-11
381	Packaging	49	M-18
381	Quality_Check	95	M-18
381	Welding	57	M-11
382	Assembly	10	M-18
382	Welding	31	M-4
383	Quality_Check	6	M-18
383	Welding	76	M-12
384	Assembly	3	M-18
384	Quality_Check	44	M-17
385	Cutting	63	M-1
385	Quality_Check	44	M-7
385	Welding	56	M-14
386	Assembly	32	M-10
386	Quality_Check	90	M-8
387	Cutting	26	M-3
387	Packaging	67	M-3
387	Quality_Check	7	M-13
387	Welding	56	M-20
388	Cutting	8	M-12
388	Packaging	9	M-5
389	Quality_Check	105	M-6
389	Welding	15	M-9
390	Cutting	57	M-13
390	Packaging	107	M-11
390	Quality_Check	103	M-4
390	Welding	72	M-7
391	Assembly	57	M-7
391	Cutting	75	M-9
391	Quality_Check	8	M-3
392	Packaging	57	M-6
392	Quality_Check	113	M-4
392	Welding	1	M-5
393	Quality_Check	12	M-19
393	Welding	47	M-2
394	Cutting	80	M-12
394	Welding	58	M-5
395	Assembly	54	M-12
395	Quality_Check	18	M-8
395	Welding	83	M-6
396	Cutting	83	M-8
396	Quality_Check	46	M-13
396	Welding	47	M-7
397	Assembly	18	M-15
397	Cutting	62	M-1
397	Packaging	114	M-4
397	Quality_Check	110	M-15
397	Welding	84	M-8
398	Assembly	38	M-3
398	Cutting	34	M-8
398	Packaging	5	M-4
398	Quality_Check	99	M-15
398	Welding	58	M-12
399	Assembly	113	M-7
399	Cutting	5	M-14
399	Packaging	86	M-4
399	Quality_Check	120	M-8
399	Welding	4	M-8
400	Cutting	109	M-15
400	Packaging	15	M-3
400	Welding	112	M-9
401	Cutting	71	M-4
401	Quality_Check	42	M-9
401	Welding	82	M-3
402	Packaging	120	M-1
402	Quality_Check	55	M-6
403	Cutting	25	M-12
403	Quality_Check	49	M-16
404	Packaging	57	M-20
404	Quality_Check	57	M-12
404	Welding	36	M-8
405	Assembly	92	M-1
405	Cutting	102	M-5
405	Packaging	70	M-19
405	Quality_Check	39	M-10
405	Welding	41	M-3
406	Assembly	120	M-16
406	Cutting	49	M-3
406	Welding	112	M-12
407	Assembly	69	M-15
407	Cutting	59	M-8
407	Packaging	110	M-7
408	Assembly	29	M-20
408	Cutting	95	M-1
408	Packaging	51	M-1
408	Quality_Check	85	M-6
409	Assembly	20	M-9
409	Packaging	25	M-9
409	Quality_Check	51	M-18
409	Welding	96	M-5
410	Assembly	32	M-8
410	Packaging	72	M-2
410	Welding	98	M-6
411	Packaging	94	M-9
411	Quality_Check	47	M-5
412	Assembly	25	M-14
412	Cutting	64	M-3
412	Packaging	63	M-6
412	Quality_Check	16	M-1
413	Packaging	66	M-17
413	Quality_Check	19	M-15
414	Packaging	54	M-19
414	Quality_Check	39	M-14
414	Welding	9	M-19
415	Assembly	83	M-17
415	Cutting	110	M-7
415	Packaging	73	M-1
415	Quality_Check	4	M-20
415	Welding	55	M-3
416	Assembly	24	M-8
416	Cutting	94	M-13
416	Packaging	43	M-18
416	Quality_Check	73	M-8
416	Welding	100	M-3
417	Assembly	57	M-17
417	Packaging	58	M-4
417	Quality_Check	46	M-7
417	Welding	83	M-5
418	Packaging	106	M-11
418	Quality_Check	9	M-16
418	Welding	81	M-12
419	Assembly	19	M-10
419	Cutting	40	M-12
419	Packaging	67	M-9
419	Quality_Check	42	M-8
419	Welding	90	M-12
420	Cutting	1	M-7
420	Quality_Check	57	M-20
420	Welding	95	M-18
421	Cutting	11	M-8
421	Packaging	57	M-6
421	Quality_Check	48	M-6
421	Welding	57	M-8
422	Cutting	11	M-3
422	Packaging	40	M-5
423	Assembly	11	M-9
423	Cutting	112	M-9
423	Packaging	75	M-2
423	Quality_Check	31	M-9
423	Welding	64	M-14
424	Cutting	57	M-5
424	Packaging	74	M-11
425	Assembly	98	M-13
425	Cutting	8	M-16
425	Packaging	65	M-1
425	Quality_Check	14	M-3
425	Welding	48	M-10
426	Assembly	49	M-20
426	Packaging	101	M-5
426	Quality_Check	13	M-16
427	Assembly	17	M-15
427	Packaging	51	M-9
428	Assembly	39	M-6
428	Cutting	106	M-20
428	Packaging	48	M-1
428	Quality_Check	64	M-7
428	Welding	46	M-17
429	Cutting	76	M-10
429	Packaging	47	M-15
429	Welding	30	M-2
430	Assembly	34	M-8
430	Cutting	50	M-5
430	Packaging	73	M-17
430	Quality_Check	108	M-1
430	Welding	65	M-2
431	Cutting	69	M-3
431	Packaging	17	M-3
431	Welding	82	M-16
432	Assembly	104	M-11
432	Cutting	85	M-18
432	Packaging	112	M-14
432	Quality_Check	105	M-11
432	Welding	3	M-4
433	Assembly	11	M-5
433	Cutting	6	M-15
433	Packaging	7	M-11
433	Quality_Check	101	M-17
433	Welding	57	M-10
434	Assembly	51	M-6
434	Cutting	17	M-3
434	Packaging	70	M-6
434	Quality_Check	94	M-6
434	Welding	89	M-14
435	Assembly	37	M-20
435	Cutting	56	M-13
435	Quality_Check	111	M-8
435	Welding	19	M-3
436	Cutting	57	M-9
436	Packaging	115	M-4
436	Quality_Check	23	M-7
436	Welding	76	M-8
437	Assembly	38	M-14
437	Cutting	78	M-1
437	Packaging	49	M-19
437	Quality_Check	55	M-20
437	Welding	4	M-1
438	Cutting	48	M-11
438	Welding	58	M-12
439	Assembly	95	M-19
439	Packaging	48	M-1
439	Quality_Check	52	M-2
439	Welding	62	M-4
440	Assembly	119	M-11
440	Packaging	68	M-5
440	Welding	87	M-14
441	Packaging	4	M-12
441	Quality_Check	25	M-18
441	Welding	34	M-11
442	Packaging	76	M-16
442	Quality_Check	108	M-7
443	Assembly	57	M-1
443	Cutting	48	M-12
443	Packaging	8	M-20
443	Welding	20	M-11
444	Cutting	92	M-10
444	Quality_Check	40	M-15
445	Assembly	7	M-16
445	Cutting	104	M-14
445	Packaging	17	M-20
445	Quality_Check	78	M-10
445	Welding	80	M-19
446	Assembly	43	M-12
446	Packaging	82	M-4
447	Packaging	99	M-3
447	Quality_Check	57	M-5
448	Packaging	81	M-4
448	Quality_Check	4	M-8
448	Welding	46	M-20
449	Assembly	73	M-10
449	Cutting	37	M-16
449	Packaging	74	M-17
449	Quality_Check	96	M-7
450	Assembly	32	M-6
450	Quality_Check	57	M-18
451	Packaging	3	M-2
451	Welding	43	M-17
452	Assembly	29	M-18
452	Packaging	120	M-15
453	Assembly	102	M-1
453	Packaging	98	M-5
453	Welding	56	M-20
454	Assembly	3	M-3
454	Cutting	32	M-8
454	Packaging	55	M-8
454	Quality_Check	57	M-11
455	Assembly	18	M-15
455	Cutting	98	M-17
455	Packaging	45	M-9
456	Cutting	7	M-18
456	Quality_Check	103	M-3
457	Assembly	76	M-14
457	Cutting	94	M-12
457	Packaging	48	M-6
457	Quality_Check	101	M-10
457	Welding	52	M-7
458	Assembly	26	M-7
458	Cutting	37	M-14
458	Packaging	70	M-4
458	Quality_Check	119	M-10
459	Assembly	118	M-6
459	Cutting	80	M-13
459	Packaging	120	M-5
459	Quality_Check	40	M-16
459	Welding	49	M-3
460	Cutting	75	M-12
460	Quality_Check	80	M-14
461	Assembly	112	M-12
461	Cutting	66	M-6
461	Packaging	57	M-5
461	Quality_Check	120	M-13
461	Welding	100	M-20
462	Cutting	24	M-1
462	Packaging	63	M-4
462	Quality_Check	77	M-6
462	Welding	93	M-6
463	Assembly	73	M-16
463	Packaging	57	M-12
463	Quality_Check	83	M-17
463	Welding	19	M-11
464	Assembly	75	M-10
464	Cutting	57	M-9
464	Quality_Check	89	M-3
464	Welding	82	M-18
465	Assembly	43	M-2
465	Cutting	69	M-8
465	Packaging	101	M-9
465	Quality_Check	25	M-5
465	Welding	46	M-2
466	Assembly	101	M-7
466	Cutting	12	M-5
467	Packaging	35	M-20
467	Quality_Check	98	M-3
468	Cutting	21	M-2
468	Quality_Check	57	M-11
468	Welding	4	M-6
469	Cutting	17	M-6
469	Packaging	81	M-7
469	Quality_Check	40	M-20
470	Assembly	113	M-1
470	Cutting	94	M-9
470	Quality_Check	104	M-8
470	Welding	34	M-6
471	Assembly	5	M-15
471	Quality_Check	57	M-15
471	Welding	57	M-15
472	Assembly	30	M-1
472	Cutting	2	M-18
472	Packaging	118	M-17
472	Quality_Check	34	M-13
472	Welding	26	M-16
473	Quality_Check	87	M-14
473	Welding	38	M-19
474	Assembly	44	M-20
474	Packaging	57	M-19
474	Quality_Check	38	M-9
474	Welding	73	M-11
475	Assembly	11	M-19
475	Cutting	28	M-14
475	Packaging	60	M-3
475	Welding	115	M-2
476	Assembly	55	M-3
476	Cutting	101	M-15
476	Packaging	19	M-20
476	Quality_Check	86	M-9
476	Welding	24	M-4
477	Assembly	120	M-17
477	Cutting	56	M-9
477	Packaging	99	M-19
477	Quality_Check	84	M-7
477	Welding	44	M-3
478	Assembly	3	M-20
478	Packaging	23	M-12
478	Quality_Check	20	M-2
478	Welding	27	M-10
479	Assembly	112	M-1
479	Cutting	108	M-20
479	Packaging	110	M-3
479	Quality_Check	57	M-7
479	Welding	12	M-3
480	Assembly	56	M-11
480	Cutting	32	M-6
480	Packaging	47	M-16
480	Welding	37	M-17
481	Cutting	88	M-18
481	Packaging	67	M-3
481	Welding	46	M-6
482	Assembly	5	M-13
482	Cutting	49	M-15
482	Packaging	113	M-17
482	Quality_Check	31	M-17
482	Welding	40	M-9
483	Packaging	93	M-6
483	Welding	25	M-16
484	Assembly	84	M-13
484	Cutting	18	M-5
484	Packaging	77	M-4
484	Quality_Check	117	M-19
484	Welding	74	M-6
485	Assembly	107	M-4
485	Cutting	84	M-19
485	Packaging	70	M-1
485	Quality_Check	62	M-15
485	Welding	71	M-7
486	Assembly	38	M-10
486	Cutting	6	M-14
486	Quality_Check	82	M-7
486	Welding	65	M-8
487	Assembly	42	M-17
487	Cutting	119	M-4
488	Cutting	39	M-19
488	Packaging	2	M-14
488	Welding	57	M-9
489	Packaging	96	M-12
489	Welding	57	M-17
490	Assembly	43	M-4
490	Cutting	47	M-4
490	Packaging	58	M-19
491	Cutting	27	M-14
491	Packaging	98	M-4
491	Quality_Check	7	M-20
491	Welding	59	M-17
492	Assembly	84	M-9
492	Cutting	88	M-6
492	Packaging	85	M-12
492	Quality_Check	24	M-12
493	Assembly	28	M-4
493	Cutting	69	M-17
493	Packaging	21	M-6
494	Packaging	95	M-15
494	Quality_Check	57	M-2
495	Assembly	81	M-8
495	Cutting	13	M-16
495	Quality_Check	57	M-8
496	Assembly	57	M-20
496	Cutting	36	M-7
496	Packaging	7	M-9
496	Quality_Check	2	M-15
496	Welding	118	M-8
497	Cutting	98	M-10
497	Welding	76	M-3
498	Packaging	52	M-5
498	Quality_Check	34	M-10
499	Assembly	119	M-2
499	Cutting	21	M-6
499	Packaging	4	M-10
499	Quality_Check	75	M-2
499	Welding	1	M-16
500	Assembly	33	M-8
500	Packaging	120	M-13
\.


--
-- Data for Name: import_error; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.import_error (id, "timestamp", filename, stacktrace, processor_subdir) FROM stdin;
\.


--
-- Data for Name: job; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.job (id, dag_id, state, job_type, start_date, end_date, latest_heartbeat, executor_class, hostname, unixname) FROM stdin;
3	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:31:27.281641+00	2026-07-06 14:31:27.637171+00	2026-07-06 14:31:27.248765+00	\N	284736e179d6	airflow
2	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:31:27.280676+00	2026-07-06 14:31:27.637884+00	2026-07-06 14:31:27.251836+00	\N	284736e179d6	airflow
5	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:36:28.189754+00	2026-07-06 14:36:28.950694+00	2026-07-06 14:36:28.173629+00	\N	284736e179d6	airflow
4	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:36:28.189015+00	2026-07-06 14:36:28.954466+00	2026-07-06 14:36:28.175499+00	\N	284736e179d6	airflow
21	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:29.900634+00	2026-07-06 14:41:30.343736+00	2026-07-06 14:41:29.886677+00	\N	5ead4c3fd35c	airflow
22	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:29.90223+00	2026-07-06 14:41:30.34521+00	2026-07-06 14:41:29.886182+00	\N	5ead4c3fd35c	airflow
23	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:31.064576+00	2026-07-06 14:41:31.86337+00	2026-07-06 14:41:31.046446+00	\N	5ead4c3fd35c	airflow
24	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:31.06268+00	2026-07-06 14:41:31.915257+00	2026-07-06 14:41:31.044543+00	\N	5ead4c3fd35c	airflow
26	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:31.07632+00	2026-07-06 14:41:31.935238+00	2026-07-06 14:41:31.055959+00	\N	5ead4c3fd35c	airflow
25	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:31.072151+00	2026-07-06 14:41:31.935419+00	2026-07-06 14:41:31.058679+00	\N	5ead4c3fd35c	airflow
28	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:31.093195+00	2026-07-06 14:41:31.962604+00	2026-07-06 14:41:31.06857+00	\N	5ead4c3fd35c	airflow
27	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:41:31.086655+00	2026-07-06 14:41:32.043813+00	2026-07-06 14:41:31.065541+00	\N	5ead4c3fd35c	airflow
6	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:38:12.615298+00	2026-07-06 14:38:12.931922+00	2026-07-06 14:38:12.601042+00	\N	284736e179d6	airflow
39	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:46:32.840103+00	2026-07-06 14:46:33.452728+00	2026-07-06 14:46:32.823907+00	\N	5ead4c3fd35c	airflow
38	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:46:32.842243+00	2026-07-06 14:46:33.462704+00	2026-07-06 14:46:32.827642+00	\N	5ead4c3fd35c	airflow
37	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:46:32.839161+00	2026-07-06 14:46:33.469329+00	2026-07-06 14:46:32.823549+00	\N	5ead4c3fd35c	airflow
36	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:46:32.839161+00	2026-07-06 14:46:33.482668+00	2026-07-06 14:46:32.823548+00	\N	5ead4c3fd35c	airflow
41	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:46:32.853606+00	2026-07-06 14:46:33.505727+00	2026-07-06 14:46:32.837159+00	\N	5ead4c3fd35c	airflow
40	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:46:32.851673+00	2026-07-06 14:46:33.511845+00	2026-07-06 14:46:32.831195+00	\N	5ead4c3fd35c	airflow
49	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:51:33.894481+00	2026-07-06 14:51:34.410912+00	2026-07-06 14:51:33.880964+00	\N	5ead4c3fd35c	airflow
48	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:51:33.892465+00	2026-07-06 14:51:34.410913+00	2026-07-06 14:51:33.878621+00	\N	5ead4c3fd35c	airflow
9	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:18.996469+00	2026-07-06 14:39:19.336519+00	2026-07-06 14:39:18.985887+00	\N	5ead4c3fd35c	airflow
50	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:51:33.895439+00	2026-07-06 14:51:34.422107+00	2026-07-06 14:51:33.880816+00	\N	5ead4c3fd35c	airflow
51	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:51:33.896319+00	2026-07-06 14:51:34.421846+00	2026-07-06 14:51:33.880011+00	\N	5ead4c3fd35c	airflow
52	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:51:33.901918+00	2026-07-06 14:51:34.43532+00	2026-07-06 14:51:33.879774+00	\N	5ead4c3fd35c	airflow
12	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:20.09536+00	2026-07-06 14:39:20.526973+00	2026-07-06 14:39:20.079227+00	\N	5ead4c3fd35c	airflow
53	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:51:33.908676+00	2026-07-06 14:51:34.443609+00	2026-07-06 14:51:33.89152+00	\N	5ead4c3fd35c	airflow
11	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:20.091065+00	2026-07-06 14:39:20.527461+00	2026-07-06 14:39:20.073108+00	\N	5ead4c3fd35c	airflow
10	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:20.080644+00	2026-07-06 14:39:20.547157+00	2026-07-06 14:39:20.06728+00	\N	5ead4c3fd35c	airflow
29	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:43:13.935127+00	2026-07-06 14:43:14.387187+00	2026-07-06 14:43:13.917427+00	\N	5ead4c3fd35c	airflow
32	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:43:15.34769+00	2026-07-06 14:43:15.688934+00	2026-07-06 14:43:15.331501+00	\N	5ead4c3fd35c	airflow
30	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:43:15.334697+00	2026-07-06 14:43:15.709989+00	2026-07-06 14:43:15.321974+00	\N	5ead4c3fd35c	airflow
13	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:50.490441+00	2026-07-06 14:39:50.909076+00	2026-07-06 14:39:50.474723+00	\N	5ead4c3fd35c	airflow
31	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:43:15.343531+00	2026-07-06 14:43:15.728024+00	2026-07-06 14:43:15.329701+00	\N	5ead4c3fd35c	airflow
14	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:51.216528+00	2026-07-06 14:39:51.754939+00	2026-07-06 14:39:51.190447+00	\N	5ead4c3fd35c	airflow
16	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:51.234098+00	2026-07-06 14:39:51.763181+00	2026-07-06 14:39:51.19679+00	\N	5ead4c3fd35c	airflow
15	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:51.224198+00	2026-07-06 14:39:51.772018+00	2026-07-06 14:39:51.194753+00	\N	5ead4c3fd35c	airflow
17	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:52.316908+00	2026-07-06 14:39:52.753405+00	2026-07-06 14:39:52.303868+00	\N	5ead4c3fd35c	airflow
18	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:53.509742+00	2026-07-06 14:39:53.920547+00	2026-07-06 14:39:53.493634+00	\N	5ead4c3fd35c	airflow
19	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:53.523447+00	2026-07-06 14:39:53.933295+00	2026-07-06 14:39:53.499815+00	\N	5ead4c3fd35c	airflow
20	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:39:53.534189+00	2026-07-06 14:39:53.942171+00	2026-07-06 14:39:53.50673+00	\N	5ead4c3fd35c	airflow
8	\N	running	SchedulerJob	2026-07-06 14:39:05.384238+00	\N	2026-07-06 15:20:08.263967+00	\N	5ead4c3fd35c	airflow
1	\N	failed	SchedulerJob	2026-07-06 14:30:55.228837+00	\N	2026-07-06 14:38:35.751801+00	\N	284736e179d6	airflow
7	\N	failed	SchedulerJob	2026-07-06 14:38:46.946581+00	\N	2026-07-06 14:38:51.580983+00	\N	f1e29aa5f47f	airflow
43	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:48:16.151805+00	2026-07-06 14:48:16.575845+00	2026-07-06 14:48:16.138626+00	\N	5ead4c3fd35c	airflow
42	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:48:16.150642+00	2026-07-06 14:48:16.57779+00	2026-07-06 14:48:16.13786+00	\N	5ead4c3fd35c	airflow
44	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:48:16.156073+00	2026-07-06 14:48:16.590162+00	2026-07-06 14:48:16.138829+00	\N	5ead4c3fd35c	airflow
34	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:44:21.016105+00	2026-07-06 14:44:21.439844+00	2026-07-06 14:44:21.001806+00	\N	5ead4c3fd35c	airflow
33	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:44:21.005762+00	2026-07-06 14:44:21.441167+00	2026-07-06 14:44:20.992582+00	\N	5ead4c3fd35c	airflow
35	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:44:21.019295+00	2026-07-06 14:44:21.459571+00	2026-07-06 14:44:20.999554+00	\N	5ead4c3fd35c	airflow
57	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:04:40.834869+00	2026-07-06 15:04:41.140167+00	2026-07-06 15:04:40.820683+00	\N	5ead4c3fd35c	airflow
54	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:53:16.901882+00	2026-07-06 14:53:17.340137+00	2026-07-06 14:53:16.888993+00	\N	5ead4c3fd35c	airflow
56	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:53:16.914947+00	2026-07-06 14:53:17.34319+00	2026-07-06 14:53:16.899049+00	\N	5ead4c3fd35c	airflow
47	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:49:21.801604+00	2026-07-06 14:49:22.274919+00	2026-07-06 14:49:21.78338+00	\N	5ead4c3fd35c	airflow
46	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:49:21.7973+00	2026-07-06 14:49:22.277227+00	2026-07-06 14:49:21.778343+00	\N	5ead4c3fd35c	airflow
45	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:49:21.791142+00	2026-07-06 14:49:22.302486+00	2026-07-06 14:49:21.774929+00	\N	5ead4c3fd35c	airflow
55	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 14:53:16.91095+00	2026-07-06 14:53:17.344069+00	2026-07-06 14:53:16.895396+00	\N	5ead4c3fd35c	airflow
61	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:49.415992+00	2026-07-06 15:05:49.837348+00	2026-07-06 15:05:49.399895+00	\N	5ead4c3fd35c	airflow
58	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:04:41.552673+00	2026-07-06 15:04:41.932673+00	2026-07-06 15:04:41.537596+00	\N	5ead4c3fd35c	airflow
60	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:04:41.565366+00	2026-07-06 15:04:41.939586+00	2026-07-06 15:04:41.546377+00	\N	5ead4c3fd35c	airflow
59	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:04:41.56188+00	2026-07-06 15:04:41.945246+00	2026-07-06 15:04:41.54273+00	\N	5ead4c3fd35c	airflow
82	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:42.183599+00	2026-07-06 15:18:42.566311+00	2026-07-06 15:18:42.168267+00	\N	5ead4c3fd35c	airflow
79	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:14:43.979329+00	2026-07-06 15:14:44.946042+00	2026-07-06 15:14:43.945164+00	\N	5ead4c3fd35c	airflow
63	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:50.462774+00	2026-07-06 15:05:50.920354+00	2026-07-06 15:05:50.445072+00	\N	5ead4c3fd35c	airflow
62	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:50.458113+00	2026-07-06 15:05:50.922547+00	2026-07-06 15:05:50.4423+00	\N	5ead4c3fd35c	airflow
64	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:50.469458+00	2026-07-06 15:05:50.944674+00	2026-07-06 15:05:50.450405+00	\N	5ead4c3fd35c	airflow
81	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:14:43.994724+00	2026-07-06 15:14:44.985619+00	2026-07-06 15:14:43.955088+00	\N	5ead4c3fd35c	airflow
65	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:51.524772+00	2026-07-06 15:05:51.950091+00	2026-07-06 15:05:51.509654+00	\N	5ead4c3fd35c	airflow
80	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:14:43.991367+00	2026-07-06 15:14:45.003544+00	2026-07-06 15:14:43.949039+00	\N	5ead4c3fd35c	airflow
83	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:43.422239+00	2026-07-06 15:18:43.935175+00	2026-07-06 15:18:43.406566+00	\N	5ead4c3fd35c	airflow
85	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:43.438085+00	2026-07-06 15:18:43.993803+00	2026-07-06 15:18:43.415816+00	\N	5ead4c3fd35c	airflow
84	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:43.430168+00	2026-07-06 15:18:43.994871+00	2026-07-06 15:18:43.410588+00	\N	5ead4c3fd35c	airflow
86	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:44.511429+00	2026-07-06 15:18:44.860483+00	2026-07-06 15:18:44.497454+00	\N	5ead4c3fd35c	airflow
68	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.793625+00	2026-07-06 15:05:54.056014+00	2026-07-06 15:05:52.763933+00	\N	5ead4c3fd35c	airflow
69	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.83763+00	2026-07-06 15:05:54.11851+00	2026-07-06 15:05:52.813104+00	\N	5ead4c3fd35c	airflow
66	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.767211+00	2026-07-06 15:05:54.118373+00	2026-07-06 15:05:52.743279+00	\N	5ead4c3fd35c	airflow
70	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.862967+00	2026-07-06 15:05:54.148136+00	2026-07-06 15:05:52.83477+00	\N	5ead4c3fd35c	airflow
67	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.77992+00	2026-07-06 15:05:54.217542+00	2026-07-06 15:05:52.738563+00	\N	5ead4c3fd35c	airflow
71	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.897779+00	2026-07-06 15:05:54.252088+00	2026-07-06 15:05:52.869422+00	\N	5ead4c3fd35c	airflow
72	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.954629+00	2026-07-06 15:05:54.355761+00	2026-07-06 15:05:52.917329+00	\N	5ead4c3fd35c	airflow
75	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:53.07658+00	2026-07-06 15:05:54.369555+00	2026-07-06 15:05:53.027575+00	\N	5ead4c3fd35c	airflow
73	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:52.995256+00	2026-07-06 15:05:54.39626+00	2026-07-06 15:05:52.964295+00	\N	5ead4c3fd35c	airflow
74	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:05:53.055489+00	2026-07-06 15:05:54.431298+00	2026-07-06 15:05:53.01433+00	\N	5ead4c3fd35c	airflow
78	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:09:42.767028+00	2026-07-06 15:09:43.154911+00	2026-07-06 15:09:42.749348+00	\N	5ead4c3fd35c	airflow
76	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:09:42.73068+00	2026-07-06 15:09:43.157889+00	2026-07-06 15:09:42.715928+00	\N	5ead4c3fd35c	airflow
77	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:09:42.738359+00	2026-07-06 15:09:43.169702+00	2026-07-06 15:09:42.716056+00	\N	5ead4c3fd35c	airflow
91	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.087474+00	2026-07-06 15:18:48.867948+00	2026-07-06 15:18:46.045568+00	\N	5ead4c3fd35c	airflow
88	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.042224+00	2026-07-06 15:18:48.876008+00	2026-07-06 15:18:45.965836+00	\N	5ead4c3fd35c	airflow
89	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.068366+00	2026-07-06 15:18:48.940337+00	2026-07-06 15:18:46.031528+00	\N	5ead4c3fd35c	airflow
93	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.211683+00	2026-07-06 15:18:48.954787+00	2026-07-06 15:18:46.169405+00	\N	5ead4c3fd35c	airflow
87	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:45.946406+00	2026-07-06 15:18:48.998888+00	2026-07-06 15:18:45.904733+00	\N	5ead4c3fd35c	airflow
90	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.068925+00	2026-07-06 15:18:49.008314+00	2026-07-06 15:18:46.033017+00	\N	5ead4c3fd35c	airflow
92	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.163463+00	2026-07-06 15:18:49.129919+00	2026-07-06 15:18:46.130249+00	\N	5ead4c3fd35c	airflow
95	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.478457+00	2026-07-06 15:18:49.14158+00	2026-07-06 15:18:46.392233+00	\N	5ead4c3fd35c	airflow
94	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.361148+00	2026-07-06 15:18:49.141965+00	2026-07-06 15:18:46.279522+00	\N	5ead4c3fd35c	airflow
96	indusflow_data_pipeline	success	LocalTaskJob	2026-07-06 15:18:46.465741+00	2026-07-06 15:18:49.187412+00	2026-07-06 15:18:46.413158+00	\N	5ead4c3fd35c	airflow
\.


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.log (id, dttm, dag_id, task_id, map_index, event, execution_date, run_id, owner, owner_display_name, extra) FROM stdin;
1	2026-07-06 14:30:54.332911+00	\N	\N	\N	cli_scheduler	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
2	2026-07-06 14:30:55.059037+00	\N	\N	\N	cli_users_create	\N	\N	airflow	\N	{"host_name": "7a28f10c7ff3", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'admin', '--firstname', 'Admin', '--lastname', 'Admin', '--role', 'Admin', '--email', 'admin@example.com', '--password', '********']"}
3	2026-07-06 14:30:57.868594+00	\N	\N	\N	cli_webserver	\N	\N	airflow	\N	{"host_name": "7a28f10c7ff3", "full_command": "['/home/airflow/.local/bin/airflow', 'webserver']"}
4	2026-07-06 14:31:19.465906+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
5	2026-07-06 14:31:24.753132+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
6	2026-07-06 14:31:25.740585+00	indusflow_data_pipeline	\N	\N	trigger	\N	\N	admin	Admin Admin	{"redirect_url": "/home"}
7	2026-07-06 14:31:26.156708+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
9	2026-07-06 14:31:26.872817+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
8	2026-07-06 14:31:26.87287+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
10	2026-07-06 14:31:27.338045+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
11	2026-07-06 14:31:27.336502+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
12	2026-07-06 14:31:27.351417+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
13	2026-07-06 14:31:27.354441+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
14	2026-07-06 14:31:27.5772+00	indusflow_data_pipeline	init_db_schema	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
15	2026-07-06 14:31:27.577482+00	indusflow_data_pipeline	init_db_schema	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
16	2026-07-06 14:31:29.758268+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
17	2026-07-06 14:31:59.813869+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
18	2026-07-06 14:32:10.093207+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
19	2026-07-06 14:35:56.36968+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
20	2026-07-06 14:36:07.253509+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
21	2026-07-06 14:36:27.94158+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
22	2026-07-06 14:36:27.941579+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
23	2026-07-06 14:36:28.240648+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
24	2026-07-06 14:36:28.245118+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
25	2026-07-06 14:36:28.254922+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
26	2026-07-06 14:36:28.259465+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
27	2026-07-06 14:36:28.879768+00	indusflow_data_pipeline	init_db_schema	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
28	2026-07-06 14:36:28.891917+00	indusflow_data_pipeline	init_db_schema	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
29	2026-07-06 14:37:49.599809+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
30	2026-07-06 14:38:11.690175+00	indusflow_data_pipeline	\N	\N	cli_dag_trigger	\N	\N	airflow	\N	{"host_name": "7a28f10c7ff3", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'trigger', 'indusflow_data_pipeline']"}
31	2026-07-06 14:38:12.233365+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
32	2026-07-06 14:38:12.671476+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
33	2026-07-06 14:38:12.684535+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "284736e179d6", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
34	2026-07-06 14:38:12.868255+00	indusflow_data_pipeline	init_db_schema	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
35	2026-07-06 14:38:16.88231+00	indusflow_data_pipeline	\N	\N	cli_dag_list_dag_runs	\N	\N	airflow	\N	{"host_name": "7a28f10c7ff3", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'list-runs', '-d', 'indusflow_data_pipeline']"}
36	2026-07-06 14:38:29.729906+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
37	2026-07-06 14:38:42.73162+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "f1e29aa5f47f", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}
38	2026-07-06 14:38:46.03342+00	\N	\N	\N	cli_scheduler	\N	\N	airflow	\N	{"host_name": "f1e29aa5f47f", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
40	2026-07-06 14:39:01.18165+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}
39	2026-07-06 14:39:01.180957+00	\N	\N	\N	cli_check	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'check']"}
41	2026-07-06 14:39:02.734587+00	\N	\N	\N	cli_migratedb	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'db', 'migrate']"}
42	2026-07-06 14:39:04.387233+00	\N	\N	\N	cli_scheduler	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
43	2026-07-06 14:39:06.647018+00	\N	\N	\N	cli_users_create	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'users', 'create', '--username', 'admin', '--firstname', 'Admin', '--lastname', 'Admin', '--role', 'Admin', '--email', 'admin@example.com', '--password', '********']"}
44	2026-07-06 14:39:08.757486+00	\N	\N	\N	cli_webserver	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'webserver']"}
130	2026-07-06 14:41:31.853902+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
45	2026-07-06 14:39:17.499234+00	indusflow_data_pipeline	\N	\N	cli_dag_trigger	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'trigger', 'indusflow_data_pipeline']"}
46	2026-07-06 14:39:18.753627+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
47	2026-07-06 14:39:19.037939+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
48	2026-07-06 14:39:19.049467+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
49	2026-07-06 14:39:19.269706+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
50	2026-07-06 14:39:19.852333+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
51	2026-07-06 14:39:19.851197+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
52	2026-07-06 14:39:19.851037+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
53	2026-07-06 14:39:20.125184+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
54	2026-07-06 14:39:20.137525+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
55	2026-07-06 14:39:20.142647+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
56	2026-07-06 14:39:20.154386+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
57	2026-07-06 14:39:20.162446+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
58	2026-07-06 14:39:20.174827+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
59	2026-07-06 14:39:20.473238+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
60	2026-07-06 14:39:20.478455+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
61	2026-07-06 14:39:20.49332+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
62	2026-07-06 14:39:27.734639+00	indusflow_data_pipeline	\N	\N	cli_dag_list_dag_runs	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'list-runs', '-d', 'indusflow_data_pipeline']"}
63	2026-07-06 14:39:49.477095+00	indusflow_data_pipeline	\N	\N	cli_dag_trigger	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'trigger', 'indusflow_data_pipeline']"}
64	2026-07-06 14:39:50.18406+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
65	2026-07-06 14:39:50.549826+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
66	2026-07-06 14:39:50.565087+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
67	2026-07-06 14:39:50.856871+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
69	2026-07-06 14:39:50.962967+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
68	2026-07-06 14:39:50.962857+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
70	2026-07-06 14:39:50.964088+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
71	2026-07-06 14:39:51.280406+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
72	2026-07-06 14:39:51.296163+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
73	2026-07-06 14:39:51.298406+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
74	2026-07-06 14:39:51.303512+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
75	2026-07-06 14:39:51.319541+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
76	2026-07-06 14:39:51.321992+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
77	2026-07-06 14:39:51.719896+00	indusflow_data_pipeline	ingest_usines	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
78	2026-07-06 14:39:51.720133+00	indusflow_data_pipeline	ingest_clients	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
79	2026-07-06 14:39:51.721351+00	indusflow_data_pipeline	ingest_produits	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
80	2026-07-06 14:39:52.102425+00	indusflow_data_pipeline	ingest_cycles_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
81	2026-07-06 14:39:52.359912+00	indusflow_data_pipeline	ingest_cycles_production	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
82	2026-07-06 14:39:52.371872+00	indusflow_data_pipeline	ingest_cycles_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
83	2026-07-06 14:39:52.618463+00	indusflow_data_pipeline	ingest_cycles_production	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
84	2026-07-06 14:39:53.216262+00	indusflow_data_pipeline	ingest_etapes_fabrication	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
85	2026-07-06 14:39:53.216782+00	indusflow_data_pipeline	ingest_logs_erreurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
86	2026-07-06 14:39:53.216309+00	indusflow_data_pipeline	ingest_capteurs_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
87	2026-07-06 14:39:53.587682+00	indusflow_data_pipeline	ingest_capteurs_machines	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
88	2026-07-06 14:39:53.597536+00	indusflow_data_pipeline	ingest_etapes_fabrication	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
89	2026-07-06 14:39:53.601997+00	indusflow_data_pipeline	ingest_capteurs_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
90	2026-07-06 14:39:53.613885+00	indusflow_data_pipeline	ingest_logs_erreurs	-1	running	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
91	2026-07-06 14:39:53.61302+00	indusflow_data_pipeline	ingest_etapes_fabrication	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
92	2026-07-06 14:39:53.627632+00	indusflow_data_pipeline	ingest_logs_erreurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
93	2026-07-06 14:39:53.890254+00	indusflow_data_pipeline	ingest_capteurs_machines	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
94	2026-07-06 14:39:53.901366+00	indusflow_data_pipeline	ingest_etapes_fabrication	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
95	2026-07-06 14:39:53.906394+00	indusflow_data_pipeline	ingest_logs_erreurs	-1	success	2026-07-06 14:39:49+00	manual__2026-07-06T14:39:49+00:00	data_engineer	\N	\N
96	2026-07-06 14:40:14.602035+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
97	2026-07-06 14:40:19.710623+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
98	2026-07-06 14:40:28.397821+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
99	2026-07-06 14:40:41.267999+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
100	2026-07-06 14:40:57.395681+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
101	2026-07-06 14:41:04.766946+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
103	2026-07-06 14:41:29.644105+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
102	2026-07-06 14:41:29.644108+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
104	2026-07-06 14:41:29.961633+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
105	2026-07-06 14:41:29.963678+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
106	2026-07-06 14:41:29.97842+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
107	2026-07-06 14:41:29.977779+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
108	2026-07-06 14:41:30.309883+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
109	2026-07-06 14:41:30.309735+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
110	2026-07-06 14:41:30.739749+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
112	2026-07-06 14:41:30.740228+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
111	2026-07-06 14:41:30.740011+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
113	2026-07-06 14:41:30.742694+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
114	2026-07-06 14:41:30.744429+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
115	2026-07-06 14:41:30.746275+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
116	2026-07-06 14:41:31.115968+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
117	2026-07-06 14:41:31.11696+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
118	2026-07-06 14:41:31.124822+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
119	2026-07-06 14:41:31.137113+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
120	2026-07-06 14:41:31.139329+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
121	2026-07-06 14:41:31.13745+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
122	2026-07-06 14:41:31.144054+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
123	2026-07-06 14:41:31.160019+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
124	2026-07-06 14:41:31.156474+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
125	2026-07-06 14:41:31.162609+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
126	2026-07-06 14:41:31.190693+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
127	2026-07-06 14:41:31.190633+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
128	2026-07-06 14:41:31.82116+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
129	2026-07-06 14:41:31.835461+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
131	2026-07-06 14:41:31.877134+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
132	2026-07-06 14:41:31.895062+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
133	2026-07-06 14:41:31.978409+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
134	2026-07-06 14:43:13.215933+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
135	2026-07-06 14:43:13.993559+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
136	2026-07-06 14:43:14.009032+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
137	2026-07-06 14:43:14.323084+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
138	2026-07-06 14:43:15.086091+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
139	2026-07-06 14:43:15.085876+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
140	2026-07-06 14:43:15.087105+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
141	2026-07-06 14:43:15.376185+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
142	2026-07-06 14:43:15.388434+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
143	2026-07-06 14:43:15.392869+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
144	2026-07-06 14:43:15.395441+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
145	2026-07-06 14:43:15.406008+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
146	2026-07-06 14:43:15.410381+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
147	2026-07-06 14:43:15.645107+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
148	2026-07-06 14:43:15.65886+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
149	2026-07-06 14:43:15.657818+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
152	2026-07-06 14:44:20.728677+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
151	2026-07-06 14:44:20.728675+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
150	2026-07-06 14:44:20.728676+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
153	2026-07-06 14:44:21.056325+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
154	2026-07-06 14:44:21.063232+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
155	2026-07-06 14:44:21.071847+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
156	2026-07-06 14:44:21.076106+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
157	2026-07-06 14:44:21.086338+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
158	2026-07-06 14:44:21.094978+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
159	2026-07-06 14:44:21.391939+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
160	2026-07-06 14:44:21.39623+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
161	2026-07-06 14:44:21.402146+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
162	2026-07-06 14:46:32.503037+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
163	2026-07-06 14:46:32.500207+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
164	2026-07-06 14:46:32.500356+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
165	2026-07-06 14:46:32.501757+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
167	2026-07-06 14:46:32.502294+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
166	2026-07-06 14:46:32.500208+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
168	2026-07-06 14:46:32.897086+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
169	2026-07-06 14:46:32.899779+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
170	2026-07-06 14:46:32.898871+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
171	2026-07-06 14:46:32.903208+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
172	2026-07-06 14:46:32.918833+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
173	2026-07-06 14:46:32.913+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
174	2026-07-06 14:46:32.919147+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
175	2026-07-06 14:46:32.916214+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
176	2026-07-06 14:46:32.925525+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
177	2026-07-06 14:46:32.934289+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
178	2026-07-06 14:46:32.940334+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
179	2026-07-06 14:46:32.952654+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
180	2026-07-06 14:46:33.393605+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
181	2026-07-06 14:46:33.395188+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
182	2026-07-06 14:46:33.39567+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
183	2026-07-06 14:46:33.396763+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
184	2026-07-06 14:46:33.440423+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
185	2026-07-06 14:46:33.460364+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
187	2026-07-06 14:48:15.878367+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
188	2026-07-06 14:48:15.878642+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
186	2026-07-06 14:48:15.87837+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
189	2026-07-06 14:48:16.197799+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
190	2026-07-06 14:48:16.202107+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
191	2026-07-06 14:48:16.20875+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
192	2026-07-06 14:48:16.210314+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
193	2026-07-06 14:48:16.223837+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
194	2026-07-06 14:48:16.228665+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
195	2026-07-06 14:48:16.533647+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
196	2026-07-06 14:48:16.53639+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
197	2026-07-06 14:48:16.538053+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
198	2026-07-06 14:49:21.461325+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
199	2026-07-06 14:49:21.484352+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
200	2026-07-06 14:49:21.48367+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
201	2026-07-06 14:49:21.840764+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
202	2026-07-06 14:49:21.850454+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
203	2026-07-06 14:49:21.859329+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
204	2026-07-06 14:49:21.857222+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
205	2026-07-06 14:49:21.870625+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
206	2026-07-06 14:49:21.879964+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
207	2026-07-06 14:49:22.233538+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
208	2026-07-06 14:49:22.234444+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
209	2026-07-06 14:49:22.238171+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:39:17+00	manual__2026-07-06T14:39:17+00:00	data_engineer	\N	\N
210	2026-07-06 14:51:33.58057+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
211	2026-07-06 14:51:33.579322+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
213	2026-07-06 14:51:33.579326+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
214	2026-07-06 14:51:33.579333+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
212	2026-07-06 14:51:33.579358+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
215	2026-07-06 14:51:33.585129+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
216	2026-07-06 14:51:33.944358+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
217	2026-07-06 14:51:33.944409+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
218	2026-07-06 14:51:33.944448+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
219	2026-07-06 14:51:33.945422+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
220	2026-07-06 14:51:33.967974+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
221	2026-07-06 14:51:33.968143+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
222	2026-07-06 14:51:33.970064+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
223	2026-07-06 14:51:33.973727+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
224	2026-07-06 14:51:33.97959+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
225	2026-07-06 14:51:33.974595+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
226	2026-07-06 14:51:33.987151+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
227	2026-07-06 14:51:34.000904+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
228	2026-07-06 14:51:34.379485+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
229	2026-07-06 14:51:34.38049+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
230	2026-07-06 14:51:34.38221+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-05 00:00:00+00	scheduled__2026-07-05T00:00:00+00:00	data_engineer	\N	\N
231	2026-07-06 14:51:34.38953+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
232	2026-07-06 14:51:34.390617+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
233	2026-07-06 14:51:34.397576+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:31:25.743527+00	manual__2026-07-06T14:31:25.743527+00:00	data_engineer	\N	\N
235	2026-07-06 14:53:16.625184+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
234	2026-07-06 14:53:16.625189+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
236	2026-07-06 14:53:16.625187+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
237	2026-07-06 14:53:16.950457+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
238	2026-07-06 14:53:16.960446+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
239	2026-07-06 14:53:16.963761+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
240	2026-07-06 14:53:16.966703+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
241	2026-07-06 14:53:16.977791+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
242	2026-07-06 14:53:16.990331+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
243	2026-07-06 14:53:17.302547+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
244	2026-07-06 14:53:17.304644+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
245	2026-07-06 14:53:17.303451+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 14:38:12+00	manual__2026-07-06T14:38:12+00:00	data_engineer	\N	\N
246	2026-07-06 15:04:39.929763+00	indusflow_data_pipeline	\N	\N	cli_dag_trigger	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'trigger', 'indusflow_data_pipeline']"}
247	2026-07-06 15:04:40.537124+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
248	2026-07-06 15:04:40.876589+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
249	2026-07-06 15:04:40.888655+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
250	2026-07-06 15:04:41.07693+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
251	2026-07-06 15:04:41.326982+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
253	2026-07-06 15:04:41.327034+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
252	2026-07-06 15:04:41.326985+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
254	2026-07-06 15:04:41.595129+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
255	2026-07-06 15:04:41.607297+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
256	2026-07-06 15:04:41.612999+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
257	2026-07-06 15:04:41.613772+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
258	2026-07-06 15:04:41.625461+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
259	2026-07-06 15:04:41.629735+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
260	2026-07-06 15:04:41.893843+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
261	2026-07-06 15:04:41.904007+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
262	2026-07-06 15:04:41.905027+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
263	2026-07-06 15:04:52.945+00	indusflow_data_pipeline	\N	\N	cli_task_list	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'tasks', 'list', 'indusflow_data_pipeline']"}
264	2026-07-06 15:04:59.67198+00	indusflow_data_pipeline	\N	\N	cli_dag_list_dag_runs	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'list-runs', '-d', 'indusflow_data_pipeline']"}
265	2026-07-06 15:05:48.589357+00	indusflow_data_pipeline	\N	\N	cli_dag_trigger	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'trigger', 'indusflow_data_pipeline']"}
266	2026-07-06 15:05:49.092926+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
267	2026-07-06 15:05:49.486013+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
268	2026-07-06 15:05:49.503598+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
269	2026-07-06 15:05:49.789238+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
270	2026-07-06 15:05:50.200717+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
271	2026-07-06 15:05:50.200372+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
272	2026-07-06 15:05:50.204236+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
273	2026-07-06 15:05:50.501264+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
274	2026-07-06 15:05:50.51597+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
275	2026-07-06 15:05:50.514488+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
276	2026-07-06 15:05:50.526851+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
277	2026-07-06 15:05:50.529223+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
278	2026-07-06 15:05:50.544004+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
279	2026-07-06 15:05:50.886192+00	indusflow_data_pipeline	ingest_produits	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
280	2026-07-06 15:05:50.893743+00	indusflow_data_pipeline	ingest_clients	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
281	2026-07-06 15:05:50.900374+00	indusflow_data_pipeline	ingest_usines	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
282	2026-07-06 15:05:51.288839+00	indusflow_data_pipeline	ingest_cycles_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
283	2026-07-06 15:05:51.568491+00	indusflow_data_pipeline	ingest_cycles_production	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
284	2026-07-06 15:05:51.580425+00	indusflow_data_pipeline	ingest_cycles_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
285	2026-07-06 15:05:51.896467+00	indusflow_data_pipeline	ingest_cycles_production	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
286	2026-07-06 15:05:52.415747+00	indusflow_data_pipeline	ingest_cameras_qualite	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
287	2026-07-06 15:05:52.419748+00	indusflow_data_pipeline	ingest_etapes_fabrication	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
288	2026-07-06 15:05:52.415746+00	indusflow_data_pipeline	ingest_planning_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
289	2026-07-06 15:05:52.42535+00	indusflow_data_pipeline	ingest_logs_erreurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
290	2026-07-06 15:05:52.424535+00	indusflow_data_pipeline	ingest_maintenance_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
291	2026-07-06 15:05:52.425551+00	indusflow_data_pipeline	ingest_capteurs_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
292	2026-07-06 15:05:52.426453+00	indusflow_data_pipeline	ingest_alertes_monitoring	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
293	2026-07-06 15:05:52.438009+00	indusflow_data_pipeline	ingest_acces_utilisateurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
294	2026-07-06 15:05:52.439424+00	indusflow_data_pipeline	ingest_pieces_detachees	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
295	2026-07-06 15:05:52.438009+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
296	2026-07-06 15:05:52.85319+00	indusflow_data_pipeline	ingest_logs_erreurs	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
297	2026-07-06 15:05:52.866328+00	indusflow_data_pipeline	ingest_alertes_monitoring	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
298	2026-07-06 15:05:52.867248+00	indusflow_data_pipeline	ingest_cameras_qualite	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
299	2026-07-06 15:05:52.883167+00	indusflow_data_pipeline	ingest_logs_erreurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
300	2026-07-06 15:05:52.892538+00	indusflow_data_pipeline	ingest_alertes_monitoring	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
301	2026-07-06 15:05:52.903549+00	indusflow_data_pipeline	ingest_cameras_qualite	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
302	2026-07-06 15:05:52.918361+00	indusflow_data_pipeline	ingest_planning_production	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
303	2026-07-06 15:05:52.942555+00	indusflow_data_pipeline	ingest_pieces_detachees	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
304	2026-07-06 15:05:52.954121+00	indusflow_data_pipeline	ingest_planning_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
305	2026-07-06 15:05:52.98559+00	indusflow_data_pipeline	ingest_acces_utilisateurs	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
306	2026-07-06 15:05:52.976092+00	indusflow_data_pipeline	ingest_pieces_detachees	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
307	2026-07-06 15:05:53.016811+00	indusflow_data_pipeline	ingest_acces_utilisateurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
308	2026-07-06 15:05:53.053295+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
309	2026-07-06 15:05:53.078135+00	indusflow_data_pipeline	ingest_etapes_fabrication	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
310	2026-07-06 15:05:53.109315+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
311	2026-07-06 15:05:53.116223+00	indusflow_data_pipeline	ingest_etapes_fabrication	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
312	2026-07-06 15:05:53.352467+00	indusflow_data_pipeline	ingest_maintenance_machines	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
313	2026-07-06 15:05:53.35895+00	indusflow_data_pipeline	ingest_capteurs_machines	-1	running	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
314	2026-07-06 15:05:53.453021+00	indusflow_data_pipeline	ingest_capteurs_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
315	2026-07-06 15:05:53.467985+00	indusflow_data_pipeline	ingest_maintenance_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
316	2026-07-06 15:05:53.837609+00	indusflow_data_pipeline	ingest_alertes_monitoring	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
317	2026-07-06 15:05:53.930823+00	indusflow_data_pipeline	ingest_logs_erreurs	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
318	2026-07-06 15:05:54.011941+00	indusflow_data_pipeline	ingest_planning_production	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
319	2026-07-06 15:05:54.04694+00	indusflow_data_pipeline	ingest_pieces_detachees	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
320	2026-07-06 15:05:54.088116+00	indusflow_data_pipeline	ingest_cameras_qualite	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
321	2026-07-06 15:05:54.190493+00	indusflow_data_pipeline	ingest_acces_utilisateurs	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
322	2026-07-06 15:05:54.30275+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
323	2026-07-06 15:05:54.314007+00	indusflow_data_pipeline	ingest_maintenance_machines	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
324	2026-07-06 15:05:54.329975+00	indusflow_data_pipeline	ingest_etapes_fabrication	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
325	2026-07-06 15:05:54.36329+00	indusflow_data_pipeline	ingest_capteurs_machines	-1	success	2026-07-06 15:05:48+00	manual__2026-07-06T15:05:48+00:00	data_engineer	\N	\N
327	2026-07-06 15:09:42.479419+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
326	2026-07-06 15:09:42.479427+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
328	2026-07-06 15:09:42.4801+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
329	2026-07-06 15:09:42.777445+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
330	2026-07-06 15:09:42.786774+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
331	2026-07-06 15:09:42.790046+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
332	2026-07-06 15:09:42.806881+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
333	2026-07-06 15:09:42.826522+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
334	2026-07-06 15:09:42.841068+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
335	2026-07-06 15:09:43.089269+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
336	2026-07-06 15:09:43.102789+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
337	2026-07-06 15:09:43.136405+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
338	2026-07-06 15:11:06.870117+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
339	2026-07-06 15:14:43.637655+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
341	2026-07-06 15:14:43.637657+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
340	2026-07-06 15:14:43.637655+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
342	2026-07-06 15:14:44.043927+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
343	2026-07-06 15:14:44.062601+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
344	2026-07-06 15:14:44.064212+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
345	2026-07-06 15:14:44.079536+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
346	2026-07-06 15:14:44.084858+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
347	2026-07-06 15:14:44.107848+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
348	2026-07-06 15:14:44.890538+00	indusflow_data_pipeline	ingest_usines	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
349	2026-07-06 15:14:44.937492+00	indusflow_data_pipeline	ingest_clients	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
350	2026-07-06 15:14:44.938548+00	indusflow_data_pipeline	ingest_produits	-1	failed	2026-07-06 15:04:40+00	manual__2026-07-06T15:04:40+00:00	data_engineer	\N	\N
351	2026-07-06 15:15:51.387268+00	\N	\N	\N	blocked	\N	\N	admin	Admin Admin	{"dag_ids": "indusflow_data_pipeline"}
352	2026-07-06 15:18:40.935555+00	indusflow_data_pipeline	\N	\N	cli_dag_trigger	\N	\N	airflow	\N	{"host_name": "72fb75caf4f9", "full_command": "['/home/airflow/.local/bin/airflow', 'dags', 'trigger', 'indusflow_data_pipeline']"}
353	2026-07-06 15:18:41.928119+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
354	2026-07-06 15:18:42.229857+00	indusflow_data_pipeline	init_db_schema	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
355	2026-07-06 15:18:42.24271+00	indusflow_data_pipeline	init_db_schema	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
356	2026-07-06 15:18:42.528657+00	indusflow_data_pipeline	init_db_schema	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
357	2026-07-06 15:18:43.198305+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
359	2026-07-06 15:18:43.198201+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
358	2026-07-06 15:18:43.198269+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
360	2026-07-06 15:18:43.466048+00	indusflow_data_pipeline	ingest_produits	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
361	2026-07-06 15:18:43.479597+00	indusflow_data_pipeline	ingest_produits	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
362	2026-07-06 15:18:43.486464+00	indusflow_data_pipeline	ingest_clients	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
363	2026-07-06 15:18:43.489089+00	indusflow_data_pipeline	ingest_usines	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
364	2026-07-06 15:18:43.502661+00	indusflow_data_pipeline	ingest_clients	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
365	2026-07-06 15:18:43.517258+00	indusflow_data_pipeline	ingest_usines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
366	2026-07-06 15:18:43.892915+00	indusflow_data_pipeline	ingest_produits	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
367	2026-07-06 15:18:43.946588+00	indusflow_data_pipeline	ingest_usines	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
368	2026-07-06 15:18:43.956495+00	indusflow_data_pipeline	ingest_clients	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
369	2026-07-06 15:18:44.287199+00	indusflow_data_pipeline	ingest_cycles_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
370	2026-07-06 15:18:44.559307+00	indusflow_data_pipeline	ingest_cycles_production	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
371	2026-07-06 15:18:44.573165+00	indusflow_data_pipeline	ingest_cycles_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
372	2026-07-06 15:18:44.827609+00	indusflow_data_pipeline	ingest_cycles_production	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
373	2026-07-06 15:18:45.406384+00	indusflow_data_pipeline	ingest_capteurs_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
374	2026-07-06 15:18:45.406384+00	indusflow_data_pipeline	ingest_logs_erreurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
375	2026-07-06 15:18:45.417718+00	indusflow_data_pipeline	ingest_cameras_qualite	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
376	2026-07-06 15:18:45.418819+00	indusflow_data_pipeline	ingest_etapes_fabrication	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
377	2026-07-06 15:18:45.42432+00	indusflow_data_pipeline	ingest_acces_utilisateurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
378	2026-07-06 15:18:45.425806+00	indusflow_data_pipeline	ingest_maintenance_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
379	2026-07-06 15:18:45.43663+00	indusflow_data_pipeline	ingest_alertes_monitoring	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
380	2026-07-06 15:18:45.432968+00	indusflow_data_pipeline	ingest_planning_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
381	2026-07-06 15:18:45.438301+00	indusflow_data_pipeline	ingest_pieces_detachees	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
382	2026-07-06 15:18:45.435475+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
383	2026-07-06 15:18:46.086708+00	indusflow_data_pipeline	ingest_cameras_qualite	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
384	2026-07-06 15:18:46.149652+00	indusflow_data_pipeline	ingest_cameras_qualite	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
385	2026-07-06 15:18:46.168247+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
386	2026-07-06 15:18:46.164697+00	indusflow_data_pipeline	ingest_acces_utilisateurs	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
387	2026-07-06 15:18:46.171083+00	indusflow_data_pipeline	ingest_maintenance_machines	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
388	2026-07-06 15:18:46.237385+00	indusflow_data_pipeline	ingest_planning_production	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
389	2026-07-06 15:18:46.254051+00	indusflow_data_pipeline	ingest_acces_utilisateurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
390	2026-07-06 15:18:46.261281+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
391	2026-07-06 15:18:46.30139+00	indusflow_data_pipeline	ingest_planning_production	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
392	2026-07-06 15:18:46.273178+00	indusflow_data_pipeline	ingest_maintenance_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
393	2026-07-06 15:18:46.359402+00	indusflow_data_pipeline	ingest_capteurs_machines	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
394	2026-07-06 15:18:46.381644+00	indusflow_data_pipeline	ingest_alertes_monitoring	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
395	2026-07-06 15:18:46.447363+00	indusflow_data_pipeline	ingest_alertes_monitoring	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
396	2026-07-06 15:18:46.48261+00	indusflow_data_pipeline	ingest_capteurs_machines	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
397	2026-07-06 15:18:46.579505+00	indusflow_data_pipeline	ingest_pieces_detachees	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
398	2026-07-06 15:18:46.651489+00	indusflow_data_pipeline	ingest_etapes_fabrication	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
399	2026-07-06 15:18:46.689474+00	indusflow_data_pipeline	ingest_logs_erreurs	-1	running	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
400	2026-07-06 15:18:46.688267+00	indusflow_data_pipeline	ingest_pieces_detachees	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
401	2026-07-06 15:18:46.737416+00	indusflow_data_pipeline	ingest_etapes_fabrication	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
402	2026-07-06 15:18:46.802366+00	indusflow_data_pipeline	ingest_logs_erreurs	\N	cli_task_run	\N	\N	airflow	\N	{"host_name": "5ead4c3fd35c", "full_command": "['/home/airflow/.local/bin/airflow', 'scheduler']"}
403	2026-07-06 15:18:48.653626+00	indusflow_data_pipeline	ingest_acces_utilisateurs	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
404	2026-07-06 15:18:48.674764+00	indusflow_data_pipeline	ingest_maintenance_machines	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
405	2026-07-06 15:18:48.782382+00	indusflow_data_pipeline	ingest_planning_production	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
406	2026-07-06 15:18:48.791959+00	indusflow_data_pipeline	ingest_alertes_monitoring	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
407	2026-07-06 15:18:48.845022+00	indusflow_data_pipeline	ingest_cameras_qualite	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
408	2026-07-06 15:18:48.889297+00	indusflow_data_pipeline	ingest_logs_jobs_airflow	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
409	2026-07-06 15:18:49.070654+00	indusflow_data_pipeline	ingest_pieces_detachees	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
410	2026-07-06 15:18:49.076318+00	indusflow_data_pipeline	ingest_capteurs_machines	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
411	2026-07-06 15:18:49.083842+00	indusflow_data_pipeline	ingest_etapes_fabrication	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
412	2026-07-06 15:18:49.121075+00	indusflow_data_pipeline	ingest_logs_erreurs	-1	success	2026-07-06 15:18:41+00	manual__2026-07-06T15:18:41+00:00	data_engineer	\N	\N
\.


--
-- Data for Name: log_template; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.log_template (id, filename, elasticsearch_id, created_at) FROM stdin;
1	{{ ti.dag_id }}/{{ ti.task_id }}/{{ ts }}/{{ try_number }}.log	{dag_id}-{task_id}-{execution_date}-{try_number}	2026-07-06 14:30:53.277519+00
2	dag_id={{ ti.dag_id }}/run_id={{ ti.run_id }}/task_id={{ ti.task_id }}/{% if ti.map_index >= 0 %}map_index={{ ti.map_index }}/{% endif %}attempt={{ try_number }}.log	{dag_id}-{task_id}-{run_id}-{map_index}-{try_number}	2026-07-06 14:30:53.277525+00
\.


--
-- Data for Name: logs_erreurs_machines; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.logs_erreurs_machines (log_id, machine_id, error_code, severity, event_timestamp, resolved, resolution_time_min) FROM stdin;
1	M-16	E301	HIGH	2024-12-29 02:14:19	1	67
2	M-8	E103	MEDIUM	2024-07-26 10:32:21	1	667
3	M-6	E401	MEDIUM	2024-04-18 00:43:12	1	207
4	M-4	E103	MEDIUM	2024-09-11 01:37:03	1	64
5	M-17	E101	LOW	2024-03-25 02:43:18	0	202
6	M-3	E101	MEDIUM	2024-03-04 15:23:32	0	641
7	M-4	E401	LOW	2024-04-08 09:39:55	1	157
8	M-13	E103	HIGH	2024-01-12 02:50:29	1	686
9	M-12	E102	HIGH	2024-02-28 03:59:46	1	126
10	M-15	E301	HIGH	2024-09-23 15:16:07	1	179
11	M-4	E103	LOW	2024-01-28 23:50:09	0	120
12	M-14	E201	MEDIUM	2024-05-16 00:38:28	0	261
13	M-20	E102	HIGH	2024-06-20 23:03:51	1	308
14	M-16	E301	MEDIUM	2024-02-23 00:30:09	1	482
15	M-17	E401	LOW	2024-08-12 22:44:53	1	529
16	M-5	E202	HIGH	2024-04-30 19:52:27	0	594
17	M-7	E101	LOW	2024-11-10 10:47:05	0	82
18	M-3	E101	MEDIUM	2024-09-04 23:04:51	1	303
19	M-16	E202	LOW	2024-02-08 05:31:33	1	46
20	M-6	E102	LOW	2024-08-17 02:29:23	1	343
21	M-9	E202	MEDIUM	2024-08-20 15:12:11	1	146
22	M-10	E401	MEDIUM	2024-08-19 14:49:15	0	201
23	M-7	E101	HIGH	2024-02-06 02:34:31	1	184
24	M-19	E102	HIGH	2024-07-19 19:11:01	1	41
25	M-12	E301	HIGH	2024-09-21 14:57:24	1	314
26	M-7	E301	LOW	2024-07-02 02:08:28	1	139
27	M-17	E202	MEDIUM	2024-05-30 11:32:13	1	68
28	M-1	E102	HIGH	2024-09-12 13:20:39	1	100
29	M-4	E301	LOW	2024-08-18 20:38:54	1	461
30	M-7	E101	MEDIUM	2024-07-19 16:37:14	1	630
31	M-9	E102	LOW	2024-04-24 06:23:53	1	493
32	M-8	E202	LOW	2024-02-04 07:59:19	1	424
33	M-14	E101	MEDIUM	2024-07-19 14:02:50	1	231
34	M-3	E201	CRITICAL	2024-02-24 20:02:15	1	646
35	M-15	E401	MEDIUM	2024-04-12 21:09:40	0	637
36	M-19	E102	LOW	2024-12-10 10:31:32	1	591
37	M-14	E103	HIGH	2024-05-01 18:23:43	0	582
38	M-8	E202	LOW	2024-02-11 01:05:30	1	151
39	M-13	E401	MEDIUM	2024-07-15 03:31:30	0	164
40	M-15	E202	MEDIUM	2024-06-08 14:31:26	1	507
41	M-1	E201	CRITICAL	2024-07-09 11:26:34	1	72
42	M-1	E101	MEDIUM	2024-01-25 12:38:58	1	12
43	M-8	E301	LOW	2024-07-12 22:15:56	1	69
44	M-16	E401	HIGH	2024-08-19 08:49:45	1	38
45	M-20	E201	MEDIUM	2024-07-25 23:24:37	0	308
46	M-4	E301	HIGH	2024-09-19 22:07:44	1	287
47	M-7	E301	HIGH	2024-04-25 15:26:50	0	369
48	M-13	E101	CRITICAL	2024-02-03 10:03:32	0	359
49	M-4	E301	MEDIUM	2024-07-21 11:03:27	1	682
50	M-10	E401	LOW	2024-11-20 11:27:24	1	417
51	M-17	E101	LOW	2024-09-29 21:09:44	1	462
52	M-10	E102	LOW	2024-05-09 00:17:07	1	297
53	M-19	E101	LOW	2024-12-21 02:59:55	1	709
54	M-6	E201	HIGH	2024-08-19 07:10:30	1	44
55	M-14	E201	MEDIUM	2024-09-30 16:00:19	1	280
56	M-13	E301	LOW	2024-10-07 16:22:55	0	672
57	M-7	E101	MEDIUM	2024-09-28 22:36:26	0	578
58	M-16	E401	LOW	2024-05-29 22:21:35	0	419
59	M-1	E401	LOW	2024-07-15 16:48:51	0	47
60	M-12	E301	HIGH	2024-04-18 22:11:23	0	539
61	M-19	E301	HIGH	2024-10-28 11:52:34	0	511
62	M-20	E102	MEDIUM	2024-11-17 18:10:46	1	160
63	M-8	E401	HIGH	2024-09-23 05:11:49	1	422
64	M-7	E101	CRITICAL	2024-01-01 21:40:57	0	161
65	M-13	E103	LOW	2024-01-19 08:58:18	1	474
66	M-3	E401	MEDIUM	2024-11-03 04:13:32	0	108
67	M-10	E101	LOW	2024-03-23 17:26:16	1	660
68	M-4	E103	HIGH	2024-04-02 02:23:41	0	233
69	M-3	E201	HIGH	2024-12-04 20:19:03	0	164
70	M-9	E101	CRITICAL	2024-03-24 09:19:55	1	168
71	M-18	E102	LOW	2024-06-10 08:55:06	1	570
72	M-17	E102	HIGH	2024-09-23 09:17:08	1	562
73	M-2	E301	MEDIUM	2024-08-05 21:20:34	0	256
74	M-14	E103	CRITICAL	2024-03-06 20:19:52	0	325
75	M-11	E103	LOW	2024-06-28 04:33:52	1	716
76	M-13	E101	LOW	2024-11-05 01:27:20	1	241
77	M-19	E202	CRITICAL	2024-12-04 18:18:53	1	601
78	M-19	E401	LOW	2024-06-03 14:22:19	1	47
79	M-18	E202	LOW	2024-03-11 23:41:12	1	457
80	M-20	E301	MEDIUM	2024-01-07 05:24:59	1	205
81	M-12	E101	HIGH	2024-10-19 13:23:36	0	469
82	M-4	E401	HIGH	2024-02-23 08:32:07	1	184
83	M-10	E301	LOW	2024-10-10 09:15:12	1	592
84	M-18	E101	CRITICAL	2024-11-05 01:35:14	1	218
85	M-4	E102	CRITICAL	2024-01-11 04:49:15	1	513
86	M-19	E301	LOW	2024-03-05 07:46:32	1	716
87	M-8	E201	CRITICAL	2024-10-27 17:08:18	0	376
88	M-1	E401	MEDIUM	2024-11-26 19:51:49	0	636
89	M-15	E202	MEDIUM	2024-07-22 19:12:58	1	96
90	M-4	E102	MEDIUM	2024-07-13 16:14:20	1	589
91	M-10	E103	HIGH	2024-02-10 06:15:36	1	480
92	M-18	E201	MEDIUM	2024-02-20 15:18:48	1	66
93	M-18	E101	LOW	2024-12-28 01:21:20	1	185
94	M-10	E202	HIGH	2024-04-30 23:33:42	1	125
95	M-15	E202	LOW	2024-12-12 16:28:08	1	683
96	M-17	E102	LOW	2024-10-11 05:43:59	1	467
97	M-19	E102	HIGH	2024-04-29 14:11:11	1	578
98	M-13	E301	LOW	2024-02-13 16:16:48	1	592
99	M-7	E202	MEDIUM	2024-03-01 15:35:13	0	19
100	M-7	E301	LOW	2024-02-13 00:22:44	0	448
101	M-8	E201	MEDIUM	2024-09-22 17:35:03	1	6
102	M-6	E301	LOW	2024-09-17 23:41:38	1	511
103	M-14	E103	CRITICAL	2024-12-17 06:31:51	1	259
104	M-19	E301	MEDIUM	2024-10-28 08:21:02	1	459
105	M-7	E103	LOW	2024-03-12 08:23:40	1	471
106	M-2	E202	MEDIUM	2024-05-20 23:52:03	0	435
107	M-1	E401	LOW	2024-08-01 22:04:55	1	607
108	M-9	E102	HIGH	2024-05-09 03:13:56	1	483
109	M-6	E202	LOW	2024-12-03 08:10:05	1	575
110	M-3	E401	LOW	2024-07-15 21:41:36	0	272
111	M-7	E202	HIGH	2024-08-30 07:45:43	0	523
112	M-16	E301	MEDIUM	2024-07-13 07:52:35	0	714
113	M-5	E301	HIGH	2024-10-16 14:13:45	0	407
114	M-20	E202	HIGH	2024-05-09 23:46:03	0	62
115	M-4	E301	LOW	2024-07-26 14:00:09	0	53
116	M-9	E102	MEDIUM	2024-12-08 12:35:51	1	223
117	M-5	E102	CRITICAL	2024-08-22 16:49:08	1	463
118	M-2	E103	LOW	2024-01-18 23:47:39	1	188
119	M-6	E202	MEDIUM	2024-08-27 23:39:35	0	141
120	M-2	E301	HIGH	2024-10-14 17:27:25	1	541
121	M-12	E201	MEDIUM	2024-02-02 18:36:42	0	589
122	M-19	E101	MEDIUM	2024-11-29 02:35:35	1	34
123	M-17	E301	LOW	2024-09-19 06:44:30	0	186
124	M-11	E301	MEDIUM	2024-10-30 05:52:20	1	95
125	M-13	E101	MEDIUM	2024-11-21 07:47:30	1	157
126	M-15	E301	LOW	2024-05-07 15:31:52	0	500
127	M-17	E103	LOW	2024-10-20 19:43:32	1	507
128	M-16	E401	LOW	2024-06-15 17:10:15	1	696
129	M-17	E301	MEDIUM	2024-01-17 23:35:21	1	312
130	M-9	E202	LOW	2024-12-23 19:57:49	1	264
131	M-8	E301	HIGH	2024-05-20 21:49:12	0	589
132	M-2	E201	LOW	2024-01-22 19:42:52	1	219
133	M-6	E301	MEDIUM	2024-01-16 01:09:57	0	65
134	M-20	E101	LOW	2024-08-27 23:27:09	1	461
135	M-10	E401	HIGH	2024-04-24 10:48:20	0	525
136	M-15	E102	LOW	2024-11-01 10:47:30	1	226
137	M-3	E101	CRITICAL	2024-06-13 12:08:10	0	398
138	M-15	E103	LOW	2024-04-19 22:26:18	1	24
139	M-16	E301	LOW	2024-07-27 05:57:39	1	489
140	M-7	E202	LOW	2024-12-17 11:08:04	1	100
141	M-6	E102	LOW	2024-11-06 16:39:24	0	77
142	M-6	E103	LOW	2024-04-29 02:02:19	1	275
143	M-20	E103	HIGH	2024-07-28 20:27:16	1	56
144	M-9	E201	LOW	2024-04-20 17:45:11	0	140
145	M-12	E401	MEDIUM	2024-02-25 22:14:13	1	65
146	M-2	E301	CRITICAL	2024-02-26 16:08:52	1	620
147	M-13	E103	MEDIUM	2024-11-16 17:25:59	0	365
148	M-16	E301	MEDIUM	2024-06-04 14:56:05	0	93
149	M-14	E103	MEDIUM	2024-05-16 12:38:02	0	50
150	M-16	E101	CRITICAL	2024-07-03 16:39:52	0	273
151	M-3	E103	CRITICAL	2024-01-06 21:53:08	0	317
152	M-1	E201	LOW	2024-07-26 15:50:05	1	220
153	M-5	E202	LOW	2024-09-21 19:16:13	1	612
154	M-1	E101	MEDIUM	2024-02-12 21:50:20	0	488
155	M-10	E202	HIGH	2024-12-25 23:46:00	1	483
156	M-9	E102	MEDIUM	2024-06-07 13:29:16	1	29
157	M-12	E301	MEDIUM	2024-12-21 01:09:23	0	411
158	M-6	E301	LOW	2024-10-13 15:27:08	1	396
159	M-10	E301	HIGH	2024-10-28 11:38:34	1	430
160	M-18	E101	LOW	2024-04-16 19:06:01	1	498
161	M-8	E102	MEDIUM	2024-04-16 07:59:59	1	467
162	M-18	E202	MEDIUM	2024-08-20 18:29:03	1	480
163	M-16	E202	LOW	2024-06-04 11:21:31	1	542
164	M-2	E201	MEDIUM	2024-07-17 19:18:22	1	50
165	M-5	E101	CRITICAL	2024-04-10 12:33:50	1	198
166	M-6	E401	HIGH	2024-04-04 18:22:49	1	263
167	M-10	E103	LOW	2024-07-07 11:17:55	1	176
168	M-10	E301	LOW	2024-07-31 00:54:45	1	237
169	M-3	E102	MEDIUM	2024-05-18 09:22:03	0	3
170	M-8	E202	MEDIUM	2024-07-23 03:43:04	1	553
171	M-15	E102	LOW	2024-07-26 20:18:07	1	547
172	M-19	E201	MEDIUM	2024-04-30 22:30:45	0	335
173	M-3	E401	LOW	2024-02-08 09:53:29	0	95
174	M-7	E202	CRITICAL	2024-03-16 18:15:23	1	711
175	M-11	E201	LOW	2024-04-26 03:14:34	1	617
176	M-6	E102	MEDIUM	2024-06-21 02:31:32	1	184
177	M-5	E201	MEDIUM	2024-05-02 19:30:58	1	419
178	M-8	E102	HIGH	2024-10-29 02:10:11	1	34
179	M-4	E201	HIGH	2024-05-16 17:41:15	1	372
180	M-14	E202	MEDIUM	2024-10-06 15:01:47	1	200
181	M-2	E103	LOW	2024-07-03 23:47:16	0	293
182	M-5	E301	HIGH	2024-01-29 18:19:17	0	399
183	M-19	E301	LOW	2024-11-04 16:15:50	0	187
184	M-15	E202	MEDIUM	2024-05-27 10:18:45	1	305
185	M-10	E301	HIGH	2024-08-13 00:56:04	1	268
186	M-19	E101	MEDIUM	2024-03-17 04:19:23	1	630
187	M-3	E103	LOW	2024-02-06 09:05:36	1	624
188	M-5	E102	LOW	2024-02-18 12:30:11	0	558
189	M-20	E201	HIGH	2024-02-18 15:44:48	0	213
190	M-19	E102	HIGH	2024-05-16 04:00:19	1	380
191	M-20	E301	MEDIUM	2024-04-17 09:04:16	0	427
192	M-19	E101	MEDIUM	2024-01-26 14:40:09	1	294
193	M-17	E301	MEDIUM	2024-10-07 04:07:59	1	221
194	M-7	E301	HIGH	2024-12-13 14:08:51	0	1
195	M-2	E201	HIGH	2024-08-12 03:21:27	1	326
196	M-20	E103	HIGH	2024-01-07 07:48:17	0	310
197	M-3	E201	MEDIUM	2024-12-08 21:50:44	0	134
198	M-11	E101	CRITICAL	2024-02-07 18:05:48	1	273
199	M-2	E101	HIGH	2024-06-18 06:09:32	1	308
200	M-10	E101	MEDIUM	2024-10-23 15:33:39	1	200
201	M-1	E102	MEDIUM	2024-05-13 13:13:19	0	134
202	M-16	E202	LOW	2024-11-07 10:43:27	0	366
203	M-4	E103	MEDIUM	2024-12-02 22:39:13	1	670
204	M-16	E202	MEDIUM	2024-09-25 04:29:25	1	25
205	M-7	E401	MEDIUM	2024-06-23 11:44:43	1	492
206	M-9	E202	LOW	2024-08-19 16:02:25	1	170
207	M-2	E401	CRITICAL	2024-11-03 15:12:06	1	129
208	M-4	E301	LOW	2024-03-01 07:11:10	1	194
209	M-15	E202	MEDIUM	2024-05-05 16:35:28	1	426
210	M-15	E103	HIGH	2024-07-23 04:34:41	1	577
211	M-5	E103	HIGH	2024-04-18 05:01:57	0	13
212	M-19	E102	MEDIUM	2024-10-30 02:34:48	1	662
213	M-2	E102	MEDIUM	2024-06-11 22:55:38	0	27
214	M-2	E103	LOW	2024-03-02 17:17:16	1	386
215	M-1	E301	LOW	2024-06-22 11:58:29	0	190
216	M-11	E401	MEDIUM	2024-10-23 20:47:25	0	347
217	M-19	E401	MEDIUM	2024-10-17 13:58:30	1	228
218	M-20	E301	HIGH	2024-08-29 10:23:37	0	546
219	M-16	E103	LOW	2024-08-26 22:58:31	0	647
220	M-16	E202	HIGH	2024-10-10 18:28:58	1	71
221	M-1	E101	MEDIUM	2024-12-22 14:25:28	1	604
222	M-20	E202	MEDIUM	2024-11-28 02:43:38	0	253
223	M-12	E301	MEDIUM	2024-06-13 02:53:13	1	715
224	M-3	E102	LOW	2024-01-12 21:19:09	0	506
225	M-5	E101	HIGH	2024-04-07 08:20:20	1	306
226	M-13	E401	LOW	2024-04-21 16:02:21	1	400
227	M-11	E202	HIGH	2024-01-05 00:33:02	0	644
228	M-6	E103	HIGH	2024-06-30 18:54:36	1	689
229	M-16	E301	HIGH	2024-08-02 13:32:06	0	279
230	M-16	E401	MEDIUM	2024-11-20 08:18:33	1	530
231	M-8	E401	LOW	2024-06-30 20:50:28	1	456
232	M-3	E401	CRITICAL	2024-03-16 01:39:50	0	117
233	M-6	E102	MEDIUM	2024-10-27 18:52:47	1	361
234	M-10	E202	MEDIUM	2024-01-20 11:53:56	0	258
235	M-6	E101	LOW	2024-01-30 15:22:05	1	60
236	M-7	E401	HIGH	2024-06-14 07:26:53	1	250
237	M-2	E201	HIGH	2024-02-18 04:06:45	0	164
238	M-13	E201	HIGH	2024-12-28 02:16:26	0	97
239	M-1	E102	LOW	2024-06-17 16:50:01	1	543
240	M-3	E101	HIGH	2024-05-20 23:16:36	0	107
241	M-7	E103	LOW	2024-12-22 15:47:43	1	263
242	M-18	E202	LOW	2024-11-08 22:58:45	1	4
243	M-1	E101	LOW	2024-12-04 12:57:46	1	39
244	M-18	E401	MEDIUM	2024-01-20 20:35:30	1	3
245	M-3	E401	HIGH	2024-11-02 17:41:18	1	128
246	M-5	E102	MEDIUM	2024-05-24 20:17:22	1	467
247	M-8	E401	MEDIUM	2024-07-26 17:50:38	1	73
248	M-16	E103	MEDIUM	2024-08-19 09:19:25	0	447
249	M-18	E401	LOW	2024-07-16 02:42:04	1	155
250	M-17	E201	LOW	2024-06-02 08:48:26	0	597
251	M-8	E103	LOW	2024-12-13 04:06:52	1	348
252	M-2	E103	LOW	2024-10-04 05:13:28	1	186
253	M-9	E101	LOW	2024-01-23 15:31:37	1	646
254	M-1	E401	HIGH	2024-07-20 19:29:13	0	408
255	M-10	E101	LOW	2024-09-19 07:45:21	0	360
256	M-15	E201	MEDIUM	2024-05-11 19:26:47	0	215
257	M-20	E202	MEDIUM	2024-11-27 04:55:35	1	174
258	M-13	E301	HIGH	2024-01-02 10:21:17	1	363
259	M-5	E301	LOW	2024-09-12 03:06:47	0	599
260	M-12	E103	LOW	2024-02-01 04:37:57	1	625
261	M-11	E201	MEDIUM	2024-06-18 23:46:20	0	432
262	M-2	E101	LOW	2024-06-17 16:08:10	1	347
263	M-10	E301	LOW	2024-01-12 03:07:56	1	324
264	M-7	E202	MEDIUM	2024-01-31 09:10:16	0	262
265	M-3	E103	HIGH	2024-10-28 02:06:11	0	534
266	M-12	E202	MEDIUM	2024-10-02 21:36:33	1	38
267	M-4	E401	MEDIUM	2024-03-05 15:25:03	1	517
268	M-2	E102	LOW	2024-09-22 21:07:14	1	353
269	M-4	E102	MEDIUM	2024-01-24 19:24:24	1	343
270	M-20	E103	MEDIUM	2024-07-10 02:16:18	1	281
271	M-10	E102	LOW	2024-06-17 14:38:19	1	268
272	M-10	E101	CRITICAL	2024-10-28 11:30:44	1	389
273	M-10	E201	MEDIUM	2024-12-12 09:53:00	0	282
274	M-1	E103	HIGH	2024-04-13 14:57:05	1	353
275	M-7	E101	LOW	2024-07-30 06:39:29	1	420
276	M-20	E101	HIGH	2024-05-12 16:21:12	0	648
277	M-16	E102	LOW	2024-07-10 02:47:26	1	347
278	M-20	E401	MEDIUM	2024-09-29 01:39:23	0	280
279	M-13	E102	MEDIUM	2024-04-20 13:02:06	1	507
280	M-11	E301	LOW	2024-03-23 12:27:25	1	650
281	M-16	E102	CRITICAL	2024-08-22 21:07:58	0	30
282	M-13	E201	LOW	2024-06-19 00:03:54	1	654
283	M-17	E103	CRITICAL	2024-08-23 17:38:47	1	195
284	M-10	E103	MEDIUM	2024-10-31 10:41:56	1	643
285	M-14	E201	MEDIUM	2024-03-10 12:29:07	0	665
286	M-10	E102	HIGH	2024-08-30 13:07:50	1	534
287	M-19	E301	LOW	2024-07-24 11:51:10	1	305
288	M-5	E101	HIGH	2024-04-11 07:24:46	0	311
289	M-5	E202	MEDIUM	2024-10-06 13:48:46	1	267
290	M-13	E301	MEDIUM	2024-04-02 16:58:10	0	346
291	M-19	E201	MEDIUM	2024-05-28 21:29:19	1	315
292	M-4	E102	HIGH	2024-10-12 13:31:57	1	20
293	M-20	E201	HIGH	2024-04-23 22:44:48	1	224
294	M-5	E102	LOW	2024-03-09 07:11:17	1	589
295	M-6	E201	LOW	2024-03-02 23:49:38	0	676
296	M-17	E401	LOW	2024-03-24 13:43:40	1	636
297	M-19	E201	HIGH	2024-03-10 00:54:14	0	639
298	M-10	E301	LOW	2024-03-23 04:29:13	0	153
299	M-11	E102	MEDIUM	2024-01-04 21:45:00	1	193
300	M-20	E103	HIGH	2024-05-27 01:24:26	1	586
301	M-3	E103	LOW	2024-02-20 05:43:03	1	558
302	M-7	E301	LOW	2024-08-08 16:51:19	0	253
303	M-20	E301	MEDIUM	2024-09-02 02:12:52	1	253
304	M-9	E202	LOW	2024-12-29 03:55:01	1	353
305	M-12	E103	HIGH	2024-08-01 16:57:05	1	527
306	M-3	E201	MEDIUM	2024-02-02 20:29:34	0	309
307	M-13	E101	MEDIUM	2024-03-13 11:10:45	0	576
308	M-3	E103	LOW	2024-02-28 23:28:14	1	590
309	M-10	E101	MEDIUM	2024-04-07 00:11:16	0	437
310	M-2	E202	HIGH	2024-09-13 14:34:32	1	672
311	M-14	E103	HIGH	2024-06-23 01:15:47	1	86
312	M-7	E401	CRITICAL	2024-11-12 21:19:36	1	590
313	M-2	E101	LOW	2024-03-02 09:16:08	1	36
314	M-5	E401	MEDIUM	2024-06-22 02:30:28	0	603
315	M-4	E301	MEDIUM	2024-05-28 15:16:16	1	61
316	M-1	E201	LOW	2024-10-30 18:17:35	0	397
317	M-20	E202	HIGH	2024-08-08 14:41:18	1	380
318	M-16	E103	LOW	2024-01-15 04:05:45	1	207
319	M-15	E101	MEDIUM	2024-02-05 11:09:33	0	140
320	M-17	E103	LOW	2024-03-22 19:09:47	1	337
321	M-9	E103	HIGH	2024-09-01 22:51:10	1	92
322	M-8	E301	HIGH	2024-12-03 20:09:05	1	277
323	M-5	E101	MEDIUM	2024-07-23 01:27:21	1	675
324	M-3	E301	MEDIUM	2024-11-21 10:28:07	0	28
325	M-6	E401	MEDIUM	2024-03-20 10:16:16	0	330
326	M-7	E301	CRITICAL	2024-11-16 00:11:16	1	415
327	M-16	E102	MEDIUM	2024-07-30 23:15:57	1	271
328	M-15	E301	LOW	2024-05-12 14:19:50	1	665
329	M-13	E301	CRITICAL	2024-05-12 12:38:21	0	412
330	M-1	E401	LOW	2024-06-27 03:11:08	1	719
331	M-16	E401	CRITICAL	2024-07-28 19:14:52	1	172
332	M-2	E301	MEDIUM	2024-11-13 03:44:38	1	151
333	M-10	E202	LOW	2024-01-26 11:09:54	1	661
334	M-4	E401	LOW	2024-05-17 16:49:51	0	228
335	M-16	E301	LOW	2024-07-09 06:47:43	0	161
336	M-7	E102	CRITICAL	2024-06-19 11:51:55	1	489
337	M-7	E401	LOW	2024-09-22 03:35:02	0	166
338	M-19	E301	MEDIUM	2024-12-10 21:16:43	0	582
339	M-2	E201	MEDIUM	2024-10-04 17:24:37	0	217
340	M-16	E401	LOW	2024-10-20 11:21:06	1	280
341	M-14	E103	HIGH	2024-05-02 20:44:28	1	319
342	M-1	E103	LOW	2024-07-23 18:20:37	1	356
343	M-7	E102	MEDIUM	2024-06-30 12:37:51	1	363
344	M-5	E101	MEDIUM	2024-09-19 16:46:14	1	597
345	M-8	E301	LOW	2024-12-01 07:02:02	1	648
346	M-12	E202	MEDIUM	2024-06-24 21:48:02	0	582
347	M-14	E201	HIGH	2024-05-10 23:27:56	0	548
348	M-16	E201	HIGH	2024-12-29 08:38:41	1	249
349	M-15	E201	LOW	2024-03-15 10:38:41	0	582
350	M-16	E401	CRITICAL	2024-10-08 20:17:39	1	674
351	M-5	E401	HIGH	2024-10-06 06:07:27	1	54
352	M-8	E202	MEDIUM	2024-01-11 15:29:57	1	424
353	M-17	E201	HIGH	2024-09-28 04:06:44	1	108
354	M-13	E102	LOW	2024-03-11 07:28:26	1	188
355	M-7	E301	HIGH	2024-10-08 06:31:27	1	283
356	M-6	E102	LOW	2024-08-08 05:17:24	0	287
357	M-10	E202	CRITICAL	2024-05-14 19:49:15	0	354
358	M-11	E201	MEDIUM	2024-10-22 20:46:33	1	74
359	M-4	E102	MEDIUM	2024-11-24 21:47:57	1	380
360	M-19	E103	MEDIUM	2024-07-09 15:37:40	0	299
361	M-1	E103	CRITICAL	2024-04-18 18:11:20	0	430
362	M-19	E101	MEDIUM	2024-12-11 02:00:06	1	151
363	M-13	E401	CRITICAL	2024-07-23 07:16:48	0	290
364	M-18	E202	MEDIUM	2024-07-04 23:51:23	1	166
365	M-6	E202	MEDIUM	2024-09-24 09:51:08	1	438
366	M-12	E201	LOW	2024-10-10 14:32:18	0	585
367	M-20	E202	MEDIUM	2024-11-07 15:14:54	0	253
368	M-16	E102	MEDIUM	2024-07-26 00:59:40	1	16
369	M-17	E102	LOW	2024-02-12 06:21:15	1	520
370	M-2	E102	HIGH	2024-06-21 17:46:39	1	299
371	M-17	E101	MEDIUM	2024-06-06 13:06:33	0	431
372	M-4	E102	MEDIUM	2024-11-09 17:20:07	1	365
373	M-9	E103	CRITICAL	2024-04-29 10:34:04	1	199
374	M-8	E101	MEDIUM	2024-12-10 02:08:44	1	656
375	M-3	E103	MEDIUM	2024-12-15 15:56:46	1	240
376	M-17	E101	LOW	2024-01-22 19:30:39	1	88
377	M-12	E101	MEDIUM	2024-04-14 14:03:29	1	418
378	M-8	E301	CRITICAL	2024-12-17 18:29:44	0	685
379	M-19	E103	MEDIUM	2024-07-28 13:49:51	1	639
380	M-19	E201	CRITICAL	2024-06-20 12:51:39	1	627
381	M-19	E102	MEDIUM	2024-05-28 10:37:59	1	626
382	M-1	E102	LOW	2024-06-24 00:34:01	0	611
383	M-16	E103	MEDIUM	2024-04-09 18:26:59	0	192
384	M-8	E103	HIGH	2024-12-09 11:39:22	1	387
385	M-16	E301	MEDIUM	2024-01-13 10:03:53	0	346
386	M-13	E101	MEDIUM	2024-12-06 13:43:24	1	667
387	M-13	E102	MEDIUM	2024-05-09 04:01:46	1	264
388	M-7	E301	LOW	2024-12-08 12:06:42	1	194
389	M-5	E201	CRITICAL	2024-04-03 11:23:25	1	219
390	M-19	E201	CRITICAL	2024-03-12 14:31:33	0	92
391	M-16	E201	LOW	2024-10-22 21:11:19	0	165
392	M-6	E201	CRITICAL	2024-04-14 02:52:26	1	248
393	M-3	E202	HIGH	2024-10-24 08:06:42	0	168
394	M-3	E102	MEDIUM	2024-12-06 01:19:54	1	1
395	M-12	E103	MEDIUM	2024-05-05 16:33:48	1	195
396	M-16	E101	MEDIUM	2024-02-19 17:19:06	1	167
397	M-13	E301	MEDIUM	2024-10-25 23:03:05	1	133
398	M-16	E201	HIGH	2024-05-29 21:23:36	1	496
399	M-10	E401	HIGH	2024-06-20 09:49:35	0	41
400	M-7	E401	MEDIUM	2024-05-11 19:59:56	0	179
401	M-6	E301	CRITICAL	2024-08-22 01:05:34	1	632
402	M-2	E401	MEDIUM	2024-10-05 12:02:42	1	546
403	M-8	E201	LOW	2024-10-07 17:33:15	1	534
404	M-17	E202	MEDIUM	2024-05-24 04:11:13	1	434
405	M-10	E102	MEDIUM	2024-12-03 02:09:32	1	139
406	M-3	E401	CRITICAL	2024-10-13 22:24:49	0	125
407	M-14	E401	LOW	2024-06-26 22:40:04	0	711
408	M-20	E201	MEDIUM	2024-11-25 08:46:34	1	568
409	M-1	E401	HIGH	2024-04-21 20:51:46	0	43
410	M-11	E201	HIGH	2024-04-24 19:09:22	1	112
411	M-9	E101	LOW	2024-08-02 01:31:28	1	294
412	M-7	E101	LOW	2024-07-12 05:26:50	0	613
413	M-7	E401	CRITICAL	2024-10-25 15:48:44	0	531
414	M-1	E103	MEDIUM	2024-01-31 23:56:28	1	541
415	M-6	E101	MEDIUM	2024-12-22 17:23:09	1	412
416	M-8	E401	MEDIUM	2024-06-06 23:18:18	1	492
417	M-11	E101	CRITICAL	2024-08-03 11:45:16	1	316
418	M-4	E301	LOW	2024-03-05 04:40:15	1	630
419	M-17	E401	MEDIUM	2024-09-22 14:21:40	1	29
420	M-3	E202	LOW	2024-08-28 14:38:03	0	55
421	M-10	E103	MEDIUM	2024-06-16 16:58:37	1	608
422	M-11	E102	MEDIUM	2024-10-24 03:53:15	1	47
423	M-10	E401	HIGH	2024-07-26 02:11:44	1	264
424	M-20	E202	CRITICAL	2024-10-14 21:50:32	1	385
425	M-15	E401	MEDIUM	2024-06-29 19:22:23	0	115
426	M-12	E401	CRITICAL	2024-01-24 03:31:17	0	219
427	M-3	E401	MEDIUM	2024-11-23 17:01:19	0	620
428	M-12	E103	MEDIUM	2024-01-13 10:02:46	1	347
429	M-6	E401	CRITICAL	2024-09-29 13:05:00	1	468
430	M-18	E401	MEDIUM	2024-12-23 18:08:56	1	467
431	M-16	E202	HIGH	2024-02-07 01:38:43	1	539
432	M-3	E103	LOW	2024-05-15 22:03:51	0	709
433	M-11	E101	LOW	2024-08-27 21:14:28	1	695
434	M-7	E202	MEDIUM	2024-09-23 01:39:00	1	51
435	M-1	E301	HIGH	2024-11-06 15:21:09	1	115
436	M-20	E401	HIGH	2024-01-05 05:14:19	1	41
437	M-19	E103	MEDIUM	2024-06-07 19:42:21	1	332
438	M-6	E103	MEDIUM	2024-04-21 08:22:26	0	229
439	M-15	E301	LOW	2024-08-02 16:50:40	1	442
440	M-1	E102	MEDIUM	2024-09-08 15:46:52	1	131
441	M-16	E301	LOW	2024-05-21 22:11:14	1	29
442	M-1	E103	CRITICAL	2024-11-10 21:40:22	1	472
443	M-7	E401	MEDIUM	2024-03-21 19:13:08	0	304
444	M-3	E101	LOW	2024-12-11 18:42:47	1	390
445	M-4	E103	LOW	2024-04-11 03:28:43	1	358
446	M-18	E101	HIGH	2024-07-13 11:11:55	1	680
447	M-9	E102	LOW	2024-10-26 16:56:47	1	10
448	M-4	E301	MEDIUM	2024-09-23 13:11:35	0	466
449	M-20	E101	HIGH	2024-07-12 04:49:52	1	633
450	M-19	E201	CRITICAL	2024-01-09 10:40:59	1	668
451	M-5	E101	MEDIUM	2024-12-19 14:05:59	0	267
452	M-17	E401	HIGH	2024-03-06 11:23:00	1	313
453	M-7	E101	LOW	2024-02-14 07:36:12	0	199
454	M-19	E201	HIGH	2024-02-26 10:45:36	0	239
455	M-5	E401	LOW	2024-04-19 12:50:45	1	282
456	M-14	E401	MEDIUM	2024-07-08 18:46:35	1	581
457	M-7	E103	LOW	2024-03-01 21:20:43	1	116
458	M-7	E301	MEDIUM	2024-05-13 10:34:13	1	18
459	M-9	E202	LOW	2024-03-01 14:00:13	1	51
460	M-19	E103	MEDIUM	2024-04-21 02:40:54	1	261
461	M-20	E102	MEDIUM	2024-07-02 01:41:36	0	476
462	M-9	E301	MEDIUM	2024-07-14 21:13:40	0	381
463	M-13	E101	MEDIUM	2024-01-27 04:16:13	1	478
464	M-19	E102	MEDIUM	2024-01-13 07:04:45	1	283
465	M-18	E101	MEDIUM	2024-06-21 22:48:09	1	669
466	M-4	E201	MEDIUM	2024-06-21 09:38:05	1	114
467	M-20	E101	LOW	2024-01-22 15:16:14	0	288
468	M-20	E202	CRITICAL	2024-04-01 03:05:57	1	539
469	M-11	E401	LOW	2024-11-01 22:58:08	1	401
470	M-7	E102	LOW	2024-02-20 00:24:32	1	590
471	M-20	E103	MEDIUM	2024-07-09 03:21:19	1	126
472	M-9	E102	HIGH	2024-07-10 20:32:17	0	141
473	M-3	E101	LOW	2024-03-27 12:41:40	1	459
474	M-20	E202	HIGH	2024-04-09 13:00:06	1	613
475	M-17	E201	LOW	2024-12-06 03:33:45	1	269
476	M-10	E201	LOW	2024-09-08 03:01:49	0	678
477	M-8	E101	MEDIUM	2024-11-28 20:40:15	1	611
478	M-8	E301	MEDIUM	2024-08-06 06:38:18	1	665
479	M-17	E401	MEDIUM	2024-07-13 11:21:02	0	164
480	M-1	E401	MEDIUM	2024-05-04 20:11:35	0	510
481	M-16	E102	LOW	2024-12-29 21:36:23	1	69
482	M-12	E301	LOW	2024-12-26 17:18:25	1	409
483	M-9	E102	HIGH	2024-01-28 07:13:17	1	343
484	M-9	E401	HIGH	2024-11-16 16:11:31	1	115
485	M-18	E101	HIGH	2024-03-28 19:38:40	1	181
486	M-17	E102	LOW	2024-08-25 21:11:02	1	339
487	M-12	E103	HIGH	2024-05-02 15:58:38	0	79
488	M-2	E101	LOW	2024-10-03 16:56:01	0	672
489	M-8	E101	HIGH	2024-10-31 09:27:26	1	644
490	M-14	E102	CRITICAL	2024-12-11 03:24:37	1	17
491	M-5	E301	MEDIUM	2024-07-13 11:04:33	1	81
492	M-6	E202	CRITICAL	2024-09-26 07:50:30	1	89
493	M-15	E102	LOW	2024-02-07 21:52:27	1	717
494	M-3	E401	MEDIUM	2024-08-20 13:23:21	0	577
495	M-18	E201	MEDIUM	2024-10-20 02:24:38	1	46
496	M-4	E301	HIGH	2024-08-13 16:16:32	1	470
497	M-12	E103	MEDIUM	2024-12-06 23:27:40	1	214
498	M-16	E201	MEDIUM	2024-07-18 15:05:13	1	190
499	M-1	E202	HIGH	2024-02-20 00:13:12	0	111
500	M-11	E102	LOW	2024-12-21 06:22:06	1	639
501	M-9	E103	HIGH	2024-03-30 00:30:19	1	481
502	M-7	E102	LOW	2024-04-27 10:50:08	1	557
503	M-20	E201	LOW	2024-06-24 11:44:23	1	5
504	M-9	E201	MEDIUM	2024-12-07 13:47:59	1	696
505	M-8	E103	LOW	2024-07-16 23:31:08	1	213
506	M-16	E102	LOW	2024-07-30 01:09:07	1	413
507	M-7	E301	LOW	2024-04-30 15:57:18	1	381
508	M-10	E102	MEDIUM	2024-06-20 09:25:48	1	470
509	M-10	E103	CRITICAL	2024-03-02 13:53:31	0	102
510	M-5	E101	LOW	2024-01-23 18:50:01	1	31
511	M-17	E201	HIGH	2024-08-01 02:47:00	1	588
512	M-7	E101	HIGH	2024-05-17 13:50:15	0	96
513	M-12	E401	LOW	2024-12-26 06:11:38	1	646
514	M-5	E201	MEDIUM	2024-04-23 04:01:55	0	90
515	M-5	E202	HIGH	2024-09-10 03:06:15	1	162
516	M-11	E401	LOW	2024-04-13 00:05:15	1	440
517	M-13	E201	LOW	2024-04-04 10:29:05	1	480
518	M-18	E103	LOW	2024-08-19 21:50:16	0	680
519	M-14	E301	MEDIUM	2024-03-27 21:57:55	1	566
520	M-5	E401	MEDIUM	2024-11-18 22:19:59	1	10
521	M-6	E401	MEDIUM	2024-10-25 09:05:05	1	34
522	M-2	E301	LOW	2024-10-10 08:16:50	0	17
523	M-5	E202	MEDIUM	2024-04-21 16:09:29	1	647
524	M-15	E301	LOW	2024-09-23 00:47:06	1	596
525	M-19	E103	LOW	2024-11-29 00:27:17	1	67
526	M-9	E102	MEDIUM	2024-08-07 07:55:44	1	668
527	M-12	E102	HIGH	2024-09-26 06:58:39	1	668
528	M-5	E202	CRITICAL	2024-08-24 16:02:51	1	450
529	M-16	E201	LOW	2024-11-21 14:26:06	1	267
530	M-9	E201	LOW	2024-04-30 22:46:13	1	209
531	M-14	E401	HIGH	2024-10-15 20:39:01	0	437
532	M-14	E202	MEDIUM	2024-10-25 21:39:43	1	140
533	M-15	E102	LOW	2024-01-27 10:07:57	1	677
534	M-2	E202	HIGH	2024-06-27 16:52:54	1	323
535	M-15	E301	LOW	2024-04-22 17:42:48	1	231
536	M-13	E103	MEDIUM	2024-04-26 08:12:35	1	157
537	M-12	E401	CRITICAL	2024-01-15 00:07:59	1	674
538	M-12	E301	CRITICAL	2024-12-15 21:28:26	0	553
539	M-6	E301	MEDIUM	2024-06-12 18:42:19	1	531
540	M-15	E101	MEDIUM	2024-03-22 16:40:57	1	98
541	M-4	E101	MEDIUM	2024-02-20 23:34:47	0	619
542	M-4	E401	HIGH	2024-05-29 15:20:24	1	233
543	M-15	E103	MEDIUM	2024-06-08 02:33:50	1	198
544	M-8	E201	MEDIUM	2024-12-02 18:49:19	1	165
545	M-5	E301	HIGH	2024-11-04 05:40:18	1	712
546	M-3	E102	LOW	2024-06-16 22:38:57	1	682
547	M-1	E201	LOW	2024-01-29 20:26:49	0	124
548	M-14	E101	MEDIUM	2024-09-21 04:51:39	1	668
549	M-4	E103	MEDIUM	2024-10-11 00:32:48	0	115
550	M-19	E202	MEDIUM	2024-05-28 18:19:12	0	549
551	M-13	E401	CRITICAL	2024-05-12 14:48:41	0	579
552	M-11	E201	LOW	2024-11-12 04:22:50	1	247
553	M-11	E202	HIGH	2024-07-18 14:02:45	0	452
554	M-13	E102	HIGH	2024-02-11 18:09:37	0	40
555	M-1	E301	HIGH	2024-10-19 14:48:11	1	20
556	M-16	E201	LOW	2024-07-19 05:06:01	0	460
557	M-3	E103	MEDIUM	2024-09-02 02:50:11	0	454
558	M-5	E301	LOW	2024-11-30 06:17:19	1	419
559	M-1	E301	LOW	2024-06-06 14:13:06	1	600
560	M-7	E101	MEDIUM	2024-11-21 10:37:42	1	536
561	M-5	E401	MEDIUM	2024-11-12 00:56:17	1	356
562	M-15	E301	CRITICAL	2024-02-02 09:19:27	1	121
563	M-1	E401	HIGH	2024-11-17 18:02:10	0	373
564	M-4	E301	LOW	2024-04-22 20:13:12	0	185
565	M-14	E101	MEDIUM	2024-01-26 08:10:58	0	467
566	M-11	E103	HIGH	2024-12-15 12:04:02	1	26
567	M-19	E101	MEDIUM	2024-05-23 14:49:05	0	102
568	M-19	E101	CRITICAL	2024-08-24 02:26:25	0	667
569	M-3	E102	HIGH	2024-09-14 08:46:56	1	578
570	M-12	E202	HIGH	2024-03-24 10:39:44	0	331
571	M-14	E301	MEDIUM	2024-03-30 19:59:19	1	705
572	M-14	E202	MEDIUM	2024-11-12 10:00:53	1	288
573	M-18	E102	MEDIUM	2024-03-13 00:59:27	1	197
574	M-4	E401	LOW	2024-11-25 14:35:11	1	515
575	M-1	E301	CRITICAL	2024-12-29 13:31:15	1	465
576	M-5	E401	LOW	2024-10-15 19:32:42	1	173
577	M-3	E201	LOW	2024-06-18 22:42:24	1	64
578	M-4	E401	MEDIUM	2024-10-19 15:33:46	0	95
579	M-2	E103	MEDIUM	2024-03-10 20:35:32	0	410
580	M-13	E202	HIGH	2024-11-26 10:26:44	1	413
581	M-3	E103	LOW	2024-08-10 06:27:17	1	618
582	M-12	E103	HIGH	2024-11-09 13:44:51	1	149
583	M-13	E102	LOW	2024-05-01 06:42:20	1	613
584	M-12	E102	CRITICAL	2024-11-22 23:53:53	0	554
585	M-18	E301	MEDIUM	2024-12-19 01:24:30	1	136
586	M-2	E201	MEDIUM	2024-04-07 20:23:09	0	568
587	M-15	E202	MEDIUM	2024-03-02 09:05:58	1	499
588	M-16	E401	HIGH	2024-09-06 19:25:37	1	401
589	M-16	E101	MEDIUM	2024-01-01 05:24:43	1	189
590	M-2	E301	MEDIUM	2024-02-16 05:34:39	1	623
591	M-10	E301	LOW	2024-09-02 14:54:17	0	162
592	M-14	E103	LOW	2024-12-25 13:33:27	0	272
593	M-16	E102	HIGH	2024-10-12 01:36:39	0	89
594	M-20	E202	MEDIUM	2024-10-31 12:56:47	1	479
595	M-14	E102	MEDIUM	2024-04-20 10:27:45	1	701
596	M-12	E102	LOW	2024-03-31 21:42:56	1	143
597	M-19	E102	MEDIUM	2024-01-17 21:10:30	0	176
598	M-8	E301	LOW	2024-05-24 07:26:05	1	236
599	M-2	E101	MEDIUM	2024-11-05 02:11:35	0	535
600	M-19	E101	HIGH	2024-07-01 13:40:06	1	372
601	M-20	E401	MEDIUM	2024-12-11 01:10:50	1	454
602	M-13	E103	MEDIUM	2024-11-09 18:39:33	1	142
603	M-18	E103	MEDIUM	2024-08-03 18:47:43	0	466
604	M-10	E102	MEDIUM	2024-05-08 23:14:44	1	681
605	M-8	E201	MEDIUM	2024-06-18 11:13:21	1	59
606	M-12	E401	HIGH	2024-09-20 22:15:51	1	548
607	M-8	E103	CRITICAL	2024-05-19 05:00:30	1	257
608	M-6	E401	MEDIUM	2024-01-19 04:00:19	1	261
609	M-9	E103	MEDIUM	2024-03-27 21:34:36	0	113
610	M-7	E301	LOW	2024-02-14 00:54:13	1	172
611	M-3	E202	HIGH	2024-11-28 15:55:39	1	375
612	M-7	E301	LOW	2024-12-04 00:52:20	1	550
613	M-8	E103	HIGH	2024-05-16 14:20:16	1	672
614	M-17	E401	MEDIUM	2024-01-01 15:06:59	1	543
615	M-13	E102	CRITICAL	2024-09-17 03:58:33	1	419
616	M-18	E102	LOW	2024-08-17 13:51:16	0	37
617	M-11	E401	MEDIUM	2024-11-07 03:54:56	1	138
618	M-8	E202	CRITICAL	2024-12-24 13:38:03	0	1
619	M-18	E102	HIGH	2024-10-17 05:40:00	0	358
620	M-8	E201	MEDIUM	2024-08-19 09:47:15	0	607
621	M-20	E401	LOW	2024-04-01 03:57:05	0	95
622	M-4	E201	MEDIUM	2024-07-11 02:55:29	1	37
623	M-12	E202	LOW	2024-10-18 01:21:16	0	393
624	M-8	E301	HIGH	2024-11-16 20:59:30	1	625
625	M-14	E301	MEDIUM	2024-03-27 18:21:01	0	314
626	M-9	E101	LOW	2024-10-10 12:16:47	1	16
627	M-6	E201	LOW	2024-10-16 13:35:08	1	690
628	M-5	E201	MEDIUM	2024-03-01 09:59:19	0	254
629	M-20	E202	MEDIUM	2024-09-09 05:28:16	1	311
630	M-13	E102	MEDIUM	2024-06-26 05:17:55	1	285
631	M-8	E201	LOW	2024-06-02 22:20:39	1	29
632	M-9	E101	LOW	2024-01-03 16:26:53	1	253
633	M-1	E401	LOW	2024-10-01 01:45:35	1	31
634	M-3	E102	LOW	2024-05-08 15:36:32	1	160
635	M-6	E401	CRITICAL	2024-10-21 10:53:43	1	596
636	M-10	E401	MEDIUM	2024-09-26 19:17:05	0	441
637	M-18	E101	LOW	2024-04-10 15:18:07	1	81
638	M-8	E103	LOW	2024-03-18 18:26:24	0	675
639	M-17	E301	MEDIUM	2024-11-14 23:39:38	0	267
640	M-10	E401	HIGH	2024-04-25 18:05:04	1	234
641	M-2	E102	LOW	2024-01-27 07:54:18	1	449
642	M-8	E103	MEDIUM	2024-08-05 23:54:48	1	548
643	M-9	E103	LOW	2024-09-16 11:28:12	1	55
644	M-14	E102	LOW	2024-01-13 20:51:44	1	475
645	M-2	E101	MEDIUM	2024-03-23 01:12:54	1	431
646	M-7	E102	HIGH	2024-08-05 01:26:49	1	485
647	M-8	E301	LOW	2024-02-29 13:50:01	1	554
648	M-7	E301	HIGH	2024-05-23 09:48:59	1	54
649	M-12	E201	MEDIUM	2024-02-05 17:57:11	0	116
650	M-1	E401	MEDIUM	2024-03-10 21:35:11	1	70
651	M-8	E101	HIGH	2024-06-03 21:15:32	1	439
652	M-9	E301	LOW	2024-03-11 09:40:43	1	124
653	M-10	E102	MEDIUM	2024-08-28 05:08:55	1	139
654	M-17	E102	MEDIUM	2024-06-06 18:56:17	1	708
655	M-7	E103	LOW	2024-09-22 00:40:42	1	42
656	M-14	E401	LOW	2024-08-07 11:55:33	0	492
657	M-5	E102	HIGH	2024-02-15 15:19:45	0	204
658	M-3	E103	HIGH	2024-03-12 01:03:58	0	654
659	M-20	E101	HIGH	2024-02-19 23:36:40	1	42
660	M-14	E103	MEDIUM	2024-08-25 18:08:17	1	122
661	M-15	E102	LOW	2024-04-22 21:46:27	1	615
662	M-6	E201	LOW	2024-08-23 23:30:56	0	440
663	M-15	E301	LOW	2024-06-21 09:50:05	1	176
664	M-10	E103	CRITICAL	2024-05-19 03:06:43	1	136
665	M-2	E202	LOW	2024-09-01 09:04:12	1	126
666	M-5	E202	HIGH	2024-06-10 06:04:10	1	250
667	M-15	E201	LOW	2024-02-09 19:33:49	1	212
668	M-13	E101	MEDIUM	2024-07-13 04:19:07	0	11
669	M-13	E102	LOW	2024-06-08 16:29:26	1	81
670	M-1	E201	LOW	2024-05-01 20:05:14	1	150
671	M-20	E401	MEDIUM	2024-07-07 01:16:53	1	462
672	M-4	E401	CRITICAL	2024-02-04 15:37:47	1	415
673	M-1	E102	HIGH	2024-10-27 01:01:03	1	329
674	M-3	E101	HIGH	2024-09-13 21:36:42	1	152
675	M-15	E102	LOW	2024-10-13 20:39:38	1	466
676	M-4	E101	LOW	2024-01-04 15:54:41	1	264
677	M-1	E202	LOW	2024-10-09 20:05:13	1	63
678	M-8	E201	LOW	2024-09-04 00:41:22	1	427
679	M-9	E102	HIGH	2024-11-30 10:30:32	1	530
680	M-12	E101	LOW	2024-06-13 14:27:49	1	517
681	M-6	E401	CRITICAL	2024-06-12 21:33:07	1	625
682	M-9	E102	LOW	2024-01-02 00:35:46	0	406
683	M-2	E101	HIGH	2024-10-13 12:42:45	1	140
684	M-3	E201	LOW	2024-03-13 03:13:50	1	39
685	M-7	E101	LOW	2024-12-15 04:22:57	1	714
686	M-5	E401	MEDIUM	2024-06-16 14:53:46	1	37
687	M-2	E201	MEDIUM	2024-09-28 12:21:14	1	520
688	M-14	E102	LOW	2024-08-01 09:06:03	1	576
689	M-9	E401	CRITICAL	2024-08-07 22:34:24	1	229
690	M-14	E102	MEDIUM	2024-10-16 11:38:07	1	400
691	M-5	E102	MEDIUM	2024-07-07 00:28:12	0	578
692	M-6	E101	LOW	2024-01-12 23:23:16	0	385
693	M-1	E201	MEDIUM	2024-02-12 18:09:56	1	387
694	M-2	E401	LOW	2024-05-27 04:11:07	1	147
695	M-11	E102	LOW	2024-10-31 14:35:35	0	628
696	M-19	E202	MEDIUM	2024-01-21 22:45:16	1	567
697	M-16	E202	CRITICAL	2024-09-03 21:43:56	1	425
698	M-17	E103	LOW	2024-06-21 05:54:50	1	533
699	M-13	E201	HIGH	2024-03-11 02:46:23	1	196
700	M-6	E103	CRITICAL	2024-01-23 02:03:01	0	318
701	M-11	E102	MEDIUM	2024-07-09 22:47:59	1	69
702	M-2	E301	MEDIUM	2024-01-31 10:05:07	1	275
703	M-2	E103	MEDIUM	2024-09-14 06:00:15	1	422
704	M-14	E401	CRITICAL	2024-11-17 13:40:53	0	87
705	M-18	E102	LOW	2024-09-02 13:21:41	1	439
706	M-17	E202	MEDIUM	2024-09-10 19:18:09	1	78
707	M-10	E103	MEDIUM	2024-03-23 09:19:10	1	26
708	M-3	E101	LOW	2024-01-14 00:45:48	1	561
709	M-3	E101	CRITICAL	2024-05-13 20:55:34	1	436
710	M-20	E103	LOW	2024-12-15 04:52:12	1	451
711	M-16	E201	LOW	2024-09-25 20:36:18	0	1
712	M-13	E301	CRITICAL	2024-09-10 09:13:35	1	349
713	M-9	E102	LOW	2024-08-29 15:14:27	1	352
714	M-6	E102	CRITICAL	2024-07-23 02:02:14	1	248
715	M-6	E103	LOW	2024-08-13 07:27:39	1	519
716	M-2	E101	LOW	2024-09-06 08:16:55	1	293
717	M-12	E103	LOW	2024-04-02 06:28:17	0	296
718	M-6	E301	HIGH	2024-07-25 14:06:40	0	115
719	M-5	E102	LOW	2024-12-07 21:22:09	1	119
720	M-3	E102	LOW	2024-07-16 10:26:11	1	668
721	M-12	E401	LOW	2024-03-21 14:23:26	0	170
722	M-19	E201	LOW	2024-06-17 20:15:14	1	644
723	M-7	E202	HIGH	2024-10-13 19:58:40	0	399
724	M-14	E101	MEDIUM	2024-05-08 22:48:40	1	704
725	M-15	E101	HIGH	2024-12-12 05:00:19	0	657
726	M-18	E101	CRITICAL	2024-07-12 13:17:47	0	207
727	M-15	E301	HIGH	2024-11-30 04:14:55	0	406
728	M-14	E401	LOW	2024-07-06 05:45:56	1	487
729	M-3	E202	LOW	2024-06-23 09:32:10	1	176
730	M-15	E102	MEDIUM	2024-12-12 04:14:55	0	711
731	M-11	E101	LOW	2024-05-02 12:06:01	1	232
732	M-12	E102	MEDIUM	2024-09-16 12:19:23	1	618
733	M-15	E102	MEDIUM	2024-12-03 15:22:11	1	676
734	M-11	E102	MEDIUM	2024-10-13 21:48:23	1	203
735	M-7	E401	LOW	2024-09-07 03:03:58	1	387
736	M-10	E201	LOW	2024-02-23 00:22:39	1	471
737	M-17	E301	LOW	2024-12-16 12:16:28	1	149
738	M-9	E301	MEDIUM	2024-12-29 13:21:01	0	562
739	M-19	E401	MEDIUM	2024-08-18 20:52:36	0	588
740	M-9	E202	LOW	2024-04-22 08:55:37	1	107
741	M-15	E202	LOW	2024-01-09 07:49:59	1	380
742	M-2	E301	LOW	2024-02-10 21:01:37	1	605
743	M-10	E202	LOW	2024-10-23 16:01:02	0	493
744	M-11	E201	MEDIUM	2024-09-23 00:45:47	0	195
745	M-5	E401	HIGH	2024-08-03 21:48:38	0	29
746	M-10	E103	MEDIUM	2024-06-25 16:52:17	0	502
747	M-6	E103	HIGH	2024-09-23 21:03:32	1	226
748	M-9	E103	HIGH	2024-12-11 01:47:55	1	351
749	M-6	E301	LOW	2024-05-24 03:38:42	0	592
750	M-9	E401	LOW	2024-09-16 02:40:00	1	443
751	M-14	E201	LOW	2024-05-21 20:14:12	1	213
752	M-9	E201	LOW	2024-11-15 12:47:03	1	689
753	M-18	E103	MEDIUM	2024-10-02 20:56:20	1	428
754	M-5	E101	HIGH	2024-12-20 13:03:41	1	686
755	M-2	E101	LOW	2024-10-06 10:27:16	1	375
756	M-12	E301	HIGH	2024-07-30 09:24:09	0	426
757	M-9	E101	MEDIUM	2024-09-02 02:18:46	0	64
758	M-13	E202	HIGH	2024-02-01 07:37:23	1	579
759	M-20	E202	MEDIUM	2024-06-05 14:23:07	0	26
760	M-16	E102	MEDIUM	2024-09-05 07:46:08	1	617
761	M-15	E201	HIGH	2024-11-10 11:08:30	1	38
762	M-15	E103	LOW	2024-03-15 07:19:16	1	62
763	M-3	E102	MEDIUM	2024-03-24 04:53:23	1	714
764	M-18	E202	MEDIUM	2024-02-27 13:18:26	1	154
765	M-3	E103	HIGH	2024-07-27 01:50:08	1	684
766	M-17	E301	LOW	2024-04-01 05:50:47	1	624
767	M-9	E401	HIGH	2024-03-26 13:51:16	1	408
768	M-1	E301	MEDIUM	2024-09-22 16:10:16	1	647
769	M-18	E103	HIGH	2024-06-08 10:35:10	0	57
770	M-2	E102	HIGH	2024-11-16 03:44:23	1	103
771	M-15	E103	LOW	2024-12-03 20:49:58	1	691
772	M-10	E301	LOW	2024-08-23 10:56:36	0	340
773	M-3	E101	CRITICAL	2024-07-03 03:10:36	0	642
774	M-3	E301	HIGH	2024-11-13 04:25:35	1	214
775	M-2	E401	CRITICAL	2024-05-16 12:06:33	1	600
776	M-20	E101	LOW	2024-05-19 16:15:32	1	214
777	M-12	E201	MEDIUM	2024-01-14 17:30:05	0	353
778	M-18	E401	HIGH	2024-10-12 21:40:53	1	703
779	M-5	E103	HIGH	2024-06-26 11:03:54	1	230
780	M-11	E103	LOW	2024-12-01 08:17:04	1	117
781	M-19	E202	MEDIUM	2024-04-15 02:29:19	1	681
782	M-19	E103	LOW	2024-08-03 09:19:20	1	467
783	M-4	E201	LOW	2024-05-21 03:30:17	1	342
784	M-2	E201	LOW	2024-01-22 19:23:06	0	537
785	M-19	E102	LOW	2024-01-12 04:24:56	1	117
786	M-13	E202	MEDIUM	2024-11-14 04:25:03	0	79
787	M-17	E301	HIGH	2024-04-06 18:45:15	0	707
788	M-18	E401	LOW	2024-04-22 10:05:01	1	365
789	M-20	E202	CRITICAL	2024-07-03 12:25:29	1	125
790	M-19	E103	LOW	2024-07-09 09:17:13	1	196
791	M-11	E301	HIGH	2024-12-06 22:15:51	1	25
792	M-15	E202	CRITICAL	2024-01-09 05:11:45	1	536
793	M-20	E103	LOW	2024-05-31 03:46:41	1	501
794	M-5	E102	HIGH	2024-05-10 20:05:18	1	202
795	M-3	E103	HIGH	2024-07-11 21:57:48	1	719
796	M-18	E301	LOW	2024-04-24 16:57:37	1	669
797	M-13	E401	MEDIUM	2024-10-29 11:00:38	1	225
798	M-9	E201	LOW	2024-03-04 12:18:03	1	38
799	M-8	E103	MEDIUM	2024-04-08 18:32:06	1	185
800	M-20	E102	LOW	2024-11-05 13:36:41	1	344
801	M-8	E101	MEDIUM	2024-10-13 17:12:16	1	515
802	M-7	E201	CRITICAL	2024-07-28 12:33:08	1	198
803	M-9	E101	MEDIUM	2024-08-28 07:02:58	1	506
804	M-14	E103	LOW	2024-01-18 20:43:26	1	239
805	M-18	E103	MEDIUM	2024-04-26 12:11:21	1	413
806	M-17	E201	HIGH	2024-04-09 15:14:40	1	87
807	M-19	E301	MEDIUM	2024-03-12 02:37:21	0	426
808	M-17	E102	LOW	2024-05-19 22:46:12	1	221
809	M-6	E301	CRITICAL	2024-03-01 16:40:00	1	253
810	M-14	E301	MEDIUM	2024-03-24 21:24:21	0	503
811	M-13	E102	MEDIUM	2024-10-26 04:33:07	1	540
812	M-4	E201	LOW	2024-11-19 05:49:07	1	170
813	M-2	E103	LOW	2024-08-03 00:44:51	1	449
814	M-5	E301	MEDIUM	2024-08-08 20:31:13	0	137
815	M-5	E103	HIGH	2024-10-27 23:32:09	0	472
816	M-15	E301	HIGH	2024-08-02 09:40:46	1	129
817	M-14	E101	MEDIUM	2024-12-08 03:57:27	0	370
818	M-12	E103	MEDIUM	2024-05-04 02:04:00	0	420
819	M-14	E301	MEDIUM	2024-09-04 17:37:12	0	206
820	M-2	E101	LOW	2024-12-12 03:05:38	0	717
821	M-7	E301	MEDIUM	2024-03-30 10:33:23	0	269
822	M-8	E202	LOW	2024-11-20 04:23:22	1	353
823	M-20	E202	HIGH	2024-09-11 23:22:13	1	128
824	M-6	E202	MEDIUM	2024-02-17 00:37:26	1	295
825	M-1	E101	LOW	2024-07-29 10:55:35	0	88
826	M-5	E103	HIGH	2024-07-08 09:31:01	0	631
827	M-16	E202	MEDIUM	2024-11-12 08:50:56	1	215
828	M-12	E102	HIGH	2024-11-22 14:46:49	1	490
829	M-18	E101	LOW	2024-02-21 01:56:50	0	59
830	M-16	E301	MEDIUM	2024-12-17 22:24:26	1	560
831	M-20	E101	HIGH	2024-10-19 22:23:01	1	396
832	M-14	E202	LOW	2024-12-26 22:29:14	1	253
833	M-18	E202	LOW	2024-12-19 05:24:02	1	337
834	M-8	E102	LOW	2024-05-21 15:59:26	1	198
835	M-7	E201	MEDIUM	2024-12-17 04:57:56	1	571
836	M-18	E202	MEDIUM	2024-03-04 07:16:56	0	678
837	M-8	E401	HIGH	2024-11-24 13:15:20	0	128
838	M-18	E103	LOW	2024-12-09 02:52:27	1	236
839	M-2	E401	CRITICAL	2024-06-17 14:40:46	1	286
840	M-9	E103	HIGH	2024-04-03 16:02:40	1	475
841	M-15	E301	LOW	2024-06-14 15:32:17	1	608
842	M-15	E301	MEDIUM	2024-02-29 11:42:09	1	299
843	M-19	E101	LOW	2024-12-17 07:35:52	0	54
844	M-12	E201	LOW	2024-01-30 19:20:27	1	612
845	M-7	E202	MEDIUM	2024-09-06 11:20:58	1	73
846	M-16	E102	MEDIUM	2024-11-30 19:46:02	0	341
847	M-3	E401	MEDIUM	2024-09-14 19:45:19	1	264
848	M-13	E101	MEDIUM	2024-08-03 22:21:48	1	607
849	M-9	E102	HIGH	2024-02-06 15:15:01	0	196
850	M-13	E103	LOW	2024-09-14 17:08:03	1	429
851	M-16	E301	CRITICAL	2024-09-20 05:41:09	1	548
852	M-10	E301	LOW	2024-03-03 15:46:30	1	314
853	M-5	E301	MEDIUM	2024-09-22 10:01:59	0	289
854	M-16	E103	CRITICAL	2024-07-23 10:25:06	1	507
855	M-16	E301	MEDIUM	2024-08-30 03:46:59	1	521
856	M-1	E202	MEDIUM	2024-06-19 13:52:42	1	125
857	M-10	E401	MEDIUM	2024-10-08 00:51:53	1	540
858	M-11	E101	LOW	2024-08-22 17:38:19	1	98
859	M-16	E103	LOW	2024-08-14 16:18:48	1	159
860	M-16	E101	LOW	2024-04-27 19:13:10	0	326
861	M-11	E301	MEDIUM	2024-07-30 06:09:04	1	74
862	M-16	E202	LOW	2024-01-03 06:07:35	1	99
863	M-3	E202	MEDIUM	2024-09-29 14:12:53	0	479
864	M-18	E201	HIGH	2024-12-15 01:57:10	0	241
865	M-2	E202	LOW	2024-05-15 06:05:11	0	429
866	M-6	E201	MEDIUM	2024-05-29 05:09:57	1	289
867	M-14	E401	LOW	2024-01-12 21:31:56	1	460
868	M-16	E102	MEDIUM	2024-02-16 11:14:53	0	266
869	M-18	E401	MEDIUM	2024-10-02 07:34:45	0	708
870	M-4	E202	MEDIUM	2024-05-09 06:07:52	1	574
871	M-19	E101	CRITICAL	2024-11-09 22:54:33	1	503
872	M-1	E103	MEDIUM	2024-09-12 12:15:20	1	214
873	M-7	E102	LOW	2024-03-07 22:31:35	1	246
874	M-17	E103	LOW	2024-05-22 19:15:02	1	620
875	M-18	E201	HIGH	2024-08-26 21:32:29	1	561
876	M-4	E201	MEDIUM	2024-09-05 09:21:51	1	455
877	M-4	E202	LOW	2024-03-09 05:03:12	0	414
878	M-14	E202	LOW	2024-05-27 18:08:17	0	11
879	M-13	E301	MEDIUM	2024-07-19 17:50:14	1	411
880	M-8	E401	MEDIUM	2024-09-23 06:31:30	1	326
881	M-19	E401	MEDIUM	2024-08-25 03:13:07	1	86
882	M-13	E101	HIGH	2024-03-24 16:43:35	1	662
883	M-18	E103	LOW	2024-08-28 17:51:02	1	683
884	M-6	E103	LOW	2024-07-17 17:42:21	1	596
885	M-15	E103	LOW	2024-09-20 21:39:00	1	173
886	M-19	E103	MEDIUM	2024-11-01 13:45:40	1	444
887	M-17	E202	MEDIUM	2024-11-07 03:51:51	1	601
888	M-10	E202	LOW	2024-03-04 01:38:07	1	635
889	M-19	E103	MEDIUM	2024-09-18 10:14:56	1	423
890	M-6	E401	CRITICAL	2024-04-04 06:09:28	1	271
891	M-2	E201	CRITICAL	2024-08-02 04:28:22	0	472
892	M-14	E102	MEDIUM	2024-07-25 14:26:00	1	238
893	M-4	E401	LOW	2024-08-11 07:07:46	1	92
894	M-17	E201	MEDIUM	2024-08-07 13:13:52	1	174
895	M-13	E401	MEDIUM	2024-04-09 02:25:09	0	45
896	M-11	E102	HIGH	2024-07-26 12:08:14	1	190
897	M-17	E103	CRITICAL	2024-06-18 02:23:26	1	669
898	M-17	E102	CRITICAL	2024-03-03 16:38:13	1	237
899	M-18	E102	CRITICAL	2024-08-16 04:09:10	0	417
900	M-5	E301	LOW	2024-04-03 17:48:19	1	582
901	M-7	E202	LOW	2024-03-28 17:35:21	0	435
902	M-3	E202	LOW	2024-04-21 12:44:16	0	497
903	M-5	E103	LOW	2024-01-04 01:15:36	1	687
904	M-14	E103	MEDIUM	2024-06-09 14:00:11	1	447
905	M-4	E102	LOW	2024-09-29 01:51:51	1	299
906	M-12	E102	MEDIUM	2024-11-30 17:54:06	0	55
907	M-3	E101	HIGH	2024-08-30 19:05:36	1	614
908	M-14	E102	CRITICAL	2024-11-09 10:19:02	0	458
909	M-4	E103	LOW	2024-11-06 11:25:11	0	297
910	M-18	E101	MEDIUM	2024-09-19 18:42:13	1	680
911	M-11	E102	LOW	2024-12-02 23:41:28	1	333
912	M-10	E301	HIGH	2024-12-13 22:19:06	1	207
913	M-5	E301	CRITICAL	2024-04-26 04:08:26	1	643
914	M-12	E103	LOW	2024-09-11 15:36:12	0	54
915	M-9	E201	HIGH	2024-04-27 22:09:13	1	662
916	M-16	E101	LOW	2024-06-29 04:45:49	1	378
917	M-8	E202	LOW	2024-09-19 06:54:41	1	621
918	M-14	E401	CRITICAL	2024-09-10 19:43:10	1	549
919	M-17	E202	MEDIUM	2024-10-13 01:58:11	1	342
920	M-12	E101	LOW	2024-11-11 04:09:04	0	317
921	M-8	E301	LOW	2024-04-02 02:18:15	1	38
922	M-14	E301	LOW	2024-09-16 19:29:05	1	521
923	M-9	E201	HIGH	2024-05-28 05:28:27	1	246
924	M-14	E101	LOW	2024-04-18 07:57:12	1	354
925	M-5	E301	CRITICAL	2024-03-04 04:59:53	1	300
926	M-12	E101	MEDIUM	2024-05-30 05:57:15	1	675
927	M-4	E301	MEDIUM	2024-01-03 22:23:06	0	98
928	M-15	E201	LOW	2024-02-05 13:29:19	0	401
929	M-10	E201	LOW	2024-02-07 02:29:51	1	237
930	M-9	E101	MEDIUM	2024-03-25 05:03:47	0	309
931	M-16	E201	MEDIUM	2024-04-15 11:32:26	0	531
932	M-13	E202	HIGH	2024-08-05 09:40:56	1	664
933	M-17	E103	HIGH	2024-09-28 05:30:23	1	635
934	M-16	E201	LOW	2024-04-20 22:56:10	0	208
935	M-2	E301	HIGH	2024-03-15 23:56:04	1	160
936	M-18	E101	CRITICAL	2024-11-24 20:54:29	1	117
937	M-17	E103	LOW	2024-08-02 23:25:35	1	508
938	M-13	E401	MEDIUM	2024-04-12 10:19:47	1	341
939	M-13	E401	LOW	2024-08-03 22:00:30	1	43
940	M-17	E201	MEDIUM	2024-07-20 06:57:01	1	130
941	M-8	E201	CRITICAL	2024-08-19 09:44:26	0	11
942	M-4	E101	LOW	2024-03-22 06:36:44	1	717
943	M-18	E201	HIGH	2024-04-27 08:45:58	0	10
944	M-16	E103	LOW	2024-11-06 15:06:16	1	652
945	M-13	E101	HIGH	2024-10-14 10:16:24	0	548
946	M-9	E103	HIGH	2024-06-20 08:15:36	0	696
947	M-19	E401	LOW	2024-08-24 15:47:24	0	88
948	M-12	E301	MEDIUM	2024-10-10 14:34:18	0	500
949	M-4	E102	MEDIUM	2024-08-24 02:36:41	1	610
950	M-18	E401	MEDIUM	2024-12-13 18:01:23	1	425
951	M-10	E202	MEDIUM	2024-12-11 03:55:31	1	505
952	M-4	E101	HIGH	2024-09-12 10:28:18	0	619
953	M-9	E202	MEDIUM	2024-11-14 16:39:41	0	294
954	M-6	E102	MEDIUM	2024-10-06 07:26:22	1	511
955	M-7	E103	MEDIUM	2024-08-12 05:27:35	1	482
956	M-8	E401	MEDIUM	2024-06-11 01:40:02	1	545
957	M-1	E301	MEDIUM	2024-07-18 06:30:06	0	107
958	M-18	E102	MEDIUM	2024-12-24 14:10:16	0	645
959	M-1	E301	LOW	2024-08-09 06:09:08	1	167
960	M-8	E401	HIGH	2024-07-26 16:03:14	1	276
961	M-15	E102	CRITICAL	2024-07-10 21:10:33	0	157
962	M-11	E102	MEDIUM	2024-05-30 03:57:47	0	320
963	M-2	E202	CRITICAL	2024-09-21 23:31:57	1	584
964	M-8	E301	LOW	2024-07-28 06:08:27	0	21
965	M-17	E401	HIGH	2024-06-07 13:22:05	1	486
966	M-5	E102	HIGH	2024-12-20 11:58:33	1	303
967	M-13	E101	MEDIUM	2024-12-08 02:46:41	1	439
968	M-1	E202	HIGH	2024-10-07 17:23:37	0	488
969	M-3	E103	HIGH	2024-03-22 03:25:07	1	145
970	M-16	E202	LOW	2024-06-01 07:53:36	1	230
971	M-9	E101	LOW	2024-03-04 08:49:20	0	577
972	M-3	E202	MEDIUM	2024-01-13 18:57:45	1	526
973	M-17	E102	LOW	2024-03-09 18:42:31	1	34
974	M-9	E401	LOW	2024-02-28 13:09:42	1	196
975	M-3	E202	MEDIUM	2024-03-23 22:11:15	1	602
976	M-15	E201	LOW	2024-04-13 08:26:25	0	408
977	M-14	E103	CRITICAL	2024-11-08 20:21:25	0	708
978	M-9	E103	HIGH	2024-04-17 21:40:25	1	300
979	M-3	E103	MEDIUM	2024-04-08 13:08:37	0	676
980	M-12	E102	CRITICAL	2024-04-16 01:54:45	1	387
981	M-11	E301	LOW	2024-04-08 20:20:20	1	73
982	M-17	E301	HIGH	2024-08-28 05:47:44	0	384
983	M-15	E301	HIGH	2024-07-27 16:30:09	0	483
984	M-7	E301	HIGH	2024-01-22 01:10:02	1	485
985	M-2	E301	HIGH	2024-09-13 05:26:16	1	541
986	M-16	E101	LOW	2024-09-12 22:55:07	1	10
987	M-17	E103	MEDIUM	2024-02-26 13:33:30	1	490
988	M-9	E202	CRITICAL	2024-07-27 20:49:57	1	24
989	M-3	E401	MEDIUM	2024-05-26 09:46:44	0	317
990	M-17	E102	MEDIUM	2024-08-30 00:38:39	1	693
991	M-11	E101	MEDIUM	2024-04-27 00:58:52	1	171
992	M-15	E103	MEDIUM	2024-04-28 20:37:09	0	295
993	M-17	E202	HIGH	2024-06-19 21:35:09	0	332
994	M-1	E101	MEDIUM	2024-11-28 16:12:57	1	311
995	M-18	E101	CRITICAL	2024-12-02 02:17:46	1	139
996	M-11	E401	HIGH	2024-04-24 17:16:17	0	477
997	M-1	E202	LOW	2024-10-06 16:15:20	1	169
998	M-14	E202	HIGH	2024-08-05 01:02:21	1	604
999	M-11	E201	HIGH	2024-07-10 08:45:24	1	300
1000	M-3	E301	CRITICAL	2024-01-28 21:48:46	1	433
1001	M-12	E202	MEDIUM	2024-07-13 18:48:26	1	620
1002	M-16	E201	LOW	2024-11-15 00:05:42	0	427
1003	M-19	E401	MEDIUM	2024-08-09 02:49:03	1	640
1004	M-20	E202	MEDIUM	2024-12-09 10:47:31	1	495
1005	M-3	E103	HIGH	2024-08-05 21:59:56	0	378
1006	M-11	E103	CRITICAL	2024-09-30 06:08:59	1	281
1007	M-18	E102	MEDIUM	2024-08-09 14:33:03	1	60
1008	M-14	E201	LOW	2024-02-07 06:35:04	1	49
1009	M-13	E101	HIGH	2024-05-20 21:01:13	1	397
1010	M-4	E103	HIGH	2024-07-22 16:22:53	1	444
1011	M-5	E401	MEDIUM	2024-08-29 20:04:39	1	82
1012	M-6	E202	LOW	2024-07-29 20:58:54	1	425
1013	M-14	E401	LOW	2024-07-19 23:26:48	1	271
1014	M-17	E103	CRITICAL	2024-11-29 03:40:31	1	667
1015	M-7	E301	CRITICAL	2024-06-21 00:35:21	1	480
1016	M-15	E103	LOW	2024-12-05 10:47:20	1	444
1017	M-8	E101	HIGH	2024-04-07 13:27:00	1	90
1018	M-15	E102	LOW	2024-10-04 02:41:11	1	282
1019	M-9	E301	MEDIUM	2024-07-27 03:46:13	1	657
1020	M-17	E401	HIGH	2024-04-17 07:24:17	1	352
1021	M-15	E202	LOW	2024-07-08 21:48:39	1	297
1022	M-11	E101	HIGH	2024-07-20 22:39:43	1	562
1023	M-20	E101	HIGH	2024-05-06 16:39:17	1	41
1024	M-11	E103	MEDIUM	2024-03-01 16:50:52	0	602
1025	M-15	E401	MEDIUM	2024-06-19 03:56:48	1	525
1026	M-10	E103	LOW	2024-02-09 22:24:43	0	203
1027	M-12	E103	MEDIUM	2024-11-03 16:17:19	1	227
1028	M-5	E101	MEDIUM	2024-05-04 23:12:20	1	283
1029	M-2	E103	LOW	2024-02-11 23:39:37	1	283
1030	M-20	E102	MEDIUM	2024-11-12 00:36:09	1	507
1031	M-20	E301	HIGH	2024-07-23 15:37:45	1	180
1032	M-2	E201	MEDIUM	2024-09-08 16:35:51	1	158
1033	M-8	E301	CRITICAL	2024-01-23 12:38:08	1	718
1034	M-19	E301	LOW	2024-01-14 22:17:14	1	389
1035	M-13	E103	MEDIUM	2024-01-04 11:23:40	1	476
1036	M-6	E301	LOW	2024-03-11 20:19:02	1	112
1037	M-20	E301	HIGH	2024-08-05 01:42:52	1	509
1038	M-1	E301	LOW	2024-04-28 11:12:51	0	568
1039	M-5	E102	HIGH	2024-10-13 19:52:14	0	567
1040	M-10	E103	MEDIUM	2024-08-02 02:43:27	1	430
1041	M-4	E102	MEDIUM	2024-10-13 17:14:25	0	664
1042	M-12	E101	MEDIUM	2024-07-07 21:30:50	1	556
1043	M-16	E202	HIGH	2024-07-08 06:29:11	1	314
1044	M-6	E103	CRITICAL	2024-10-31 01:56:23	1	591
1045	M-3	E103	LOW	2024-07-07 04:54:02	1	555
1046	M-4	E101	LOW	2024-09-13 11:05:07	1	437
1047	M-11	E101	MEDIUM	2024-05-10 05:15:56	1	51
1048	M-8	E301	CRITICAL	2024-06-15 23:25:14	0	610
1049	M-14	E202	MEDIUM	2024-10-25 09:48:30	0	613
1050	M-17	E202	LOW	2024-08-12 12:33:31	1	45
1051	M-9	E401	LOW	2024-03-19 00:41:47	0	439
1052	M-9	E202	HIGH	2024-03-22 01:57:33	1	381
1053	M-9	E401	HIGH	2024-01-13 09:52:17	1	227
1054	M-10	E202	HIGH	2024-10-03 15:09:01	1	509
1055	M-7	E102	MEDIUM	2024-11-30 19:44:49	0	182
1056	M-17	E102	MEDIUM	2024-03-31 03:08:01	1	515
1057	M-19	E201	LOW	2024-07-25 10:34:46	0	211
1058	M-19	E301	LOW	2024-09-05 19:30:03	1	699
1059	M-10	E101	MEDIUM	2024-01-24 21:04:52	1	582
1060	M-2	E301	HIGH	2024-10-25 11:09:43	1	619
1061	M-19	E401	LOW	2024-05-08 03:33:48	1	548
1062	M-13	E201	CRITICAL	2024-04-21 19:10:19	1	712
1063	M-5	E401	MEDIUM	2024-10-26 21:40:54	1	335
1064	M-10	E301	CRITICAL	2024-01-15 04:57:20	0	173
1065	M-13	E101	LOW	2024-11-02 03:39:21	1	203
1066	M-3	E201	LOW	2024-07-09 09:58:10	0	329
1067	M-7	E102	CRITICAL	2024-04-02 20:18:02	1	520
1068	M-1	E101	LOW	2024-01-05 04:28:14	1	337
1069	M-8	E103	LOW	2024-08-07 10:19:09	1	574
1070	M-1	E401	CRITICAL	2024-12-21 19:32:56	0	265
1071	M-19	E103	MEDIUM	2024-10-19 16:47:48	1	3
1072	M-12	E101	LOW	2024-08-05 15:32:32	1	329
1073	M-5	E201	MEDIUM	2024-10-07 01:34:24	1	20
1074	M-15	E103	LOW	2024-11-26 20:53:26	1	49
1075	M-3	E201	MEDIUM	2024-04-30 02:16:48	0	144
1076	M-17	E401	MEDIUM	2024-09-29 09:02:07	0	259
1077	M-6	E101	LOW	2024-02-05 04:43:11	1	529
1078	M-5	E102	LOW	2024-07-13 13:03:08	1	78
1079	M-3	E101	MEDIUM	2024-12-13 14:40:38	1	569
1080	M-11	E202	LOW	2024-05-14 02:01:36	0	6
1081	M-20	E102	CRITICAL	2024-10-18 05:09:36	1	166
1082	M-15	E401	LOW	2024-09-11 07:14:59	1	341
1083	M-14	E401	MEDIUM	2024-09-14 15:05:48	1	245
1084	M-2	E101	MEDIUM	2024-12-01 18:48:46	0	170
1085	M-10	E101	MEDIUM	2024-06-25 04:40:16	1	655
1086	M-18	E401	HIGH	2024-12-27 16:25:43	0	329
1087	M-15	E102	LOW	2024-07-31 01:16:43	1	332
1088	M-2	E103	MEDIUM	2024-09-14 00:49:25	1	263
1089	M-1	E301	LOW	2024-05-06 21:05:10	1	158
1090	M-14	E401	LOW	2024-07-07 17:01:31	1	326
1091	M-4	E202	MEDIUM	2024-01-12 00:06:34	1	499
1092	M-8	E301	HIGH	2024-12-09 02:58:30	0	112
1093	M-5	E201	LOW	2024-06-03 09:42:26	0	586
1094	M-1	E102	MEDIUM	2024-05-19 10:45:42	0	653
1095	M-14	E103	HIGH	2024-10-29 22:12:30	0	129
1096	M-5	E301	LOW	2024-08-18 02:29:49	1	536
1097	M-15	E301	MEDIUM	2024-02-26 09:11:52	0	498
1098	M-5	E202	MEDIUM	2024-11-17 16:09:23	1	704
1099	M-8	E202	HIGH	2024-12-23 01:21:32	1	346
1100	M-17	E103	LOW	2024-01-14 15:57:48	1	490
1101	M-13	E102	HIGH	2024-04-29 16:54:49	1	553
1102	M-20	E202	CRITICAL	2024-12-27 18:35:35	0	607
1103	M-1	E102	CRITICAL	2024-02-26 04:42:07	0	679
1104	M-3	E101	MEDIUM	2024-06-17 08:48:09	0	569
1105	M-14	E202	LOW	2024-05-10 04:12:44	1	116
1106	M-3	E301	HIGH	2024-10-21 04:24:06	1	127
1107	M-3	E102	MEDIUM	2024-06-07 11:20:26	1	270
1108	M-20	E201	LOW	2024-02-16 09:12:08	1	424
1109	M-10	E301	LOW	2024-08-26 13:38:37	1	431
1110	M-20	E202	LOW	2024-11-07 14:09:25	0	502
1111	M-14	E202	MEDIUM	2024-10-15 19:14:16	1	653
1112	M-9	E101	LOW	2024-04-25 05:32:31	1	11
1113	M-7	E102	MEDIUM	2024-11-12 10:04:15	1	94
1114	M-17	E101	LOW	2024-05-22 21:55:04	0	622
1115	M-5	E401	CRITICAL	2024-05-21 03:54:28	1	345
1116	M-10	E102	MEDIUM	2024-10-29 23:59:32	1	400
1117	M-2	E202	HIGH	2024-03-04 09:45:48	1	416
1118	M-14	E102	MEDIUM	2024-01-27 08:42:24	1	689
1119	M-18	E101	MEDIUM	2024-04-02 06:36:17	0	28
1120	M-18	E401	MEDIUM	2024-01-23 19:56:54	1	97
1121	M-19	E103	MEDIUM	2024-01-20 16:09:34	0	566
1122	M-4	E301	MEDIUM	2024-03-05 15:06:18	1	646
1123	M-20	E101	LOW	2024-09-23 05:01:50	0	105
1124	M-5	E101	MEDIUM	2024-03-29 01:25:27	0	397
1125	M-10	E401	HIGH	2024-08-13 23:01:56	1	281
1126	M-14	E102	MEDIUM	2024-12-26 17:19:15	1	465
1127	M-15	E401	LOW	2024-11-22 18:19:53	1	299
1128	M-9	E301	LOW	2024-11-17 05:55:07	1	468
1129	M-6	E202	LOW	2024-09-25 21:27:42	1	226
1130	M-17	E201	LOW	2024-02-16 04:39:52	1	319
1131	M-15	E201	CRITICAL	2024-11-16 10:36:09	0	213
1132	M-16	E202	MEDIUM	2024-07-10 21:42:15	1	293
1133	M-14	E201	MEDIUM	2024-10-24 12:35:16	1	295
1134	M-7	E103	LOW	2024-08-31 03:33:11	0	321
1135	M-2	E201	HIGH	2024-10-29 00:52:56	1	17
1136	M-15	E301	MEDIUM	2024-01-30 09:51:53	1	364
1137	M-6	E202	MEDIUM	2024-03-24 03:40:51	1	22
1138	M-10	E101	MEDIUM	2024-06-30 19:00:17	0	351
1139	M-16	E102	LOW	2024-06-05 05:42:10	1	525
1140	M-8	E401	HIGH	2024-07-04 10:34:30	1	394
1141	M-18	E101	LOW	2024-01-19 09:12:53	0	289
1142	M-16	E103	MEDIUM	2024-08-15 02:42:47	1	16
1143	M-20	E101	HIGH	2024-05-23 05:35:01	1	608
1144	M-4	E301	CRITICAL	2024-09-29 20:04:35	1	616
1145	M-18	E202	LOW	2024-06-07 12:02:29	1	362
1146	M-18	E103	MEDIUM	2024-08-28 15:11:10	0	410
1147	M-15	E103	MEDIUM	2024-01-20 07:11:16	1	186
1148	M-13	E301	HIGH	2024-01-29 14:55:05	1	530
1149	M-5	E301	HIGH	2024-05-21 16:30:27	0	232
1150	M-14	E103	HIGH	2024-07-31 02:07:34	1	568
1151	M-5	E201	HIGH	2024-02-22 03:40:11	1	520
1152	M-5	E401	HIGH	2024-05-11 09:02:01	0	210
1153	M-9	E202	LOW	2024-06-12 21:34:09	1	175
1154	M-11	E101	LOW	2024-08-22 09:20:18	1	465
1155	M-7	E101	CRITICAL	2024-07-11 05:32:38	1	300
1156	M-15	E301	HIGH	2024-07-27 22:00:13	1	621
1157	M-4	E103	HIGH	2024-02-29 12:09:24	1	69
1158	M-1	E103	HIGH	2024-09-29 15:32:32	1	719
1159	M-16	E102	HIGH	2024-08-04 21:46:16	1	164
1160	M-15	E202	MEDIUM	2024-09-17 01:40:56	0	537
1161	M-6	E103	MEDIUM	2024-03-25 14:48:51	0	369
1162	M-18	E202	LOW	2024-08-14 05:07:23	1	533
1163	M-2	E201	LOW	2024-05-27 16:06:04	1	715
1164	M-18	E401	LOW	2024-04-23 05:26:57	0	120
1165	M-16	E102	MEDIUM	2024-05-28 15:34:16	0	289
1166	M-17	E202	LOW	2024-07-11 11:34:59	1	124
1167	M-10	E201	MEDIUM	2024-03-30 21:25:01	1	335
1168	M-1	E102	MEDIUM	2024-03-03 17:38:37	1	521
1169	M-8	E201	MEDIUM	2024-01-15 02:02:32	0	320
1170	M-4	E201	HIGH	2024-03-21 06:47:12	1	305
1171	M-16	E401	HIGH	2024-07-17 17:09:24	0	93
1172	M-9	E101	HIGH	2024-09-13 18:39:42	0	313
1173	M-8	E201	MEDIUM	2024-01-15 20:26:21	1	114
1174	M-12	E202	LOW	2024-06-16 15:57:05	1	472
1175	M-14	E202	HIGH	2024-01-07 09:28:32	1	360
1176	M-20	E102	LOW	2024-01-13 02:12:06	1	552
1177	M-6	E103	HIGH	2024-03-27 18:20:06	0	350
1178	M-11	E102	CRITICAL	2024-12-01 04:17:56	1	698
1179	M-19	E401	LOW	2024-10-27 05:51:26	1	120
1180	M-4	E103	MEDIUM	2024-02-29 10:53:46	1	350
1181	M-12	E201	LOW	2024-10-25 02:59:55	0	30
1182	M-1	E201	MEDIUM	2024-06-21 14:15:53	1	58
1183	M-19	E101	MEDIUM	2024-08-06 01:22:21	1	127
1184	M-17	E103	HIGH	2024-11-21 19:33:17	1	243
1185	M-16	E102	MEDIUM	2024-01-01 23:40:44	1	192
1186	M-6	E401	LOW	2024-12-07 17:44:20	0	140
1187	M-3	E102	MEDIUM	2024-06-04 14:49:44	0	124
1188	M-9	E401	LOW	2024-04-26 00:52:57	1	573
1189	M-4	E202	LOW	2024-02-02 15:12:18	1	350
1190	M-10	E103	CRITICAL	2024-06-12 01:32:42	1	277
1191	M-15	E101	LOW	2024-12-16 13:19:28	1	21
1192	M-7	E102	CRITICAL	2024-03-23 06:22:13	1	222
1193	M-8	E202	LOW	2024-10-04 21:41:26	1	204
1194	M-12	E103	LOW	2024-09-13 03:53:08	1	140
1195	M-17	E301	MEDIUM	2024-12-01 07:15:36	1	358
1196	M-11	E301	HIGH	2024-03-29 14:18:04	1	60
1197	M-13	E103	MEDIUM	2024-02-02 06:21:50	1	318
1198	M-12	E103	MEDIUM	2024-10-23 07:05:28	1	222
1199	M-10	E301	LOW	2024-01-13 03:39:31	1	675
1200	M-13	E202	MEDIUM	2024-01-04 11:55:28	0	189
1201	M-19	E103	HIGH	2024-04-01 04:34:21	1	353
1202	M-17	E103	MEDIUM	2024-02-13 16:46:06	0	641
1203	M-14	E102	HIGH	2024-11-30 00:35:16	1	609
1204	M-1	E101	LOW	2024-07-11 15:50:03	0	687
1205	M-7	E103	LOW	2024-01-21 16:38:57	1	159
1206	M-9	E202	HIGH	2024-05-18 04:05:43	1	326
1207	M-12	E201	LOW	2024-06-17 16:21:53	1	37
1208	M-5	E202	LOW	2024-09-05 22:34:56	1	264
1209	M-6	E101	HIGH	2024-02-03 20:31:26	1	119
1210	M-20	E103	MEDIUM	2024-09-14 14:12:21	1	95
1211	M-6	E201	LOW	2024-03-19 04:39:50	1	210
1212	M-3	E201	MEDIUM	2024-12-25 16:09:30	0	165
1213	M-5	E202	MEDIUM	2024-10-31 19:32:48	1	635
1214	M-15	E202	CRITICAL	2024-02-13 04:12:22	1	38
1215	M-1	E102	LOW	2024-11-24 21:50:37	0	264
1216	M-16	E201	CRITICAL	2024-01-07 10:29:41	1	527
1217	M-14	E201	MEDIUM	2024-12-03 19:58:06	1	587
1218	M-5	E301	MEDIUM	2024-04-01 23:48:29	1	244
1219	M-1	E101	HIGH	2024-02-16 08:40:18	1	191
1220	M-2	E101	MEDIUM	2024-12-15 23:18:27	1	42
1221	M-12	E201	HIGH	2024-08-26 14:57:48	1	301
1222	M-10	E202	MEDIUM	2024-12-14 08:03:38	0	43
1223	M-9	E301	CRITICAL	2024-03-17 04:59:39	0	217
1224	M-18	E301	LOW	2024-02-27 15:07:42	1	304
1225	M-6	E201	MEDIUM	2024-06-09 22:31:23	1	641
1226	M-1	E201	HIGH	2024-09-23 01:10:15	1	344
1227	M-20	E201	MEDIUM	2024-11-01 13:10:59	1	128
1228	M-11	E202	HIGH	2024-11-13 20:32:19	1	163
1229	M-4	E301	MEDIUM	2024-06-04 16:36:50	1	437
1230	M-14	E201	LOW	2024-11-18 09:01:26	1	257
1231	M-6	E201	LOW	2024-04-09 22:43:44	1	711
1232	M-7	E202	HIGH	2024-05-06 07:25:30	1	718
1233	M-3	E103	HIGH	2024-09-28 13:50:24	0	480
1234	M-6	E103	MEDIUM	2024-10-20 07:53:03	0	56
1235	M-11	E201	MEDIUM	2024-02-13 19:03:27	0	119
1236	M-4	E401	MEDIUM	2024-09-04 15:02:20	0	267
1237	M-4	E101	MEDIUM	2024-12-16 06:56:52	1	372
1238	M-13	E201	MEDIUM	2024-04-15 23:28:12	0	252
1239	M-13	E401	LOW	2024-01-12 09:37:13	1	489
1240	M-19	E103	CRITICAL	2024-06-25 20:35:43	1	15
1241	M-18	E101	HIGH	2024-10-13 06:43:29	1	643
1242	M-10	E401	MEDIUM	2024-10-08 03:55:00	1	165
1243	M-2	E401	MEDIUM	2024-12-15 07:47:15	1	292
1244	M-19	E103	HIGH	2024-03-03 20:09:07	0	295
1245	M-3	E201	MEDIUM	2024-05-13 11:37:55	1	39
1246	M-5	E301	HIGH	2024-07-09 06:29:05	1	500
1247	M-15	E101	MEDIUM	2024-04-08 06:38:19	1	382
1248	M-20	E301	LOW	2024-10-01 08:30:20	1	352
1249	M-9	E201	LOW	2024-05-29 13:25:29	1	144
1250	M-11	E201	LOW	2024-03-07 00:47:30	1	139
1251	M-14	E103	HIGH	2024-02-16 20:41:24	1	226
1252	M-1	E202	HIGH	2024-07-09 09:32:21	1	500
1253	M-10	E301	MEDIUM	2024-10-12 19:48:50	1	72
1254	M-8	E301	MEDIUM	2024-05-12 05:26:49	1	177
1255	M-8	E401	LOW	2024-06-26 05:46:40	1	7
1256	M-11	E202	LOW	2024-05-14 19:17:16	1	443
1257	M-4	E102	LOW	2024-10-30 16:37:36	0	192
1258	M-17	E301	HIGH	2024-12-12 04:28:24	1	628
1259	M-14	E102	MEDIUM	2024-05-21 02:05:43	1	263
1260	M-5	E103	MEDIUM	2024-06-13 12:52:55	1	432
1261	M-15	E202	CRITICAL	2024-05-16 13:15:09	0	60
1262	M-11	E401	MEDIUM	2024-12-03 02:01:34	1	653
1263	M-8	E201	HIGH	2024-10-24 18:13:27	0	268
1264	M-11	E102	LOW	2024-09-17 15:40:53	1	103
1265	M-14	E202	HIGH	2024-07-19 17:13:03	0	223
1266	M-7	E401	CRITICAL	2024-02-20 19:25:09	1	26
1267	M-14	E102	LOW	2024-06-19 21:26:43	1	121
1268	M-10	E301	CRITICAL	2024-01-14 22:40:39	1	546
1269	M-8	E201	LOW	2024-05-17 05:13:21	1	599
1270	M-4	E202	LOW	2024-09-09 06:05:52	1	717
1271	M-13	E401	MEDIUM	2024-11-18 03:12:48	0	218
1272	M-11	E202	MEDIUM	2024-09-13 06:02:24	1	307
1273	M-7	E401	HIGH	2024-02-17 03:57:54	1	91
1274	M-7	E401	HIGH	2024-10-25 03:44:20	1	395
1275	M-1	E101	MEDIUM	2024-08-10 21:26:06	1	428
1276	M-19	E201	LOW	2024-09-16 15:23:53	1	117
1277	M-17	E201	LOW	2024-11-02 03:37:51	1	202
1278	M-17	E103	HIGH	2024-02-11 18:27:10	1	435
1279	M-7	E401	HIGH	2024-04-30 08:23:21	1	245
1280	M-11	E201	HIGH	2024-02-14 21:42:50	0	225
1281	M-15	E102	MEDIUM	2024-03-08 20:34:54	0	101
1282	M-4	E102	MEDIUM	2024-01-07 08:15:11	0	173
1283	M-13	E102	LOW	2024-12-12 18:18:37	1	662
1284	M-7	E201	MEDIUM	2024-06-16 23:31:26	1	449
1285	M-20	E201	CRITICAL	2024-07-20 21:14:13	1	464
1286	M-20	E102	MEDIUM	2024-10-03 05:38:00	0	701
1287	M-3	E201	HIGH	2024-05-29 05:57:52	1	701
1288	M-3	E202	LOW	2024-07-04 19:58:15	1	33
1289	M-7	E301	MEDIUM	2024-12-21 03:57:59	1	95
1290	M-1	E202	MEDIUM	2024-11-29 22:00:26	1	386
1291	M-9	E202	LOW	2024-12-15 19:50:13	1	82
1292	M-3	E201	MEDIUM	2024-05-10 21:53:08	1	451
1293	M-8	E202	CRITICAL	2024-01-23 15:12:20	1	602
1294	M-12	E201	MEDIUM	2024-07-09 06:56:09	1	269
1295	M-2	E201	LOW	2024-06-21 06:44:55	0	413
1296	M-15	E202	HIGH	2024-11-20 19:14:49	1	685
1297	M-7	E301	LOW	2024-10-12 09:08:24	1	562
1298	M-11	E102	CRITICAL	2024-04-12 21:14:27	1	615
1299	M-2	E301	LOW	2024-08-26 06:55:36	0	409
1300	M-12	E202	LOW	2024-02-03 12:54:55	1	386
1301	M-7	E101	LOW	2024-12-23 03:58:51	0	425
1302	M-12	E201	LOW	2024-01-20 09:48:02	1	324
1303	M-7	E102	MEDIUM	2024-02-11 03:50:49	1	605
1304	M-11	E202	HIGH	2024-03-11 23:14:28	1	486
1305	M-1	E101	LOW	2024-05-21 17:29:41	0	560
1306	M-13	E401	HIGH	2024-04-06 09:45:49	0	608
1307	M-12	E201	MEDIUM	2024-10-29 21:42:24	1	631
1308	M-4	E103	LOW	2024-12-06 14:19:09	1	610
1309	M-3	E103	MEDIUM	2024-07-24 00:09:35	0	237
1310	M-17	E301	MEDIUM	2024-02-22 03:29:19	1	481
1311	M-1	E202	LOW	2024-09-11 07:53:55	1	619
1312	M-17	E202	MEDIUM	2024-11-12 11:37:32	0	19
1313	M-19	E201	MEDIUM	2024-03-14 07:10:10	1	510
1314	M-19	E202	MEDIUM	2024-06-18 20:46:23	0	180
1315	M-14	E103	MEDIUM	2024-09-17 09:31:51	1	328
1316	M-3	E103	LOW	2024-10-08 00:09:09	1	634
1317	M-6	E101	MEDIUM	2024-06-01 21:07:42	1	292
1318	M-20	E401	LOW	2024-09-04 13:08:34	1	21
1319	M-17	E103	LOW	2024-03-03 23:09:17	1	25
1320	M-20	E301	MEDIUM	2024-07-01 06:12:45	1	288
1321	M-17	E401	MEDIUM	2024-10-17 12:35:33	1	583
1322	M-15	E401	HIGH	2024-09-02 10:31:45	0	45
1323	M-14	E101	LOW	2024-11-13 12:18:55	1	125
1324	M-17	E102	MEDIUM	2024-09-22 21:23:07	0	611
1325	M-13	E202	LOW	2024-07-04 07:22:09	1	650
1326	M-6	E202	HIGH	2024-12-21 02:38:00	1	368
1327	M-13	E301	LOW	2024-09-09 19:00:49	1	370
1328	M-9	E102	HIGH	2024-02-13 04:37:04	1	405
1329	M-7	E201	MEDIUM	2024-05-23 20:28:16	1	537
1330	M-7	E101	HIGH	2024-01-25 17:35:23	1	526
1331	M-1	E202	LOW	2024-08-09 08:56:10	1	281
1332	M-16	E102	MEDIUM	2024-06-06 05:13:54	1	371
1333	M-20	E102	MEDIUM	2024-10-29 22:36:06	1	514
1334	M-3	E201	HIGH	2024-02-02 10:54:52	1	220
1335	M-9	E103	LOW	2024-06-04 00:45:40	1	262
1336	M-3	E401	CRITICAL	2024-08-21 06:44:25	0	365
1337	M-17	E301	HIGH	2024-02-16 04:34:13	1	60
1338	M-20	E301	MEDIUM	2024-04-08 09:17:20	1	47
1339	M-6	E102	LOW	2024-11-06 11:09:10	1	643
1340	M-2	E301	CRITICAL	2024-06-07 23:34:07	1	672
1341	M-1	E401	MEDIUM	2024-01-15 11:17:17	1	47
1342	M-19	E202	LOW	2024-04-26 22:06:33	1	119
1343	M-14	E103	MEDIUM	2024-01-24 13:24:25	1	44
1344	M-13	E301	LOW	2024-02-12 21:55:24	1	612
1345	M-8	E202	HIGH	2024-06-22 14:53:11	1	497
1346	M-19	E401	MEDIUM	2024-05-15 10:22:52	1	136
1347	M-8	E401	CRITICAL	2024-11-07 05:33:23	1	666
1348	M-8	E401	LOW	2024-01-22 23:18:08	1	499
1349	M-12	E102	HIGH	2024-08-31 18:38:43	1	197
1350	M-17	E301	MEDIUM	2024-01-13 16:12:17	1	353
1351	M-20	E102	HIGH	2024-11-05 16:30:15	1	330
1352	M-4	E201	LOW	2024-02-28 04:24:18	1	398
1353	M-17	E202	MEDIUM	2024-05-22 07:21:30	1	7
1354	M-8	E101	HIGH	2024-12-29 02:55:54	1	652
1355	M-17	E401	MEDIUM	2024-03-03 09:19:16	1	450
1356	M-10	E201	MEDIUM	2024-05-01 20:55:39	1	175
1357	M-8	E201	HIGH	2024-01-21 20:41:03	1	514
1358	M-19	E102	LOW	2024-10-16 19:31:07	0	353
1359	M-9	E301	MEDIUM	2024-12-16 03:59:28	1	40
1360	M-1	E102	LOW	2024-08-09 06:26:23	1	280
1361	M-3	E301	LOW	2024-10-24 23:32:25	0	355
1362	M-4	E401	HIGH	2024-02-03 01:37:12	0	650
1363	M-7	E103	MEDIUM	2024-08-07 13:41:13	1	197
1364	M-5	E401	LOW	2024-03-29 05:18:11	0	586
1365	M-10	E201	LOW	2024-10-04 22:17:21	1	358
1366	M-20	E201	LOW	2024-01-31 04:43:54	1	567
1367	M-6	E102	MEDIUM	2024-08-29 20:05:13	0	515
1368	M-16	E103	LOW	2024-04-14 04:49:34	1	542
1369	M-14	E301	CRITICAL	2024-07-25 15:11:35	1	379
1370	M-8	E202	LOW	2024-11-27 13:59:12	1	553
1371	M-8	E102	MEDIUM	2024-08-12 06:34:52	0	294
1372	M-19	E102	HIGH	2024-03-23 06:52:41	0	98
1373	M-11	E401	MEDIUM	2024-01-09 21:40:21	0	417
1374	M-16	E401	LOW	2024-03-26 21:32:54	0	283
1375	M-14	E102	MEDIUM	2024-01-07 02:34:27	1	215
1376	M-7	E401	MEDIUM	2024-03-07 21:00:31	1	108
1377	M-14	E101	LOW	2024-06-15 14:39:04	1	335
1378	M-13	E301	HIGH	2024-10-01 14:28:56	1	430
1379	M-9	E101	MEDIUM	2024-02-23 23:12:30	1	110
1380	M-10	E202	LOW	2024-04-17 14:01:41	1	89
1381	M-11	E103	HIGH	2024-09-04 20:41:45	1	659
1382	M-16	E102	MEDIUM	2024-08-08 14:42:20	1	41
1383	M-16	E202	HIGH	2024-05-10 16:03:42	0	668
1384	M-10	E102	LOW	2024-02-18 11:08:44	1	415
1385	M-3	E103	HIGH	2024-08-24 02:06:21	1	46
1386	M-8	E202	LOW	2024-07-12 05:43:57	1	278
1387	M-3	E101	LOW	2024-06-17 00:24:32	0	510
1388	M-1	E103	HIGH	2024-08-20 23:29:46	1	449
1389	M-2	E101	MEDIUM	2024-06-22 19:12:28	1	391
1390	M-4	E301	LOW	2024-11-28 03:27:01	1	595
1391	M-9	E301	MEDIUM	2024-09-11 16:17:34	1	370
1392	M-14	E401	MEDIUM	2024-06-20 17:28:14	1	362
1393	M-10	E201	LOW	2024-07-20 00:23:06	1	552
1394	M-2	E103	LOW	2024-12-01 04:27:35	1	656
1395	M-6	E101	MEDIUM	2024-01-17 18:44:29	1	621
1396	M-17	E102	MEDIUM	2024-06-20 01:50:30	0	718
1397	M-14	E301	MEDIUM	2024-03-03 13:43:16	1	580
1398	M-16	E102	MEDIUM	2024-09-25 08:22:31	1	510
1399	M-4	E202	LOW	2024-08-28 09:03:36	1	610
1400	M-15	E401	HIGH	2024-07-22 09:14:03	1	373
1401	M-3	E401	HIGH	2024-03-23 11:26:10	0	575
1402	M-15	E202	MEDIUM	2024-09-20 20:49:27	1	491
1403	M-17	E103	LOW	2024-06-20 01:04:02	1	697
1404	M-1	E102	MEDIUM	2024-07-06 20:18:34	1	398
1405	M-9	E201	HIGH	2024-03-27 10:50:27	0	625
1406	M-13	E102	HIGH	2024-07-31 08:47:00	0	20
1407	M-20	E202	MEDIUM	2024-08-22 17:56:29	0	561
1408	M-6	E201	MEDIUM	2024-01-18 21:04:07	1	604
1409	M-1	E401	CRITICAL	2024-11-29 08:36:53	1	188
1410	M-16	E401	MEDIUM	2024-10-30 23:34:45	0	548
1411	M-16	E201	CRITICAL	2024-07-16 06:30:27	1	57
1412	M-11	E102	LOW	2024-08-21 12:47:55	1	711
1413	M-13	E103	LOW	2024-03-17 10:17:18	1	689
1414	M-17	E101	MEDIUM	2024-10-23 03:13:03	1	204
1415	M-7	E301	MEDIUM	2024-05-19 03:37:08	1	249
1416	M-9	E103	CRITICAL	2024-10-23 05:13:45	1	702
1417	M-13	E102	LOW	2024-11-14 13:15:29	1	123
1418	M-11	E102	MEDIUM	2024-06-20 17:04:22	0	10
1419	M-13	E201	MEDIUM	2024-04-02 10:36:30	1	514
1420	M-1	E103	HIGH	2024-02-20 20:22:28	1	624
1421	M-8	E301	HIGH	2024-01-27 16:15:23	1	76
1422	M-10	E202	LOW	2024-07-11 06:55:44	1	542
1423	M-20	E301	HIGH	2024-07-23 20:56:49	0	364
1424	M-11	E101	MEDIUM	2024-10-05 15:33:39	1	356
1425	M-14	E301	MEDIUM	2024-07-04 17:43:29	1	548
1426	M-17	E101	HIGH	2024-07-24 07:18:06	1	589
1427	M-9	E201	LOW	2024-04-01 06:10:08	1	217
1428	M-11	E201	MEDIUM	2024-11-28 13:17:47	0	598
1429	M-19	E101	LOW	2024-09-28 11:00:25	1	224
1430	M-15	E202	MEDIUM	2024-10-28 00:39:31	1	532
1431	M-14	E101	LOW	2024-03-20 19:36:52	0	610
1432	M-11	E102	LOW	2024-06-06 20:50:24	1	312
1433	M-2	E101	MEDIUM	2024-03-29 03:47:59	1	109
1434	M-16	E201	LOW	2024-12-07 05:01:27	1	102
1435	M-7	E201	LOW	2024-08-24 20:19:45	0	159
1436	M-1	E401	MEDIUM	2024-06-27 05:08:02	0	504
1437	M-17	E102	LOW	2024-02-06 21:12:08	0	504
1438	M-18	E301	LOW	2024-07-16 11:47:47	1	210
1439	M-20	E102	LOW	2024-09-22 22:01:50	1	209
1440	M-7	E103	HIGH	2024-05-24 05:52:04	1	416
1441	M-4	E103	LOW	2024-11-24 12:36:05	1	172
1442	M-12	E103	MEDIUM	2024-01-25 22:16:53	1	427
1443	M-10	E201	HIGH	2024-03-12 18:18:44	0	664
1444	M-18	E201	LOW	2024-05-23 14:56:49	1	574
1445	M-9	E401	HIGH	2024-07-26 23:56:26	1	34
1446	M-9	E102	LOW	2024-01-27 06:23:27	1	606
1447	M-4	E401	MEDIUM	2024-03-17 00:41:14	1	423
1448	M-6	E102	CRITICAL	2024-11-25 17:12:58	1	102
1449	M-20	E401	LOW	2024-07-19 17:41:42	0	491
1450	M-7	E103	MEDIUM	2024-05-21 16:57:52	1	594
1451	M-11	E101	LOW	2024-04-01 03:49:22	1	277
1452	M-9	E201	MEDIUM	2024-03-28 05:53:21	1	625
1453	M-17	E103	LOW	2024-09-05 11:29:56	1	577
1454	M-5	E202	LOW	2024-08-10 06:23:41	1	285
1455	M-20	E101	LOW	2024-06-21 02:59:15	0	268
1456	M-9	E201	LOW	2024-02-09 08:09:44	0	296
1457	M-15	E202	LOW	2024-06-15 09:22:34	1	304
1458	M-4	E101	HIGH	2024-12-24 04:59:43	0	22
1459	M-11	E101	LOW	2024-08-18 07:01:43	1	358
1460	M-12	E202	HIGH	2024-11-02 23:36:26	1	153
1461	M-15	E301	MEDIUM	2024-06-24 10:12:47	1	620
1462	M-18	E103	LOW	2024-01-15 13:10:43	1	464
1463	M-10	E301	HIGH	2024-04-23 06:43:35	1	682
1464	M-3	E301	HIGH	2024-11-11 19:56:23	0	482
1465	M-2	E102	LOW	2024-12-26 15:58:41	1	607
1466	M-7	E401	MEDIUM	2024-02-11 06:48:48	1	585
1467	M-9	E301	LOW	2024-09-20 01:57:03	1	178
1468	M-17	E401	MEDIUM	2024-02-08 04:58:44	1	13
1469	M-20	E103	MEDIUM	2024-06-26 01:41:18	1	619
1470	M-4	E401	MEDIUM	2024-11-30 00:31:56	1	209
1471	M-8	E201	LOW	2024-11-14 01:13:37	0	512
1472	M-9	E201	MEDIUM	2024-07-25 03:07:33	1	690
1473	M-8	E101	MEDIUM	2024-01-16 12:36:08	1	537
1474	M-9	E101	LOW	2024-02-25 20:40:02	1	7
1475	M-15	E301	LOW	2024-03-15 15:10:34	0	371
1476	M-14	E202	LOW	2024-03-24 02:40:06	1	313
1477	M-10	E202	LOW	2024-10-08 23:11:11	1	521
1478	M-17	E201	LOW	2024-10-27 10:16:39	1	243
1479	M-3	E301	MEDIUM	2024-09-25 00:25:03	0	573
1480	M-11	E103	MEDIUM	2024-10-13 09:35:51	1	421
1481	M-10	E102	LOW	2024-11-15 14:40:14	1	652
1482	M-19	E201	LOW	2024-06-24 04:50:30	1	686
1483	M-2	E202	MEDIUM	2024-07-23 00:30:50	1	370
1484	M-15	E202	LOW	2024-08-22 06:01:10	0	15
1485	M-17	E103	LOW	2024-08-16 06:30:05	0	563
1486	M-14	E103	LOW	2024-02-13 14:33:32	1	198
1487	M-15	E301	LOW	2024-04-13 00:49:19	1	543
1488	M-16	E103	CRITICAL	2024-08-15 02:23:43	1	622
1489	M-12	E301	LOW	2024-03-21 20:40:55	0	255
1490	M-20	E401	MEDIUM	2024-12-11 19:58:11	0	123
1491	M-1	E103	MEDIUM	2024-09-15 13:37:02	1	530
1492	M-6	E102	LOW	2024-03-11 05:33:41	1	31
1493	M-14	E201	CRITICAL	2024-03-09 15:41:10	1	243
1494	M-5	E201	CRITICAL	2024-11-20 09:32:49	0	82
1495	M-17	E102	LOW	2024-10-09 04:50:17	1	503
1496	M-7	E301	CRITICAL	2024-12-13 07:38:51	1	539
1497	M-12	E103	HIGH	2024-01-22 08:52:34	1	388
1498	M-8	E401	HIGH	2024-04-08 05:57:05	1	583
1499	M-10	E301	MEDIUM	2024-01-20 13:06:24	1	651
1500	M-20	E201	MEDIUM	2024-02-16 04:45:05	1	520
1501	M-9	E202	CRITICAL	2024-02-02 09:11:31	1	34
1502	M-8	E102	CRITICAL	2024-11-30 10:41:15	1	272
1503	M-8	E202	LOW	2024-06-30 05:38:00	1	637
1504	M-9	E103	MEDIUM	2024-09-17 10:32:19	0	103
1505	M-14	E103	LOW	2024-03-01 05:00:52	1	707
1506	M-18	E101	LOW	2024-04-22 19:29:36	1	330
1507	M-4	E103	MEDIUM	2024-02-13 21:41:37	0	254
1508	M-15	E401	MEDIUM	2024-08-06 22:44:10	1	101
1509	M-12	E201	LOW	2024-11-02 08:23:34	0	310
1510	M-9	E103	LOW	2024-11-18 03:32:01	0	516
1511	M-17	E202	MEDIUM	2024-10-24 07:49:39	1	219
1512	M-2	E201	CRITICAL	2024-08-25 22:44:22	1	299
1513	M-8	E102	MEDIUM	2024-06-11 08:42:19	0	335
1514	M-6	E102	LOW	2024-07-05 16:34:05	0	535
1515	M-5	E103	MEDIUM	2024-10-03 13:02:32	1	473
1516	M-12	E103	LOW	2024-01-28 02:09:55	1	290
1517	M-1	E101	LOW	2024-02-19 15:43:10	1	187
1518	M-13	E202	LOW	2024-06-15 16:07:02	1	307
1519	M-16	E301	LOW	2024-07-14 19:25:23	1	707
1520	M-15	E301	MEDIUM	2024-09-18 15:03:45	0	482
1521	M-16	E301	HIGH	2024-10-17 23:14:43	1	10
1522	M-5	E301	MEDIUM	2024-06-08 13:42:37	0	46
1523	M-9	E101	MEDIUM	2024-09-16 04:57:35	1	385
1524	M-10	E201	HIGH	2024-09-17 20:12:21	1	518
1525	M-20	E301	MEDIUM	2024-08-24 06:51:00	1	209
1526	M-8	E102	MEDIUM	2024-04-10 08:19:37	1	243
1527	M-15	E103	MEDIUM	2024-06-20 06:11:31	0	430
1528	M-1	E101	MEDIUM	2024-08-03 23:36:45	1	489
1529	M-15	E202	MEDIUM	2024-01-14 10:23:42	1	330
1530	M-3	E102	MEDIUM	2024-09-04 00:52:45	1	680
1531	M-9	E301	LOW	2024-11-18 14:56:11	0	644
1532	M-16	E202	MEDIUM	2024-03-12 13:08:30	0	325
1533	M-9	E102	HIGH	2024-08-31 03:19:25	1	599
1534	M-18	E201	HIGH	2024-10-19 04:25:38	0	210
1535	M-17	E101	MEDIUM	2024-03-06 21:42:19	1	398
1536	M-7	E101	MEDIUM	2024-02-14 09:17:41	1	629
1537	M-15	E101	MEDIUM	2024-04-05 06:42:57	1	465
1538	M-7	E201	LOW	2024-08-06 22:57:39	1	607
1539	M-8	E101	HIGH	2024-09-06 20:41:41	1	507
1540	M-13	E101	LOW	2024-09-21 14:29:39	1	407
1541	M-6	E102	HIGH	2024-08-11 13:20:41	1	530
1542	M-15	E202	LOW	2024-03-22 21:36:20	1	89
1543	M-2	E102	LOW	2024-05-08 23:25:39	1	309
1544	M-8	E202	MEDIUM	2024-09-14 06:54:21	1	224
1545	M-17	E301	LOW	2024-08-19 06:02:01	0	25
1546	M-20	E102	MEDIUM	2024-12-21 16:12:24	0	22
1547	M-18	E102	MEDIUM	2024-02-17 02:41:21	1	190
1548	M-8	E101	LOW	2024-02-02 20:38:21	1	689
1549	M-18	E401	LOW	2024-09-21 06:38:38	1	323
1550	M-9	E202	MEDIUM	2024-09-05 09:24:09	1	163
1551	M-11	E201	MEDIUM	2024-06-14 04:05:18	1	334
1552	M-13	E102	LOW	2024-05-20 08:00:47	0	417
1553	M-5	E401	HIGH	2024-04-05 02:35:54	0	497
1554	M-10	E103	MEDIUM	2024-05-27 07:08:22	1	66
1555	M-1	E103	CRITICAL	2024-10-03 07:00:41	0	221
1556	M-5	E102	MEDIUM	2024-06-15 01:33:18	1	416
1557	M-13	E401	LOW	2024-10-27 11:56:56	1	409
1558	M-13	E201	HIGH	2024-10-09 14:57:46	1	90
1559	M-8	E201	HIGH	2024-02-28 14:40:04	1	612
1560	M-18	E102	LOW	2024-01-14 06:15:50	1	693
1561	M-18	E202	HIGH	2024-11-10 00:32:28	1	154
1562	M-5	E401	LOW	2024-02-18 11:48:03	1	636
1563	M-6	E201	HIGH	2024-05-29 17:14:24	1	175
1564	M-17	E102	MEDIUM	2024-07-20 03:57:26	0	447
1565	M-6	E103	MEDIUM	2024-02-23 23:51:45	1	356
1566	M-3	E401	MEDIUM	2024-08-30 20:44:26	1	259
1567	M-8	E201	HIGH	2024-10-25 03:49:10	1	83
1568	M-14	E401	MEDIUM	2024-08-17 23:18:09	1	429
1569	M-18	E202	MEDIUM	2024-07-12 20:41:56	1	669
1570	M-18	E201	MEDIUM	2024-08-11 22:26:35	1	543
1571	M-8	E301	CRITICAL	2024-04-15 13:12:07	0	469
1572	M-13	E102	MEDIUM	2024-01-18 08:30:56	1	715
1573	M-6	E202	MEDIUM	2024-05-01 14:03:07	1	515
1574	M-7	E103	CRITICAL	2024-06-09 07:51:10	1	487
1575	M-5	E101	MEDIUM	2024-04-05 15:26:26	0	211
1576	M-16	E201	LOW	2024-06-18 17:07:45	1	455
1577	M-14	E301	LOW	2024-09-21 11:20:32	0	237
1578	M-9	E102	LOW	2024-07-09 05:07:48	1	462
1579	M-10	E101	LOW	2024-10-30 20:19:49	1	538
1580	M-19	E103	MEDIUM	2024-04-18 13:15:24	1	141
1581	M-6	E103	MEDIUM	2024-03-10 09:37:47	1	583
1582	M-18	E201	HIGH	2024-08-09 21:46:52	1	450
1583	M-13	E202	HIGH	2024-09-02 16:06:26	1	568
1584	M-5	E102	MEDIUM	2024-12-04 04:04:30	1	490
1585	M-3	E103	CRITICAL	2024-05-16 01:14:52	1	245
1586	M-7	E201	CRITICAL	2024-06-11 01:22:04	1	473
1587	M-17	E401	HIGH	2024-07-11 08:24:04	1	552
1588	M-19	E101	LOW	2024-03-18 06:48:53	1	317
1589	M-15	E202	MEDIUM	2024-08-30 20:18:14	1	399
1590	M-13	E301	LOW	2024-03-06 22:00:35	1	353
1591	M-12	E101	CRITICAL	2024-12-03 18:34:00	1	188
1592	M-1	E301	CRITICAL	2024-11-15 01:56:22	1	348
1593	M-7	E201	MEDIUM	2024-12-24 19:52:45	0	176
1594	M-6	E101	LOW	2024-06-26 19:33:26	0	401
1595	M-15	E101	MEDIUM	2024-03-18 01:24:21	1	91
1596	M-12	E202	CRITICAL	2024-04-04 23:15:47	1	69
1597	M-10	E101	MEDIUM	2024-05-23 20:49:16	1	149
1598	M-6	E201	MEDIUM	2024-10-04 19:54:32	1	160
1599	M-12	E103	LOW	2024-01-29 10:40:28	1	236
1600	M-9	E101	CRITICAL	2024-07-31 01:11:40	0	360
1601	M-5	E401	MEDIUM	2024-01-09 07:40:07	0	710
1602	M-17	E301	MEDIUM	2024-04-23 07:00:03	0	30
1603	M-18	E301	HIGH	2024-10-03 00:18:18	0	271
1604	M-18	E101	MEDIUM	2024-10-01 22:37:46	0	513
1605	M-17	E301	CRITICAL	2024-04-02 19:23:48	1	713
1606	M-9	E103	CRITICAL	2024-02-23 22:04:16	0	32
1607	M-6	E301	LOW	2024-03-27 04:18:24	1	506
1608	M-15	E301	LOW	2024-12-15 10:56:37	1	374
1609	M-5	E401	MEDIUM	2024-09-06 06:24:03	0	109
1610	M-8	E101	CRITICAL	2024-09-01 01:28:45	1	97
1611	M-16	E401	HIGH	2024-01-12 10:59:23	1	158
1612	M-5	E401	LOW	2024-08-26 08:32:27	1	166
1613	M-11	E101	LOW	2024-12-02 07:42:28	1	371
1614	M-15	E102	MEDIUM	2024-10-03 12:00:11	1	663
1615	M-5	E202	CRITICAL	2024-05-31 15:38:59	0	448
1616	M-1	E102	MEDIUM	2024-10-23 09:02:20	0	578
1617	M-19	E103	MEDIUM	2024-08-23 12:45:34	1	434
1618	M-2	E301	MEDIUM	2024-11-13 04:27:22	0	648
1619	M-6	E202	MEDIUM	2024-12-02 04:06:23	1	50
1620	M-2	E301	CRITICAL	2024-05-02 00:32:57	1	635
1621	M-9	E102	MEDIUM	2024-09-13 23:58:17	1	704
1622	M-12	E103	LOW	2024-05-30 17:39:41	1	170
1623	M-19	E301	HIGH	2024-09-28 15:05:07	1	366
1624	M-13	E401	LOW	2024-06-02 02:01:10	1	688
1625	M-11	E103	MEDIUM	2024-05-20 11:26:36	1	423
1626	M-10	E301	MEDIUM	2024-02-04 17:59:41	1	612
1627	M-18	E401	MEDIUM	2024-11-20 23:33:35	0	510
1628	M-3	E101	LOW	2024-06-15 23:51:01	0	52
1629	M-11	E201	CRITICAL	2024-04-20 06:32:33	1	354
1630	M-13	E401	MEDIUM	2024-09-12 11:10:25	1	405
1631	M-10	E201	LOW	2024-06-20 19:17:23	1	111
1632	M-11	E301	HIGH	2024-05-24 06:37:49	0	266
1633	M-11	E101	LOW	2024-04-15 01:51:04	0	550
1634	M-7	E103	MEDIUM	2024-10-24 11:36:35	0	167
1635	M-8	E202	MEDIUM	2024-09-12 23:36:46	0	673
1636	M-13	E102	LOW	2024-06-11 20:16:21	0	432
1637	M-6	E401	MEDIUM	2024-04-20 03:27:20	1	673
1638	M-18	E202	MEDIUM	2024-04-17 03:50:00	1	363
1639	M-8	E202	HIGH	2024-01-17 13:44:58	1	376
1640	M-3	E102	MEDIUM	2024-03-14 11:19:22	0	95
1641	M-20	E101	MEDIUM	2024-06-17 00:48:43	1	345
1642	M-11	E202	CRITICAL	2024-04-04 18:04:14	1	313
1643	M-9	E103	HIGH	2024-01-07 19:15:20	1	447
1644	M-18	E101	MEDIUM	2024-03-13 08:11:30	1	31
1645	M-4	E401	LOW	2024-07-19 05:50:20	1	353
1646	M-20	E401	LOW	2024-04-28 16:42:30	0	633
1647	M-10	E103	CRITICAL	2024-06-09 12:07:43	0	421
1648	M-20	E103	HIGH	2024-11-01 16:14:08	1	402
1649	M-16	E201	LOW	2024-10-23 22:17:42	1	301
1650	M-7	E201	MEDIUM	2024-06-25 09:17:12	0	572
1651	M-13	E201	MEDIUM	2024-10-10 09:30:37	0	697
1652	M-11	E202	HIGH	2024-06-21 12:42:42	1	476
1653	M-17	E103	LOW	2024-05-31 20:29:19	1	198
1654	M-15	E202	LOW	2024-07-29 04:59:15	1	448
1655	M-15	E301	CRITICAL	2024-12-24 07:13:22	0	501
1656	M-1	E101	LOW	2024-02-12 23:12:04	0	189
1657	M-12	E103	LOW	2024-12-19 16:03:29	0	72
1658	M-2	E101	LOW	2024-06-25 17:58:11	1	182
1659	M-11	E202	MEDIUM	2024-11-17 01:20:29	1	339
1660	M-15	E401	LOW	2024-03-24 18:38:18	1	516
1661	M-13	E201	MEDIUM	2024-12-27 16:46:03	1	394
1662	M-2	E201	LOW	2024-03-10 18:25:00	1	710
1663	M-3	E101	MEDIUM	2024-11-16 23:40:44	1	564
1664	M-16	E101	LOW	2024-06-02 21:05:36	0	309
1665	M-5	E101	MEDIUM	2024-10-15 02:16:45	0	234
1666	M-1	E301	MEDIUM	2024-10-12 20:14:00	1	171
1667	M-13	E201	MEDIUM	2024-08-05 04:50:13	1	677
1668	M-10	E202	MEDIUM	2024-01-06 13:57:31	0	236
1669	M-17	E301	LOW	2024-12-18 16:15:56	1	650
1670	M-6	E301	MEDIUM	2024-09-23 11:34:48	1	536
1671	M-4	E401	HIGH	2024-10-22 18:12:39	1	355
1672	M-17	E103	MEDIUM	2024-02-21 09:59:07	1	445
1673	M-5	E103	MEDIUM	2024-10-01 06:55:38	1	168
1674	M-12	E202	LOW	2024-03-07 20:38:46	1	215
1675	M-2	E101	HIGH	2024-07-14 22:47:22	1	123
1676	M-17	E101	LOW	2024-09-20 22:25:54	1	610
1677	M-1	E201	LOW	2024-05-06 01:09:37	1	143
1678	M-8	E301	LOW	2024-11-21 14:00:42	1	192
1679	M-10	E301	MEDIUM	2024-04-09 09:43:14	1	282
1680	M-15	E102	MEDIUM	2024-07-26 19:27:25	1	423
1681	M-12	E301	LOW	2024-05-09 12:24:02	0	168
1682	M-11	E102	CRITICAL	2024-09-09 13:54:54	1	8
1683	M-16	E101	HIGH	2024-09-14 13:18:45	1	514
1684	M-18	E102	LOW	2024-12-13 18:02:17	1	707
1685	M-6	E102	MEDIUM	2024-01-28 11:33:16	1	179
1686	M-1	E101	CRITICAL	2024-10-11 22:31:27	0	433
1687	M-14	E401	CRITICAL	2024-06-15 13:03:21	1	454
1688	M-8	E301	HIGH	2024-03-15 20:15:48	1	61
1689	M-7	E301	LOW	2024-04-17 00:04:43	1	261
1690	M-11	E102	HIGH	2024-03-18 01:09:03	0	408
1691	M-20	E202	MEDIUM	2024-12-05 14:02:18	1	400
1692	M-11	E202	HIGH	2024-03-27 18:27:48	0	626
1693	M-18	E201	MEDIUM	2024-02-03 04:15:24	1	331
1694	M-15	E401	MEDIUM	2024-02-18 04:16:23	1	280
1695	M-9	E201	MEDIUM	2024-10-28 23:34:19	1	452
1696	M-5	E101	HIGH	2024-03-01 02:43:10	1	81
1697	M-14	E102	HIGH	2024-05-10 01:56:21	0	682
1698	M-4	E102	LOW	2024-10-01 08:12:29	1	697
1699	M-1	E103	LOW	2024-12-12 08:47:34	0	152
1700	M-10	E201	LOW	2024-10-27 06:26:49	1	510
1701	M-20	E301	LOW	2024-02-21 13:39:22	1	50
1702	M-5	E103	LOW	2024-09-29 04:45:51	1	126
1703	M-13	E201	MEDIUM	2024-04-11 03:28:31	1	715
1704	M-8	E401	LOW	2024-05-16 14:17:08	0	405
1705	M-10	E103	LOW	2024-07-10 01:55:36	0	290
1706	M-9	E202	MEDIUM	2024-06-02 13:54:53	1	500
1707	M-1	E401	HIGH	2024-06-24 18:01:09	1	280
1708	M-13	E301	MEDIUM	2024-08-05 01:57:45	1	13
1709	M-1	E301	LOW	2024-03-01 12:44:13	0	195
1710	M-17	E301	MEDIUM	2024-05-29 00:02:47	1	185
1711	M-3	E102	CRITICAL	2024-03-12 15:11:43	0	241
1712	M-13	E301	CRITICAL	2024-01-20 18:43:40	0	132
1713	M-9	E102	MEDIUM	2024-07-25 18:55:17	1	399
1714	M-1	E202	LOW	2024-02-18 14:54:47	0	213
1715	M-18	E301	MEDIUM	2024-04-29 21:07:47	1	1
1716	M-7	E401	LOW	2024-11-26 04:36:59	0	22
1717	M-19	E103	LOW	2024-04-12 05:55:37	1	390
1718	M-7	E102	CRITICAL	2024-08-21 02:17:14	1	145
1719	M-3	E401	HIGH	2024-01-19 21:56:34	1	710
1720	M-18	E102	HIGH	2024-02-16 17:08:20	1	174
1721	M-1	E103	HIGH	2024-11-16 01:55:20	1	34
1722	M-18	E102	MEDIUM	2024-01-07 01:29:44	0	604
1723	M-5	E103	HIGH	2024-12-28 22:00:01	1	295
1724	M-5	E201	MEDIUM	2024-04-28 12:36:50	0	512
1725	M-15	E401	CRITICAL	2024-09-12 11:39:44	1	556
1726	M-20	E101	MEDIUM	2024-12-17 20:06:14	0	329
1727	M-20	E301	MEDIUM	2024-04-30 03:22:01	1	550
1728	M-10	E102	HIGH	2024-08-19 00:32:51	1	32
1729	M-18	E201	MEDIUM	2024-08-04 13:04:40	0	296
1730	M-5	E202	LOW	2024-06-17 20:58:12	1	205
1731	M-1	E201	HIGH	2024-12-05 17:32:28	1	190
1732	M-15	E301	HIGH	2024-09-23 09:18:26	1	492
1733	M-11	E301	LOW	2024-08-12 21:20:41	0	560
1734	M-4	E202	LOW	2024-02-03 06:21:57	1	47
1735	M-4	E401	MEDIUM	2024-06-08 04:01:34	1	628
1736	M-7	E201	CRITICAL	2024-06-12 12:42:32	1	669
1737	M-1	E401	MEDIUM	2024-02-25 12:42:39	1	703
1738	M-13	E301	MEDIUM	2024-05-12 17:35:13	1	691
1739	M-16	E201	HIGH	2024-09-29 08:42:22	1	628
1740	M-5	E103	CRITICAL	2024-08-16 12:49:16	1	496
1741	M-8	E301	LOW	2024-11-18 22:08:03	0	624
1742	M-7	E102	CRITICAL	2024-07-08 04:12:39	1	316
1743	M-14	E301	MEDIUM	2024-08-23 11:56:55	0	212
1744	M-10	E401	LOW	2024-03-07 13:14:14	1	624
1745	M-18	E102	LOW	2024-11-12 01:32:35	1	235
1746	M-5	E401	LOW	2024-09-05 02:26:36	0	401
1747	M-11	E401	HIGH	2024-08-27 12:09:48	0	522
1748	M-10	E103	HIGH	2024-02-24 08:33:55	1	630
1749	M-15	E401	MEDIUM	2024-09-17 07:45:20	1	206
1750	M-20	E201	MEDIUM	2024-03-10 08:08:03	1	591
1751	M-2	E301	CRITICAL	2024-11-24 07:02:53	0	485
1752	M-13	E102	MEDIUM	2024-03-26 14:09:59	0	363
1753	M-4	E201	MEDIUM	2024-10-13 20:24:26	1	626
1754	M-12	E102	MEDIUM	2024-08-17 01:11:05	1	601
1755	M-15	E301	CRITICAL	2024-11-02 03:38:26	0	527
1756	M-11	E401	HIGH	2024-10-05 21:33:51	1	353
1757	M-4	E102	LOW	2024-12-24 03:45:41	1	38
1758	M-13	E201	LOW	2024-11-19 06:25:17	1	58
1759	M-19	E202	MEDIUM	2024-11-27 06:24:22	0	182
1760	M-19	E102	LOW	2024-07-28 16:18:06	0	13
1761	M-18	E201	MEDIUM	2024-07-18 02:55:49	1	495
1762	M-7	E301	LOW	2024-04-27 11:12:56	0	40
1763	M-18	E103	HIGH	2024-05-11 08:01:55	1	373
1764	M-17	E101	MEDIUM	2024-12-05 23:31:22	1	671
1765	M-6	E401	MEDIUM	2024-09-27 12:09:06	1	250
1766	M-14	E102	MEDIUM	2024-12-25 09:11:38	1	218
1767	M-12	E102	HIGH	2024-08-28 23:39:39	0	13
1768	M-3	E301	LOW	2024-06-03 08:47:33	1	10
1769	M-13	E201	MEDIUM	2024-11-30 00:27:35	1	718
1770	M-5	E201	MEDIUM	2024-01-26 09:08:01	0	292
1771	M-14	E101	MEDIUM	2024-07-01 15:50:03	1	245
1772	M-8	E102	MEDIUM	2024-11-25 18:55:49	1	657
1773	M-10	E201	LOW	2024-11-19 14:01:14	1	8
1774	M-15	E301	HIGH	2024-11-01 13:45:19	1	16
1775	M-16	E102	CRITICAL	2024-06-17 05:40:35	1	467
1776	M-6	E102	MEDIUM	2024-11-15 13:57:40	1	426
1777	M-16	E401	MEDIUM	2024-01-03 04:26:26	1	607
1778	M-14	E101	MEDIUM	2024-02-23 09:35:04	1	155
1779	M-5	E101	HIGH	2024-07-13 12:52:35	0	289
1780	M-7	E401	MEDIUM	2024-04-10 08:01:04	0	399
1781	M-4	E103	MEDIUM	2024-08-06 23:30:50	1	43
1782	M-11	E401	MEDIUM	2024-06-16 08:46:40	1	389
1783	M-4	E103	MEDIUM	2024-01-18 13:27:08	1	656
1784	M-9	E301	MEDIUM	2024-11-05 04:05:48	0	41
1785	M-20	E401	HIGH	2024-06-02 03:11:06	0	350
1786	M-14	E102	HIGH	2024-02-29 07:23:49	1	149
1787	M-9	E202	MEDIUM	2024-11-11 11:23:15	0	26
1788	M-4	E101	LOW	2024-02-16 04:19:47	0	213
1789	M-1	E201	MEDIUM	2024-04-14 04:34:53	0	498
1790	M-6	E103	HIGH	2024-10-04 23:57:15	1	373
1791	M-18	E401	MEDIUM	2024-08-24 22:41:02	1	492
1792	M-19	E103	HIGH	2024-05-19 17:37:50	1	531
1793	M-3	E301	HIGH	2024-06-12 00:39:22	1	131
1794	M-1	E103	CRITICAL	2024-02-15 02:08:23	1	202
1795	M-19	E202	LOW	2024-07-29 21:42:30	1	307
1796	M-18	E202	CRITICAL	2024-03-27 03:40:25	0	481
1797	M-13	E401	LOW	2024-02-02 03:38:22	1	529
1798	M-6	E103	CRITICAL	2024-01-20 15:41:19	0	171
1799	M-14	E301	CRITICAL	2024-10-04 12:30:53	0	81
1800	M-15	E401	LOW	2024-08-13 19:11:35	1	516
\.


--
-- Data for Name: logs_jobs_airflow; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.logs_jobs_airflow (job_id, dag_name, execution_date, duration_sec, status, rows_processed) FROM stdin;
1	predict_pannes	2024-07-28 17:38:26	1503	success	212302.00
2	daily_kpi	2024-06-16 22:55:28	577	success	417410.00
3	ingest_logs_erreurs	2024-12-06 18:26:37	804	success	166994.00
4	sync_warehouse	2024-09-21 05:01:23	1794	success	4487.00
5	daily_kpi	2024-07-13 14:56:07	128	success	331010.00
6	daily_kpi	2024-08-21 03:49:02	1064	success	149340.00
7	ingest_capteurs	2024-03-05 12:10:05	1275	success	135718.00
8	predict_pannes	2024-02-20 09:33:43	1631	success	369767.00
9	daily_kpi	2024-01-06 22:20:58	58	success	212409.00
10	clean_production	2024-11-10 03:43:29	444	success	316952.00
11	ingest_capteurs	2024-12-08 02:48:14	495	success	368629.00
12	ingest_logs_erreurs	2024-07-25 16:42:06	505	success	120293.00
13	daily_kpi	2024-11-27 12:56:38	1299	success	18226.00
14	daily_kpi	2024-07-23 07:52:47	1568	success	399092.00
15	daily_kpi	2024-10-04 06:26:05	768	success	425755.00
16	sync_warehouse	2024-05-22 11:00:48	205	failed	9512.00
17	sync_warehouse	2024-11-11 14:12:47	879	success	461566.00
18	predict_pannes	2024-02-29 05:01:00	963	failed	125892.00
19	sync_warehouse	2024-11-11 00:14:58	1120	success	255309.00
20	ingest_logs_erreurs	2024-01-16 12:49:07	1477	success	92079.00
21	ingest_logs_erreurs	2024-10-22 00:54:17	1135	success	165536.00
22	ingest_capteurs	2024-11-01 04:19:17	880	success	209416.00
23	predict_pannes	2024-07-11 08:04:39	930	success	285983.00
24	sync_warehouse	2024-11-22 11:45:49	126	success	374202.00
25	sync_warehouse	2024-10-05 20:33:46	467	success	151780.00
26	daily_kpi	2024-11-07 11:36:53	1358	success	458470.00
27	ingest_capteurs	2024-11-06 23:39:13	1122	success	112995.00
28	clean_production	2024-03-13 17:46:04	968	success	122219.00
29	predict_pannes	2024-09-21 02:19:28	1069	running	106123.00
30	ingest_logs_erreurs	2024-07-20 03:07:09	1199	success	222051.00
31	clean_production	2024-07-28 07:46:36	195	running	148144.00
32	ingest_capteurs	2024-06-01 11:25:20	885	up_for_retry	172939.00
33	sync_warehouse	2024-12-07 02:19:01	1624	success	3487.00
34	sync_warehouse	2024-07-03 23:52:02	181	running	7423.00
35	ingest_capteurs	2024-11-30 19:15:04	622	failed	189079.00
36	clean_production	2024-09-15 13:41:06	1018	up_for_retry	270190.00
37	clean_production	2024-11-18 13:57:29	737	running	332318.00
38	clean_production	2024-09-22 20:53:05	1681	success	307238.00
39	ingest_capteurs	2024-11-30 02:03:30	1065	up_for_retry	65646.00
40	daily_kpi	2024-02-10 20:51:57	836	success	41877.00
41	predict_pannes	2024-02-17 15:39:08	1684	success	145090.00
42	ingest_capteurs	2024-06-17 21:36:32	1689	success	211074.00
43	daily_kpi	2024-06-15 01:07:40	1657	success	247847.00
44	clean_production	2024-03-13 01:53:14	528	success	451239.00
45	clean_production	2024-08-03 04:44:02	867	success	42269.00
46	predict_pannes	2024-05-31 20:18:53	1484	success	175524.00
47	sync_warehouse	2024-04-21 07:49:57	-1	success	286917.00
48	ingest_logs_erreurs	2024-10-22 21:23:30	772	success	109180.00
49	predict_pannes	2024-08-31 20:21:42	1050	success	413076.00
50	clean_production	2024-12-10 04:30:21	1610	success	67394.00
51	daily_kpi	2024-04-16 13:25:01	571	failed	69294.00
52	sync_warehouse	2024-09-28 05:29:26	447	success	480989.00
53	clean_production	2024-03-13 05:15:43	808	failed	415829.00
54	ingest_logs_erreurs	2024-05-01 04:40:34	1708	up_for_retry	122992.00
55	ingest_capteurs	2024-08-07 04:48:43	1213	failed	280304.00
56	ingest_logs_erreurs	2024-02-25 12:35:22	709	success	477737.00
57	ingest_capteurs	2024-08-24 06:45:59	686	up_for_retry	404934.00
58	ingest_logs_erreurs	2024-10-29 17:25:29	1627	success	478176.00
59	predict_pannes	2024-10-08 13:42:30	749	success	379130.00
60	clean_production	2024-02-21 21:58:21	599	success	136819.00
61	clean_production	2024-02-24 03:17:51	1379	success	263176.00
62	daily_kpi	2024-10-07 03:43:21	1501	success	10219.00
63	predict_pannes	2024-02-26 00:28:44	1186	success	414521.00
64	sync_warehouse	2024-04-16 20:00:41	-1	running	494931.00
65	predict_pannes	2024-10-05 04:22:57	613	success	54984.00
66	sync_warehouse	2024-12-06 05:57:15	1291	success	44484.00
67	sync_warehouse	2024-07-28 18:30:36	1556	success	156572.00
68	daily_kpi	2024-10-08 04:40:17	1116	running	131850.00
69	clean_production	2024-04-15 22:14:53	1572	success	10866.00
70	sync_warehouse	2024-03-12 15:24:45	1475	success	447200.00
71	daily_kpi	2024-06-30 18:18:03	1642	success	267502.00
72	sync_warehouse	2024-07-29 06:49:45	910	success	16284.00
73	ingest_logs_erreurs	2024-06-08 04:28:02	206	success	332135.00
74	daily_kpi	2024-08-20 05:46:41	340	success	222557.00
75	daily_kpi	2024-02-06 05:16:18	275	success	421849.00
76	predict_pannes	2024-08-26 17:56:57	167	running	298424.00
77	ingest_capteurs	2024-10-25 19:51:19	1162	success	497323.00
78	ingest_logs_erreurs	2024-05-17 07:10:15	525	success	182330.00
79	sync_warehouse	2024-01-15 04:32:19	946	failed	312798.00
80	ingest_logs_erreurs	2024-04-03 18:02:12	1188	running	411196.00
81	ingest_capteurs	2024-06-12 17:37:24	1665	success	212387.00
82	clean_production	2024-06-20 19:06:25	583	failed	140467.00
83	ingest_capteurs	2024-05-27 10:15:35	106	up_for_retry	240765.00
84	ingest_logs_erreurs	2024-05-31 18:52:52	569	success	295267.00
85	daily_kpi	2024-03-20 21:10:19	456	success	251999.00
86	sync_warehouse	2024-02-08 07:34:59	1280	success	405421.00
87	ingest_logs_erreurs	2024-09-14 05:14:21	1454	success	30650.00
88	sync_warehouse	2024-08-29 03:28:42	662	running	100526.00
89	ingest_capteurs	2024-12-11 16:00:23	805	success	300211.00
90	ingest_capteurs	2024-08-08 04:40:08	418	success	72014.00
91	clean_production	2024-04-18 06:11:35	944	success	422221.00
92	ingest_capteurs	2024-02-10 05:33:05	350	failed	246319.00
93	predict_pannes	2024-01-02 15:00:40	1622	success	224482.00
94	clean_production	2024-06-02 02:36:36	865	failed	151390.00
95	ingest_logs_erreurs	2024-09-02 10:40:50	469	success	196592.00
96	sync_warehouse	2024-07-02 04:35:18	505	success	265387.00
97	clean_production	2024-05-14 02:20:38	1755	success	214564.00
98	sync_warehouse	2024-08-06 07:12:39	1392	success	46905.00
99	ingest_capteurs	2024-05-27 05:28:59	552	success	121571.00
100	predict_pannes	2024-04-30 23:02:03	151	success	404355.00
101	clean_production	2024-02-25 03:17:18	876	failed	35061.00
102	daily_kpi	2024-11-07 12:33:46	676	success	169702.00
103	ingest_capteurs	2024-03-13 11:45:26	602	running	274780.00
104	sync_warehouse	2024-12-19 14:04:47	307	success	320444.00
105	daily_kpi	2024-12-07 11:50:41	205	running	149718.00
106	ingest_capteurs	2024-12-13 07:49:23	390	running	247465.00
107	predict_pannes	2024-11-02 20:11:38	1503	success	372667.00
108	clean_production	2024-08-25 02:14:42	1658	failed	453064.00
109	predict_pannes	2024-07-02 02:12:07	1600	failed	475425.00
110	ingest_capteurs	2024-11-29 09:01:37	585	running	236210.00
111	clean_production	2024-08-28 13:11:07	1542	success	249750.00
112	ingest_logs_erreurs	2024-04-22 14:21:07	269	success	138190.00
113	ingest_logs_erreurs	2024-11-26 21:54:17	1416	failed	394078.00
114	clean_production	2024-01-26 07:21:04	76	success	302188.00
115	clean_production	2024-03-21 07:12:48	1024	success	250337.00
116	predict_pannes	2024-08-22 18:14:23	729	success	109503.00
117	predict_pannes	2024-08-07 11:51:41	23	failed	35737.00
118	ingest_logs_erreurs	2024-09-29 18:45:04	51	success	159145.00
119	daily_kpi	2024-03-30 12:09:43	1587	running	402375.00
120	daily_kpi	2024-02-21 20:59:31	906	success	109055.00
121	daily_kpi	2024-09-20 11:54:34	-1	failed	478108.00
122	clean_production	2024-04-15 01:34:35	789	failed	46861.00
123	predict_pannes	2024-10-21 11:58:31	1292	success	342367.00
124	sync_warehouse	2024-02-13 09:36:58	746	success	49671.00
125	ingest_logs_erreurs	2024-09-28 07:43:00	1530	success	135984.00
126	clean_production	2024-09-02 11:38:34	141	up_for_retry	184289.00
127	sync_warehouse	2024-04-01 12:31:25	709	failed	384349.00
128	sync_warehouse	2024-03-26 08:37:13	1566	running	316930.00
129	predict_pannes	2024-02-09 09:18:18	1355	running	232767.00
130	clean_production	2024-07-27 10:44:29	1256	success	81905.00
131	ingest_capteurs	2024-11-22 14:10:26	-1	success	1271.00
132	ingest_capteurs	2024-06-09 20:40:12	663	up_for_retry	182918.00
133	ingest_capteurs	2024-10-07 05:42:11	703	running	12665.00
134	sync_warehouse	2024-02-25 15:31:06	441	success	171451.00
135	sync_warehouse	2024-06-22 19:57:32	399	success	150454.00
136	predict_pannes	2024-07-16 17:52:16	976	failed	\N
137	daily_kpi	2024-05-31 17:31:32	1641	success	87365.00
138	ingest_logs_erreurs	2024-12-03 01:44:45	263	success	383812.00
139	daily_kpi	2024-07-14 17:15:47	1101	up_for_retry	400486.00
140	ingest_logs_erreurs	2024-04-14 18:26:29	690	success	53712.00
141	ingest_logs_erreurs	2024-07-22 10:24:52	648	success	354410.00
142	ingest_logs_erreurs	2024-01-30 02:36:11	447	success	320455.00
143	predict_pannes	2024-10-27 08:41:35	1244	failed	318616.00
144	daily_kpi	2024-08-23 02:43:42	773	success	390961.00
145	ingest_capteurs	2024-01-06 16:54:01	665	success	389583.00
146	clean_production	2024-02-15 22:45:41	1080	up_for_retry	361749.00
147	ingest_capteurs	2024-11-16 23:30:00	730	success	219884.00
148	ingest_logs_erreurs	2024-05-02 04:02:50	1220	success	16378.00
149	clean_production	2024-12-30 01:19:23	311	success	456865.00
150	predict_pannes	2024-09-22 08:10:15	88	success	212221.00
151	ingest_capteurs	2024-09-15 21:21:33	1470	up_for_retry	216714.00
152	sync_warehouse	2024-06-02 22:03:50	11	success	140234.00
153	predict_pannes	2024-11-05 22:37:29	1560	success	479959.00
154	clean_production	2024-08-02 12:43:05	168	success	300086.00
155	predict_pannes	2024-09-07 02:32:07	65	success	374745.00
156	ingest_logs_erreurs	2024-01-28 12:24:27	665	up_for_retry	336834.00
157	clean_production	2024-03-20 04:34:13	297	up_for_retry	319679.00
158	daily_kpi	2024-10-21 13:22:50	99	success	384871.00
159	ingest_capteurs	2024-01-13 23:18:00	425	running	369289.00
160	ingest_capteurs	2024-09-08 18:50:44	371	success	420885.00
161	clean_production	2024-06-10 02:49:20	1684	up_for_retry	405081.00
162	ingest_logs_erreurs	2024-08-01 15:02:39	447	running	327637.00
163	clean_production	2024-06-14 14:11:20	1259	success	222113.00
164	daily_kpi	2024-03-02 14:25:24	672	failed	226163.00
165	daily_kpi	2024-09-23 05:54:20	134	success	124317.00
166	ingest_capteurs	2024-04-04 19:39:40	1135	success	427555.00
167	daily_kpi	2024-09-12 19:35:30	1549	success	259557.00
168	ingest_capteurs	2024-09-25 00:29:47	160	success	19704.00
169	clean_production	2024-05-31 13:22:27	492	success	272117.00
170	sync_warehouse	2024-01-16 21:08:26	962	success	486517.00
171	ingest_logs_erreurs	2024-08-16 19:51:17	527	success	243741.00
172	predict_pannes	2024-04-23 14:12:21	959	success	15217.00
173	clean_production	2024-12-09 12:57:35	199	success	323766.00
174	sync_warehouse	2024-02-15 13:19:04	637	success	271544.00
175	daily_kpi	2024-05-21 21:35:03	1096	up_for_retry	363642.00
176	predict_pannes	2024-10-01 22:30:50	623	success	379197.00
177	ingest_capteurs	2024-02-22 22:09:45	143	success	419734.00
178	ingest_capteurs	2024-07-13 10:49:35	1465	running	159441.00
179	ingest_logs_erreurs	2024-05-03 19:11:16	1219	success	141751.00
180	clean_production	2024-06-18 17:47:15	265	success	399217.00
181	predict_pannes	2024-11-04 16:23:48	1223	success	183430.00
182	daily_kpi	2024-07-30 10:30:37	754	success	345129.00
183	ingest_logs_erreurs	2024-11-16 08:57:46	1607	up_for_retry	4201.00
184	clean_production	2024-07-27 19:26:53	1236	success	32437.00
185	ingest_capteurs	2024-07-11 12:58:34	327	failed	182376.00
186	predict_pannes	2024-04-04 11:31:56	1420	success	490491.00
187	sync_warehouse	2024-08-12 08:27:53	421	success	289203.00
188	clean_production	2024-12-22 10:04:57	960	success	215703.00
189	clean_production	2024-03-17 11:46:51	1263	failed	199508.00
190	predict_pannes	2024-12-24 08:32:56	414	success	130698.00
191	ingest_logs_erreurs	2024-08-11 20:46:52	118	success	240251.00
192	predict_pannes	2024-08-08 15:54:42	702	success	9283.00
193	clean_production	2024-08-04 11:20:36	1169	success	330720.00
194	ingest_logs_erreurs	2024-03-06 04:42:28	56	success	363749.00
195	clean_production	2024-10-18 05:16:18	535	success	100835.00
196	predict_pannes	2024-03-20 01:00:35	55	failed	266983.00
197	ingest_capteurs	2024-08-02 22:36:00	825	success	187427.00
198	ingest_capteurs	2024-01-14 12:36:39	1261	running	141620.00
199	clean_production	2024-07-04 02:55:45	128	up_for_retry	141630.00
200	ingest_logs_erreurs	2024-11-26 21:51:30	1095	success	486259.00
201	predict_pannes	2024-03-21 19:19:57	449	success	265661.00
202	ingest_capteurs	2024-12-12 22:43:36	1476	success	371036.00
203	clean_production	2024-09-30 16:56:38	439	success	498459.00
204	ingest_capteurs	2024-07-09 08:03:08	979	success	275578.00
205	daily_kpi	2024-11-21 12:35:37	1723	success	21089.00
206	sync_warehouse	2024-07-22 10:56:50	1544	running	238921.00
207	predict_pannes	2024-05-04 11:12:05	1080	success	218772.00
208	sync_warehouse	2024-10-20 19:18:29	132	success	430152.00
209	predict_pannes	2024-04-20 11:32:52	874	success	115693.00
210	daily_kpi	2024-02-27 21:10:14	1198	up_for_retry	6107.00
211	daily_kpi	2024-04-06 06:14:51	1108	failed	16523.00
212	ingest_capteurs	2024-07-01 01:54:10	1669	success	462688.00
213	sync_warehouse	2024-06-04 15:08:03	1144	success	366473.00
214	daily_kpi	2024-03-09 11:48:06	1570	success	11622.00
215	ingest_logs_erreurs	2024-12-09 07:46:53	22	success	374145.00
216	ingest_logs_erreurs	2024-09-11 00:16:17	1225	success	297167.00
217	clean_production	2024-04-15 02:40:57	255	success	\N
218	ingest_logs_erreurs	2024-07-28 14:07:01	1716	failed	140101.00
219	ingest_logs_erreurs	2024-02-11 17:03:30	1501	running	389334.00
220	ingest_logs_erreurs	2024-06-12 19:11:02	1556	success	212173.00
221	sync_warehouse	2024-10-27 19:23:06	353	success	83406.00
222	clean_production	2024-01-16 02:27:57	253	success	180895.00
223	ingest_logs_erreurs	2024-12-28 00:22:23	1666	success	64379.00
224	sync_warehouse	2024-09-10 08:42:05	1372	failed	31190.00
225	daily_kpi	2024-02-07 16:17:47	39	success	447371.00
226	sync_warehouse	2024-04-21 13:34:09	127	success	316866.00
227	ingest_logs_erreurs	2024-03-11 13:19:31	1322	success	226901.00
228	daily_kpi	2024-12-06 13:53:55	1431	success	205781.00
229	sync_warehouse	2024-03-11 19:18:26	488	failed	128749.00
230	ingest_capteurs	2024-01-13 10:17:15	672	running	145655.00
231	ingest_capteurs	2024-05-14 10:44:55	138	success	322168.00
232	clean_production	2024-01-02 05:55:17	841	success	200096.00
233	sync_warehouse	2024-06-01 06:34:26	278	success	297534.00
234	predict_pannes	2024-01-22 06:40:58	407	success	17347.00
235	daily_kpi	2024-12-08 06:44:45	1264	success	57671.00
236	predict_pannes	2024-10-09 10:05:06	377	success	477263.00
237	ingest_capteurs	2024-08-14 08:46:38	1281	up_for_retry	18768.00
238	sync_warehouse	2024-10-16 08:57:00	599	failed	337358.00
239	ingest_capteurs	2024-08-31 20:07:42	1656	success	2905.00
240	ingest_capteurs	2024-06-25 15:57:30	1400	success	344577.00
241	ingest_capteurs	2024-06-13 20:35:08	930	success	113630.00
242	sync_warehouse	2024-08-20 14:40:25	594	success	479746.00
243	ingest_logs_erreurs	2024-07-25 13:27:43	327	failed	246237.00
244	ingest_logs_erreurs	2024-07-04 20:27:34	1693	success	191681.00
245	ingest_capteurs	2024-10-27 15:49:56	709	failed	399453.00
246	ingest_logs_erreurs	2024-01-28 07:26:34	407	success	379475.00
247	sync_warehouse	2024-03-27 19:41:57	454	success	68308.00
248	daily_kpi	2024-01-28 04:47:28	295	success	124011.00
249	daily_kpi	2024-07-15 17:25:11	278	running	\N
250	sync_warehouse	2024-11-10 23:36:43	385	success	422273.00
251	ingest_capteurs	2024-08-09 03:08:09	1238	success	436636.00
252	predict_pannes	2024-06-07 20:47:18	1684	success	415476.00
253	ingest_capteurs	2024-01-20 10:14:10	1569	up_for_retry	357497.00
254	ingest_capteurs	2024-08-29 07:57:34	566	failed	96405.00
255	clean_production	2024-06-03 16:46:00	1023	success	316270.00
256	clean_production	2024-08-23 08:18:51	982	success	287668.00
257	ingest_capteurs	2024-11-26 08:46:24	1153	success	13735.00
258	ingest_capteurs	2024-09-23 18:06:43	188	success	495922.00
259	daily_kpi	2024-02-24 05:34:31	832	success	87130.00
260	ingest_logs_erreurs	2024-02-02 03:12:47	715	success	417585.00
261	sync_warehouse	2024-04-19 20:55:43	1178	success	225301.00
262	clean_production	2024-10-19 16:42:25	-1	success	390668.00
263	ingest_logs_erreurs	2024-08-02 08:10:02	699	success	157893.00
264	sync_warehouse	2024-03-23 19:12:52	1709	success	240810.00
265	ingest_capteurs	2024-10-24 19:48:27	502	success	80551.00
266	clean_production	2024-12-09 12:30:03	1139	running	23459.00
267	ingest_logs_erreurs	2024-12-26 08:57:23	1796	success	217650.00
268	predict_pannes	2024-12-19 18:38:41	630	success	281675.00
269	clean_production	2024-12-19 23:09:34	1090	success	477217.00
270	daily_kpi	2024-10-13 07:10:34	1065	success	455531.00
271	ingest_capteurs	2024-10-08 16:58:07	1103	success	353470.00
272	clean_production	2024-05-09 15:38:28	223	success	116177.00
273	ingest_capteurs	2024-09-03 10:20:35	775	success	388603.00
274	daily_kpi	2024-07-16 13:42:59	1244	up_for_retry	210030.00
275	ingest_logs_erreurs	2024-09-17 08:14:26	476	success	310367.00
276	ingest_capteurs	2024-07-04 20:42:38	51	failed	403932.00
277	predict_pannes	2024-03-31 03:15:22	560	failed	268613.00
278	ingest_logs_erreurs	2024-09-03 13:47:51	529	success	352071.00
279	ingest_capteurs	2024-01-19 07:55:19	1736	success	123728.00
280	sync_warehouse	2024-07-04 19:25:20	852	up_for_retry	356476.00
281	ingest_capteurs	2024-01-18 15:10:13	16	failed	42118.00
282	daily_kpi	2024-07-07 09:59:24	1511	success	146068.00
283	clean_production	2024-11-01 04:22:46	372	success	455330.00
284	ingest_capteurs	2024-12-12 17:43:01	1394	running	303154.00
285	daily_kpi	2024-04-08 22:37:03	47	failed	79761.00
286	ingest_logs_erreurs	2024-10-23 15:23:14	879	success	79019.00
287	predict_pannes	2024-02-23 02:32:24	1127	success	78839.00
288	clean_production	2024-10-22 04:53:30	1734	success	368100.00
289	sync_warehouse	2024-01-08 19:23:57	1129	running	83921.00
290	daily_kpi	2024-03-21 12:49:31	935	success	376636.00
291	ingest_logs_erreurs	2024-02-05 20:20:15	1276	success	171806.00
292	sync_warehouse	2024-02-15 23:43:44	982	failed	381618.00
293	ingest_logs_erreurs	2024-02-24 21:28:55	1218	success	258656.00
294	daily_kpi	2024-07-26 23:55:10	986	success	349801.00
295	daily_kpi	2024-03-31 23:28:07	1394	up_for_retry	453515.00
296	ingest_capteurs	2024-11-17 16:59:11	713	success	413591.00
297	clean_production	2024-02-22 12:01:41	525	success	169588.00
298	ingest_capteurs	2024-01-09 20:34:27	760	success	492817.00
299	sync_warehouse	2024-09-04 01:51:27	888	success	38315.00
300	ingest_logs_erreurs	2024-08-15 19:36:01	1589	success	81833.00
301	ingest_capteurs	2024-10-13 03:12:49	1252	failed	247648.00
302	ingest_logs_erreurs	2024-04-27 07:58:23	61	running	267117.00
303	ingest_capteurs	2024-04-11 22:46:42	1649	success	184879.00
304	sync_warehouse	2024-05-10 20:39:00	888	success	84642.00
305	sync_warehouse	2024-05-02 11:34:38	1375	success	460608.00
306	sync_warehouse	2024-04-17 21:21:19	410	failed	\N
307	daily_kpi	2024-03-30 23:02:09	1106	success	387585.00
308	clean_production	2024-10-23 19:00:53	1251	success	332240.00
309	daily_kpi	2024-08-18 00:22:42	1630	failed	199167.00
310	sync_warehouse	2024-11-17 20:12:54	41	success	32498.00
311	daily_kpi	2024-07-22 09:17:44	1149	success	133850.00
312	ingest_capteurs	2024-06-25 16:01:35	441	success	104320.00
313	daily_kpi	2024-02-24 05:29:39	186	success	229234.00
314	clean_production	2024-12-08 18:50:32	1452	running	418883.00
315	ingest_capteurs	2024-06-05 16:47:59	1457	failed	278294.00
316	clean_production	2024-02-25 18:52:58	712	running	312382.00
317	ingest_logs_erreurs	2024-12-01 02:44:38	443	success	254949.00
318	daily_kpi	2024-02-08 12:04:51	1531	success	329589.00
319	ingest_logs_erreurs	2024-03-23 10:53:46	1757	success	285120.00
320	ingest_capteurs	2024-05-12 01:02:48	1427	success	427025.00
321	clean_production	2024-08-24 10:26:43	1419	up_for_retry	409973.00
322	ingest_logs_erreurs	2024-09-05 02:35:46	-1	success	454710.00
323	sync_warehouse	2024-04-15 07:26:10	65	success	396679.00
324	daily_kpi	2024-01-10 20:03:54	301	success	208736.00
325	clean_production	2024-04-29 04:46:51	758	success	375047.00
326	sync_warehouse	2024-07-18 21:26:22	989	success	71876.00
327	ingest_capteurs	2024-05-24 14:27:49	95	success	122774.00
328	sync_warehouse	2024-07-16 04:01:02	200	success	181826.00
329	predict_pannes	2024-09-16 02:38:54	549	success	124162.00
330	ingest_logs_erreurs	2024-01-02 23:56:18	904	success	321646.00
331	predict_pannes	2024-03-30 03:35:04	1273	failed	126200.00
332	predict_pannes	2024-08-30 18:46:13	912	running	170782.00
333	sync_warehouse	2024-03-22 14:30:51	1415	success	465005.00
334	sync_warehouse	2024-07-28 21:09:22	1132	success	87947.00
335	clean_production	2024-01-04 17:26:53	1553	success	41324.00
336	daily_kpi	2024-07-08 21:17:00	1033	running	380550.00
337	predict_pannes	2024-08-19 12:16:15	557	success	444822.00
338	daily_kpi	2024-10-17 22:07:57	557	success	304655.00
339	ingest_capteurs	2024-09-08 12:10:00	1633	failed	204743.00
340	predict_pannes	2024-07-26 05:38:14	50	success	338244.00
341	clean_production	2024-02-19 00:00:42	1118	success	496360.00
342	daily_kpi	2024-08-09 15:53:30	238	success	5740.00
343	clean_production	2024-02-24 16:24:24	523	failed	248580.00
344	predict_pannes	2024-09-21 03:24:52	796	success	341967.00
345	clean_production	2024-12-13 21:34:44	1126	success	380956.00
346	ingest_logs_erreurs	2024-02-23 15:46:39	1276	success	353253.00
347	predict_pannes	2024-10-16 16:52:51	81	success	240649.00
348	ingest_logs_erreurs	2024-02-16 15:06:41	708	success	16690.00
349	daily_kpi	2024-04-24 05:22:44	371	success	131767.00
350	ingest_logs_erreurs	2024-01-20 17:34:49	531	success	496604.00
351	daily_kpi	2024-10-10 03:53:21	1117	success	240651.00
352	sync_warehouse	2024-06-02 12:41:15	1473	success	358079.00
353	ingest_logs_erreurs	2024-04-09 08:55:20	954	success	160558.00
354	clean_production	2024-08-01 05:42:19	1177	running	452983.00
355	predict_pannes	2024-09-25 16:03:05	65	success	30803.00
356	sync_warehouse	2024-11-03 18:36:41	27	success	456396.00
357	ingest_logs_erreurs	2024-10-21 01:49:45	282	success	258399.00
358	ingest_logs_erreurs	2024-06-17 15:34:02	612	success	263148.00
359	daily_kpi	2024-07-13 18:41:28	60	success	499184.00
360	ingest_logs_erreurs	2024-07-24 08:16:42	1636	success	497318.00
361	predict_pannes	2024-05-14 20:45:27	527	success	26021.00
362	sync_warehouse	2024-04-26 19:20:54	1708	failed	305910.00
363	ingest_capteurs	2024-10-14 13:39:59	1621	success	1310.00
364	sync_warehouse	2024-02-07 00:44:28	719	running	217894.00
365	ingest_logs_erreurs	2024-04-07 01:30:44	1799	success	297775.00
366	ingest_capteurs	2024-04-18 09:06:25	952	success	231151.00
367	ingest_capteurs	2024-02-09 18:51:19	394	success	368909.00
368	ingest_logs_erreurs	2024-06-30 08:18:17	328	failed	395439.00
369	ingest_capteurs	2024-02-25 03:03:01	42	success	32019.00
370	daily_kpi	2024-08-27 08:25:44	380	success	17742.00
371	ingest_capteurs	2024-08-01 22:13:37	553	success	306762.00
372	predict_pannes	2024-07-01 23:52:21	664	success	151135.00
373	clean_production	2024-12-22 05:34:09	1683	success	436476.00
374	daily_kpi	2024-10-16 02:30:15	281	success	474839.00
375	predict_pannes	2024-02-20 23:47:11	1261	success	208433.00
376	sync_warehouse	2024-10-07 04:54:15	270	success	266303.00
377	ingest_capteurs	2024-06-20 14:54:34	-1	success	78664.00
378	sync_warehouse	2024-03-25 16:18:11	50	success	91632.00
379	daily_kpi	2024-03-25 16:11:04	1578	success	391864.00
380	clean_production	2024-01-30 17:59:52	1187	success	19154.00
381	sync_warehouse	2024-05-10 13:48:49	1154	running	252356.00
382	sync_warehouse	2024-10-04 22:49:07	824	running	84851.00
383	clean_production	2024-07-22 18:32:40	764	running	117998.00
384	ingest_logs_erreurs	2024-05-26 06:46:54	1246	up_for_retry	400731.00
385	daily_kpi	2024-02-08 21:40:09	52	success	14561.00
386	predict_pannes	2024-09-01 23:02:00	1657	success	279711.00
387	sync_warehouse	2024-06-06 09:24:28	1247	up_for_retry	353684.00
388	daily_kpi	2024-12-28 04:43:32	-1	up_for_retry	453382.00
389	daily_kpi	2024-09-01 08:10:45	1489	success	35091.00
390	clean_production	2024-07-26 16:38:09	542	failed	366053.00
391	sync_warehouse	2024-06-07 08:11:36	13	failed	301746.00
392	clean_production	2024-07-27 06:00:06	496	success	397673.00
393	ingest_capteurs	2024-10-22 03:04:06	1457	up_for_retry	207198.00
394	predict_pannes	2024-01-10 09:01:35	163	success	156822.00
395	clean_production	2024-01-18 15:52:57	-1	success	254544.00
396	predict_pannes	2024-11-01 19:22:32	1096	success	477821.00
397	clean_production	2024-05-04 14:29:21	1164	success	372636.00
398	ingest_capteurs	2024-02-26 17:30:31	1598	success	128629.00
399	clean_production	2024-07-06 00:18:07	1644	up_for_retry	448526.00
400	daily_kpi	2024-03-01 14:32:18	699	success	164597.00
401	predict_pannes	2024-07-19 03:39:01	1798	up_for_retry	403126.00
402	ingest_capteurs	2024-06-12 08:14:56	1262	success	81584.00
403	ingest_capteurs	2024-02-06 05:37:09	800	success	399416.00
404	daily_kpi	2024-07-29 16:12:00	1098	success	100713.00
405	predict_pannes	2024-06-03 02:08:39	633	success	492482.00
406	ingest_logs_erreurs	2024-01-13 01:12:56	1585	success	339868.00
407	ingest_capteurs	2024-12-14 10:04:26	465	success	428460.00
408	ingest_capteurs	2024-07-29 00:01:54	1343	success	350482.00
409	ingest_logs_erreurs	2024-04-16 22:25:52	360	success	343445.00
410	ingest_logs_erreurs	2024-11-08 04:39:03	249	success	\N
411	ingest_logs_erreurs	2024-02-29 08:32:35	401	success	433721.00
412	ingest_capteurs	2024-09-20 03:34:05	388	success	207262.00
413	ingest_logs_erreurs	2024-05-29 21:39:54	243	failed	83399.00
414	clean_production	2024-11-17 02:14:37	1396	success	213185.00
415	ingest_logs_erreurs	2024-08-22 13:17:01	1362	success	459594.00
416	clean_production	2024-11-08 08:39:32	1752	failed	79271.00
417	ingest_logs_erreurs	2024-05-29 08:30:35	1754	success	231208.00
418	clean_production	2024-03-27 10:25:14	1137	up_for_retry	365104.00
419	sync_warehouse	2024-01-29 03:12:46	724	success	88073.00
420	sync_warehouse	2024-08-27 05:33:22	1769	failed	233041.00
421	daily_kpi	2024-04-11 13:37:32	47	success	420424.00
422	daily_kpi	2024-01-31 22:44:27	1137	success	378442.00
423	daily_kpi	2024-09-24 17:08:12	961	up_for_retry	219016.00
424	ingest_capteurs	2024-03-17 01:42:09	1222	failed	261882.00
425	daily_kpi	2024-11-08 18:24:47	1683	success	210677.00
426	clean_production	2024-08-10 16:34:05	723	success	203864.00
427	clean_production	2024-03-26 21:29:09	1099	success	398251.00
428	ingest_logs_erreurs	2024-10-28 11:05:16	1505	running	55238.00
429	sync_warehouse	2024-07-23 13:31:26	1608	up_for_retry	99297.00
430	clean_production	2024-11-22 23:52:26	1302	success	310427.00
431	sync_warehouse	2024-04-23 10:41:59	1317	success	101615.00
432	predict_pannes	2024-09-11 16:59:18	1065	up_for_retry	350044.00
433	predict_pannes	2024-01-31 09:08:28	357	success	288249.00
434	sync_warehouse	2024-08-28 09:57:17	1112	success	71850.00
435	clean_production	2024-04-08 16:17:47	1645	up_for_retry	473346.00
436	daily_kpi	2024-06-20 20:44:14	1498	success	124302.00
437	predict_pannes	2024-12-10 07:02:05	1254	success	347498.00
438	ingest_logs_erreurs	2024-07-17 04:52:23	876	failed	143128.00
439	ingest_logs_erreurs	2024-07-07 12:53:18	588	success	184525.00
440	daily_kpi	2024-07-23 02:02:05	1163	success	408382.00
441	clean_production	2024-03-30 18:21:49	1514	success	330731.00
442	ingest_logs_erreurs	2024-05-03 02:07:35	1609	success	330525.00
443	sync_warehouse	2024-05-24 14:55:58	201	success	336722.00
444	ingest_capteurs	2024-12-21 10:58:18	1060	up_for_retry	132852.00
445	ingest_logs_erreurs	2024-08-14 20:03:14	1330	success	486911.00
446	predict_pannes	2024-10-24 06:36:44	150	success	373977.00
447	ingest_capteurs	2024-08-29 08:23:58	629	failed	92627.00
448	predict_pannes	2024-06-04 13:42:15	937	success	53767.00
449	ingest_logs_erreurs	2024-02-15 15:17:54	558	success	68914.00
450	sync_warehouse	2024-08-27 23:29:48	1769	up_for_retry	327943.00
451	clean_production	2024-01-01 15:04:50	704	success	114627.00
452	sync_warehouse	2024-03-13 04:45:09	-1	success	127634.00
453	ingest_logs_erreurs	2024-04-02 17:39:42	272	success	193464.00
454	ingest_capteurs	2024-12-20 07:28:53	584	up_for_retry	224355.00
455	ingest_logs_erreurs	2024-05-22 21:21:18	1188	success	241321.00
456	ingest_logs_erreurs	2024-09-13 07:59:18	768	success	406603.00
457	predict_pannes	2024-06-19 07:47:13	513	success	421078.00
458	daily_kpi	2024-05-02 14:10:29	290	success	113198.00
459	predict_pannes	2024-07-14 10:58:56	153	success	285973.00
460	daily_kpi	2024-10-15 11:47:18	947	success	365317.00
461	predict_pannes	2024-06-18 11:55:47	1471	success	37266.00
462	predict_pannes	2024-07-29 19:14:57	88	running	478326.00
463	daily_kpi	2024-10-20 05:17:47	405	failed	14843.00
464	ingest_logs_erreurs	2024-01-21 15:50:03	923	up_for_retry	362591.00
465	ingest_capteurs	2024-08-08 13:51:41	676	success	242833.00
466	daily_kpi	2024-07-28 02:11:50	1262	success	448689.00
467	daily_kpi	2024-08-03 13:16:35	584	failed	181154.00
468	clean_production	2024-08-30 18:48:43	105	success	15290.00
469	ingest_capteurs	2024-09-10 22:49:31	1755	up_for_retry	446533.00
470	ingest_capteurs	2024-06-23 15:08:01	828	success	5525.00
471	clean_production	2024-12-13 11:51:44	1017	success	439049.00
472	ingest_logs_erreurs	2024-08-08 23:20:20	534	success	433885.00
473	ingest_capteurs	2024-07-24 14:11:14	473	success	116137.00
474	ingest_logs_erreurs	2024-07-08 03:24:05	1515	success	228452.00
475	clean_production	2024-05-07 03:33:27	572	up_for_retry	155853.00
476	daily_kpi	2024-11-29 08:55:07	1463	failed	199781.00
477	ingest_capteurs	2024-06-11 15:06:56	862	failed	366942.00
478	predict_pannes	2024-12-10 07:36:45	538	success	193955.00
479	ingest_capteurs	2024-09-27 08:53:41	149	success	120532.00
480	ingest_capteurs	2024-03-31 01:08:18	233	success	104567.00
481	predict_pannes	2024-01-08 07:06:33	1527	success	59187.00
482	daily_kpi	2024-09-10 19:59:38	507	success	\N
483	predict_pannes	2024-03-28 08:10:38	189	failed	361468.00
484	sync_warehouse	2024-06-19 00:50:07	1200	failed	452590.00
485	predict_pannes	2024-09-23 13:18:23	575	success	762.00
486	sync_warehouse	2024-09-26 03:25:19	1048	up_for_retry	476840.00
487	predict_pannes	2024-03-25 14:24:21	942	success	274042.00
488	predict_pannes	2024-10-11 05:52:26	338	success	449231.00
489	predict_pannes	2024-12-13 18:52:20	1571	success	248319.00
490	predict_pannes	2024-02-07 14:09:14	35	success	422631.00
491	sync_warehouse	2024-03-19 13:01:13	1526	success	39367.00
492	predict_pannes	2024-06-14 10:34:58	1062	success	206905.00
493	daily_kpi	2024-09-15 22:40:24	1016	success	307334.00
494	sync_warehouse	2024-12-30 06:29:54	1065	up_for_retry	146918.00
495	clean_production	2024-09-03 06:40:36	1385	success	108483.00
496	clean_production	2024-01-17 04:29:46	70	success	271161.00
497	ingest_logs_erreurs	2024-05-10 20:09:22	441	running	136628.00
498	ingest_capteurs	2024-07-09 09:29:56	772	success	164222.00
499	ingest_capteurs	2024-04-01 00:33:51	484	success	65748.00
500	predict_pannes	2024-01-14 20:37:36	1779	up_for_retry	\N
501	predict_pannes	2024-03-19 21:34:30	1206	success	\N
502	ingest_capteurs	2024-02-12 10:49:02	1100	running	206051.00
503	ingest_logs_erreurs	2024-08-26 09:13:23	23	success	495893.00
504	sync_warehouse	2024-10-26 23:56:44	188	success	443336.00
505	ingest_logs_erreurs	2024-06-22 02:49:51	1369	success	262577.00
506	ingest_logs_erreurs	2024-04-29 17:26:03	399	success	217490.00
507	clean_production	2024-06-12 10:20:18	1654	success	447347.00
508	ingest_logs_erreurs	2024-09-22 15:33:56	1483	success	85920.00
509	ingest_capteurs	2024-12-20 15:09:52	1604	up_for_retry	5330.00
510	ingest_logs_erreurs	2024-10-30 20:36:53	632	up_for_retry	319515.00
511	ingest_logs_erreurs	2024-11-12 23:21:21	826	success	445113.00
512	clean_production	2024-01-30 16:25:17	472	failed	318953.00
513	ingest_logs_erreurs	2024-06-22 17:09:40	1742	success	73296.00
514	sync_warehouse	2024-07-16 01:55:29	431	running	277955.00
515	predict_pannes	2024-11-14 18:34:15	734	success	430337.00
516	ingest_capteurs	2024-10-03 02:13:32	1149	failed	53710.00
517	daily_kpi	2024-03-26 08:32:54	287	success	288775.00
518	sync_warehouse	2024-03-13 00:24:30	379	success	450495.00
519	sync_warehouse	2024-08-07 09:53:08	1032	success	377982.00
520	daily_kpi	2024-12-14 09:30:28	26	success	432818.00
521	daily_kpi	2024-01-19 17:53:08	397	success	11990.00
522	ingest_logs_erreurs	2024-10-29 14:58:02	1564	success	38187.00
523	ingest_capteurs	2024-10-25 23:14:39	784	success	307144.00
524	clean_production	2024-11-17 08:17:01	57	failed	412602.00
525	ingest_capteurs	2024-03-21 11:44:51	1427	running	230798.00
526	ingest_logs_erreurs	2024-09-25 00:58:19	604	success	96727.00
527	predict_pannes	2024-02-04 08:28:42	1057	running	260517.00
528	ingest_capteurs	2024-09-06 16:47:39	1342	success	372963.00
529	sync_warehouse	2024-06-10 23:21:33	1671	up_for_retry	84360.00
530	predict_pannes	2024-07-05 06:53:58	361	failed	202876.00
531	sync_warehouse	2024-04-18 00:29:59	1719	success	101739.00
532	sync_warehouse	2024-04-16 07:29:20	1165	success	127286.00
533	ingest_capteurs	2024-09-15 09:36:49	1468	success	261845.00
534	ingest_capteurs	2024-06-27 11:10:56	1539	success	452980.00
535	predict_pannes	2024-06-21 23:23:54	827	success	207397.00
536	ingest_logs_erreurs	2024-04-19 22:42:35	1747	failed	421553.00
537	ingest_capteurs	2024-07-25 08:09:15	1200	success	412453.00
538	ingest_capteurs	2024-10-30 16:10:16	914	success	15528.00
539	ingest_capteurs	2024-01-30 06:28:18	680	running	406291.00
540	sync_warehouse	2024-03-29 19:28:35	508	failed	258210.00
541	ingest_capteurs	2024-06-16 17:44:06	896	success	457644.00
542	clean_production	2024-08-18 18:07:29	145	success	258600.00
543	predict_pannes	2024-11-29 13:17:08	1130	success	441100.00
544	predict_pannes	2024-08-22 22:04:21	867	success	404644.00
545	predict_pannes	2024-11-12 14:12:15	328	success	430007.00
546	sync_warehouse	2024-10-11 16:11:36	141	up_for_retry	98620.00
547	ingest_capteurs	2024-10-30 19:35:03	1272	success	230638.00
548	ingest_capteurs	2024-08-16 00:28:46	1541	success	368177.00
549	daily_kpi	2024-04-27 17:03:52	1786	success	238762.00
550	sync_warehouse	2024-07-24 14:47:24	212	success	165701.00
551	daily_kpi	2024-01-19 07:05:50	180	success	284331.00
552	ingest_logs_erreurs	2024-05-14 14:45:14	1363	running	233392.00
553	clean_production	2024-08-23 13:28:49	1066	success	343375.00
554	clean_production	2024-12-24 09:01:25	1301	success	119786.00
555	daily_kpi	2024-01-10 02:22:43	280	success	494838.00
556	sync_warehouse	2024-06-01 02:55:31	1526	success	17831.00
557	ingest_logs_erreurs	2024-06-11 08:56:50	465	success	60809.00
558	clean_production	2024-01-27 14:31:41	1348	success	65614.00
559	clean_production	2024-03-16 15:33:30	1448	success	204852.00
560	sync_warehouse	2024-04-19 15:27:00	41	up_for_retry	29281.00
561	daily_kpi	2024-05-14 05:00:34	696	success	262141.00
562	ingest_capteurs	2024-04-02 03:29:16	1333	failed	73168.00
563	sync_warehouse	2024-01-11 17:56:16	1195	success	104707.00
564	daily_kpi	2024-08-13 08:56:54	497	running	43297.00
565	clean_production	2024-11-13 00:09:35	1700	success	275958.00
566	clean_production	2024-09-20 23:41:10	736	success	257760.00
567	ingest_logs_erreurs	2024-06-22 19:52:30	793	failed	140584.00
568	ingest_capteurs	2024-11-06 04:56:54	633	up_for_retry	288073.00
569	clean_production	2024-10-22 20:48:03	914	success	196208.00
570	clean_production	2024-04-24 19:28:30	580	success	55258.00
571	predict_pannes	2024-09-25 01:41:41	826	success	96670.00
572	predict_pannes	2024-06-02 06:39:24	1051	success	213276.00
573	ingest_logs_erreurs	2024-06-08 01:59:42	1054	success	139378.00
574	sync_warehouse	2024-09-28 13:11:29	1539	success	21515.00
575	sync_warehouse	2024-10-01 08:25:14	199	failed	249853.00
576	ingest_logs_erreurs	2024-03-08 11:30:33	1561	up_for_retry	65290.00
577	ingest_capteurs	2024-04-16 00:22:34	98	success	242576.00
578	ingest_logs_erreurs	2024-01-04 14:03:08	588	success	385132.00
579	daily_kpi	2024-07-25 13:47:52	1453	success	70479.00
580	sync_warehouse	2024-06-30 20:42:02	62	success	10309.00
581	ingest_capteurs	2024-09-18 00:59:34	1537	success	178236.00
582	daily_kpi	2024-04-25 22:42:43	1454	success	409318.00
583	sync_warehouse	2024-02-27 04:30:43	1352	success	263451.00
584	sync_warehouse	2024-01-31 23:12:05	1224	success	320239.00
585	predict_pannes	2024-07-07 23:20:20	823	success	283810.00
586	sync_warehouse	2024-11-06 00:15:27	148	failed	92196.00
587	daily_kpi	2024-05-31 22:20:19	764	success	328806.00
588	ingest_logs_erreurs	2024-04-16 19:40:11	469	success	223502.00
589	ingest_capteurs	2024-10-19 14:21:52	36	success	312196.00
590	clean_production	2024-06-25 12:29:40	66	success	283615.00
591	clean_production	2024-05-31 00:33:23	1579	success	474247.00
592	ingest_capteurs	2024-02-22 17:17:18	956	success	477476.00
593	clean_production	2024-03-09 08:18:53	520	success	7309.00
594	sync_warehouse	2024-04-11 06:48:12	121	success	346239.00
595	ingest_capteurs	2024-02-05 08:19:52	1184	success	128998.00
596	predict_pannes	2024-05-22 06:40:46	271	up_for_retry	371706.00
597	ingest_capteurs	2024-08-31 03:29:43	16	running	413799.00
598	daily_kpi	2024-05-23 09:58:34	1479	success	471846.00
599	ingest_capteurs	2024-09-02 05:03:48	727	success	491079.00
600	daily_kpi	2024-03-15 04:46:07	1001	success	89154.00
\.


--
-- Data for Name: maintenance_machines; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.maintenance_machines (maintenance_id, machine_id, maintenance_type, maintenance_start, duration_min, maintenance_end, technician_id, cost_eur, status) FROM stdin;
1	M-10	Calibration	2024-04-03 01:31:02	122	2024-04-03 03:33:02	TECH_08	688.36	Completed
2	M-16	Inspection	2024-01-12 18:48:35	304	2024-01-12 23:52:35	TECH_10	433.77	Completed
3	M-5	Corrective	2024-04-26 06:15:00	243	2024-04-26 10:18:00	TECH_05	291.36	Completed
4	M-17	Preventive	2024-05-25 07:03:37	285	2024-05-25 11:48:37	TECH_03	1472.24	Completed
5	M-17	Calibration	2024-03-27 18:43:33	248	2024-03-27 22:51:33	TECH_05	3391.51	Completed
6	M-4	Preventive	2024-11-29 22:04:30	252	2024-11-30 02:16:30	TECH_03	1333.34	Completed
7	M-3	Corrective	2024-09-20 22:14:13	289	2024-09-21 03:03:13	TECH_09	1590.51	Completed
8	M-18	Calibration	2024-02-12 06:02:19	274	2024-02-12 10:36:19	TECH_02	1832.30	Completed
9	M-11	Preventive	2024-12-08 06:07:15	303	2024-12-08 11:10:15	TECH_05	1884.31	Planned
10	M-9	Inspection	2024-10-08 01:08:50	349	2024-10-08 06:57:50	TECH_04	3239.17	Cancelled
11	M-15	Calibration	2024-11-21 17:33:25	74	2024-11-21 18:47:25	TECH_09	860.74	Cancelled
12	M-13	Inspection	2024-06-09 19:26:57	296	2024-06-10 00:22:57	TECH_02	1214.33	Completed
13	M-10	Preventive	2024-07-06 21:13:52	119	2024-07-06 23:12:52	TECH_01	1570.44	Completed
14	M-17	Calibration	2024-05-23 22:42:34	156	2024-05-24 01:18:34	TECH_02	1633.97	Completed
15	M-15	Corrective	2024-10-29 00:54:20	266	2024-10-29 05:20:20	TECH_08	3118.76	Completed
16	M-5	Calibration	2024-07-30 10:39:38	290	2024-07-30 15:29:38	TECH_03	2723.59	Completed
17	M-7	Preventive	2024-02-15 08:25:41	199	2024-02-15 11:44:41	TECH_06	2484.39	Cancelled
18	M-13	Calibration	2024-08-03 21:56:51	201	2024-08-04 01:17:51	TECH_03	775.17	Completed
19	M-10	Inspection	2024-11-21 02:36:09	103	2024-11-21 04:19:09	TECH_06	139.09	Completed
20	M-6	Preventive	2024-06-02 16:59:44	341	2024-06-02 22:40:44	TECH_10	1433.38	Completed
21	M-7	Corrective	2024-11-26 18:32:44	186	2024-11-26 21:38:44	TECH_05	1064.26	Completed
22	M-6	Preventive	2024-12-15 19:16:07	106	2024-12-15 21:02:07	TECH_03	968.04	Planned
23	M-19	Corrective	2024-02-22 18:31:47	288	2024-02-22 23:19:47	TECH_08	117.57	Completed
24	M-7	Corrective	2024-02-07 03:22:45	321	2024-02-07 08:43:45	TECH_10	601.55	Completed
25	M-19	Preventive	2024-02-23 14:46:05	130	2024-02-23 16:56:05	TECH_03	2537.23	Completed
26	M-13	Inspection	2024-01-24 18:21:32	17	2024-01-24 18:38:32	TECH_04	3130.99	Planned
27	M-3	Calibration	2024-01-14 15:26:36	120	2024-01-14 17:26:36	TECH_02	1832.30	Completed
28	M-17	Corrective	2024-12-05 12:07:02	299	2024-12-05 17:06:02	TECH_09	1173.10	Planned
29	M-6	Corrective	2024-12-01 23:11:03	242	2024-12-02 03:13:03	TECH_03	1219.20	Completed
30	M-17	Corrective	2024-09-11 21:16:36	133	2024-09-11 23:29:36	TECH_03	3453.67	Completed
31	M-4	Corrective	2024-01-04 03:55:37	232	2024-01-04 07:47:37	TECH_01	3140.27	Completed
32	M-17	Corrective	2024-04-12 21:49:51	240	2024-04-13 01:49:51	TECH_05	663.35	Planned
33	M-2	Corrective	2024-04-08 21:16:00	106	2024-04-08 23:02:00	TECH_03	817.33	Completed
34	M-13	Preventive	2024-12-24 00:34:42	167	2024-12-24 03:21:42	TECH_10	2018.39	Completed
35	M-17	Inspection	2024-05-15 21:19:04	70	2024-05-15 22:29:04	TECH_06	88.96	Completed
36	M-19	Corrective	2024-11-12 01:13:01	135	2024-11-12 03:28:01	TECH_08	1234.82	Cancelled
37	M-16	Preventive	2024-07-31 11:55:17	91	2024-07-31 13:26:17	TECH_03	1640.74	Completed
38	M-7	Preventive	2024-01-09 10:41:58	77	2024-01-09 11:58:58	TECH_02	2872.97	Planned
39	M-10	Corrective	2024-07-07 11:34:09	358	2024-07-07 17:32:09	TECH_10	130.69	Completed
40	M-17	Preventive	2024-10-13 06:32:27	341	2024-10-13 12:13:27	TECH_02	2788.43	Completed
41	M-14	Inspection	2024-07-31 22:12:58	156	2024-08-01 00:48:58	TECH_10	1569.87	Completed
42	M-1	Preventive	2024-04-28 14:10:15	72	2024-04-28 15:22:15	TECH_04	2281.01	Planned
43	M-6	Preventive	2024-05-21 04:41:19	56	2024-05-21 05:37:19	TECH_09	1910.56	Planned
44	M-6	Preventive	2024-11-16 23:15:51	234	2024-11-17 03:09:51	TECH_08	1335.84	Completed
45	M-12	Inspection	2024-09-09 13:44:26	205	2024-09-09 17:09:26	TECH_07	101.45	Planned
46	M-4	Inspection	2024-01-11 19:25:08	313	2024-01-12 00:38:08	TECH_04	2291.64	Completed
47	M-5	Inspection	2024-08-26 12:10:10	28	2024-08-26 12:38:10	TECH_02	3229.08	Planned
48	M-13	Inspection	2024-01-26 19:34:39	149	2024-01-26 22:03:39	TECH_06	3235.52	Completed
49	M-13	Preventive	2024-06-08 14:13:06	123	2024-06-08 16:16:06	TECH_04	1659.06	Completed
50	M-7	Corrective	2024-03-15 13:18:39	316	2024-03-15 18:34:39	TECH_09	2575.84	Completed
51	M-1	Corrective	2024-04-06 08:45:00	210	2024-04-06 12:15:00	TECH_08	2329.90	Completed
52	M-1	Preventive	2024-08-05 09:32:58	344	2024-08-05 15:16:58	TECH_07	1832.57	Completed
53	M-17	Corrective	2024-04-12 08:05:05	270	2024-04-12 12:35:05	TECH_03	323.22	Completed
54	M-16	Preventive	2024-11-26 21:42:34	22	2024-11-26 22:04:34	TECH_06	3169.28	Completed
55	M-3	Preventive	2024-02-13 10:12:14	343	2024-02-13 15:55:14	TECH_06	2479.47	Completed
56	M-8	Inspection	2024-06-17 21:53:17	347	2024-06-18 03:40:17	TECH_04	2716.34	Completed
57	M-2	Inspection	2024-11-05 05:05:27	331	2024-11-05 10:36:27	TECH_09	635.31	Completed
58	M-9	Preventive	2024-10-12 16:00:14	129	2024-10-12 18:09:14	TECH_01	938.80	Completed
59	M-19	Preventive	2024-04-04 17:41:05	142	2024-04-04 20:03:05	TECH_02	1260.58	Cancelled
60	M-8	Preventive	2024-08-05 11:59:30	35	2024-08-05 12:34:30	TECH_02	1143.39	Completed
61	M-12	Inspection	2024-06-14 10:11:44	275	2024-06-14 14:46:44	TECH_04	96.06	Completed
62	M-1	Corrective	2024-04-21 16:03:59	142	2024-04-21 18:25:59	TECH_09	2135.30	Planned
63	M-15	Corrective	2024-06-23 21:41:49	330	2024-06-24 03:11:49	TECH_07	2882.24	Planned
64	M-16	Preventive	2024-10-07 06:56:33	223	2024-10-07 10:39:33	TECH_05	397.19	Planned
65	M-8	Corrective	2024-01-09 16:01:42	323	2024-01-09 21:24:42	TECH_03	3349.94	Completed
66	M-6	Inspection	2024-10-15 05:50:16	204	2024-10-15 09:14:16	TECH_08	1435.36	Completed
67	M-12	Calibration	2024-06-30 11:22:02	34	2024-06-30 11:56:02	TECH_04	2033.15	Completed
68	M-19	Preventive	2024-11-13 12:26:15	280	2024-11-13 17:06:15	TECH_07	2084.49	Completed
69	M-8	Corrective	2024-06-10 03:42:04	331	2024-06-10 09:13:04	TECH_05	2787.85	Planned
70	M-1	Preventive	2024-02-04 15:15:43	293	2024-02-04 20:08:43	TECH_06	3111.62	Completed
71	M-5	Inspection	2024-12-18 17:06:08	320	2024-12-18 22:26:08	TECH_07	327.93	Completed
72	M-3	Corrective	2024-01-15 09:46:36	67	2024-01-15 10:53:36	TECH_04	2918.40	Planned
73	M-19	Corrective	2024-01-24 09:46:21	354	2024-01-24 15:40:21	TECH_07	1458.93	Planned
74	M-1	Preventive	2024-06-20 14:27:25	95	2024-06-20 16:02:25	TECH_06	3367.85	Completed
75	M-18	Preventive	2024-10-20 07:30:52	92	2024-10-20 09:02:52	TECH_04	1488.32	Planned
76	M-17	Inspection	2024-10-01 22:35:05	21	2024-10-01 22:56:05	TECH_10	2548.81	Completed
77	M-4	Calibration	2024-06-05 09:55:52	240	2024-06-05 13:55:52	TECH_06	798.53	Completed
78	M-2	Calibration	2024-11-24 16:39:50	301	2024-11-24 21:40:50	TECH_06	1593.61	Completed
79	M-20	Calibration	2024-02-02 10:20:06	74	2024-02-02 11:34:06	TECH_04	2107.02	Completed
80	M-2	Preventive	2024-01-19 02:46:08	154	2024-01-19 05:20:08	TECH_02	815.01	Planned
81	M-2	Inspection	2024-11-25 07:21:42	131	2024-11-25 09:32:42	TECH_02	2501.11	Completed
82	M-1	Preventive	2024-05-20 16:25:43	235	2024-05-20 20:20:43	TECH_01	2578.58	Planned
83	M-3	Calibration	2024-12-01 02:36:58	285	2024-12-01 07:21:58	TECH_02	1035.85	Planned
84	M-11	Inspection	2024-02-26 02:37:17	300	2024-02-26 07:37:17	TECH_06	2566.85	Completed
85	M-18	Inspection	2024-11-22 10:10:17	163	2024-11-22 12:53:17	TECH_10	1978.51	Completed
86	M-4	Inspection	2024-05-05 08:17:45	322	2024-05-05 13:39:45	TECH_01	2419.10	Planned
87	M-2	Calibration	2024-03-05 14:24:09	232	2024-03-05 18:16:09	TECH_02	1943.85	Completed
88	M-2	Inspection	2024-10-04 06:26:18	101	2024-10-04 08:07:18	TECH_06	131.92	Planned
89	M-16	Calibration	2024-06-08 05:49:31	238	2024-06-08 09:47:31	TECH_03	3131.85	Completed
90	M-2	Preventive	2024-03-14 23:03:49	354	2024-03-15 04:57:49	TECH_02	2936.55	Completed
91	M-18	Corrective	2024-01-08 22:07:02	220	2024-01-09 01:47:02	TECH_08	965.75	Completed
92	M-2	Inspection	2024-03-22 08:04:50	150	2024-03-22 10:34:50	TECH_01	831.84	Completed
93	M-12	Inspection	2024-03-14 01:49:15	311	2024-03-14 07:00:15	TECH_02	504.11	Completed
94	M-12	Preventive	2024-07-11 13:09:53	55	2024-07-11 14:04:53	TECH_08	2777.91	Completed
95	M-14	Corrective	2024-05-26 06:06:47	353	2024-05-26 11:59:47	TECH_02	3007.48	Completed
96	M-6	Corrective	2024-11-01 17:51:51	20	2024-11-01 18:11:51	TECH_04	2938.44	Completed
97	M-5	Preventive	2024-01-07 02:33:36	222	2024-01-07 06:15:36	TECH_09	2170.81	Completed
98	M-18	Corrective	2024-03-14 23:53:43	46	2024-03-15 00:39:43	TECH_05	1332.35	Completed
99	M-10	Inspection	2024-04-22 12:54:26	63	2024-04-22 13:57:26	TECH_03	3432.92	Completed
100	M-12	Calibration	2024-02-10 12:26:57	276	2024-02-10 17:02:57	TECH_02	2401.38	Planned
101	M-18	Corrective	2024-03-25 23:37:52	109	2024-03-26 01:26:52	TECH_06	1629.92	Completed
102	M-4	Calibration	2024-03-25 13:15:07	200	2024-03-25 16:35:07	TECH_10	2284.88	Planned
103	M-7	Preventive	2024-08-18 17:43:08	41	2024-08-18 18:24:08	TECH_02	2909.71	Completed
104	M-15	Corrective	2024-12-15 19:19:31	279	2024-12-15 23:58:31	TECH_08	2333.06	Completed
105	M-2	Preventive	2024-09-26 14:01:49	62	2024-09-26 15:03:49	TECH_05	3024.58	Completed
106	M-10	Preventive	2024-01-12 13:19:22	76	2024-01-12 14:35:22	TECH_05	560.18	Completed
107	M-2	Corrective	2024-02-03 01:03:33	136	2024-02-03 03:19:33	TECH_01	897.80	Planned
108	M-17	Corrective	2024-02-09 21:09:04	221	2024-02-10 00:50:04	TECH_07	99.26	Completed
109	M-12	Preventive	2024-04-07 22:51:38	226	2024-04-08 02:37:38	TECH_10	3442.30	Planned
110	M-14	Corrective	2024-10-30 13:16:39	216	2024-10-30 16:52:39	TECH_01	2119.44	Completed
111	M-4	Inspection	2024-03-11 17:00:20	178	2024-03-11 19:58:20	TECH_01	961.97	Planned
112	M-11	Inspection	2024-11-12 12:29:50	67	2024-11-12 13:36:50	TECH_05	581.25	Completed
113	M-10	Corrective	2024-02-08 05:17:58	303	2024-02-08 10:20:58	TECH_03	2841.93	Completed
114	M-5	Inspection	2024-02-27 01:02:58	106	2024-02-27 02:48:58	TECH_08	2042.38	Completed
115	M-17	Preventive	2024-09-23 03:37:44	322	2024-09-23 08:59:44	TECH_02	96.05	Planned
116	M-3	Corrective	2024-05-25 08:43:19	210	2024-05-25 12:13:19	TECH_10	590.90	Completed
117	M-10	Corrective	2024-06-21 17:33:23	247	2024-06-21 21:40:23	TECH_03	3059.69	Completed
118	M-1	Preventive	2024-08-02 06:10:50	98	2024-08-02 07:48:50	TECH_07	1832.30	Completed
119	M-15	Preventive	2024-10-01 01:59:03	268	2024-10-01 06:27:03	TECH_10	1419.77	Completed
120	M-2	Preventive	2024-02-22 06:29:07	334	2024-02-22 12:03:07	TECH_10	3402.49	Cancelled
121	M-15	Inspection	2024-12-03 00:05:34	201	2024-12-03 03:26:34	TECH_02	2498.97	Completed
122	M-2	Corrective	2024-05-04 18:41:17	117	2024-05-04 20:38:17	TECH_08	2884.99	Completed
123	M-5	Inspection	2024-08-03 09:19:42	232	2024-08-03 13:11:42	TECH_05	2293.52	Planned
124	M-1	Preventive	2024-06-23 18:44:30	150	2024-06-23 21:14:30	TECH_04	2184.53	Completed
125	M-4	Preventive	2024-09-06 13:50:18	108	2024-09-06 15:38:18	TECH_04	101.33	Completed
126	M-8	Inspection	2024-02-15 12:23:40	344	2024-02-15 18:07:40	TECH_05	2601.59	Completed
127	M-1	Corrective	2024-06-17 04:37:34	272	2024-06-17 09:09:34	TECH_10	2833.37	Completed
128	M-4	Corrective	2024-11-02 19:20:25	66	2024-11-02 20:26:25	TECH_08	2819.77	Completed
129	M-13	Inspection	2024-11-29 05:37:36	62	2024-11-29 06:39:36	TECH_10	1386.63	Cancelled
130	M-11	Preventive	2024-09-19 05:07:33	207	2024-09-19 08:34:33	TECH_06	2953.61	Completed
131	M-12	Preventive	2024-07-03 17:16:00	269	2024-07-03 21:45:00	TECH_08	3120.18	Completed
132	M-8	Corrective	2024-05-10 12:50:34	350	2024-05-10 18:40:34	TECH_05	1559.01	Completed
133	M-6	Preventive	2024-05-12 18:55:32	326	2024-05-13 00:21:32	TECH_06	1832.30	Completed
134	M-13	Corrective	2024-07-20 22:36:52	106	2024-07-21 00:22:52	TECH_08	1421.13	Completed
135	M-13	Preventive	2024-03-24 09:59:24	26	2024-03-24 10:25:24	TECH_02	2576.23	Completed
136	M-4	Corrective	2024-04-15 12:15:14	115	2024-04-15 14:10:14	TECH_02	785.23	Completed
137	M-3	Corrective	2024-04-14 05:55:54	153	2024-04-14 08:28:54	TECH_06	1555.92	Planned
138	M-19	Inspection	2024-09-30 20:12:37	183	2024-09-30 23:15:37	TECH_04	3444.26	Completed
139	M-17	Corrective	2024-07-03 11:02:00	178	2024-07-03 14:00:00	TECH_10	1832.30	Completed
140	M-16	Preventive	2024-03-09 17:49:15	174	2024-03-09 20:43:15	TECH_04	1809.26	Cancelled
141	M-19	Corrective	2024-07-04 20:06:11	264	2024-07-05 00:30:11	TECH_04	233.68	Completed
142	M-19	Inspection	2024-11-26 17:11:47	327	2024-11-26 22:38:47	TECH_08	1815.67	Completed
143	M-15	Calibration	2024-03-30 14:06:05	27	2024-03-30 14:33:05	TECH_08	294.75	Completed
144	M-7	Preventive	2024-01-16 23:50:11	323	2024-01-17 05:13:11	TECH_05	222.15	Cancelled
145	M-4	Preventive	2024-01-14 05:25:51	202	2024-01-14 08:47:51	TECH_07	1809.89	Completed
146	M-13	Corrective	2024-12-25 16:59:18	283	2024-12-25 21:42:18	TECH_04	3142.18	Completed
147	M-6	Inspection	2024-09-24 09:35:37	129	2024-09-24 11:44:37	TECH_09	2611.88	Completed
148	M-13	Corrective	2024-11-19 00:53:54	337	2024-11-19 06:30:54	TECH_07	2946.63	Planned
149	M-2	Inspection	2024-11-20 11:20:09	355	2024-11-20 17:15:09	TECH_01	179.58	Completed
150	M-6	Corrective	2024-06-30 19:15:18	112	2024-06-30 21:07:18	TECH_08	1453.79	Completed
151	M-11	Preventive	2024-12-21 15:41:47	349	2024-12-21 21:30:47	TECH_02	2856.64	Completed
152	M-15	Corrective	2024-10-24 10:30:51	294	2024-10-24 15:24:51	TECH_04	826.53	Cancelled
153	M-11	Inspection	2024-04-28 10:19:24	323	2024-04-28 15:42:24	TECH_07	1832.30	Cancelled
154	M-18	Corrective	2024-01-15 05:04:08	179	2024-01-15 08:03:08	TECH_10	2512.66	Planned
155	M-5	Preventive	2024-03-10 16:16:05	98	2024-03-10 17:54:05	TECH_07	2908.17	Completed
156	M-4	Preventive	2024-04-03 07:09:08	234	2024-04-03 11:03:08	TECH_10	603.68	Completed
157	M-6	Corrective	2024-08-20 06:32:36	154	2024-08-20 09:06:36	TECH_02	3135.38	Completed
158	M-12	Preventive	2024-02-03 20:46:46	325	2024-02-04 02:11:46	TECH_10	1899.62	Completed
159	M-20	Preventive	2024-04-30 22:47:30	183	2024-05-01 01:50:30	TECH_10	2855.95	Completed
160	M-4	Corrective	2024-04-28 18:40:22	180	2024-04-28 21:40:22	TECH_01	1939.84	Completed
161	M-3	Preventive	2024-11-30 12:57:14	39	2024-11-30 13:36:14	TECH_10	2734.39	Cancelled
162	M-8	Corrective	2024-07-11 14:36:29	25	2024-07-11 15:01:29	TECH_05	710.26	Completed
163	M-12	Preventive	2024-07-27 20:04:50	171	2024-07-27 22:55:50	TECH_07	614.82	Planned
164	M-1	Preventive	2024-06-23 10:01:18	64	2024-06-23 11:05:18	TECH_09	3137.87	Completed
165	M-6	Calibration	2024-03-06 01:51:59	66	2024-03-06 02:57:59	TECH_04	465.91	Completed
166	M-5	Calibration	2024-01-06 11:26:37	310	2024-01-06 16:36:37	TECH_09	1383.95	Completed
167	M-12	Corrective	2024-07-06 03:28:14	194	2024-07-06 06:42:14	TECH_08	1768.44	Completed
168	M-2	Preventive	2024-02-16 19:29:43	94	2024-02-16 21:03:43	TECH_04	1588.37	Completed
169	M-17	Calibration	2024-11-22 05:34:03	193	2024-11-22 08:47:03	TECH_01	3428.80	Completed
170	M-14	Calibration	2024-10-26 00:23:03	335	2024-10-26 05:58:03	TECH_01	1896.44	Completed
171	M-14	Corrective	2024-04-02 05:16:06	268	2024-04-02 09:44:06	TECH_03	3285.30	Planned
172	M-16	Preventive	2024-01-01 05:56:21	178	2024-01-01 08:54:21	TECH_03	675.01	Completed
173	M-11	Preventive	2024-10-31 01:04:01	22	2024-10-31 01:26:01	TECH_04	2119.57	Completed
174	M-3	Inspection	2024-11-08 18:22:26	155	2024-11-08 20:57:26	TECH_08	2954.27	Completed
175	M-16	Preventive	2024-10-23 20:30:52	32	2024-10-23 21:02:52	TECH_08	511.15	Completed
176	M-12	Corrective	2024-05-04 16:27:40	355	2024-05-04 22:22:40	TECH_01	1372.16	Completed
177	M-18	Preventive	2024-01-10 04:31:14	231	2024-01-10 08:22:14	TECH_08	2560.50	Completed
178	M-20	Preventive	2024-01-29 03:34:26	278	2024-01-29 08:12:26	TECH_04	415.10	Completed
179	M-19	Preventive	2024-07-31 19:17:12	132	2024-07-31 21:29:12	TECH_04	1452.47	Completed
180	M-14	Preventive	2024-08-30 04:25:14	226	2024-08-30 08:11:14	TECH_06	1355.70	Planned
181	M-19	Preventive	2024-10-21 15:05:05	320	2024-10-21 20:25:05	TECH_03	2853.28	Planned
182	M-17	Corrective	2024-08-25 10:45:13	303	2024-08-25 15:48:13	TECH_07	1694.67	Completed
183	M-15	Preventive	2024-01-13 00:30:59	81	2024-01-13 01:51:59	TECH_05	3271.77	Completed
184	M-8	Inspection	2024-09-24 19:30:22	234	2024-09-24 23:24:22	TECH_06	1948.61	Completed
185	M-16	Corrective	2024-12-25 14:04:33	37	2024-12-25 14:41:33	TECH_05	630.85	Completed
186	M-2	Inspection	2024-07-31 09:17:06	97	2024-07-31 10:54:06	TECH_07	1481.40	Cancelled
187	M-14	Preventive	2024-06-27 09:41:35	279	2024-06-27 14:20:35	TECH_10	2743.96	Completed
188	M-10	Preventive	2024-11-27 09:37:34	137	2024-11-27 11:54:34	TECH_10	661.74	Planned
189	M-11	Calibration	2024-07-29 00:29:56	58	2024-07-29 01:27:56	TECH_07	1682.41	Completed
190	M-8	Calibration	2024-12-22 10:10:18	270	2024-12-22 14:40:18	TECH_02	218.20	Completed
191	M-1	Corrective	2024-07-14 21:57:24	52	2024-07-14 22:49:24	TECH_08	3211.57	Completed
192	M-18	Calibration	2024-11-01 00:41:06	181	2024-11-01 03:42:06	TECH_06	240.74	Completed
193	M-2	Inspection	2024-02-11 23:05:42	263	2024-02-12 03:28:42	TECH_03	2468.40	Completed
194	M-6	Inspection	2024-08-06 07:57:55	326	2024-08-06 13:23:55	TECH_02	1858.00	Completed
195	M-11	Corrective	2024-09-12 18:07:26	176	2024-09-12 21:03:26	TECH_10	3042.82	Planned
196	M-10	Preventive	2024-11-29 09:07:16	150	2024-11-29 11:37:16	TECH_02	571.41	Planned
197	M-12	Corrective	2024-09-27 22:44:19	76	2024-09-28 00:00:19	TECH_09	1412.19	Completed
198	M-16	Calibration	2024-01-17 01:08:39	250	2024-01-17 05:18:39	TECH_03	2066.49	Completed
199	M-14	Corrective	2024-03-22 14:47:31	92	2024-03-22 16:19:31	TECH_01	2248.61	Completed
200	M-4	Corrective	2024-12-19 23:46:35	198	2024-12-20 03:04:35	TECH_03	910.91	Completed
201	M-20	Preventive	2024-10-31 21:56:33	123	2024-10-31 23:59:33	TECH_05	3362.29	Planned
202	M-13	Preventive	2024-08-19 17:52:31	216	2024-08-19 21:28:31	TECH_03	1372.21	Completed
203	M-12	Preventive	2024-01-10 23:49:47	159	2024-01-11 02:28:47	TECH_09	2796.49	Completed
204	M-8	Calibration	2024-03-30 01:14:35	348	2024-03-30 07:02:35	TECH_01	2369.11	Cancelled
205	M-10	Calibration	2024-08-21 12:03:01	134	2024-08-21 14:17:01	TECH_08	1636.63	Completed
206	M-1	Inspection	2024-06-14 15:37:42	178	2024-06-14 18:35:42	TECH_03	1467.39	Completed
207	M-19	Corrective	2024-09-03 22:42:49	45	2024-09-03 23:27:49	TECH_06	1933.99	Completed
208	M-4	Corrective	2024-11-27 05:48:16	26	2024-11-27 06:14:16	TECH_09	1549.39	Completed
209	M-4	Corrective	2024-03-06 23:11:51	248	2024-03-07 03:19:51	TECH_09	170.06	Completed
210	M-10	Preventive	2024-07-24 20:26:57	313	2024-07-25 01:39:57	TECH_01	1832.04	Completed
211	M-15	Inspection	2024-02-15 09:34:33	270	2024-02-15 14:04:33	TECH_10	3271.41	Completed
212	M-6	Preventive	2024-03-04 16:20:12	160	2024-03-04 19:00:12	TECH_08	1720.58	Completed
213	M-3	Inspection	2024-11-11 09:46:19	85	2024-11-11 11:11:19	TECH_09	438.42	Completed
214	M-2	Corrective	2024-04-07 14:38:22	190	2024-04-07 17:48:22	TECH_05	731.59	Completed
215	M-12	Preventive	2024-10-08 05:02:30	357	2024-10-08 10:59:30	TECH_05	874.51	Completed
216	M-12	Inspection	2024-09-05 06:41:25	156	2024-09-05 09:17:25	TECH_05	1868.52	Planned
217	M-16	Corrective	2024-05-08 06:18:53	143	2024-05-08 08:41:53	TECH_05	2982.79	Cancelled
218	M-7	Calibration	2024-07-27 00:14:54	143	2024-07-27 02:37:54	TECH_07	473.02	Completed
219	M-2	Corrective	2024-09-06 08:08:36	93	2024-09-06 09:41:36	TECH_05	2886.04	Planned
220	M-3	Inspection	2024-03-21 19:03:14	101	2024-03-21 20:44:14	TECH_09	2253.20	Completed
\.


--
-- Data for Name: pieces_detachees; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.pieces_detachees (part_id, part_name, machine_id, supplier, stock_qty, reorder_threshold, unit_price_eur, last_restock_date) FROM stdin;
1	Valve	M-9	RS Components	189	65	583.68	2024-07-23 08:18:17
2	Controller	M-10	Siemens	106	72	702.17	2024-01-19 01:34:39
3	Pump	M-1	Bosch Rexroth	149	58	222.22	2024-03-08 05:20:43
4	Bearing	M-5	Schneider	128	23	573.10	2024-09-29 02:39:43
5	Controller	M-8	Siemens	219	59	886.04	2024-01-04 05:28:42
6	Filter	M-12	RS Components	78	7	417.98	2024-07-17 17:21:08
7	Filter	M-19	Festo	7	24	549.56	2024-06-22 19:38:35
8	Controller	M-10	Festo	168	33	820.94	2024-12-09 19:13:30
9	Controller	M-15	Siemens	274	56	525.39	2024-12-28 14:50:43
10	Pump	M-12	Festo	117	68	756.38	2024-06-12 12:34:49
11	Filter	M-11	Festo	34	17	96.51	2024-12-27 00:35:06
12	Motor	M-9	Sonepar	278	47	362.84	2024-06-17 20:37:10
13	Bearing	M-20	Siemens	252	61	363.62	2024-06-09 05:11:09
14	Fuse	M-10	Bosch Rexroth	181	40	452.78	2024-05-29 13:58:44
15	Fuse	M-9	Bosch Rexroth	20	5	465.15	2024-03-18 09:42:53
16	Gear	M-20	Siemens	25	6	778.61	2024-02-06 17:33:04
17	Filter	M-12	Festo	45	15	470.97	2024-11-13 04:40:51
18	Sensor	M-12	Schneider	156	22	637.57	2024-05-27 23:51:28
19	Valve	M-13	RS Components	108	62	550.49	2024-11-25 15:52:43
20	Gear	M-4	Sonepar	77	52	538.71	2024-11-11 02:39:32
21	Belt	M-2	Schneider	108	31	88.13	2024-03-22 02:10:37
22	Belt	M-19	Schneider	120	14	435.39	2024-12-21 05:49:48
23	Filter	M-18	Siemens	230	28	853.55	2024-05-24 13:04:14
24	Sensor	M-2	Schneider	29	42	272.83	2024-06-14 01:28:17
25	Bearing	M-12	Siemens	106	14	384.83	2024-04-22 14:15:21
26	Belt	M-7	Bosch Rexroth	85	15	895.36	2024-02-02 04:37:17
27	Sensor	M-18	Siemens	128	77	624.04	2024-08-12 22:43:24
28	Bearing	M-15	Siemens	194	18	197.90	2024-05-31 18:35:19
29	Filter	M-8	RS Components	297	27	841.67	2024-09-19 10:31:19
30	Bearing	M-6	Bosch Rexroth	67	53	452.78	2024-07-28 12:40:07
31	Bearing	M-1	Festo	258	57	898.72	2024-04-21 14:50:34
32	Controller	M-12	Festo	265	36	495.66	2024-10-25 23:03:43
33	Sensor	M-20	Festo	156	75	97.96	2024-01-16 00:13:11
34	Pump	M-16	Festo	223	66	100.01	2024-10-17 23:04:18
35	Motor	M-7	Siemens	125	10	790.05	2024-08-05 20:38:11
36	Gear	M-3	Siemens	115	21	563.48	2024-06-13 19:25:56
37	Fuse	M-10	RS Components	193	7	537.00	2024-06-10 09:05:36
38	Sensor	M-11	Schneider	287	36	422.07	2024-11-29 12:59:41
39	Pump	M-3	Siemens	35	49	733.17	2024-07-06 00:52:30
40	Bearing	M-17	Schneider	128	44	716.66	2024-09-19 00:51:11
41	Valve	M-10	Schneider	225	74	452.78	2024-02-21 03:50:07
42	Controller	M-8	RS Components	48	17	406.96	2024-10-14 20:25:31
43	Controller	M-4	RS Components	125	29	452.78	2024-08-17 06:51:58
44	Motor	M-4	Festo	130	64	354.33	2024-07-16 07:12:38
45	Controller	M-15	Schneider	248	14	695.53	2024-06-29 04:02:08
46	Bearing	M-1	Siemens	40	9	695.69	2024-07-28 18:23:24
47	Sensor	M-4	Siemens	30	54	749.34	2024-12-01 20:42:52
48	Controller	M-17	Bosch Rexroth	247	52	751.73	2024-12-18 04:20:10
49	Pump	M-1	RS Components	90	17	121.50	2024-11-10 21:12:46
50	Sensor	M-9	RS Components	257	22	148.95	2024-11-14 13:40:28
51	Bearing	M-12	Bosch Rexroth	158	27	713.97	2024-06-18 16:38:36
52	Bearing	M-5	RS Components	143	31	383.20	2024-04-04 07:51:03
53	Bearing	M-9	Schneider	38	71	272.92	2024-05-31 08:40:47
54	Controller	M-1	Siemens	157	31	62.77	2024-06-10 20:21:01
55	Pump	M-20	Festo	102	17	743.65	2024-07-23 13:37:55
56	Valve	M-18	Siemens	180	18	89.63	2024-08-10 18:43:58
57	Motor	M-4	Festo	36	74	549.77	2024-09-25 16:04:43
58	Fuse	M-20	Siemens	263	29	82.05	2024-02-05 13:32:06
59	Fuse	M-13	Bosch Rexroth	65	77	866.42	2024-03-25 05:13:57
60	Filter	M-8	Siemens	74	14	452.78	2024-06-11 23:01:53
61	Controller	M-18	Schneider	241	36	338.89	2024-11-20 02:19:02
62	Gear	M-11	Sonepar	236	14	415.19	2024-05-09 17:23:35
63	Bearing	M-1	Schneider	33	29	436.95	2024-10-27 17:37:00
64	Valve	M-3	Festo	118	24	748.06	2024-07-03 21:52:17
65	Motor	M-3	Bosch Rexroth	127	57	125.60	2024-12-07 23:50:30
66	Valve	M-3	Sonepar	98	9	44.03	2024-12-07 13:44:30
67	Valve	M-15	Bosch Rexroth	69	13	791.17	2024-09-13 23:42:33
68	Motor	M-19	Festo	128	60	285.47	2024-04-02 14:43:59
69	Fuse	M-6	Festo	53	21	641.79	2024-03-07 18:03:21
70	Controller	M-16	Bosch Rexroth	159	25	775.73	2024-09-05 08:04:37
71	Sensor	M-15	RS Components	199	30	65.76	2024-11-02 02:03:27
72	Controller	M-12	RS Components	178	23	451.68	2024-03-14 17:32:23
73	Sensor	M-5	Festo	260	65	398.89	2024-10-18 17:04:09
74	Filter	M-3	Siemens	134	79	856.19	2024-03-24 20:59:46
75	Motor	M-1	Sonepar	53	78	588.16	2024-08-22 13:32:45
76	Bearing	M-17	Bosch Rexroth	190	32	243.74	2024-10-23 12:42:54
77	Controller	M-17	Festo	2	26	196.28	2024-08-27 15:17:35
78	Valve	M-20	RS Components	152	19	23.90	2024-06-28 03:44:23
79	Valve	M-15	Sonepar	232	34	558.43	2024-10-19 19:17:29
80	Valve	M-2	Siemens	272	35	467.17	2024-02-21 11:16:06
81	Belt	M-17	Bosch Rexroth	8	70	538.29	2024-02-06 16:16:21
82	Sensor	M-18	Sonepar	78	34	90.09	2024-07-19 23:59:50
83	Controller	M-17	Festo	66	37	198.75	2024-05-21 23:17:29
84	Motor	M-8	Festo	135	8	331.00	2024-01-16 05:53:01
85	Valve	M-9	Sonepar	191	16	523.93	2024-03-21 14:00:35
86	Motor	M-19	Siemens	270	59	266.55	2024-07-24 16:23:25
87	Valve	M-3	Festo	69	37	519.00	2024-05-22 02:07:52
88	Valve	M-19	RS Components	195	29	395.76	2024-03-06 20:55:40
89	Sensor	M-12	Sonepar	68	31	8.07	2024-02-14 18:13:15
90	Sensor	M-4	Sonepar	128	50	318.81	2024-04-20 04:11:19
91	Fuse	M-8	RS Components	183	74	56.79	2024-05-12 11:18:00
92	Fuse	M-14	Siemens	103	15	345.79	2024-05-21 20:08:49
93	Pump	M-2	Bosch Rexroth	213	10	267.25	2024-07-28 03:19:17
94	Motor	M-3	Siemens	106	31	587.35	2024-01-14 10:02:30
95	Sensor	M-5	Schneider	42	45	750.21	2024-03-30 15:54:25
96	Gear	M-8	Bosch Rexroth	185	43	894.81	2024-02-10 17:23:33
97	Fuse	M-11	RS Components	128	47	330.00	2024-01-15 00:51:36
98	Bearing	M-8	RS Components	60	39	775.46	2024-03-17 07:10:09
99	Valve	M-6	Festo	110	51	111.59	2024-09-25 20:31:22
100	Controller	M-8	RS Components	97	41	441.87	2024-02-28 22:21:54
101	Controller	M-6	Siemens	132	68	248.05	2024-07-16 20:31:23
102	Bearing	M-3	Siemens	172	10	616.01	2024-01-16 22:31:50
103	Bearing	M-13	Bosch Rexroth	135	52	30.55	2024-07-28 17:28:25
104	Filter	M-1	RS Components	168	7	612.99	2024-09-25 17:04:44
105	Valve	M-13	Schneider	96	66	131.21	2024-06-12 05:19:21
106	Filter	M-16	Sonepar	182	13	69.95	2024-08-04 09:18:15
107	Valve	M-2	Festo	68	20	102.45	2024-11-29 13:31:31
108	Filter	M-19	Sonepar	55	25	824.63	2024-06-29 12:40:32
109	Controller	M-8	Bosch Rexroth	32	76	440.34	2024-03-10 21:46:19
110	Controller	M-1	Bosch Rexroth	280	45	834.44	2024-12-19 03:57:22
111	Filter	M-10	Bosch Rexroth	160	58	818.16	2024-02-01 06:21:41
112	Valve	M-1	Schneider	44	53	625.03	2024-08-27 22:45:29
113	Controller	M-10	RS Components	141	26	452.78	2024-11-05 01:00:49
114	Gear	M-19	RS Components	162	55	758.77	2024-06-28 22:28:43
115	Bearing	M-3	Bosch Rexroth	11	60	654.21	2024-03-03 14:02:10
116	Gear	M-20	Siemens	299	78	34.27	2024-08-18 11:18:29
117	Valve	M-1	Sonepar	93	60	695.30	2024-04-04 00:27:03
118	Gear	M-13	Siemens	220	30	199.02	2024-12-13 06:51:06
119	Sensor	M-18	RS Components	6	70	447.21	2024-08-31 02:58:20
120	Fuse	M-9	RS Components	54	44	280.34	2024-06-26 08:52:18
\.


--
-- Data for Name: planning_production; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.planning_production (plan_id, factory_id, product_id, planned_start, planned_end, planned_quantity, priority, status) FROM stdin;
1	1	11	2024-03-15 04:55:19	2024-03-15 21:55:19	358	High	Completed
2	2	4	2024-06-04 14:56:35	2024-06-05 04:56:35	3989	Medium	Completed
3	3	14	2024-03-23 12:09:50	2024-03-23 19:09:50	3651	Medium	Completed
4	4	9	2024-03-04 19:49:57	2024-03-05 23:49:57	4207	High	Completed
5	4	1	2024-09-06 13:50:33	2024-09-07 07:50:33	185	Medium	In Progress
6	5	14	2024-05-21 07:06:44	2024-05-22 09:06:44	2545	High	Delayed
7	2	10	2024-07-15 10:32:57	2024-07-16 02:32:57	3078	Medium	In Progress
8	2	13	2024-05-04 03:19:01	2024-05-04 11:19:01	2009	High	Delayed
9	5	4	2024-01-03 18:25:52	2024-01-05 11:25:52	1814	Medium	Completed
10	1	6	2024-01-31 00:51:54	2024-01-31 06:51:54	3489	Medium	Planned
11	2	8	2024-02-14 18:45:25	2024-02-15 22:45:25	2545	High	Delayed
12	1	1	2024-06-16 00:45:56	2024-06-16 07:45:56	2333	Medium	In Progress
13	5	5	2024-10-02 05:24:34	2024-10-03 22:24:34	413	Medium	Completed
14	4	12	2024-07-28 02:26:00	2024-07-29 07:26:00	2796	Medium	Delayed
15	1	12	2024-11-19 11:23:14	2024-11-20 09:23:14	2107	Low	Completed
16	5	5	2024-01-18 05:51:58	2024-01-19 22:51:58	2669	High	Completed
17	5	11	2024-08-27 22:37:04	2024-08-28 14:37:04	3353	Medium	Planned
18	1	12	2024-12-22 02:25:52	2024-12-23 01:25:52	1850	High	Planned
19	5	6	2024-05-10 23:16:18	2024-05-12 11:16:18	2361	High	Planned
20	5	5	2024-08-04 23:21:10	2024-08-06 13:21:10	2521	High	In Progress
21	5	13	2024-06-13 17:35:15	2024-06-15 11:35:15	2139	Medium	Completed
22	5	1	2024-11-24 04:45:58	2024-11-25 00:45:58	1343	Medium	Planned
23	2	12	2024-08-24 11:21:06	2024-08-25 00:21:06	1455	Medium	Completed
24	1	4	2024-04-19 21:42:47	2024-04-20 11:42:47	2213	Medium	Completed
25	4	15	2024-08-12 19:57:26	2024-08-13 07:57:26	2780	Medium	Completed
26	3	7	2024-03-02 08:19:02	2024-03-03 20:19:02	3353	High	In Progress
27	5	9	2024-12-03 07:53:06	2024-12-04 06:53:06	2545	Medium	Completed
28	3	2	2024-06-24 00:21:54	2024-06-24 20:21:54	3855	Medium	Completed
29	5	9	2024-08-09 01:47:35	2024-08-10 01:47:35	796	Low	Planned
30	5	6	2024-07-07 00:10:37	2024-07-08 02:10:37	4385	Low	Planned
31	2	4	2024-01-16 22:48:08	2024-01-18 08:48:08	4237	High	In Progress
32	2	6	2024-08-21 21:38:01	2024-08-23 00:38:01	1604	Low	Planned
33	1	13	2024-06-02 16:27:37	2024-06-04 08:27:37	1960	Medium	Planned
34	2	15	2024-10-06 10:26:04	2024-10-07 19:26:04	3342	Medium	Completed
35	4	9	2024-02-14 16:47:32	2024-02-15 00:47:32	4136	Low	Completed
36	2	15	2024-06-21 09:36:42	2024-09-12 09:16:28	2545	High	Completed
37	5	5	2024-08-20 19:22:43	2024-08-21 12:22:43	384	Low	Planned
38	2	5	2024-12-06 10:29:43	2024-12-07 14:29:43	3983	Medium	Completed
39	4	10	2024-12-26 09:47:08	2024-12-27 20:47:08	4422	Low	In Progress
40	1	13	2024-06-25 03:15:41	2024-06-25 22:15:41	579	Medium	Completed
41	5	6	2024-06-27 22:25:01	2024-06-28 10:25:01	926	Medium	Planned
42	3	5	2024-12-11 11:08:10	2024-12-12 03:08:10	3157	High	Planned
43	1	8	2024-02-25 06:37:42	2024-02-26 10:37:42	174	Medium	Completed
44	2	12	2024-10-20 10:30:14	2024-10-22 05:30:14	3154	High	In Progress
45	5	12	2024-12-22 01:12:19	2024-12-22 09:12:19	3467	Medium	Planned
46	4	14	2024-02-06 06:57:38	2024-02-07 14:57:38	3951	Medium	Completed
47	3	6	2024-09-12 09:16:28	2024-09-13 01:16:28	3100	High	Planned
48	2	8	2024-03-23 03:30:26	2024-03-24 22:30:26	4281	Medium	Completed
49	2	6	2024-08-07 03:26:46	2024-08-07 17:26:46	1531	Medium	Planned
50	3	8	2024-07-24 08:12:42	2024-07-24 19:12:42	4890	Medium	Completed
51	2	4	2024-05-18 12:22:10	2024-05-19 11:22:10	3430	Low	Completed
52	5	3	2024-12-05 00:50:28	2024-12-05 13:50:28	1609	Low	Planned
53	4	14	2024-06-30 10:15:03	2024-07-02 01:15:03	1847	High	In Progress
54	4	5	2024-06-23 19:43:30	2024-06-24 18:43:30	276	Low	Completed
55	3	14	2024-11-14 03:44:58	2024-11-15 11:44:58	2426	Medium	Completed
56	3	8	2024-05-15 19:15:02	2024-05-17 15:15:02	2993	Medium	Completed
57	2	1	2024-01-28 04:50:57	2024-01-29 17:50:57	218	High	Planned
58	5	13	2024-04-28 04:49:49	2024-04-29 14:49:49	4508	High	In Progress
59	2	13	2024-10-01 05:18:24	2024-10-03 04:18:24	2545	Medium	In Progress
60	1	8	2024-10-27 11:40:22	2024-10-27 23:40:22	62	Medium	Completed
61	1	1	2024-03-06 18:00:52	2024-03-07 17:00:52	2618	Medium	Planned
62	5	12	2024-08-22 03:40:24	2024-08-23 22:40:24	2863	Medium	Completed
63	1	14	2024-04-30 21:16:39	2024-05-01 14:16:39	1438	High	Planned
64	4	7	2024-09-28 06:16:10	2024-09-30 02:16:10	4410	Low	Planned
65	2	10	2024-10-22 21:13:43	2024-10-23 01:13:43	4751	Medium	Completed
66	3	8	2024-08-16 17:46:49	2024-08-17 06:46:49	60	High	Planned
67	5	4	2024-05-01 02:36:09	2024-05-01 16:36:09	4414	Low	Delayed
68	2	6	2024-05-15 14:35:57	2024-05-16 15:35:57	4744	High	Completed
69	3	11	2024-01-20 12:35:05	2024-01-21 16:35:05	409	Medium	In Progress
70	5	15	2024-01-07 17:17:16	2024-01-09 16:17:16	3297	Medium	In Progress
71	1	1	2024-07-15 23:48:58	2024-07-17 01:48:58	1951	Low	Planned
72	2	6	2024-02-08 04:12:05	2024-02-09 17:12:05	3425	High	Planned
73	2	9	2024-06-15 10:32:42	2024-06-17 00:32:42	3704	Medium	Planned
74	2	8	2024-03-09 22:02:53	2024-03-11 19:02:53	3601	Medium	Delayed
75	3	12	2024-11-24 09:32:31	2024-11-25 20:32:31	4922	Low	Delayed
76	3	8	2024-01-17 18:54:57	2024-01-18 22:54:57	3055	Low	Completed
77	2	6	2024-06-23 14:24:36	2024-06-25 09:24:36	151	Medium	Completed
78	5	14	2024-04-15 19:28:39	2024-04-16 17:28:39	865	Low	Completed
79	4	7	2024-05-15 13:37:46	2024-05-16 15:37:46	1614	High	Completed
80	4	6	2024-05-13 06:20:18	2024-05-15 05:20:18	2049	Medium	Delayed
81	4	3	2024-04-16 01:12:18	2024-04-16 13:12:18	1799	High	Completed
82	5	10	2024-12-16 14:13:27	2024-12-18 02:13:27	1718	Medium	Completed
83	1	6	2024-12-18 13:04:45	2024-12-19 08:04:45	2958	Medium	Planned
84	3	3	2024-01-28 07:27:34	2024-01-30 06:27:34	450	Medium	Completed
85	3	3	2024-01-20 01:41:12	2024-01-20 03:41:12	2448	High	Completed
86	5	6	2024-05-08 14:10:29	2024-05-09 04:10:29	942	Medium	In Progress
87	5	5	2024-11-20 00:59:48	2024-11-21 18:59:48	3021	High	Completed
88	3	12	2024-08-09 04:32:26	2024-08-10 12:32:26	2305	Low	Planned
89	1	11	2024-02-06 01:28:24	2024-02-07 00:28:24	4422	Low	In Progress
90	4	1	2024-12-18 01:24:43	2024-12-19 15:24:43	3042	High	Planned
91	5	10	2024-10-26 01:23:50	2024-10-27 05:23:50	151	Medium	Completed
92	3	11	2024-07-28 02:12:14	2024-07-29 06:12:14	4328	Medium	Completed
93	4	2	2024-12-03 08:22:12	2024-12-04 04:22:12	302	Medium	Completed
94	1	3	2024-06-12 19:56:54	2024-06-13 04:56:54	1386	Medium	Completed
95	1	10	2024-04-14 00:08:38	2024-04-15 16:08:38	1546	High	Completed
96	5	5	2024-04-14 10:51:01	2024-04-15 23:51:01	1407	Medium	Completed
97	2	7	2024-04-08 04:53:50	2024-04-09 09:53:50	4909	Low	Delayed
98	3	13	2024-07-13 04:26:18	2024-07-13 22:26:18	1303	Medium	Completed
99	3	3	2024-10-17 02:15:04	2024-10-17 08:15:04	539	Medium	Delayed
100	3	12	2024-10-15 07:13:15	2024-10-15 17:13:15	4792	Medium	Completed
101	2	7	2024-04-30 12:28:20	2024-04-30 18:28:20	4030	Medium	In Progress
102	5	7	2024-08-07 13:11:27	2024-08-08 08:11:27	3435	Low	Planned
103	1	4	2024-07-10 14:36:38	2024-07-10 20:36:38	2688	Medium	Completed
104	5	5	2024-11-16 04:49:41	2024-11-17 13:49:41	2545	Medium	Completed
105	4	8	2024-10-18 20:23:37	2024-10-19 22:23:37	4319	Low	Completed
106	3	12	2024-12-02 22:12:29	2024-12-04 10:12:29	2524	High	Planned
107	2	2	2024-10-14 03:38:50	2024-10-15 01:38:50	3317	High	Completed
108	3	9	2024-05-06 20:39:20	2024-05-08 14:39:20	4900	Low	Delayed
109	3	13	2024-07-20 17:03:49	2024-07-21 21:03:49	1078	Medium	Completed
110	4	4	2024-04-24 23:08:51	2024-04-26 13:08:51	2516	Low	Delayed
111	1	5	2024-02-19 06:11:28	2024-02-19 21:11:28	2627	Low	In Progress
112	2	6	2024-06-07 21:47:13	2024-06-09 06:47:13	3425	Medium	Completed
113	4	10	2024-10-20 17:44:00	2024-10-21 01:44:00	1489	High	Planned
114	2	8	2024-08-05 04:05:40	2024-08-06 21:05:40	3693	High	Delayed
115	1	1	2024-01-15 18:50:21	2024-01-16 16:50:21	197	High	Completed
116	1	15	2024-08-17 17:23:42	2024-08-19 04:23:42	1604	Medium	Delayed
117	3	13	2024-03-13 21:50:07	2024-03-14 19:50:07	2702	Medium	Planned
118	3	10	2024-06-13 12:50:04	2024-06-14 14:50:04	2424	Medium	Delayed
119	5	8	2024-02-22 04:43:55	2024-02-22 23:43:55	4134	Medium	Completed
120	2	10	2024-05-19 00:58:10	2024-05-19 08:58:10	3377	Medium	Completed
121	2	10	2024-06-20 16:18:30	2024-06-22 05:18:30	1433	Medium	Delayed
122	1	3	2024-12-08 06:44:26	2024-12-09 05:44:26	2545	Medium	Delayed
123	1	2	2024-05-13 13:17:31	2024-11-22 14:02:55	4120	Low	Completed
124	2	8	2024-06-03 05:31:19	2024-06-03 23:31:19	3305	Medium	Completed
125	5	13	2024-09-25 03:27:18	2024-09-25 23:27:18	153	Medium	Planned
126	3	7	2024-05-24 21:21:42	2024-05-26 19:21:42	4507	Medium	Completed
127	3	11	2024-03-16 03:08:08	2024-03-16 11:08:08	1109	Medium	Planned
128	2	7	2024-09-08 04:06:36	2024-09-09 00:06:36	4765	High	Planned
129	1	8	2024-03-26 07:46:15	2024-03-26 20:46:15	2534	Medium	Planned
130	4	7	2024-09-01 05:02:00	2024-09-01 21:02:00	2532	Medium	Completed
131	5	12	2024-12-13 18:53:04	2024-12-15 11:53:04	857	Medium	Delayed
132	4	11	2024-08-09 22:50:46	2024-08-11 02:50:46	3981	High	Planned
133	1	11	2024-11-27 13:12:36	2024-11-28 15:12:36	881	Medium	In Progress
134	3	1	2024-01-10 06:49:39	2024-01-11 03:49:39	473	Medium	In Progress
135	3	13	2024-08-29 15:21:38	2024-08-29 22:21:38	135	Medium	Completed
136	2	14	2024-08-05 00:48:43	2024-08-06 17:48:43	1965	Medium	Completed
137	4	12	2024-07-29 15:52:07	2024-07-30 04:52:07	1302	High	Planned
138	1	11	2024-11-21 08:32:11	2024-11-21 16:32:11	1886	Medium	Planned
139	5	8	2024-09-30 11:58:17	2024-10-02 02:58:17	704	High	Delayed
140	3	14	2024-12-18 22:32:38	2024-12-19 19:32:38	3633	Medium	Planned
141	5	15	2024-04-15 20:00:09	2024-04-17 05:00:09	550	Medium	Planned
142	4	12	2024-10-30 13:12:47	2024-10-30 22:12:47	95	Medium	Planned
143	4	10	2024-04-02 06:00:05	2024-04-03 22:00:05	1053	Low	Completed
144	3	8	2024-04-27 05:19:19	2024-04-28 09:19:19	3051	Low	Completed
145	2	10	2024-09-10 17:50:52	2024-09-11 18:50:52	465	Medium	Completed
146	4	9	2024-02-07 09:34:47	2024-02-09 08:34:47	2900	High	In Progress
147	5	7	2024-04-19 14:55:25	2024-04-20 08:55:25	4621	Medium	Planned
148	3	3	2024-07-23 23:57:39	2024-07-24 10:57:39	526	High	Planned
149	4	12	2024-07-11 02:27:27	2024-07-12 10:27:27	2545	Low	Planned
150	4	2	2024-05-08 23:11:35	2024-05-10 09:11:35	1816	Low	Delayed
151	3	10	2024-10-30 04:58:40	2024-10-30 11:58:40	2545	Medium	Completed
152	5	12	2024-02-17 10:29:51	2024-02-18 10:29:51	1408	Medium	Completed
153	5	4	2024-09-22 20:50:38	2024-09-24 16:50:38	1675	High	Completed
154	2	8	2024-06-03 16:06:55	2024-06-04 22:06:55	3586	Low	Planned
155	4	11	2024-03-31 18:22:56	2024-04-02 11:22:56	3108	Medium	Planned
156	2	6	2024-12-28 19:58:30	2024-12-30 07:58:30	2462	Medium	Planned
157	5	6	2024-07-01 15:47:15	2024-07-03 10:47:15	4513	Medium	Delayed
158	4	1	2024-09-28 07:55:11	2024-09-28 22:55:11	3160	Medium	Completed
159	1	8	2024-12-24 10:53:47	2024-12-25 01:53:47	804	Medium	Delayed
160	5	7	2024-08-04 10:55:59	2024-08-05 20:55:59	1857	Low	Completed
161	1	6	2024-11-06 13:12:46	2024-11-08 03:12:46	1738	Medium	In Progress
162	2	10	2024-03-16 13:33:19	2024-03-17 17:33:19	938	High	Planned
163	3	1	2024-08-28 20:24:14	2024-08-28 23:24:14	4526	High	Completed
164	3	11	2024-04-06 02:55:14	2024-04-06 06:55:14	2818	Medium	Completed
165	2	1	2024-06-09 14:06:50	2024-06-10 20:06:50	2062	Medium	Planned
166	1	14	2024-04-16 18:15:39	2024-04-17 18:15:39	2250	Medium	Planned
167	5	5	2024-09-01 21:52:56	2024-09-03 02:52:56	4027	Medium	Planned
168	3	8	2024-01-22 00:29:28	2024-01-22 10:29:28	1845	Low	Completed
169	1	12	2024-02-05 21:04:21	2024-02-06 08:04:21	4726	Low	Planned
170	3	7	2024-10-10 20:44:41	2024-10-12 17:44:41	4357	Medium	Delayed
171	5	12	2024-09-18 02:24:20	2024-09-18 18:24:20	3276	Medium	Planned
172	1	2	2024-06-26 12:23:09	2024-06-26 16:23:09	4197	High	Planned
173	2	3	2024-03-24 20:16:47	2024-03-26 18:16:47	4903	Medium	Completed
174	5	11	2024-01-28 23:43:52	2024-01-30 15:43:52	4133	Medium	Planned
175	1	11	2024-07-02 12:02:00	2024-07-03 21:02:00	1831	High	Planned
176	4	12	2024-10-30 06:13:54	2024-10-31 01:13:54	1463	High	In Progress
177	1	6	2024-08-20 20:06:55	2024-08-21 20:06:55	2590	Low	Planned
178	1	6	2024-04-27 19:19:39	2024-04-28 10:19:39	4912	High	Planned
179	5	7	2024-11-30 14:11:04	2024-12-02 06:11:04	4454	Medium	Planned
180	3	13	2024-07-17 08:16:56	2024-07-17 12:16:56	723	Medium	Completed
181	2	14	2024-02-02 21:02:37	2024-02-04 05:02:37	3544	Low	Completed
182	3	3	2024-04-16 10:18:11	2024-04-17 08:18:11	1067	Medium	In Progress
183	3	10	2024-01-03 12:09:03	2024-01-04 16:09:03	2944	High	Completed
184	5	7	2024-12-21 21:24:15	2024-12-22 22:24:15	4526	Medium	Planned
185	2	11	2024-06-28 16:00:14	2024-06-29 17:00:14	2392	Medium	Planned
186	4	11	2024-12-01 22:20:03	2024-12-02 14:20:03	967	High	Delayed
187	2	4	2024-10-21 04:03:21	2024-10-21 18:03:21	2322	Low	Planned
188	1	4	2024-09-18 17:34:50	2024-09-19 09:34:50	4809	High	Planned
189	2	10	2024-03-07 04:51:08	2024-03-08 23:51:08	2964	Low	In Progress
190	3	7	2024-11-22 14:02:55	2024-11-23 21:02:55	2272	Medium	Planned
191	3	12	2024-04-15 21:57:25	2024-04-17 18:57:25	830	Medium	Planned
192	5	1	2024-09-18 08:52:53	2024-09-18 17:52:53	1651	Low	Planned
193	1	14	2024-07-08 19:52:20	2024-07-10 10:52:20	2474	High	Completed
194	1	10	2024-01-10 17:34:01	2024-01-12 06:34:01	910	Medium	Completed
195	3	11	2024-12-23 23:11:57	2024-12-25 07:11:57	3411	Medium	Planned
196	2	4	2024-11-13 09:03:44	2024-11-14 18:03:44	1968	High	Planned
197	5	8	2024-10-02 18:20:38	2024-10-03 06:20:38	149	Medium	Completed
198	2	15	2024-02-27 23:49:56	2024-02-29 09:49:56	4210	Medium	Delayed
199	4	1	2024-10-02 21:54:28	2024-10-04 02:54:28	2177	Medium	Planned
200	3	1	2024-11-06 00:12:55	2024-11-07 01:12:55	3154	Medium	Planned
201	4	5	2024-03-14 08:27:51	2024-03-14 19:27:51	4489	High	Planned
202	1	5	2024-10-13 23:34:42	2024-10-15 10:34:42	2984	Low	Delayed
203	2	14	2024-06-03 11:54:17	2024-06-05 06:54:17	106	Low	Planned
204	1	7	2024-06-06 09:04:13	2024-06-07 18:04:13	3318	High	Completed
205	1	4	2024-10-08 18:20:22	2024-10-09 11:20:22	1754	Low	Planned
206	3	6	2024-02-19 19:33:51	2024-02-21 08:33:51	1448	Medium	Completed
207	2	4	2024-10-06 17:12:06	2024-10-06 19:12:06	4492	Medium	Completed
208	4	5	2024-09-03 07:44:51	2024-09-05 03:44:51	3418	High	Planned
209	4	12	2024-04-23 17:39:20	2024-04-25 08:39:20	3181	Low	Completed
210	5	4	2024-12-07 09:25:10	2024-12-08 07:25:10	2557	Low	Planned
211	5	4	2024-05-14 23:43:44	2024-05-16 09:43:44	3333	Medium	Planned
212	4	1	2024-10-31 14:31:02	2024-11-02 11:31:02	4476	Medium	Completed
213	5	11	2024-05-31 11:43:02	2024-05-31 23:43:02	303	Medium	Delayed
214	1	13	2024-05-30 23:12:22	2024-05-31 15:12:22	2856	Medium	Planned
215	2	2	2024-04-17 08:40:22	2024-04-17 11:40:22	1650	Medium	Planned
216	2	1	2024-02-23 16:01:17	2024-02-25 11:01:17	1253	Medium	Completed
217	2	6	2024-04-24 07:04:19	2024-04-25 16:04:19	4601	Low	Planned
218	4	7	2024-03-17 01:21:36	2024-03-18 11:21:36	1230	Medium	Completed
219	1	5	2024-03-28 13:29:36	2024-03-29 18:29:36	1919	Medium	Planned
220	3	8	2024-10-23 12:34:25	2024-10-23 20:34:25	2343	Medium	Completed
221	5	2	2024-02-20 22:41:41	2024-02-22 06:41:41	2093	Low	Completed
222	5	4	2024-02-29 07:22:01	2024-02-29 20:22:01	1648	Medium	In Progress
223	1	14	2024-01-29 18:59:09	2024-01-31 01:59:09	3566	High	Delayed
224	3	8	2024-08-27 22:16:43	2024-08-28 12:16:43	1768	Low	Completed
225	2	8	2024-07-06 11:02:39	2024-07-07 15:02:39	2671	Medium	Completed
226	4	2	2024-11-24 20:57:19	2024-11-25 23:57:19	1700	Medium	Planned
227	3	14	2024-04-01 14:46:50	2024-04-02 23:46:50	4167	High	Completed
228	2	6	2024-01-26 14:37:51	2024-01-28 00:37:51	4836	Medium	Delayed
229	2	14	2024-04-27 23:52:31	2024-04-29 21:52:31	1338	Medium	Completed
230	2	13	2024-10-09 20:13:33	2024-10-10 11:13:33	3144	Medium	Planned
231	3	12	2024-09-06 10:50:49	2024-09-07 03:50:49	4683	Low	Planned
232	5	4	2024-06-21 20:13:30	2024-06-22 16:13:30	4312	Medium	Completed
233	3	7	2024-01-13 22:08:09	2024-01-15 08:08:09	468	Medium	In Progress
234	2	3	2024-08-20 12:46:44	2024-08-20 19:46:44	137	Medium	Completed
235	1	4	2024-05-05 12:50:49	2024-05-07 04:50:49	2029	Medium	In Progress
236	2	7	2024-03-29 15:34:11	2024-03-29 20:34:11	301	High	Completed
237	3	10	2024-03-29 00:01:10	2024-03-30 17:01:10	4588	High	Planned
238	2	8	2024-05-30 10:06:55	2024-05-31 18:06:55	85	Medium	Delayed
239	5	14	2024-06-22 15:16:43	2024-06-23 21:16:43	1228	Medium	Planned
240	4	14	2024-12-28 08:30:49	2024-12-29 21:30:49	4320	Medium	Completed
241	2	15	2024-05-15 18:28:12	2024-12-22 02:25:52	1453	Low	Completed
242	2	2	2024-08-03 05:10:28	2024-08-05 04:10:28	2647	Medium	Completed
243	4	10	2024-05-15 14:02:38	2024-05-16 11:02:38	3028	High	Planned
244	5	6	2024-12-01 08:59:10	2024-12-02 21:59:10	1256	Medium	Planned
245	4	2	2024-03-26 19:40:43	2024-03-27 04:40:43	4914	Medium	Completed
246	3	7	2024-11-18 21:27:25	2024-11-18 23:27:25	4013	Low	Planned
247	3	13	2024-12-24 22:13:13	2024-12-26 08:13:13	4591	Medium	Completed
248	3	13	2024-10-20 18:22:27	2024-10-22 17:22:27	2930	Low	Planned
249	2	4	2024-09-18 05:55:40	2024-09-19 10:55:40	3985	Low	Delayed
250	5	14	2024-02-19 22:59:29	2024-02-20 06:59:29	1404	Low	Completed
251	5	11	2024-06-18 09:55:56	2024-06-19 22:55:56	1752	Low	Planned
252	4	10	2024-03-19 18:21:52	2024-03-21 10:21:52	4398	Medium	Planned
253	1	15	2024-05-07 19:53:27	2024-10-09 20:13:33	1344	High	Completed
254	1	4	2024-08-23 00:18:22	2024-08-23 23:18:22	4807	Medium	Completed
255	3	12	2024-06-21 02:41:56	2024-06-21 10:41:56	1815	Low	Completed
256	3	12	2024-10-20 20:41:05	2024-10-21 20:41:05	3651	Low	Planned
257	2	9	2024-08-06 06:57:43	2024-08-06 13:57:43	4566	Medium	Completed
258	4	3	2024-12-21 07:00:44	2024-12-21 18:00:44	4208	Low	Planned
259	4	6	2024-12-20 11:32:15	2024-12-22 03:32:15	3967	Low	In Progress
260	1	1	2024-10-06 12:38:06	2024-10-06 20:38:06	4100	High	Completed
261	2	3	2024-08-18 16:14:48	2024-08-20 08:14:48	3230	Medium	Planned
262	1	2	2024-09-18 08:15:22	2024-09-19 14:15:22	1157	High	Completed
263	5	15	2024-11-15 11:48:57	2024-11-15 13:48:57	4924	Medium	Delayed
264	2	4	2024-04-16 00:44:22	2024-04-16 21:44:22	2333	Medium	Planned
265	2	1	2024-01-06 06:55:54	2024-01-07 13:55:54	1842	Medium	Delayed
266	3	7	2024-03-23 15:17:28	2024-03-24 09:17:28	219	High	Completed
267	5	6	2024-05-25 19:13:28	2024-05-26 11:13:28	3158	High	Planned
268	4	11	2024-07-21 17:13:49	2024-07-22 13:13:49	1383	High	Delayed
269	3	6	2024-03-28 21:02:04	2024-03-30 08:02:04	3457	High	Completed
270	3	5	2024-09-06 08:12:58	2024-09-08 06:12:58	3617	Low	Planned
271	4	12	2024-03-30 02:59:22	2024-03-31 10:59:22	776	Low	Completed
272	5	9	2024-11-14 16:30:38	2024-11-15 03:30:38	2436	High	Completed
273	4	1	2024-10-21 18:13:32	2024-10-22 07:13:32	893	Medium	Completed
274	3	15	2024-02-25 14:02:47	2024-02-26 06:02:47	2126	High	Planned
275	3	8	2024-05-20 07:41:50	2024-05-21 06:41:50	2758	Medium	In Progress
276	2	1	2024-01-23 14:28:42	2024-01-24 09:28:42	4923	Medium	Completed
277	5	14	2024-12-11 07:51:15	2024-12-12 03:51:15	96	Low	In Progress
278	4	11	2024-08-01 10:52:11	2024-08-02 11:52:11	1546	Low	Delayed
279	2	10	2024-08-06 17:04:45	2024-08-07 01:04:45	2545	Medium	In Progress
280	5	1	2024-08-16 21:02:48	2024-08-18 12:02:48	3793	Medium	Planned
281	3	5	2024-01-29 10:02:52	2024-01-29 16:02:52	3227	Medium	Completed
282	2	8	2024-08-03 05:14:01	2024-08-04 22:14:01	3692	High	Completed
283	2	7	2024-12-03 18:52:41	2024-12-04 12:52:41	1783	Medium	Completed
284	4	12	2024-06-21 01:00:34	2024-06-22 02:00:34	1792	High	Completed
285	3	9	2024-12-27 07:25:32	2024-12-27 17:25:32	3314	Medium	Planned
286	1	12	2024-03-05 05:29:44	2024-03-06 07:29:44	4600	Medium	Completed
287	4	1	2024-03-28 12:24:40	2024-03-30 10:24:40	1909	Low	Completed
288	1	9	2024-08-10 15:46:33	2024-08-12 05:46:33	4735	High	Delayed
289	5	9	2024-11-25 20:41:42	2024-11-26 04:41:42	4812	Medium	Completed
290	3	4	2024-01-08 11:03:09	2024-01-08 16:03:09	4433	Medium	Planned
291	5	1	2024-05-12 23:08:59	2024-05-13 20:08:59	1509	Medium	Planned
292	2	12	2024-08-05 08:41:59	2024-08-06 18:41:59	3393	Medium	Completed
293	5	4	2024-07-19 02:26:16	2024-07-19 14:26:16	3341	High	In Progress
294	5	5	2024-09-06 11:15:31	2024-09-07 15:15:31	2574	High	Completed
295	3	15	2024-06-25 04:00:34	2024-06-26 00:00:34	3261	Low	In Progress
296	5	4	2024-06-12 23:14:52	2024-06-14 16:14:52	1040	Medium	Planned
297	1	8	2024-12-16 10:09:04	2024-12-16 18:09:04	2838	Low	Completed
298	4	11	2024-07-12 20:05:23	2024-07-14 19:05:23	784	High	Planned
299	4	7	2024-11-13 06:38:12	2024-11-14 04:38:12	530	Medium	Planned
300	2	15	2024-05-09 21:56:01	2024-05-10 11:56:01	2716	High	Completed
301	3	13	2024-11-25 14:45:48	2024-11-26 10:45:48	4843	Low	Completed
302	4	14	2024-11-12 23:20:09	2024-11-14 13:20:09	4949	Medium	Planned
303	3	11	2024-03-25 19:19:39	2024-03-26 05:19:39	3380	Low	In Progress
304	5	2	2024-03-09 03:44:27	2024-03-09 15:44:27	3101	Medium	Completed
305	5	9	2024-11-24 10:29:08	2024-11-26 09:29:08	4065	Medium	Completed
306	4	14	2024-04-05 04:56:23	2024-04-05 09:56:23	1982	Low	Completed
307	1	12	2024-05-30 23:43:03	2024-06-01 20:43:03	778	Medium	Completed
308	4	9	2024-10-20 22:03:29	2024-10-21 07:03:29	4420	High	Completed
309	1	10	2024-06-18 11:24:10	2024-06-19 08:24:10	4075	Low	Completed
310	1	7	2024-05-04 16:08:18	2024-05-05 14:08:18	2294	Medium	Delayed
311	1	2	2024-04-13 18:38:44	2024-04-15 09:38:44	294	Medium	In Progress
312	1	4	2024-01-28 04:01:54	2024-01-29 19:01:54	2485	Low	Planned
313	1	1	2024-08-31 00:07:30	2024-09-01 02:07:30	2458	Low	Planned
314	4	11	2024-04-04 18:08:57	2024-04-06 06:08:57	1311	Medium	Planned
315	3	3	2024-04-26 12:55:11	2024-04-26 20:55:11	919	Medium	Completed
316	3	10	2024-09-19 04:57:11	2024-09-21 02:57:11	4213	Low	Planned
317	5	5	2024-04-26 06:43:26	2024-04-26 21:43:26	1463	High	Completed
318	2	5	2024-04-07 11:20:19	2024-04-08 09:20:19	1385	High	In Progress
319	1	12	2024-06-29 10:15:27	2024-06-30 21:15:27	4387	Low	Planned
320	1	1	2024-04-22 04:44:52	2024-04-22 12:44:52	2532	Medium	Delayed
\.


--
-- Data for Name: produits; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.produits (product_id, product_name, category, unit_cost) FROM stdin;
1	Component_1	Electronic	86.99
2	Component_2	Electronic	136.78
3	Component_3	Mechanical	93.51
4	Component_4	Electronic	15.00
5	Component_5	Hydraulic	140.08
6	Component_6	Electronic	149.97
7	Component_7	Electronic	102.99
8	Component_8	Electronic	191.26
9	Component_9	Electronic	39.21
10	Component_10	Electronic	133.33
11	Component_11	Hydraulic	115.91
12	Component_12	Hydraulic	175.02
13	Component_13	Hydraulic	37.29
14	Component_14	Electronic	95.10
15	Component_15	Hydraulic	135.25
\.


--
-- Data for Name: rendered_task_instance_fields; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.rendered_task_instance_fields (dag_id, task_id, run_id, map_index, rendered_fields, k8s_pod_yaml) FROM stdin;
indusflow_data_pipeline	init_db_schema	manual__2026-07-06T14:39:17+00:00	-1	{"conn_id": "postgres_default", "sql": "-- ==========================================\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS usines (\\n    factory_id INT PRIMARY KEY,\\n    factory_name VARCHAR(100) NOT NULL,\\n    city VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\nCREATE TABLE IF NOT EXISTS produits (\\n    product_id INT PRIMARY KEY,\\n    product_name VARCHAR(100) NOT NULL,\\n    category VARCHAR(50),\\n    unit_cost DECIMAL(10, 2)\\n);\\n\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\n    client_id INT PRIMARY KEY,\\n    client_name VARCHAR(100) NOT NULL,\\n    sector VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\n-- ==========================================\\n-- 2. TABLE DE FAITS CENTRALE\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS cycles_production (\\n    cycle_id INT PRIMARY KEY,\\n    factory_id INT REFERENCES usines(factory_id),\\n    product_id INT REFERENCES produits(product_id),\\n    client_id INT REFERENCES clients_industriels(client_id),\\n    production_time_sec INT,\\n    cycle_timestamp TIMESTAMP NOT NULL\\n);\\n\\n-- ==========================================\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\n    step_name VARCHAR(100),\\n    duration_sec INT,\\n    machine_id VARCHAR(50),\\n    PRIMARY KEY (cycle_id, step_name)\\n);\\n\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\n    sensor_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    temperature_c DECIMAL(6, 2),\\n    vibration_level DECIMAL(6, 2),\\n    pressure_bar DECIMAL(6, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\n    camera_event_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    defect_detected INT, -- 0 ou 1\\n    confidence_score DECIMAL(4, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\n    log_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    error_code VARCHAR(10),\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\n    event_timestamp TIMESTAMP NOT NULL,\\n    resolved INT, -- 0 ou 1\\n    resolution_time_min INT\\n);\\n\\nCREATE TABLE IF NOT EXISTS planning_production (\\n    plan_id INT PRIMARY KEY,\\n    factory_id INT,\\n    product_id INT,\\n    planned_start TIMESTAMP,\\n    planned_end TIMESTAMP,\\n    planned_quantity INT,\\n    priority VARCHAR(20),\\n    status VARCHAR(50)\\n);\\n\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\n    part_id INT PRIMARY KEY,\\n    part_name VARCHAR(100),\\n    machine_id VARCHAR(50),\\n    supplier VARCHAR(100),\\n    stock_qty INT,\\n    reorder_threshold INT,\\n    unit_price_eur DECIMAL(10, 2),\\n    last_restock_date TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\n    maintenance_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50),\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\n    maintenance_start TIMESTAMP,\\n    duration_min INT,\\n    maintenance_end TIMESTAMP,\\n    technician_id VARCHAR(50),\\n    cost_eur DECIMAL(10, 2),\\n    status VARCHAR(50)\\n);\\n\\n-- ==========================================\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\n    user_id INT PRIMARY KEY,\\n    username VARCHAR(100) NOT NULL,\\n    role VARCHAR(50), -- ADMIN, ANALYST, etc.\\n    is_active INT,\\n    last_login TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS alertes_monitoring (\\n    alert_id INT PRIMARY KEY,\\n    system_name VARCHAR(50), -- postgresql, airflow, spark, etc.\\n    severity VARCHAR(20),\\n    metric_name VARCHAR(50),\\n    metric_value DECIMAL(10, 2),\\n    resolved INT,\\n    alert_timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_jobs_airflow (\\n    job_id INT PRIMARY KEY,\\n    dag_name VARCHAR(100) NOT NULL,\\n    execution_date TIMESTAMP NOT NULL,\\n    duration_sec INT,\\n    status VARCHAR(50), -- success, failed, retry, etc.\\n    rows_processed DECIMAL(12, 2)\\n);", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	init_db_schema	manual__2026-07-06T14:39:49+00:00	-1	{"conn_id": "postgres_default", "sql": "-- ==========================================\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS usines (\\n    factory_id INT PRIMARY KEY,\\n    factory_name VARCHAR(100) NOT NULL,\\n    city VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\nCREATE TABLE IF NOT EXISTS produits (\\n    product_id INT PRIMARY KEY,\\n    product_name VARCHAR(100) NOT NULL,\\n    category VARCHAR(50),\\n    unit_cost DECIMAL(10, 2)\\n);\\n\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\n    client_id INT PRIMARY KEY,\\n    client_name VARCHAR(100) NOT NULL,\\n    sector VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\n-- ==========================================\\n-- 2. TABLE DE FAITS CENTRALE\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS cycles_production (\\n    cycle_id INT PRIMARY KEY,\\n    factory_id INT REFERENCES usines(factory_id),\\n    product_id INT REFERENCES produits(product_id),\\n    client_id INT REFERENCES clients_industriels(client_id),\\n    production_time_sec INT,\\n    cycle_timestamp TIMESTAMP NOT NULL\\n);\\n\\n-- ==========================================\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\n    step_name VARCHAR(100),\\n    duration_sec INT,\\n    machine_id VARCHAR(50),\\n    PRIMARY KEY (cycle_id, step_name)\\n);\\n\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\n    sensor_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    temperature_c DECIMAL(6, 2),\\n    vibration_level DECIMAL(6, 2),\\n    pressure_bar DECIMAL(6, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\n    camera_event_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    defect_detected INT, -- 0 ou 1\\n    confidence_score DECIMAL(4, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\n    log_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    error_code VARCHAR(10),\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\n    event_timestamp TIMESTAMP NOT NULL,\\n    resolved INT, -- 0 ou 1\\n    resolution_time_min INT\\n);\\n\\nCREATE TABLE IF NOT EXISTS planning_production (\\n    plan_id INT PRIMARY KEY,\\n    factory_id INT,\\n    product_id INT,\\n    planned_start TIMESTAMP,\\n    planned_end TIMESTAMP,\\n    planned_quantity INT,\\n    priority VARCHAR(20),\\n    status VARCHAR(50)\\n);\\n\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\n    part_id INT PRIMARY KEY,\\n    part_name VARCHAR(100),\\n    machine_id VARCHAR(50),\\n    supplier VARCHAR(100),\\n    stock_qty INT,\\n    reorder_threshold INT,\\n    unit_price_eur DECIMAL(10, 2),\\n    last_restock_date TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\n    maintenance_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50),\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\n    maintenance_start TIMESTAMP,\\n    duration_min INT,\\n    maintenance_end TIMESTAMP,\\n    technician_id VARCHAR(50),\\n    cost_eur DECIMAL(10, 2),\\n    status VARCHAR(50)\\n);\\n\\n-- ==========================================\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\n    user_id INT PRIMARY KEY,\\n    username VARCHAR(100) NOT NULL,\\n    role VARCHAR(50), -- ADMIN, ANALYST, etc.\\n    is_active INT,\\n    last_login TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS alertes_monitoring (\\n    alert_id INT PRIMARY KEY,\\n    system_name VARCHAR(50), -- postgresql, airflow, spark, etc.\\n    severity VARCHAR(20),\\n    metric_name VARCHAR(50),\\n    metric_value DECIMAL(10, 2),\\n    resolved INT,\\n    alert_timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_jobs_airflow (\\n    job_id INT PRIMARY KEY,\\n    dag_name VARCHAR(100) NOT NULL,\\n    execution_date TIMESTAMP NOT NULL,\\n    duration_sec INT,\\n    status VARCHAR(50), -- success, failed, retry, etc.\\n    rows_processed DECIMAL(12, 2)\\n);", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	ingest_clients	manual__2026-07-06T14:39:49+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	ingest_usines	manual__2026-07-06T14:39:49+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_produits	manual__2026-07-06T14:39:49+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	ingest_cycles_production	manual__2026-07-06T14:39:49+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "cycles_production_bloc3_propre.csv", "table_name": "cycles_production"}}	null
indusflow_data_pipeline	ingest_capteurs_machines	manual__2026-07-06T14:39:49+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "capteurs_machines_bloc3_propre.csv", "table_name": "capteurs_machines"}}	null
indusflow_data_pipeline	ingest_etapes_fabrication	manual__2026-07-06T14:39:49+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "etapes_fabrication_bloc3_propre.csv", "table_name": "etapes_fabrication"}}	null
indusflow_data_pipeline	ingest_logs_erreurs	manual__2026-07-06T14:39:49+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "logs_erreurs_machines_bloc3_propre.csv", "table_name": "logs_erreurs_machines"}}	null
indusflow_data_pipeline	init_db_schema	scheduled__2026-07-05T00:00:00+00:00	-1	{"conn_id": "postgres_default", "sql": "-- ==========================================\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS usines (\\n    factory_id INT PRIMARY KEY,\\n    factory_name VARCHAR(100) NOT NULL,\\n    city VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\nCREATE TABLE IF NOT EXISTS produits (\\n    product_id INT PRIMARY KEY,\\n    product_name VARCHAR(100) NOT NULL,\\n    category VARCHAR(50),\\n    unit_cost DECIMAL(10, 2)\\n);\\n\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\n    client_id INT PRIMARY KEY,\\n    client_name VARCHAR(100) NOT NULL,\\n    sector VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\n-- ==========================================\\n-- 2. TABLE DE FAITS CENTRALE\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS cycles_production (\\n    cycle_id INT PRIMARY KEY,\\n    factory_id INT REFERENCES usines(factory_id),\\n    product_id INT REFERENCES produits(product_id),\\n    client_id INT REFERENCES clients_industriels(client_id),\\n    production_time_sec INT,\\n    cycle_timestamp TIMESTAMP NOT NULL\\n);\\n\\n-- ==========================================\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\n    step_name VARCHAR(100),\\n    duration_sec INT,\\n    machine_id VARCHAR(50),\\n    PRIMARY KEY (cycle_id, step_name)\\n);\\n\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\n    sensor_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    temperature_c DECIMAL(6, 2),\\n    vibration_level DECIMAL(6, 2),\\n    pressure_bar DECIMAL(6, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\n    camera_event_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    defect_detected INT, -- 0 ou 1\\n    confidence_score DECIMAL(4, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\n    log_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    error_code VARCHAR(10),\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\n    event_timestamp TIMESTAMP NOT NULL,\\n    resolved INT, -- 0 ou 1\\n    resolution_time_min INT\\n);\\n\\nCREATE TABLE IF NOT EXISTS planning_production (\\n    plan_id INT PRIMARY KEY,\\n    factory_id INT,\\n    product_id INT,\\n    planned_start TIMESTAMP,\\n    planned_end TIMESTAMP,\\n    planned_quantity INT,\\n    priority VARCHAR(20),\\n    status VARCHAR(50)\\n);\\n\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\n    part_id INT PRIMARY KEY,\\n    part_name VARCHAR(100),\\n    machine_id VARCHAR(50),\\n    supplier VARCHAR(100),\\n    stock_qty INT,\\n    reorder_threshold INT,\\n    unit_price_eur DECIMAL(10, 2),\\n    last_restock_date TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\n    maintenance_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50),\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\n    maintenance_start TIMESTAMP,\\n    duration_min INT,\\n    maintenance_end TIMESTAMP,\\n    technician_id VARCHAR(50),\\n    cost_eur DECIMAL(10, 2),\\n    status VARCHAR(50)\\n);\\n\\n-- ==========================================\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\n    user_id INT PRIMARY KEY,\\n    username VARCHAR(100) NOT NULL,\\n    role VARCHAR(50), -- ADMIN, ANALYST, etc.\\n    is_active INT,\\n    last_login TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS alertes_monitoring (\\n    alert_id INT PRIMARY KEY,\\n    system_name VARCHAR(50), -- postgresql, airflow, spark, etc.\\n    severity VARCHAR(20),\\n    metric_name VARCHAR(50),\\n    metric_value DECIMAL(10, 2),\\n    resolved INT,\\n    alert_timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_jobs_airflow (\\n    job_id INT PRIMARY KEY,\\n    dag_name VARCHAR(100) NOT NULL,\\n    execution_date TIMESTAMP NOT NULL,\\n    duration_sec INT,\\n    status VARCHAR(50), -- success, failed, retry, etc.\\n    rows_processed DECIMAL(12, 2)\\n);", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	ingest_maintenance_machines	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "maintenance_machines_bloc3_propre.csv", "table_name": "maintenance_machines"}}	null
indusflow_data_pipeline	ingest_alertes_monitoring	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "alertes_monitoring.csv", "table_name": "alertes_monitoring"}}	null
indusflow_data_pipeline	ingest_planning_production	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "planning_production_bloc3_propre.csv", "table_name": "planning_production"}}	null
indusflow_data_pipeline	ingest_usines	manual__2026-07-06T14:39:17+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_produits	manual__2026-07-06T14:39:17+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	ingest_clients	manual__2026-07-06T14:39:17+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	init_db_schema	manual__2026-07-06T14:31:25.743527+00:00	-1	{"conn_id": "postgres_default", "sql": "-- ==========================================\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS usines (\\n    factory_id INT PRIMARY KEY,\\n    factory_name VARCHAR(100) NOT NULL,\\n    city VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\nCREATE TABLE IF NOT EXISTS produits (\\n    product_id INT PRIMARY KEY,\\n    product_name VARCHAR(100) NOT NULL,\\n    category VARCHAR(50),\\n    unit_cost DECIMAL(10, 2)\\n);\\n\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\n    client_id INT PRIMARY KEY,\\n    client_name VARCHAR(100) NOT NULL,\\n    sector VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\n-- ==========================================\\n-- 2. TABLE DE FAITS CENTRALE\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS cycles_production (\\n    cycle_id INT PRIMARY KEY,\\n    factory_id INT REFERENCES usines(factory_id),\\n    product_id INT REFERENCES produits(product_id),\\n    client_id INT REFERENCES clients_industriels(client_id),\\n    production_time_sec INT,\\n    cycle_timestamp TIMESTAMP NOT NULL\\n);\\n\\n-- ==========================================\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\n    step_name VARCHAR(100),\\n    duration_sec INT,\\n    machine_id VARCHAR(50),\\n    PRIMARY KEY (cycle_id, step_name)\\n);\\n\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\n    sensor_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    temperature_c DECIMAL(6, 2),\\n    vibration_level DECIMAL(6, 2),\\n    pressure_bar DECIMAL(6, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\n    camera_event_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    defect_detected INT, -- 0 ou 1\\n    confidence_score DECIMAL(4, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\n    log_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    error_code VARCHAR(10),\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\n    event_timestamp TIMESTAMP NOT NULL,\\n    resolved INT, -- 0 ou 1\\n    resolution_time_min INT\\n);\\n\\nCREATE TABLE IF NOT EXISTS planning_production (\\n    plan_id INT PRIMARY KEY,\\n    factory_id INT,\\n    product_id INT,\\n    planned_start TIMESTAMP,\\n    planned_end TIMESTAMP,\\n    planned_quantity INT,\\n    priority VARCHAR(20),\\n    status VARCHAR(50)\\n);\\n\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\n    part_id INT PRIMARY KEY,\\n    part_name VARCHAR(100),\\n    machine_id VARCHAR(50),\\n    supplier VARCHAR(100),\\n    stock_qty INT,\\n    reorder_threshold INT,\\n    unit_price_eur DECIMAL(10, 2),\\n    last_restock_date TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\n    maintenance_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50),\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\n    maintenance_start TIMESTAMP,\\n    duration_min INT,\\n    maintenance_end TIMESTAMP,\\n    technician_id VARCHAR(50),\\n    cost_eur DECIMAL(10, 2),\\n    status VARCHAR(50)\\n);\\n\\n-- ==========================================\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\n    user_id INT PRIMARY KEY,\\n    username VARCHAR(100) NOT NULL,\\n    role VARCHAR(50), -- ADMIN, ANALYST, etc.\\n    is_active INT,\\n    last_login TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS alertes_monitoring (\\n    alert_id INT PRIMARY KEY,\\n    system_name VARCHAR(50), -- postgresql, airflow, spark, etc.\\n    severity VARCHAR(20),\\n    metric_name VARCHAR(50),\\n    metric_value DECIMAL(10, 2),\\n    resolved INT,\\n    alert_timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_jobs_airflow (\\n    job_id INT PRIMARY KEY,\\n    dag_name VARCHAR(100) NOT NULL,\\n    execution_date TIMESTAMP NOT NULL,\\n    duration_sec INT,\\n    status VARCHAR(50), -- success, failed, retry, etc.\\n    rows_processed DECIMAL(12, 2)\\n);", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	init_db_schema	manual__2026-07-06T14:38:12+00:00	-1	{"conn_id": "postgres_default", "sql": "-- ==========================================\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS usines (\\n    factory_id INT PRIMARY KEY,\\n    factory_name VARCHAR(100) NOT NULL,\\n    city VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\nCREATE TABLE IF NOT EXISTS produits (\\n    product_id INT PRIMARY KEY,\\n    product_name VARCHAR(100) NOT NULL,\\n    category VARCHAR(50),\\n    unit_cost DECIMAL(10, 2)\\n);\\n\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\n    client_id INT PRIMARY KEY,\\n    client_name VARCHAR(100) NOT NULL,\\n    sector VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\n-- ==========================================\\n-- 2. TABLE DE FAITS CENTRALE\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS cycles_production (\\n    cycle_id INT PRIMARY KEY,\\n    factory_id INT REFERENCES usines(factory_id),\\n    product_id INT REFERENCES produits(product_id),\\n    client_id INT REFERENCES clients_industriels(client_id),\\n    production_time_sec INT,\\n    cycle_timestamp TIMESTAMP NOT NULL\\n);\\n\\n-- ==========================================\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\n    step_name VARCHAR(100),\\n    duration_sec INT,\\n    machine_id VARCHAR(50),\\n    PRIMARY KEY (cycle_id, step_name)\\n);\\n\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\n    sensor_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    temperature_c DECIMAL(6, 2),\\n    vibration_level DECIMAL(6, 2),\\n    pressure_bar DECIMAL(6, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\n    camera_event_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    defect_detected INT, -- 0 ou 1\\n    confidence_score DECIMAL(4, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\n    log_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    error_code VARCHAR(10),\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\n    event_timestamp TIMESTAMP NOT NULL,\\n    resolved INT, -- 0 ou 1\\n    resolution_time_min INT\\n);\\n\\nCREATE TABLE IF NOT EXISTS planning_production (\\n    plan_id INT PRIMARY KEY,\\n    factory_id INT,\\n    product_id INT,\\n    planned_start TIMESTAMP,\\n    planned_end TIMESTAMP,\\n    planned_quantity INT,\\n    priority VARCHAR(20),\\n    status VARCHAR(50)\\n);\\n\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\n    part_id INT PRIMARY KEY,\\n    part_name VARCHAR(100),\\n    machine_id VARCHAR(50),\\n    supplier VARCHAR(100),\\n    stock_qty INT,\\n    reorder_threshold INT,\\n    unit_price_eur DECIMAL(10, 2),\\n    last_restock_date TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\n    maintenance_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50),\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\n    maintenance_start TIMESTAMP,\\n    duration_min INT,\\n    maintenance_end TIMESTAMP,\\n    technician_id VARCHAR(50),\\n    cost_eur DECIMAL(10, 2),\\n    status VARCHAR(50)\\n);\\n\\n-- ==========================================\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\n    user_id INT PRIMARY KEY,\\n    username VARCHAR(100) NOT NULL,\\n    role VARCHAR(50), -- ADMIN, ANALYST, etc.\\n    is_active INT,\\n    last_login TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS alertes_monitoring (\\n    alert_id INT PRIMARY KEY,\\n    system_name VARCHAR(50), -- postgresql, airflow, spark, etc.\\n    severity VARCHAR(20),\\n    metric_name VARCHAR(50),\\n    metric_value DECIMAL(10, 2),\\n    resolved INT,\\n    alert_timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_jobs_airflow (\\n    job_id INT PRIMARY KEY,\\n    dag_name VARCHAR(100) NOT NULL,\\n    execution_date TIMESTAMP NOT NULL,\\n    duration_sec INT,\\n    status VARCHAR(50), -- success, failed, retry, etc.\\n    rows_processed DECIMAL(12, 2)\\n);", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	ingest_clients	manual__2026-07-06T14:38:12+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	init_db_schema	manual__2026-07-06T15:04:40+00:00	-1	{"conn_id": "postgres_default", "sql": "-- ==========================================\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS usines (\\n    factory_id INT PRIMARY KEY,\\n    factory_name VARCHAR(100) NOT NULL,\\n    city VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\nCREATE TABLE IF NOT EXISTS produits (\\n    product_id INT PRIMARY KEY,\\n    product_name VARCHAR(100) NOT NULL,\\n    category VARCHAR(50),\\n    unit_cost DECIMAL(10, 2)\\n);\\n\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\n    client_id INT PRIMARY KEY,\\n    client_name VARCHAR(100) NOT NULL,\\n    sector VARCHAR(100),\\n    country VARCHAR(100)\\n);\\n\\n-- ==========================================\\n-- 2. TABLE DE FAITS CENTRALE\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS cycles_production (\\n    cycle_id INT PRIMARY KEY,\\n    factory_id INT REFERENCES usines(factory_id),\\n    product_id INT REFERENCES produits(product_id),\\n    client_id INT REFERENCES clients_industriels(client_id),\\n    production_time_sec INT,\\n    cycle_timestamp TIMESTAMP NOT NULL\\n);\\n\\n-- ==========================================\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\n    step_name VARCHAR(100),\\n    duration_sec INT,\\n    machine_id VARCHAR(50),\\n    PRIMARY KEY (cycle_id, step_name)\\n);\\n\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\n    sensor_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    temperature_c DECIMAL(6, 2),\\n    vibration_level DECIMAL(6, 2),\\n    pressure_bar DECIMAL(6, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\n    camera_event_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    defect_detected INT, -- 0 ou 1\\n    confidence_score DECIMAL(4, 2),\\n    timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\n    log_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50) NOT NULL,\\n    error_code VARCHAR(10),\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\n    event_timestamp TIMESTAMP NOT NULL,\\n    resolved INT, -- 0 ou 1\\n    resolution_time_min INT\\n);\\n\\nCREATE TABLE IF NOT EXISTS planning_production (\\n    plan_id INT PRIMARY KEY,\\n    factory_id INT,\\n    product_id INT,\\n    planned_start TIMESTAMP,\\n    planned_end TIMESTAMP,\\n    planned_quantity INT,\\n    priority VARCHAR(20),\\n    status VARCHAR(50)\\n);\\n\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\n    part_id INT PRIMARY KEY,\\n    part_name VARCHAR(100),\\n    machine_id VARCHAR(50),\\n    supplier VARCHAR(100),\\n    stock_qty INT,\\n    reorder_threshold INT,\\n    unit_price_eur DECIMAL(10, 2),\\n    last_restock_date TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\n    maintenance_id INT PRIMARY KEY,\\n    machine_id VARCHAR(50),\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\n    maintenance_start TIMESTAMP,\\n    duration_min INT,\\n    maintenance_end TIMESTAMP,\\n    technician_id VARCHAR(50),\\n    cost_eur DECIMAL(10, 2),\\n    status VARCHAR(50)\\n);\\n\\n-- ==========================================\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\n-- ==========================================\\n\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\n    user_id INT PRIMARY KEY,\\n    username VARCHAR(100) NOT NULL,\\n    role VARCHAR(50), -- ADMIN, ANALYST, etc.\\n    is_active INT,\\n    last_login TIMESTAMP\\n);\\n\\nCREATE TABLE IF NOT EXISTS alertes_monitoring (\\n    alert_id INT PRIMARY KEY,\\n    system_name VARCHAR(50), -- postgresql, airflow, spark, etc.\\n    severity VARCHAR(20),\\n    metric_name VARCHAR(50),\\n    metric_value DECIMAL(10, 2),\\n    resolved INT,\\n    alert_timestamp TIMESTAMP NOT NULL\\n);\\n\\nCREATE TABLE IF NOT EXISTS logs_jobs_airflow (\\n    job_id INT PRIMARY KEY,\\n    dag_name VARCHAR(100) NOT NULL,\\n    execution_date TIMESTAMP NOT NULL,\\n    duration_sec INT,\\n    status VARCHAR(50), -- success, failed, retry, etc.\\n    rows_processed DECIMAL(12, 2)\\n);", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	ingest_cameras_qualite	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "cameras_qualite_bloc3_propre.csv", "table_name": "cameras_qualite"}}	null
indusflow_data_pipeline	ingest_clients	manual__2026-07-06T15:04:40+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	ingest_produits	manual__2026-07-06T15:04:40+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	ingest_usines	manual__2026-07-06T15:04:40+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_clients	scheduled__2026-07-05T00:00:00+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	ingest_produits	scheduled__2026-07-05T00:00:00+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	ingest_usines	scheduled__2026-07-05T00:00:00+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_usines	manual__2026-07-06T14:31:25.743527+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_clients	manual__2026-07-06T14:31:25.743527+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	ingest_produits	manual__2026-07-06T14:31:25.743527+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	ingest_usines	manual__2026-07-06T14:38:12+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_produits	manual__2026-07-06T14:38:12+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	init_db_schema	manual__2026-07-06T15:05:48+00:00	-1	{"conn_id": "postgres_default", "sql": "Truncated. You can change this behaviour in [core]max_templated_field_length. '-- DROP TABLES to allow clean re-runs\\\\nDROP TABLE IF EXISTS logs_jobs_airflow CASCADE;\\\\nDROP TABLE IF EXISTS alertes_monitoring CASCADE;\\\\nDROP TABLE IF EXISTS acces_utilisateurs CASCADE;\\\\nDROP TABLE IF EXISTS maintenance_machines CASCADE;\\\\nDROP TABLE IF EXISTS pieces_detachees CASCADE;\\\\nDROP TABLE IF EXISTS planning_production CASCADE;\\\\nDROP TABLE IF EXISTS logs_erreurs_machines CASCADE;\\\\nDROP TABLE IF EXISTS cameras_qualite CASCADE;\\\\nDROP TABLE IF EXISTS capteurs_machines CASCADE;\\\\nDROP TABLE IF EXISTS etapes_fabrication CASCADE;\\\\nDROP TABLE IF EXISTS cycles_production CASCADE;\\\\nDROP TABLE IF EXISTS clients_industriels CASCADE;\\\\nDROP TABLE IF EXISTS produits CASCADE;\\\\nDROP TABLE IF EXISTS usines CASCADE;\\\\n\\\\n-- ==========================================\\\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS usines (\\\\n    factory_id INT PRIMARY KEY,\\\\n    factory_name VARCHAR(100) NOT NULL,\\\\n    city VARCHAR(100),\\\\n    country VARCHAR(100)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS produits (\\\\n    product_id INT PRIMARY KEY,\\\\n    product_name VARCHAR(100) NOT NULL,\\\\n    category VARCHAR(50),\\\\n    unit_cost DECIMAL(10, 2)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\\\n    client_id INT PRIMARY KEY,\\\\n    client_name VARCHAR(100) NOT NULL,\\\\n    sector VARCHAR(100),\\\\n    country VARCHAR(100)\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 2. TABLE DE FAITS CENTRALE\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS cycles_production (\\\\n    cycle_id INT PRIMARY KEY,\\\\n    factory_id INT REFERENCES usines(factory_id),\\\\n    product_id INT REFERENCES produits(product_id),\\\\n    client_id INT REFERENCES clients_industriels(client_id),\\\\n    production_time_sec INT,\\\\n    cycle_timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\\\n    step_name VARCHAR(100),\\\\n    duration_sec INT,\\\\n    machine_id VARCHAR(50),\\\\n    PRIMARY KEY (cycle_id, step_name)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\\\n    sensor_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    temperature_c DECIMAL(6, 2),\\\\n    vibration_level DECIMAL(6, 2),\\\\n    pressure_bar DECIMAL(6, 2),\\\\n    timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\\\n    camera_event_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    defect_detected INT, -- 0 ou 1\\\\n    confidence_score DECIMAL(4, 2),\\\\n    timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\\\n    log_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    error_code VARCHAR(10),\\\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\\\n    event_timestamp TIMESTAMP NOT NULL,\\\\n    resolved INT, -- 0 ou 1\\\\n    resolution_time_min INT\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS planning_production (\\\\n    plan_id INT PRIMARY KEY,\\\\n    factory_id INT,\\\\n    product_id INT,\\\\n    planned_start TIMESTAMP,\\\\n    planned_end TIMESTAMP,\\\\n    planned_quantity INT,\\\\n    priority VARCHAR(20),\\\\n    status VARCHAR(50)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\\\n    part_id INT PRIMARY KEY,\\\\n    part_name VARCHAR(100),\\\\n    machine_id VARCHAR(50),\\\\n    supplier VARCHAR(100),\\\\n    stock_qty INT,\\\\n    reorder_threshold INT,\\\\n    unit_price_eur DECIMAL(10, 2),\\\\n    last_restock_date TIMESTAMP\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\\\n    maintenance_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50),\\\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\\\n    maintenance_start TIMESTAMP,\\\\n    duration_min INT,\\\\n    maintenance_end TIMESTAMP,\\\\n    technician_id VARCHAR(50),\\\\n    cost_eur DECIMAL(10, 2),\\\\n    status VARCHAR(50)\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\\\n    user_id INT PRIMAR'... ", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	ingest_produits	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	ingest_clients	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	ingest_usines	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_cycles_production	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "cycles_production_bloc3_propre.csv", "table_name": "cycles_production"}}	null
indusflow_data_pipeline	ingest_logs_erreurs	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "logs_erreurs_machines_bloc3_propre.csv", "table_name": "logs_erreurs_machines"}}	null
indusflow_data_pipeline	ingest_alertes_monitoring	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "alertes_monitoring.csv", "table_name": "alertes_monitoring"}}	null
indusflow_data_pipeline	ingest_cameras_qualite	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "cameras_qualite_bloc3_propre.csv", "table_name": "cameras_qualite"}}	null
indusflow_data_pipeline	ingest_pieces_detachees	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "pieces_detachees_bloc3_propre.csv", "table_name": "pieces_detachees"}}	null
indusflow_data_pipeline	ingest_planning_production	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "planning_production_bloc3_propre.csv", "table_name": "planning_production"}}	null
indusflow_data_pipeline	ingest_acces_utilisateurs	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "acces_utilisateurs.csv", "table_name": "acces_utilisateurs"}}	null
indusflow_data_pipeline	ingest_etapes_fabrication	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "etapes_fabrication_bloc3_propre.csv", "table_name": "etapes_fabrication"}}	null
indusflow_data_pipeline	ingest_logs_jobs_airflow	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "logs_jobs_airflow.csv", "table_name": "logs_jobs_airflow"}}	null
indusflow_data_pipeline	ingest_maintenance_machines	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "maintenance_machines_bloc3_propre.csv", "table_name": "maintenance_machines"}}	null
indusflow_data_pipeline	ingest_capteurs_machines	manual__2026-07-06T15:05:48+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "capteurs_machines_bloc3_propre.csv", "table_name": "capteurs_machines"}}	null
indusflow_data_pipeline	init_db_schema	manual__2026-07-06T15:18:41+00:00	-1	{"conn_id": "postgres_default", "sql": "Truncated. You can change this behaviour in [core]max_templated_field_length. '-- DROP TABLES to allow clean re-runs\\\\nDROP TABLE IF EXISTS logs_jobs_airflow CASCADE;\\\\nDROP TABLE IF EXISTS alertes_monitoring CASCADE;\\\\nDROP TABLE IF EXISTS acces_utilisateurs CASCADE;\\\\nDROP TABLE IF EXISTS maintenance_machines CASCADE;\\\\nDROP TABLE IF EXISTS pieces_detachees CASCADE;\\\\nDROP TABLE IF EXISTS planning_production CASCADE;\\\\nDROP TABLE IF EXISTS logs_erreurs_machines CASCADE;\\\\nDROP TABLE IF EXISTS cameras_qualite CASCADE;\\\\nDROP TABLE IF EXISTS capteurs_machines CASCADE;\\\\nDROP TABLE IF EXISTS etapes_fabrication CASCADE;\\\\nDROP TABLE IF EXISTS cycles_production CASCADE;\\\\nDROP TABLE IF EXISTS clients_industriels CASCADE;\\\\nDROP TABLE IF EXISTS produits CASCADE;\\\\nDROP TABLE IF EXISTS usines CASCADE;\\\\n\\\\n-- ==========================================\\\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS usines (\\\\n    factory_id INT PRIMARY KEY,\\\\n    factory_name VARCHAR(100) NOT NULL,\\\\n    city VARCHAR(100),\\\\n    country VARCHAR(100)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS produits (\\\\n    product_id INT PRIMARY KEY,\\\\n    product_name VARCHAR(100) NOT NULL,\\\\n    category VARCHAR(50),\\\\n    unit_cost DECIMAL(10, 2)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\\\n    client_id INT PRIMARY KEY,\\\\n    client_name VARCHAR(100) NOT NULL,\\\\n    sector VARCHAR(100),\\\\n    country VARCHAR(100)\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 2. TABLE DE FAITS CENTRALE\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS cycles_production (\\\\n    cycle_id INT PRIMARY KEY,\\\\n    factory_id INT REFERENCES usines(factory_id),\\\\n    product_id INT REFERENCES produits(product_id),\\\\n    client_id INT REFERENCES clients_industriels(client_id),\\\\n    production_time_sec INT,\\\\n    cycle_timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\\\n    step_name VARCHAR(100),\\\\n    duration_sec INT,\\\\n    machine_id VARCHAR(50),\\\\n    PRIMARY KEY (cycle_id, step_name)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\\\n    sensor_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    temperature_c DECIMAL(6, 2),\\\\n    vibration_level DECIMAL(6, 2),\\\\n    pressure_bar DECIMAL(6, 2),\\\\n    timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\\\n    camera_event_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    defect_detected INT, -- 0 ou 1\\\\n    confidence_score DECIMAL(4, 2),\\\\n    timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\\\n    log_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    error_code VARCHAR(10),\\\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\\\n    event_timestamp TIMESTAMP NOT NULL,\\\\n    resolved INT, -- 0 ou 1\\\\n    resolution_time_min INT\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS planning_production (\\\\n    plan_id INT PRIMARY KEY,\\\\n    factory_id INT,\\\\n    product_id INT,\\\\n    planned_start TIMESTAMP,\\\\n    planned_end TIMESTAMP,\\\\n    planned_quantity INT,\\\\n    priority VARCHAR(20),\\\\n    status VARCHAR(50)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\\\n    part_id INT PRIMARY KEY,\\\\n    part_name VARCHAR(100),\\\\n    machine_id VARCHAR(50),\\\\n    supplier VARCHAR(100),\\\\n    stock_qty INT,\\\\n    reorder_threshold INT,\\\\n    unit_price_eur DECIMAL(10, 2),\\\\n    last_restock_date TIMESTAMP\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\\\n    maintenance_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50),\\\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\\\n    maintenance_start TIMESTAMP,\\\\n    duration_min INT,\\\\n    maintenance_end TIMESTAMP,\\\\n    technician_id VARCHAR(50),\\\\n    cost_eur DECIMAL(10, 2),\\\\n    status VARCHAR(50)\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\\\n    user_id INT PRIMAR'... ", "parameters": null, "hook_params": {}}	null
indusflow_data_pipeline	ingest_produits	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}	null
indusflow_data_pipeline	ingest_usines	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}	null
indusflow_data_pipeline	ingest_clients	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}	null
indusflow_data_pipeline	ingest_cycles_production	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "cycles_production_bloc3_propre.csv", "table_name": "cycles_production"}}	null
indusflow_data_pipeline	ingest_acces_utilisateurs	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "acces_utilisateurs.csv", "table_name": "acces_utilisateurs"}}	null
indusflow_data_pipeline	ingest_logs_jobs_airflow	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "logs_jobs_airflow.csv", "table_name": "logs_jobs_airflow"}}	null
indusflow_data_pipeline	ingest_capteurs_machines	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "capteurs_machines_bloc3_propre.csv", "table_name": "capteurs_machines"}}	null
indusflow_data_pipeline	ingest_etapes_fabrication	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "etapes_fabrication_bloc3_propre.csv", "table_name": "etapes_fabrication"}}	null
indusflow_data_pipeline	ingest_pieces_detachees	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "pieces_detachees_bloc3_propre.csv", "table_name": "pieces_detachees"}}	null
indusflow_data_pipeline	ingest_logs_erreurs	manual__2026-07-06T15:18:41+00:00	-1	{"templates_dict": null, "op_args": [], "op_kwargs": {"filename": "logs_erreurs_machines_bloc3_propre.csv", "table_name": "logs_erreurs_machines"}}	null
\.


--
-- Data for Name: serialized_dag; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.serialized_dag (dag_id, fileloc, fileloc_hash, data, data_compressed, last_updated, dag_hash, processor_subdir) FROM stdin;
indusflow_data_pipeline	/opt/airflow/dags/pipeline_ingest.py	62802376418429746	{"__version": 1, "dag": {"edge_info": {}, "schedule_interval": "@daily", "default_args": {"__var": {"owner": "data_engineer", "depends_on_past": false, "start_date": {"__var": 1767225600.0, "__type": "datetime"}, "email_on_failure": false, "retries": 2, "retry_delay": {"__var": 300.0, "__type": "timedelta"}, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n"}, "__type": "dict"}, "_dag_id": "indusflow_data_pipeline", "fileloc": "/opt/airflow/dags/pipeline_ingest.py", "_task_group": {"_group_id": null, "prefix_group_id": true, "tooltip": "", "ui_color": "CornflowerBlue", "ui_fgcolor": "#000", "children": {"init_db_schema": ["operator", "init_db_schema"], "ingest_usines": ["operator", "ingest_usines"], "ingest_produits": ["operator", "ingest_produits"], "ingest_clients": ["operator", "ingest_clients"], "ingest_cycles_production": ["operator", "ingest_cycles_production"], "ingest_etapes_fabrication": ["operator", "ingest_etapes_fabrication"], "ingest_capteurs_machines": ["operator", "ingest_capteurs_machines"], "ingest_logs_erreurs": ["operator", "ingest_logs_erreurs"], "ingest_cameras_qualite": ["operator", "ingest_cameras_qualite"], "ingest_planning_production": ["operator", "ingest_planning_production"], "ingest_pieces_detachees": ["operator", "ingest_pieces_detachees"], "ingest_maintenance_machines": ["operator", "ingest_maintenance_machines"], "ingest_acces_utilisateurs": ["operator", "ingest_acces_utilisateurs"], "ingest_alertes_monitoring": ["operator", "ingest_alertes_monitoring"], "ingest_logs_jobs_airflow": ["operator", "ingest_logs_jobs_airflow"]}, "upstream_group_ids": [], "downstream_group_ids": [], "upstream_task_ids": [], "downstream_task_ids": []}, "_description": "Pipeline orchestration industrialis\\u00e9 - Ingestion & Chargement IndusFlow", "catchup": false, "timezone": "UTC", "_processor_dags_folder": "/opt/airflow/dags", "tasks": [{"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "init_db_schema", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"sql": "postgresql", "parameters": "json"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": ["ingest_clients", "ingest_produits", "ingest_usines"], "ui_color": "#ededed", "template_ext": [".sql", ".json"], "template_fields": ["conn_id", "sql", "parameters", "hook_params"], "_task_type": "PostgresOperator", "_task_module": "airflow.providers.postgres.operators.postgres", "_is_empty": false, "conn_id": "postgres_default", "sql": "Truncated. You can change this behaviour in [core]max_templated_field_length. '-- DROP TABLES to allow clean re-runs\\\\nDROP TABLE IF EXISTS logs_jobs_airflow CASCADE;\\\\nDROP TABLE IF EXISTS alertes_monitoring CASCADE;\\\\nDROP TABLE IF EXISTS acces_utilisateurs CASCADE;\\\\nDROP TABLE IF EXISTS maintenance_machines CASCADE;\\\\nDROP TABLE IF EXISTS pieces_detachees CASCADE;\\\\nDROP TABLE IF EXISTS planning_production CASCADE;\\\\nDROP TABLE IF EXISTS logs_erreurs_machines CASCADE;\\\\nDROP TABLE IF EXISTS cameras_qualite CASCADE;\\\\nDROP TABLE IF EXISTS capteurs_machines CASCADE;\\\\nDROP TABLE IF EXISTS etapes_fabrication CASCADE;\\\\nDROP TABLE IF EXISTS cycles_production CASCADE;\\\\nDROP TABLE IF EXISTS clients_industriels CASCADE;\\\\nDROP TABLE IF EXISTS produits CASCADE;\\\\nDROP TABLE IF EXISTS usines CASCADE;\\\\n\\\\n-- ==========================================\\\\n-- 1. TABLES DE DIMENSIONS (R\\u00c9F\\u00c9RENTIELS)\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS usines (\\\\n    factory_id INT PRIMARY KEY,\\\\n    factory_name VARCHAR(100) NOT NULL,\\\\n    city VARCHAR(100),\\\\n    country VARCHAR(100)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS produits (\\\\n    product_id INT PRIMARY KEY,\\\\n    product_name VARCHAR(100) NOT NULL,\\\\n    category VARCHAR(50),\\\\n    unit_cost DECIMAL(10, 2)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS clients_industriels (\\\\n    client_id INT PRIMARY KEY,\\\\n    client_name VARCHAR(100) NOT NULL,\\\\n    sector VARCHAR(100),\\\\n    country VARCHAR(100)\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 2. TABLE DE FAITS CENTRALE\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS cycles_production (\\\\n    cycle_id INT PRIMARY KEY,\\\\n    factory_id INT REFERENCES usines(factory_id),\\\\n    product_id INT REFERENCES produits(product_id),\\\\n    client_id INT REFERENCES clients_industriels(client_id),\\\\n    production_time_sec INT,\\\\n    cycle_timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 3. TABLES OP\\u00c9RATIONNELLES ET LOGS IOT / MACHINES\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS etapes_fabrication (\\\\n    cycle_id INT REFERENCES cycles_production(cycle_id),\\\\n    step_name VARCHAR(100),\\\\n    duration_sec INT,\\\\n    machine_id VARCHAR(50),\\\\n    PRIMARY KEY (cycle_id, step_name)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS capteurs_machines (\\\\n    sensor_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    temperature_c DECIMAL(6, 2),\\\\n    vibration_level DECIMAL(6, 2),\\\\n    pressure_bar DECIMAL(6, 2),\\\\n    timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS cameras_qualite (\\\\n    camera_event_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    defect_detected INT, -- 0 ou 1\\\\n    confidence_score DECIMAL(4, 2),\\\\n    timestamp TIMESTAMP NOT NULL\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS logs_erreurs_machines (\\\\n    log_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50) NOT NULL,\\\\n    error_code VARCHAR(10),\\\\n    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL\\\\n    event_timestamp TIMESTAMP NOT NULL,\\\\n    resolved INT, -- 0 ou 1\\\\n    resolution_time_min INT\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS planning_production (\\\\n    plan_id INT PRIMARY KEY,\\\\n    factory_id INT,\\\\n    product_id INT,\\\\n    planned_start TIMESTAMP,\\\\n    planned_end TIMESTAMP,\\\\n    planned_quantity INT,\\\\n    priority VARCHAR(20),\\\\n    status VARCHAR(50)\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS pieces_detachees (\\\\n    part_id INT PRIMARY KEY,\\\\n    part_name VARCHAR(100),\\\\n    machine_id VARCHAR(50),\\\\n    supplier VARCHAR(100),\\\\n    stock_qty INT,\\\\n    reorder_threshold INT,\\\\n    unit_price_eur DECIMAL(10, 2),\\\\n    last_restock_date TIMESTAMP\\\\n);\\\\n\\\\nCREATE TABLE IF NOT EXISTS maintenance_machines (\\\\n    maintenance_id INT PRIMARY KEY,\\\\n    machine_id VARCHAR(50),\\\\n    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.\\\\n    maintenance_start TIMESTAMP,\\\\n    duration_min INT,\\\\n    maintenance_end TIMESTAMP,\\\\n    technician_id VARCHAR(50),\\\\n    cost_eur DECIMAL(10, 2),\\\\n    status VARCHAR(50)\\\\n);\\\\n\\\\n-- ==========================================\\\\n-- 4. TABLES DE S\\u00c9CURIT\\u00c9 ET SUPERVISION S\\u00c9PAR\\u00c9ES\\\\n-- ==========================================\\\\n\\\\nCREATE TABLE IF NOT EXISTS acces_utilisateurs (\\\\n    user_id INT PRIMAR'... ", "hook_params": {}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_usines", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": ["ingest_cycles_production"], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "usines_bloc3_propre.csv", "table_name": "usines"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_produits", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": ["ingest_cycles_production"], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "produits_bloc3_propre.csv", "table_name": "produits"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_clients", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": ["ingest_cycles_production"], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "clients_industriels_bloc3_propre.csv", "table_name": "clients_industriels"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_cycles_production", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": ["ingest_acces_utilisateurs", "ingest_alertes_monitoring", "ingest_cameras_qualite", "ingest_capteurs_machines", "ingest_etapes_fabrication", "ingest_logs_erreurs", "ingest_logs_jobs_airflow", "ingest_maintenance_machines", "ingest_pieces_detachees", "ingest_planning_production"], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "cycles_production_bloc3_propre.csv", "table_name": "cycles_production"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_etapes_fabrication", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "etapes_fabrication_bloc3_propre.csv", "table_name": "etapes_fabrication"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_capteurs_machines", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "capteurs_machines_bloc3_propre.csv", "table_name": "capteurs_machines"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_logs_erreurs", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "logs_erreurs_machines_bloc3_propre.csv", "table_name": "logs_erreurs_machines"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_cameras_qualite", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "cameras_qualite_bloc3_propre.csv", "table_name": "cameras_qualite"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_planning_production", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "planning_production_bloc3_propre.csv", "table_name": "planning_production"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_pieces_detachees", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "pieces_detachees_bloc3_propre.csv", "table_name": "pieces_detachees"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_maintenance_machines", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "maintenance_machines_bloc3_propre.csv", "table_name": "maintenance_machines"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_acces_utilisateurs", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "acces_utilisateurs.csv", "table_name": "acces_utilisateurs"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_alertes_monitoring", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "alertes_monitoring.csv", "table_name": "alertes_monitoring"}}, {"owner": "data_engineer", "is_teardown": false, "weight_rule": "downstream", "is_setup": false, "_log_config_logger_name": "airflow.task.operators", "on_failure_fail_dagrun": false, "on_failure_callback": "def task_failure_alert(context):\\n    \\"\\"\\"Callback appel\\u00e9e lorsqu'une t\\u00e2che du DAG \\u00e9choue pour ins\\u00e9rer une alerte de monitoring\\"\\"\\"\\n    from sqlalchemy import create_engine, text\\n    import datetime\\n    \\n    dag_id = context['dag'].dag_id\\n    task_id = context['task_instance'].task_id\\n    \\n    engine = create_engine(DATABASE_URL)\\n    with engine.connect() as conn:\\n        query = text(\\"\\"\\"\\n            INSERT INTO alertes_monitoring (alert_id, system_name, severity, metric_name, metric_value, resolved, alert_timestamp)\\n            VALUES (\\n                (SELECT COALESCE(MAX(alert_id), 0) + 1 FROM alertes_monitoring),\\n                'airflow',\\n                'CRITICAL',\\n                'task_failure',\\n                1.0,\\n                0,\\n                :timestamp\\n            )\\n        \\"\\"\\")\\n        conn.execute(query, {\\"timestamp\\": datetime.datetime.utcnow()})\\n        conn.commit()\\n    print(f\\"\\ud83d\\udea8 Alerte ins\\u00e9r\\u00e9e en base suite \\u00e0 l'\\u00e9chec de la t\\u00e2che {task_id} du DAG {dag_id}.\\")\\n", "task_id": "ingest_logs_jobs_airflow", "start_date": 1767225600.0, "email_on_failure": false, "retry_delay": 300.0, "template_fields_renderers": {"templates_dict": "json", "op_args": "py", "op_kwargs": "py"}, "pool": "default_pool", "ui_fgcolor": "#000", "retries": 2, "downstream_task_ids": [], "ui_color": "#ffefeb", "template_ext": [], "template_fields": ["templates_dict", "op_args", "op_kwargs"], "_task_type": "PythonOperator", "_task_module": "airflow.operators.python", "_is_empty": false, "op_args": [], "op_kwargs": {"filename": "logs_jobs_airflow.csv", "table_name": "logs_jobs_airflow"}}], "dag_dependencies": [], "params": {}}}	\N	2026-07-06 15:10:44.332835+00	a2cdd50781703c792950c52d5a86730d	/opt/airflow/dags
\.


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.session (id, session_id, data, expiry) FROM stdin;
1	c4e2cb1c-47c5-4405-afae-088261d2ab04	\\x80049563000000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894898c0a637372665f746f6b656e948c2834383661643764373631376630303537373435323063623634343562623931313266656466383631948c066c6f63616c65948c02656e94752e	2026-08-05 14:31:15.911139
2	5edba1c2-598b-4a2a-8b3c-ab66ae091b1a	\\x80049545020000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894888c0a637372665f746f6b656e948c2834383661643764373631376630303537373435323063623634343562623931313266656466383631948c066c6f63616c65948c02656e948c085f757365725f6964944b018c035f6964948c803661353062633766366433393938623938613038346331393936373835613536363465343732383832373637376436383330343336656632323035636536636333353436393435663839373665366262306631633438663766303761316532343435363132343131373738336531616132346330363364613565626439626636948c116461675f7374617475735f66696c746572948c03616c6c948c0c706167655f686973746f7279945d94288c5d687474703a2f2f6c6f63616c686f73743a383038302f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d696e647573666c6f775f646174615f706970656c696e65265f666c745f335f73746174653d72756e6e696e67948c5c687474703a2f2f6c6f63616c686f73743a383038302f7461736b696e7374616e63652f6c6973742f3f5f666c745f335f6461675f69643d696e647573666c6f775f646174615f706970656c696e65265f666c745f385f73746174653d948c5d687474703a2f2f6c6f63616c686f73743a383038302f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d696e647573666c6f775f646174615f706970656c696e65265f666c745f335f73746174653d72756e6e696e679465752e	2026-08-05 14:38:35.7293
3	0d42da09-043b-48a2-bf85-1542216fd48a	\\x80049563000000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894898c0a637372665f746f6b656e948c2862373364333530383864343263623631623532613837333135666436343330396136656238356139948c066c6f63616c65948c02656e94752e	2026-08-05 14:39:21.017866
4	9f6c33a1-aff9-499f-863d-a7d9ef2cc4d9	\\x80049545020000000000007d94288c0a5f7065726d616e656e7494888c065f667265736894888c0a637372665f746f6b656e948c2862373364333530383864343263623631623532613837333135666436343330396136656238356139948c066c6f63616c65948c02656e948c085f757365725f6964944b018c035f6964948c803661353062633766366433393938623938613038346331393936373835613536363465343732383832373637376436383330343336656632323035636536636333353436393435663839373665366262306631633438663766303761316532343435363132343131373738336531616132346330363364613565626439626636948c116461675f7374617475735f66696c746572948c03616c6c948c0c706167655f686973746f7279945d94288c5d687474703a2f2f6c6f63616c686f73743a383038302f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d696e647573666c6f775f646174615f706970656c696e65265f666c745f335f73746174653d73756363657373948c5d687474703a2f2f6c6f63616c686f73743a383038302f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d696e647573666c6f775f646174615f706970656c696e65265f666c745f335f73746174653d72756e6e696e67948c5c687474703a2f2f6c6f63616c686f73743a383038302f64616772756e2f6c6973742f3f5f666c745f335f6461675f69643d696e647573666c6f775f646174615f706970656c696e65265f666c745f335f73746174653d6661696c65649465752e	2026-08-05 15:16:17.254934
\.


--
-- Data for Name: sla_miss; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.sla_miss (task_id, dag_id, execution_date, email_sent, "timestamp", description, notification_sent) FROM stdin;
\.


--
-- Data for Name: slot_pool; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.slot_pool (id, pool, slots, description, include_deferred) FROM stdin;
1	default_pool	128	Default pool	f
\.


--
-- Data for Name: spark_error_aggregates; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.spark_error_aggregates (machine_id, severity, total_errors, avg_resolution_time_min) FROM stdin;
M-2	MEDIUM	24	329.5416666666667
M-10	HIGH	18	383.72222222222223
M-3	MEDIUM	33	355.6060606060606
M-1	CRITICAL	11	343.1818181818182
M-10	LOW	35	399.8285714285714
M-7	CRITICAL	18	404
M-6	HIGH	11	295.6363636363636
M-2	HIGH	15	316.8
M-19	CRITICAL	7	453.2857142857143
M-20	LOW	20	326.65
M-9	LOW	38	288.57894736842104
M-8	CRITICAL	12	397
M-18	HIGH	16	337.1875
M-1	HIGH	19	298.4736842105263
M-7	HIGH	17	324.70588235294116
M-19	MEDIUM	36	363.6388888888889
M-3	HIGH	24	378.5833333333333
M-11	CRITICAL	8	357.25
M-11	HIGH	20	351.6
M-9	MEDIUM	27	342.81481481481484
M-1	MEDIUM	29	375.2068965517241
M-2	CRITICAL	10	478.2
M-8	HIGH	26	371.6923076923077
M-12	MEDIUM	25	394.56
M-11	LOW	26	391.5769230769231
M-7	MEDIUM	31	337.5806451612903
M-4	CRITICAL	3	514.6666666666666
M-4	HIGH	14	304.5
M-13	HIGH	18	413.55555555555554
M-4	MEDIUM	34	385.3235294117647
M-13	MEDIUM	38	376.1578947368421
M-6	CRITICAL	13	354.7692307692308
M-6	MEDIUM	33	337.45454545454544
M-19	HIGH	12	366.9166666666667
M-17	HIGH	17	415.3529411764706
M-16	LOW	35	323.34285714285716
M-8	LOW	31	379.61290322580646
M-3	CRITICAL	11	360.45454545454544
M-15	MEDIUM	36	370.0833333333333
M-11	MEDIUM	27	273.22222222222223
M-16	CRITICAL	11	391.09090909090907
M-8	MEDIUM	28	397.7857142857143
M-20	CRITICAL	6	381
M-15	CRITICAL	9	301
M-4	LOW	32	341.40625
M-10	CRITICAL	8	299.75
M-13	CRITICAL	8	406.5
M-3	LOW	27	377.81481481481484
M-12	HIGH	17	336.3529411764706
M-15	HIGH	13	361.61538461538464
M-14	HIGH	14	394.42857142857144
M-20	MEDIUM	37	338.9189189189189
M-18	LOW	29	365.48275862068965
M-12	CRITICAL	7	377.7142857142857
M-16	MEDIUM	30	330.1666666666667
M-12	LOW	27	303.74074074074076
M-6	LOW	27	403.3703703703704
M-7	LOW	32	315.4375
M-17	MEDIUM	38	349.7894736842105
M-9	CRITICAL	9	218.33333333333334
M-15	LOW	40	383.075
M-2	LOW	29	383.0344827586207
M-5	CRITICAL	10	364.4
M-17	LOW	37	384.4594594594595
M-5	LOW	22	387.27272727272725
M-18	CRITICAL	6	263.1666666666667
M-18	MEDIUM	35	356
M-10	MEDIUM	32	352.375
M-14	LOW	26	335.7307692307692
M-14	CRITICAL	11	323.6363636363636
M-14	MEDIUM	42	386.9761904761905
M-5	MEDIUM	37	339.64864864864865
M-13	LOW	29	422.9310344827586
M-5	HIGH	27	339.1111111111111
M-1	LOW	33	301.6363636363636
M-19	LOW	27	321.51851851851853
M-16	HIGH	17	281.05882352941177
M-17	CRITICAL	5	496.2
M-20	HIGH	24	332.0833333333333
M-9	HIGH	24	369.8333333333333
\.


--
-- Data for Name: spark_sensor_aggregates; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.spark_sensor_aggregates (machine_id, total_readings, avg_temperature, min_temperature, max_temperature, avg_vibration, avg_pressure) FROM stdin;
M-11	107	69.20775700934577	36.82	92.21	5.036915887850467	9.895420560747663
M-13	96	70.12937500000001	45.07	96.43	5.100520833333331	10.247500000000004
M-16	99	69.83919191919192	48.83	88.44	4.992121212121211	10.2330303030303
M-17	103	68.86873786407764	43.27	91.89	4.762621359223301	10.16543689320388
M-19	96	70.82718750000002	48.78	97.04	5.1859375	9.988645833333335
M-10	107	68.21345794392522	48.07	92.23	5.265514018691589	10.19429906542056
M-5	102	71.02421568627453	46.32	95.47	5.139411764705882	10.095490196078432
M-15	112	70.64955357142858	48.23	99.69	4.837142857142857	10.049017857142852
M-12	96	69.48031249999998	43.33	94.71	5.252083333333335	10.103750000000002
M-14	110	68.7982727272727	41.77	89.74	4.974727272727273	10.069181818181818
M-3	95	69.70652631578942	31.57	98.7	5.129999999999999	10.13631578947369
M-20	82	71.35878048780488	46.34	90.73	4.920243902439026	9.698658536585365
M-18	90	70.40244444444443	47.22	94.04	5.184444444444445	9.541222222222226
M-7	109	70.37853211009177	44.62	105.11	5.182018348623855	10.07137614678899
M-1	88	70.09852272727274	41.09	96.72	5.02215909090909	9.917840909090913
M-4	115	69.27895652173912	47.53	96.62	4.746608695652174	10.009130434782607
M-9	107	67.98915887850465	45.81	90.87	4.940841121495327	10.406074766355138
M-2	87	69.81804597701152	42.87	89.2	4.842758620689653	10.008045977011497
M-6	93	70.22344086021502	44.89	89.08	4.85236559139785	10.231290322580646
M-8	106	71.13716981132077	38.43	95.1	5.05264150943396	9.932452830188684
\.


--
-- Data for Name: task_fail; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.task_fail (id, task_id, dag_id, run_id, map_index, start_date, end_date, duration) FROM stdin;
1	init_db_schema	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:31:27.329541+00	2026-07-06 14:31:27.577128+00	0
2	init_db_schema	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:31:27.330828+00	2026-07-06 14:31:27.577411+00	0
3	init_db_schema	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:36:28.235759+00	2026-07-06 14:36:28.879676+00	0
4	init_db_schema	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:36:28.237917+00	2026-07-06 14:36:28.891837+00	0
5	init_db_schema	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:38:12.665308+00	2026-07-06 14:38:12.868178+00	0
6	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:39:20.119864+00	2026-07-06 14:39:20.473175+00	0
7	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:39:20.137177+00	2026-07-06 14:39:20.478395+00	0
8	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:39:20.145958+00	2026-07-06 14:39:20.49326+00	0
9	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:41:31.110544+00	2026-07-06 14:41:31.821077+00	0
10	ingest_usines	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:41:31.110662+00	2026-07-06 14:41:31.835383+00	0
11	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:41:31.118826+00	2026-07-06 14:41:31.853816+00	0
12	ingest_clients	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:41:31.1302+00	2026-07-06 14:41:31.877066+00	0
13	ingest_produits	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:41:31.15137+00	2026-07-06 14:41:31.894962+00	0
14	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:41:31.14853+00	2026-07-06 14:41:31.978294+00	0
15	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:43:15.371834+00	2026-07-06 14:43:15.645033+00	0
16	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:43:15.384059+00	2026-07-06 14:43:15.658798+00	0
17	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:43:15.389031+00	2026-07-06 14:43:15.657741+00	0
18	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:44:21.05169+00	2026-07-06 14:44:21.391824+00	0
19	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:44:21.057077+00	2026-07-06 14:44:21.396153+00	0
20	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:44:21.070572+00	2026-07-06 14:44:21.402077+00	0
21	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:46:32.894592+00	2026-07-06 14:46:33.394862+00	0
22	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:46:32.893686+00	2026-07-06 14:46:33.393522+00	0
23	ingest_clients	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:46:32.892168+00	2026-07-06 14:46:33.395602+00	0
24	ingest_usines	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:46:32.896576+00	2026-07-06 14:46:33.396694+00	0
25	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:46:32.910165+00	2026-07-06 14:46:33.440352+00	0
26	ingest_produits	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:46:32.902543+00	2026-07-06 14:46:33.460292+00	0
27	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:48:16.193214+00	2026-07-06 14:48:16.53357+00	0
28	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:48:16.197432+00	2026-07-06 14:48:16.536324+00	0
29	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:48:16.202123+00	2026-07-06 14:48:16.537986+00	0
30	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:21.835478+00	2026-07-06 14:49:22.233476+00	0
31	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:21.853163+00	2026-07-06 14:49:22.234365+00	0
32	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:21.844366+00	2026-07-06 14:49:22.238094+00	0
33	ingest_clients	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:33.939078+00	2026-07-06 14:51:34.379401+00	0
34	ingest_produits	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:33.939805+00	2026-07-06 14:51:34.380427+00	0
35	ingest_usines	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:33.939885+00	2026-07-06 14:51:34.382135+00	0
36	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:33.94071+00	2026-07-06 14:51:34.389464+00	0
37	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:33.971617+00	2026-07-06 14:51:34.390552+00	0
38	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:33.956579+00	2026-07-06 14:51:34.397499+00	0
39	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:16.961785+00	2026-07-06 14:53:17.302473+00	0
40	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:16.946379+00	2026-07-06 14:53:17.303391+00	0
41	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:16.953513+00	2026-07-06 14:53:17.304573+00	0
42	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:04:41.591265+00	2026-07-06 15:04:41.89377+00	0
43	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:04:41.608052+00	2026-07-06 15:04:41.903924+00	0
44	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:04:41.606571+00	2026-07-06 15:04:41.904942+00	0
45	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:09:42.772776+00	2026-07-06 15:09:43.089199+00	0
46	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:09:42.78117+00	2026-07-06 15:09:43.102695+00	0
47	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:09:42.821676+00	2026-07-06 15:09:43.136353+00	0
48	ingest_usines	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.03794+00	2026-07-06 15:14:44.890466+00	0
49	ingest_clients	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.055033+00	2026-07-06 15:14:44.937428+00	0
50	ingest_produits	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.067543+00	2026-07-06 15:14:44.938493+00	0
\.


--
-- Data for Name: task_instance; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.task_instance (task_id, dag_id, run_id, map_index, start_date, end_date, duration, state, try_number, max_tries, hostname, unixname, job_id, pool, pool_slots, queue, priority_weight, operator, custom_operator_name, queued_dttm, queued_by_job_id, pid, executor_config, updated_at, rendered_map_index, external_executor_id, trigger_id, trigger_timeout, next_method, next_kwargs, task_display_name) FROM stdin;
ingest_logs_erreurs	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.978111+00	2026-07-06 15:14:44.978111+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982881+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
ingest_pieces_detachees	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.978257+00	2026-07-06 15:14:44.978257+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982883+00	\N	\N	\N	\N	\N	\N	ingest_pieces_detachees
ingest_planning_production	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.97821+00	2026-07-06 15:14:44.97821+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982883+00	\N	\N	\N	\N	\N	\N	ingest_planning_production
ingest_cycles_production	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:17.33906+00	2026-07-06 14:53:17.33906+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	4	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:53:17.342443+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_capteurs_machines	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:17.669027+00	2026-07-06 14:53:17.669027+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:53:17.672271+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:16.953513+00	2026-07-06 14:53:17.304573+00	0.35106	failed	3	2	5ead4c3fd35c	airflow	55	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:53:16.59059+00	8	492	\\x80057d942e	2026-07-06 14:53:16.966626+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:16.946379+00	2026-07-06 14:53:17.303391+00	0.357012	failed	3	2	5ead4c3fd35c	airflow	54	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:53:16.59059+00	8	491	\\x80057d942e	2026-07-06 14:53:16.954899+00	\N	\N	\N	\N	\N	\N	ingest_usines
ingest_etapes_fabrication	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:17.668793+00	2026-07-06 14:53:17.668793+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:53:17.672275+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_logs_erreurs	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:17.669112+00	2026-07-06 14:53:17.669112+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:53:17.672276+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
init_db_schema	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:41:29.957012+00	2026-07-06 14:41:30.309649+00	0.352637	success	3	2	5ead4c3fd35c	airflow	22	default_pool	1	default	8	PostgresOperator	\N	2026-07-06 14:41:29.615843+00	8	252	\\x80057d942e	2026-07-06 14:41:29.968086+00	\N	\N	\N	\N	\N	\N	init_db_schema
init_db_schema	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:41:29.95606+00	2026-07-06 14:41:30.309461+00	0.353401	success	3	2	5ead4c3fd35c	airflow	21	default_pool	1	default	8	PostgresOperator	\N	2026-07-06 14:41:29.615843+00	8	253	\\x80057d942e	2026-07-06 14:41:29.968586+00	\N	\N	\N	\N	\N	\N	init_db_schema
ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:21.844366+00	2026-07-06 14:49:22.238094+00	0.393728	failed	3	2	5ead4c3fd35c	airflow	46	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:49:21.462859+00	8	417	\\x80057d942e	2026-07-06 14:49:21.857916+00	\N	\N	\N	\N	\N	\N	ingest_usines
init_db_schema	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:43:13.988039+00	2026-07-06 14:43:14.322869+00	0.33483	success	2	2	5ead4c3fd35c	airflow	29	default_pool	1	default	8	PostgresOperator	\N	2026-07-06 14:43:13.150987+00	8	292	\\x80057d942e	2026-07-06 14:43:13.999724+00	\N	\N	\N	\N	\N	\N	init_db_schema
init_db_schema	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:39:19.03424+00	2026-07-06 14:39:19.269477+00	0.235237	success	1	2	5ead4c3fd35c	airflow	9	default_pool	1	default	8	PostgresOperator	\N	2026-07-06 14:39:18.721201+00	8	172	\\x80057d942e	2026-07-06 14:39:19.042228+00	\N	\N	\N	\N	\N	\N	init_db_schema
ingest_cycles_production	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:22.272403+00	2026-07-06 14:49:22.272403+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	4	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:49:22.275599+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:21.835478+00	2026-07-06 14:49:22.233476+00	0.397998	failed	3	2	5ead4c3fd35c	airflow	45	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:49:21.409496+00	8	416	\\x80057d942e	2026-07-06 14:49:21.846059+00	\N	\N	\N	\N	\N	\N	ingest_produits
ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:21.853163+00	2026-07-06 14:49:22.234365+00	0.381202	failed	3	2	5ead4c3fd35c	airflow	47	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:49:21.462859+00	8	418	\\x80057d942e	2026-07-06 14:49:21.865108+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_cycles_production	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:34.415845+00	2026-07-06 14:51:34.415845+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	4	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.419499+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_cycles_production	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:34.416605+00	2026-07-06 14:51:34.416605+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	4	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.420108+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_capteurs_machines	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:34.429592+00	2026-07-06 14:51:34.429592+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.432897+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_clients	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:33.939078+00	2026-07-06 14:51:34.379401+00	0.440323	failed	3	2	5ead4c3fd35c	airflow	49	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:51:33.531192+00	8	462	\\x80057d942e	2026-07-06 14:51:33.94956+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_produits	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:33.939805+00	2026-07-06 14:51:34.380427+00	0.440622	failed	3	2	5ead4c3fd35c	airflow	51	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:51:33.531192+00	8	463	\\x80057d942e	2026-07-06 14:51:33.949637+00	\N	\N	\N	\N	\N	\N	ingest_produits
ingest_usines	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:33.939885+00	2026-07-06 14:51:34.382135+00	0.44225	failed	3	2	5ead4c3fd35c	airflow	48	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:51:33.531192+00	8	461	\\x80057d942e	2026-07-06 14:51:33.949551+00	\N	\N	\N	\N	\N	\N	ingest_usines
ingest_etapes_fabrication	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:34.429312+00	2026-07-06 14:51:34.429312+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.432901+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_logs_erreurs	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:34.429671+00	2026-07-06 14:51:34.429671+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.432902+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
ingest_capteurs_machines	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:34.62923+00	2026-07-06 14:51:34.62923+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.63734+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_etapes_fabrication	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:34.629031+00	2026-07-06 14:51:34.629031+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.637345+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_logs_erreurs	indusflow_data_pipeline	scheduled__2026-07-05T00:00:00+00:00	-1	2026-07-06 14:51:34.629312+00	2026-07-06 14:51:34.629312+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:51:34.637346+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:38:12+00:00	-1	2026-07-06 14:53:16.961785+00	2026-07-06 14:53:17.302473+00	0.340688	failed	3	2	5ead4c3fd35c	airflow	56	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:53:16.59059+00	8	493	\\x80057d942e	2026-07-06 14:53:16.972842+00	\N	\N	\N	\N	\N	\N	ingest_produits
init_db_schema	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:50.545864+00	2026-07-06 14:39:50.856502+00	0.310638	success	1	2	5ead4c3fd35c	airflow	13	default_pool	1	default	8	PostgresOperator	\N	2026-07-06 14:39:50.160576+00	8	208	\\x80057d942e	2026-07-06 14:39:50.554761+00	\N	\N	\N	\N	\N	\N	init_db_schema
init_db_schema	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:04:40.872743+00	2026-07-06 15:04:41.076708+00	0.203965	success	1	2	5ead4c3fd35c	airflow	57	default_pool	1	default	15	PostgresOperator	\N	2026-07-06 15:04:40.503158+00	8	634	\\x80057d942e	2026-07-06 15:04:40.880999+00	\N	\N	\N	\N	\N	\N	init_db_schema
ingest_capteurs_machines	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:22.297609+00	2026-07-06 14:49:22.297609+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:49:22.300518+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_etapes_fabrication	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:22.297333+00	2026-07-06 14:49:22.297333+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:49:22.300522+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_logs_erreurs	indusflow_data_pipeline	manual__2026-07-06T14:39:17+00:00	-1	2026-07-06 14:49:22.297678+00	2026-07-06 14:49:22.297678+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 14:49:22.300523+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
ingest_capteurs_machines	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:53.566303+00	2026-07-06 14:39:53.889979+00	0.323676	success	1	2	5ead4c3fd35c	airflow	18	default_pool	1	default	1	PythonOperator	\N	2026-07-06 14:39:53.194314+00	8	227	\\x80057d942e	2026-07-06 14:39:53.593302+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:51.285776+00	2026-07-06 14:39:51.719542+00	0.433766	success	1	2	5ead4c3fd35c	airflow	16	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:39:50.940927+00	8	217	\\x80057d942e	2026-07-06 14:39:51.30841+00	\N	\N	\N	\N	\N	\N	ingest_usines
ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:51.274639+00	2026-07-06 14:39:51.719809+00	0.44517	success	1	2	5ead4c3fd35c	airflow	14	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:39:50.940927+00	8	215	\\x80057d942e	2026-07-06 14:39:51.286047+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:51.284624+00	2026-07-06 14:39:51.721105+00	0.436481	success	1	2	5ead4c3fd35c	airflow	15	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:39:50.940927+00	8	216	\\x80057d942e	2026-07-06 14:39:51.30739+00	\N	\N	\N	\N	\N	\N	ingest_produits
ingest_cycles_production	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:52.355584+00	2026-07-06 14:39:52.618203+00	0.262619	success	1	2	5ead4c3fd35c	airflow	17	default_pool	1	default	4	PythonOperator	\N	2026-07-06 14:39:52.087742+00	8	220	\\x80057d942e	2026-07-06 14:39:52.364347+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_clients	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:33.94071+00	2026-07-06 14:51:34.389464+00	0.448754	failed	3	2	5ead4c3fd35c	airflow	50	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:51:33.531192+00	8	464	\\x80057d942e	2026-07-06 14:51:33.950784+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_usines	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:33.971617+00	2026-07-06 14:51:34.390552+00	0.418935	failed	3	2	5ead4c3fd35c	airflow	53	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:51:33.531192+00	8	466	\\x80057d942e	2026-07-06 14:51:33.986547+00	\N	\N	\N	\N	\N	\N	ingest_usines
ingest_produits	indusflow_data_pipeline	manual__2026-07-06T14:31:25.743527+00:00	-1	2026-07-06 14:51:33.956579+00	2026-07-06 14:51:34.397499+00	0.44092	failed	3	2	5ead4c3fd35c	airflow	52	default_pool	1	default	5	PythonOperator	\N	2026-07-06 14:51:33.531192+00	8	465	\\x80057d942e	2026-07-06 14:51:33.974827+00	\N	\N	\N	\N	\N	\N	ingest_produits
ingest_etapes_fabrication	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:53.590366+00	2026-07-06 14:39:53.901087+00	0.310721	success	1	2	5ead4c3fd35c	airflow	19	default_pool	1	default	1	PythonOperator	\N	2026-07-06 14:39:53.194314+00	8	228	\\x80057d942e	2026-07-06 14:39:53.604611+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_logs_erreurs	indusflow_data_pipeline	manual__2026-07-06T14:39:49+00:00	-1	2026-07-06 14:39:53.603209+00	2026-07-06 14:39:53.906158+00	0.302949	success	1	2	5ead4c3fd35c	airflow	20	default_pool	1	default	1	PythonOperator	\N	2026-07-06 14:39:53.194314+00	8	229	\\x80057d942e	2026-07-06 14:39:53.619754+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
ingest_cycles_production	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.94048+00	2026-07-06 15:14:44.94048+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	11	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.944667+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_cameras_qualite	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.978162+00	2026-07-06 15:14:44.978162+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982879+00	\N	\N	\N	\N	\N	\N	ingest_cameras_qualite
ingest_capteurs_machines	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.978051+00	2026-07-06 15:14:44.978051+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.98288+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_usines	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.03794+00	2026-07-06 15:14:44.890466+00	0.852526	failed	3	2	5ead4c3fd35c	airflow	79	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:14:43.595367+00	8	836	\\x80057d942e	2026-07-06 15:14:44.050067+00	\N	\N	\N	\N	\N	\N	ingest_usines
ingest_clients	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.055033+00	2026-07-06 15:14:44.937428+00	0.882395	failed	3	2	5ead4c3fd35c	airflow	81	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:14:43.595367+00	8	837	\\x80057d942e	2026-07-06 15:14:44.068991+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_produits	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.067543+00	2026-07-06 15:14:44.938493+00	0.87095	failed	3	2	5ead4c3fd35c	airflow	80	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:14:43.595367+00	8	838	\\x80057d942e	2026-07-06 15:14:44.089504+00	\N	\N	\N	\N	\N	\N	ingest_produits
ingest_etapes_fabrication	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.97786+00	2026-07-06 15:14:44.97786+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982881+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_usines	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:43.482742+00	2026-07-06 15:18:43.946276+00	0.463534	success	1	2	5ead4c3fd35c	airflow	85	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:18:43.170476+00	8	898	\\x80057d942e	2026-07-06 15:18:43.494472+00	\N	\N	\N	\N	\N	\N	ingest_usines
ingest_cycles_production	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:44.552192+00	2026-07-06 15:18:44.827354+00	0.275162	success	1	2	5ead4c3fd35c	airflow	86	default_pool	1	default	11	PythonOperator	\N	2026-07-06 15:18:44.270247+00	8	901	\\x80057d942e	2026-07-06 15:18:44.565847+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_etapes_fabrication	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.623799+00	2026-07-06 15:18:49.083449+00	2.45965	success	1	2	5ead4c3fd35c	airflow	95	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	930	\\x80057d942e	2026-07-06 15:18:46.686877+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_acces_utilisateurs	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.978342+00	2026-07-06 15:14:44.978342+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982873+00	\N	\N	\N	\N	\N	\N	ingest_acces_utilisateurs
ingest_alertes_monitoring	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.978385+00	2026-07-06 15:14:44.978385+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982878+00	\N	\N	\N	\N	\N	\N	ingest_alertes_monitoring
ingest_logs_jobs_airflow	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.978428+00	2026-07-06 15:14:44.978428+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982882+00	\N	\N	\N	\N	\N	\N	ingest_logs_jobs_airflow
ingest_maintenance_machines	indusflow_data_pipeline	manual__2026-07-06T15:04:40+00:00	-1	2026-07-06 15:14:44.9783+00	2026-07-06 15:14:44.9783+00	0	upstream_failed	0	2		airflow	\N	default_pool	1	default	1	PythonOperator	\N	\N	\N	\N	\\x80057d942e	2026-07-06 15:14:44.982882+00	\N	\N	\N	\N	\N	\N	ingest_maintenance_machines
init_db_schema	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:49.480163+00	2026-07-06 15:05:49.788841+00	0.308678	success	1	2	5ead4c3fd35c	airflow	61	default_pool	1	default	15	PostgresOperator	\N	2026-07-06 15:05:49.059221+00	8	670	\\x80057d942e	2026-07-06 15:05:49.493207+00	\N	\N	\N	\N	\N	\N	init_db_schema
ingest_capteurs_machines	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.332746+00	2026-07-06 15:18:49.076042+00	2.743296	success	1	2	5ead4c3fd35c	airflow	92	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	928	\\x80057d942e	2026-07-06 15:18:46.39499+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_cameras_qualite	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.075463+00	2026-07-06 15:18:48.844076+00	2.768613	success	1	2	5ead4c3fd35c	airflow	87	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	922	\\x80057d942e	2026-07-06 15:18:46.097306+00	\N	\N	\N	\N	\N	\N	ingest_cameras_qualite
ingest_logs_erreurs	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.669467+00	2026-07-06 15:18:49.120765+00	2.451298	success	1	2	5ead4c3fd35c	airflow	96	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	931	\\x80057d942e	2026-07-06 15:18:46.705526+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
ingest_planning_production	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.20489+00	2026-07-06 15:18:48.778285+00	2.573395	success	1	2	5ead4c3fd35c	airflow	89	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	926	\\x80057d942e	2026-07-06 15:18:46.256817+00	\N	\N	\N	\N	\N	\N	ingest_planning_production
ingest_cycles_production	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:51.564295+00	2026-07-06 15:05:51.896188+00	0.331893	success	1	2	5ead4c3fd35c	airflow	65	default_pool	1	default	11	PythonOperator	\N	2026-07-06 15:05:51.273173+00	8	682	\\x80057d942e	2026-07-06 15:05:51.573418+00	\N	\N	\N	\N	\N	\N	ingest_cycles_production
ingest_produits	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:50.496364+00	2026-07-06 15:05:50.88593+00	0.389566	success	1	2	5ead4c3fd35c	airflow	62	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:05:50.17716+00	8	677	\\x80057d942e	2026-07-06 15:05:50.50676+00	\N	\N	\N	\N	\N	\N	ingest_produits
ingest_clients	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:50.50908+00	2026-07-06 15:05:50.89346+00	0.38438	success	1	2	5ead4c3fd35c	airflow	63	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:05:50.17716+00	8	678	\\x80057d942e	2026-07-06 15:05:50.520918+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_usines	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:50.521471+00	2026-07-06 15:05:50.90008+00	0.378609	success	1	2	5ead4c3fd35c	airflow	64	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:05:50.17716+00	8	679	\\x80057d942e	2026-07-06 15:05:50.532402+00	\N	\N	\N	\N	\N	\N	ingest_usines
ingest_etapes_fabrication	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:53.071029+00	2026-07-06 15:05:54.329661+00	1.258632	success	1	2	5ead4c3fd35c	airflow	73	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	710	\\x80057d942e	2026-07-06 15:05:53.088886+00	\N	\N	\N	\N	\N	\N	ingest_etapes_fabrication
ingest_planning_production	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:52.912435+00	2026-07-06 15:05:54.011496+00	1.099061	success	1	2	5ead4c3fd35c	airflow	69	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	706	\\x80057d942e	2026-07-06 15:05:52.923772+00	\N	\N	\N	\N	\N	\N	ingest_planning_production
ingest_pieces_detachees	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:52.929547+00	2026-07-06 15:05:54.045336+00	1.115789	success	1	2	5ead4c3fd35c	airflow	70	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	707	\\x80057d942e	2026-07-06 15:05:52.954463+00	\N	\N	\N	\N	\N	\N	ingest_pieces_detachees
ingest_capteurs_machines	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:53.346037+00	2026-07-06 15:05:54.362926+00	1.016889	success	1	2	5ead4c3fd35c	airflow	74	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	712	\\x80057d942e	2026-07-06 15:05:53.378487+00	\N	\N	\N	\N	\N	\N	ingest_capteurs_machines
ingest_alertes_monitoring	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:52.860962+00	2026-07-06 15:05:53.83726+00	0.976298	success	1	2	5ead4c3fd35c	airflow	68	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	704	\\x80057d942e	2026-07-06 15:05:52.876524+00	\N	\N	\N	\N	\N	\N	ingest_alertes_monitoring
ingest_logs_erreurs	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:52.839338+00	2026-07-06 15:05:53.929998+00	1.09066	success	1	2	5ead4c3fd35c	airflow	66	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	703	\\x80057d942e	2026-07-06 15:05:52.860697+00	\N	\N	\N	\N	\N	\N	ingest_logs_erreurs
ingest_cameras_qualite	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:52.861058+00	2026-07-06 15:05:54.087279+00	1.226221	success	1	2	5ead4c3fd35c	airflow	67	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	705	\\x80057d942e	2026-07-06 15:05:52.87863+00	\N	\N	\N	\N	\N	\N	ingest_cameras_qualite
ingest_acces_utilisateurs	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:52.978609+00	2026-07-06 15:05:54.190046+00	1.211437	success	1	2	5ead4c3fd35c	airflow	71	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	708	\\x80057d942e	2026-07-06 15:05:52.993701+00	\N	\N	\N	\N	\N	\N	ingest_acces_utilisateurs
ingest_logs_jobs_airflow	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:53.045398+00	2026-07-06 15:05:54.302324+00	1.256926	success	1	2	5ead4c3fd35c	airflow	72	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	709	\\x80057d942e	2026-07-06 15:05:53.064734+00	\N	\N	\N	\N	\N	\N	ingest_logs_jobs_airflow
ingest_maintenance_machines	indusflow_data_pipeline	manual__2026-07-06T15:05:48+00:00	-1	2026-07-06 15:05:53.319053+00	2026-07-06 15:05:54.313725+00	0.994672	success	1	2	5ead4c3fd35c	airflow	75	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:05:52.378076+00	8	711	\\x80057d942e	2026-07-06 15:05:53.373476+00	\N	\N	\N	\N	\N	\N	ingest_maintenance_machines
init_db_schema	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:42.225272+00	2026-07-06 15:18:42.528364+00	0.303092	success	1	2	5ead4c3fd35c	airflow	82	default_pool	1	default	15	PostgresOperator	\N	2026-07-06 15:18:41.891662+00	8	889	\\x80057d942e	2026-07-06 15:18:42.234422+00	\N	\N	\N	\N	\N	\N	init_db_schema
ingest_produits	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:43.462351+00	2026-07-06 15:18:43.892641+00	0.43029	success	1	2	5ead4c3fd35c	airflow	83	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:18:43.170476+00	8	896	\\x80057d942e	2026-07-06 15:18:43.470716+00	\N	\N	\N	\N	\N	\N	ingest_produits
ingest_clients	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:43.480664+00	2026-07-06 15:18:43.956228+00	0.475564	success	1	2	5ead4c3fd35c	airflow	84	default_pool	1	default	12	PythonOperator	\N	2026-07-06 15:18:43.170476+00	8	897	\\x80057d942e	2026-07-06 15:18:43.491305+00	\N	\N	\N	\N	\N	\N	ingest_clients
ingest_acces_utilisateurs	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.159812+00	2026-07-06 15:18:48.651843+00	2.492031	success	1	2	5ead4c3fd35c	airflow	91	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	924	\\x80057d942e	2026-07-06 15:18:46.178681+00	\N	\N	\N	\N	\N	\N	ingest_acces_utilisateurs
ingest_maintenance_machines	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.151901+00	2026-07-06 15:18:48.674224+00	2.522323	success	1	2	5ead4c3fd35c	airflow	88	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	925	\\x80057d942e	2026-07-06 15:18:46.192924+00	\N	\N	\N	\N	\N	\N	ingest_maintenance_machines
ingest_alertes_monitoring	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.3681+00	2026-07-06 15:18:48.791333+00	2.423233	success	1	2	5ead4c3fd35c	airflow	93	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	927	\\x80057d942e	2026-07-06 15:18:46.392159+00	\N	\N	\N	\N	\N	\N	ingest_alertes_monitoring
ingest_logs_jobs_airflow	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.16336+00	2026-07-06 15:18:48.888796+00	2.725436	success	1	2	5ead4c3fd35c	airflow	90	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	923	\\x80057d942e	2026-07-06 15:18:46.175103+00	\N	\N	\N	\N	\N	\N	ingest_logs_jobs_airflow
ingest_pieces_detachees	indusflow_data_pipeline	manual__2026-07-06T15:18:41+00:00	-1	2026-07-06 15:18:46.563856+00	2026-07-06 15:18:49.070411+00	2.506555	success	1	2	5ead4c3fd35c	airflow	94	default_pool	1	default	1	PythonOperator	\N	2026-07-06 15:18:45.364781+00	8	929	\\x80057d942e	2026-07-06 15:18:46.591747+00	\N	\N	\N	\N	\N	\N	ingest_pieces_detachees
\.


--
-- Data for Name: task_instance_note; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.task_instance_note (user_id, task_id, dag_id, run_id, map_index, content, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: task_map; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.task_map (dag_id, task_id, run_id, map_index, length, keys) FROM stdin;
\.


--
-- Data for Name: task_outlet_dataset_reference; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.task_outlet_dataset_reference (dataset_id, dag_id, task_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: task_reschedule; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.task_reschedule (id, task_id, dag_id, run_id, map_index, try_number, start_date, end_date, duration, reschedule_date) FROM stdin;
\.


--
-- Data for Name: trigger; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.trigger (id, classpath, kwargs, created_date, triggerer_id) FROM stdin;
\.


--
-- Data for Name: usines; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.usines (factory_id, factory_name, city, country) FROM stdin;
1	Factory_1	Turin	Germany
2	Factory_2	Toulouse	France
3	Factory_3	Lille	France
4	Factory_4	Hamburg	Germany
5	Factory_5	Lyon	France
\.


--
-- Data for Name: variable; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.variable (id, key, val, description, is_encrypted) FROM stdin;
\.


--
-- Data for Name: xcom; Type: TABLE DATA; Schema: public; Owner: indusflow_admin
--

COPY public.xcom (dag_run_id, task_id, map_index, key, dag_id, run_id, value, "timestamp") FROM stdin;
\.


--
-- Name: ab_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_permission_id_seq', 5, true);


--
-- Name: ab_permission_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_permission_view_id_seq', 95, true);


--
-- Name: ab_permission_view_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_permission_view_role_id_seq', 224, true);


--
-- Name: ab_register_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_register_user_id_seq', 1, false);


--
-- Name: ab_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_role_id_seq', 5, true);


--
-- Name: ab_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_user_id_seq', 1, true);


--
-- Name: ab_user_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_user_role_id_seq', 1, true);


--
-- Name: ab_view_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.ab_view_menu_id_seq', 54, true);


--
-- Name: callback_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.callback_request_id_seq', 1, false);


--
-- Name: connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.connection_id_seq', 1, false);


--
-- Name: dag_pickle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.dag_pickle_id_seq', 1, false);


--
-- Name: dag_run_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.dag_run_id_seq', 8, true);


--
-- Name: dataset_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.dataset_event_id_seq', 1, false);


--
-- Name: dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.dataset_id_seq', 1, false);


--
-- Name: import_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.import_error_id_seq', 1, false);


--
-- Name: job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.job_id_seq', 96, true);


--
-- Name: log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.log_id_seq', 412, true);


--
-- Name: log_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.log_template_id_seq', 2, true);


--
-- Name: session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.session_id_seq', 4, true);


--
-- Name: slot_pool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.slot_pool_id_seq', 1, true);


--
-- Name: task_fail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.task_fail_id_seq', 50, true);


--
-- Name: task_reschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.task_reschedule_id_seq', 1, false);


--
-- Name: trigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.trigger_id_seq', 1, false);


--
-- Name: variable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: indusflow_admin
--

SELECT pg_catalog.setval('public.variable_id_seq', 1, false);


--
-- Name: ab_permission ab_permission_name_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_name_uq UNIQUE (name);


--
-- Name: ab_permission ab_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view ab_permission_view_permission_id_view_menu_id_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_view_menu_id_uq UNIQUE (permission_id, view_menu_id);


--
-- Name: ab_permission_view ab_permission_view_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_pkey PRIMARY KEY (id);


--
-- Name: ab_permission_view_role ab_permission_view_role_permission_view_id_role_id_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_role_id_uq UNIQUE (permission_view_id, role_id);


--
-- Name: ab_permission_view_role ab_permission_view_role_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user ab_register_user_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_pkey PRIMARY KEY (id);


--
-- Name: ab_register_user ab_register_user_username_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_username_uq UNIQUE (username);


--
-- Name: ab_role ab_role_name_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_name_uq UNIQUE (name);


--
-- Name: ab_role ab_role_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user ab_user_email_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_email_uq UNIQUE (email);


--
-- Name: ab_user ab_user_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role ab_user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_pkey PRIMARY KEY (id);


--
-- Name: ab_user_role ab_user_role_user_id_role_id_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_role_id_uq UNIQUE (user_id, role_id);


--
-- Name: ab_user ab_user_username_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_username_uq UNIQUE (username);


--
-- Name: ab_view_menu ab_view_menu_name_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_name_uq UNIQUE (name);


--
-- Name: ab_view_menu ab_view_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_pkey PRIMARY KEY (id);


--
-- Name: acces_utilisateurs acces_utilisateurs_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.acces_utilisateurs
    ADD CONSTRAINT acces_utilisateurs_pkey PRIMARY KEY (user_id);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: alertes_monitoring alertes_monitoring_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.alertes_monitoring
    ADD CONSTRAINT alertes_monitoring_pkey PRIMARY KEY (alert_id);


--
-- Name: callback_request callback_request_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.callback_request
    ADD CONSTRAINT callback_request_pkey PRIMARY KEY (id);


--
-- Name: cameras_qualite cameras_qualite_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.cameras_qualite
    ADD CONSTRAINT cameras_qualite_pkey PRIMARY KEY (camera_event_id);


--
-- Name: capteurs_machines capteurs_machines_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.capteurs_machines
    ADD CONSTRAINT capteurs_machines_pkey PRIMARY KEY (sensor_id);


--
-- Name: clients_industriels clients_industriels_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.clients_industriels
    ADD CONSTRAINT clients_industriels_pkey PRIMARY KEY (client_id);


--
-- Name: connection connection_conn_id_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_conn_id_uq UNIQUE (conn_id);


--
-- Name: connection connection_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_pkey PRIMARY KEY (id);


--
-- Name: cycles_production cycles_production_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.cycles_production
    ADD CONSTRAINT cycles_production_pkey PRIMARY KEY (cycle_id);


--
-- Name: dag_code dag_code_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_code
    ADD CONSTRAINT dag_code_pkey PRIMARY KEY (fileloc_hash);


--
-- Name: dag_owner_attributes dag_owner_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_owner_attributes
    ADD CONSTRAINT dag_owner_attributes_pkey PRIMARY KEY (dag_id, owner);


--
-- Name: dag_pickle dag_pickle_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_pickle
    ADD CONSTRAINT dag_pickle_pkey PRIMARY KEY (id);


--
-- Name: dag dag_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag
    ADD CONSTRAINT dag_pkey PRIMARY KEY (dag_id);


--
-- Name: dag_run dag_run_dag_id_execution_date_key; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_dag_id_execution_date_key UNIQUE (dag_id, execution_date);


--
-- Name: dag_run dag_run_dag_id_run_id_key; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_dag_id_run_id_key UNIQUE (dag_id, run_id);


--
-- Name: dag_run_note dag_run_note_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_pkey PRIMARY KEY (dag_run_id);


--
-- Name: dag_run dag_run_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_pkey PRIMARY KEY (id);


--
-- Name: dag_tag dag_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_tag
    ADD CONSTRAINT dag_tag_pkey PRIMARY KEY (name, dag_id);


--
-- Name: dag_warning dag_warning_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_warning
    ADD CONSTRAINT dag_warning_pkey PRIMARY KEY (dag_id, warning_type);


--
-- Name: dagrun_dataset_event dagrun_dataset_event_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_pkey PRIMARY KEY (dag_run_id, event_id);


--
-- Name: dataset_event dataset_event_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dataset_event
    ADD CONSTRAINT dataset_event_pkey PRIMARY KEY (id);


--
-- Name: dataset dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id);


--
-- Name: dataset_dag_run_queue datasetdagrunqueue_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT datasetdagrunqueue_pkey PRIMARY KEY (dataset_id, target_dag_id);


--
-- Name: dag_schedule_dataset_reference dsdr_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_pkey PRIMARY KEY (dataset_id, dag_id);


--
-- Name: etapes_fabrication etapes_fabrication_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.etapes_fabrication
    ADD CONSTRAINT etapes_fabrication_pkey PRIMARY KEY (cycle_id, step_name);


--
-- Name: import_error import_error_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.import_error
    ADD CONSTRAINT import_error_pkey PRIMARY KEY (id);


--
-- Name: job job_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- Name: log log_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id);


--
-- Name: log_template log_template_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.log_template
    ADD CONSTRAINT log_template_pkey PRIMARY KEY (id);


--
-- Name: logs_erreurs_machines logs_erreurs_machines_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.logs_erreurs_machines
    ADD CONSTRAINT logs_erreurs_machines_pkey PRIMARY KEY (log_id);


--
-- Name: logs_jobs_airflow logs_jobs_airflow_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.logs_jobs_airflow
    ADD CONSTRAINT logs_jobs_airflow_pkey PRIMARY KEY (job_id);


--
-- Name: maintenance_machines maintenance_machines_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.maintenance_machines
    ADD CONSTRAINT maintenance_machines_pkey PRIMARY KEY (maintenance_id);


--
-- Name: pieces_detachees pieces_detachees_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.pieces_detachees
    ADD CONSTRAINT pieces_detachees_pkey PRIMARY KEY (part_id);


--
-- Name: planning_production planning_production_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.planning_production
    ADD CONSTRAINT planning_production_pkey PRIMARY KEY (plan_id);


--
-- Name: produits produits_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.produits
    ADD CONSTRAINT produits_pkey PRIMARY KEY (product_id);


--
-- Name: rendered_task_instance_fields rendered_task_instance_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.rendered_task_instance_fields
    ADD CONSTRAINT rendered_task_instance_fields_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);


--
-- Name: serialized_dag serialized_dag_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.serialized_dag
    ADD CONSTRAINT serialized_dag_pkey PRIMARY KEY (dag_id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);


--
-- Name: session session_session_id_key; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_session_id_key UNIQUE (session_id);


--
-- Name: sla_miss sla_miss_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.sla_miss
    ADD CONSTRAINT sla_miss_pkey PRIMARY KEY (task_id, dag_id, execution_date);


--
-- Name: slot_pool slot_pool_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.slot_pool
    ADD CONSTRAINT slot_pool_pkey PRIMARY KEY (id);


--
-- Name: slot_pool slot_pool_pool_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.slot_pool
    ADD CONSTRAINT slot_pool_pool_uq UNIQUE (pool);


--
-- Name: task_fail task_fail_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_fail
    ADD CONSTRAINT task_fail_pkey PRIMARY KEY (id);


--
-- Name: task_instance_note task_instance_note_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_pkey PRIMARY KEY (task_id, dag_id, run_id, map_index);


--
-- Name: task_instance task_instance_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);


--
-- Name: task_map task_map_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_map
    ADD CONSTRAINT task_map_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);


--
-- Name: task_reschedule task_reschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_pkey PRIMARY KEY (id);


--
-- Name: task_outlet_dataset_reference todr_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_pkey PRIMARY KEY (dataset_id, dag_id, task_id);


--
-- Name: trigger trigger_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.trigger
    ADD CONSTRAINT trigger_pkey PRIMARY KEY (id);


--
-- Name: usines usines_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.usines
    ADD CONSTRAINT usines_pkey PRIMARY KEY (factory_id);


--
-- Name: variable variable_key_uq; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.variable
    ADD CONSTRAINT variable_key_uq UNIQUE (key);


--
-- Name: variable variable_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.variable
    ADD CONSTRAINT variable_pkey PRIMARY KEY (id);


--
-- Name: xcom xcom_pkey; Type: CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.xcom
    ADD CONSTRAINT xcom_pkey PRIMARY KEY (dag_run_id, task_id, map_index, key);


--
-- Name: dag_id_state; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX dag_id_state ON public.dag_run USING btree (dag_id, state);


--
-- Name: idx_ab_register_user_username; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE UNIQUE INDEX idx_ab_register_user_username ON public.ab_register_user USING btree (lower((username)::text));


--
-- Name: idx_ab_user_username; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE UNIQUE INDEX idx_ab_user_username ON public.ab_user USING btree (lower((username)::text));


--
-- Name: idx_dag_run_dag_id; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_dag_run_dag_id ON public.dag_run USING btree (dag_id);


--
-- Name: idx_dag_run_queued_dags; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_dag_run_queued_dags ON public.dag_run USING btree (state, dag_id) WHERE ((state)::text = 'queued'::text);


--
-- Name: idx_dag_run_running_dags; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_dag_run_running_dags ON public.dag_run USING btree (state, dag_id) WHERE ((state)::text = 'running'::text);


--
-- Name: idx_dagrun_dataset_events_dag_run_id; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_dagrun_dataset_events_dag_run_id ON public.dagrun_dataset_event USING btree (dag_run_id);


--
-- Name: idx_dagrun_dataset_events_event_id; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_dagrun_dataset_events_event_id ON public.dagrun_dataset_event USING btree (event_id);


--
-- Name: idx_dataset_id_timestamp; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_dataset_id_timestamp ON public.dataset_event USING btree (dataset_id, "timestamp");


--
-- Name: idx_fileloc_hash; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_fileloc_hash ON public.serialized_dag USING btree (fileloc_hash);


--
-- Name: idx_job_dag_id; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_job_dag_id ON public.job USING btree (dag_id);


--
-- Name: idx_job_state_heartbeat; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_job_state_heartbeat ON public.job USING btree (state, latest_heartbeat);


--
-- Name: idx_log_dag; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_log_dag ON public.log USING btree (dag_id);


--
-- Name: idx_log_dttm; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_log_dttm ON public.log USING btree (dttm);


--
-- Name: idx_log_event; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_log_event ON public.log USING btree (event);


--
-- Name: idx_next_dagrun_create_after; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_next_dagrun_create_after ON public.dag USING btree (next_dagrun_create_after);


--
-- Name: idx_root_dag_id; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_root_dag_id ON public.dag USING btree (root_dag_id);


--
-- Name: idx_task_fail_task_instance; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_task_fail_task_instance ON public.task_fail USING btree (dag_id, task_id, run_id, map_index);


--
-- Name: idx_task_reschedule_dag_run; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_task_reschedule_dag_run ON public.task_reschedule USING btree (dag_id, run_id);


--
-- Name: idx_task_reschedule_dag_task_run; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_task_reschedule_dag_task_run ON public.task_reschedule USING btree (dag_id, task_id, run_id, map_index);


--
-- Name: idx_uri_unique; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE UNIQUE INDEX idx_uri_unique ON public.dataset USING btree (uri);


--
-- Name: idx_xcom_key; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_xcom_key ON public.xcom USING btree (key);


--
-- Name: idx_xcom_task_instance; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX idx_xcom_task_instance ON public.xcom USING btree (dag_id, task_id, run_id, map_index);


--
-- Name: job_type_heart; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX job_type_heart ON public.job USING btree (job_type, latest_heartbeat);


--
-- Name: sm_dag; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX sm_dag ON public.sla_miss USING btree (dag_id);


--
-- Name: ti_dag_run; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX ti_dag_run ON public.task_instance USING btree (dag_id, run_id);


--
-- Name: ti_dag_state; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX ti_dag_state ON public.task_instance USING btree (dag_id, state);


--
-- Name: ti_job_id; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX ti_job_id ON public.task_instance USING btree (job_id);


--
-- Name: ti_pool; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX ti_pool ON public.task_instance USING btree (pool, state, priority_weight);


--
-- Name: ti_state; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX ti_state ON public.task_instance USING btree (state);


--
-- Name: ti_state_lkp; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX ti_state_lkp ON public.task_instance USING btree (dag_id, task_id, run_id, state);


--
-- Name: ti_trigger_id; Type: INDEX; Schema: public; Owner: indusflow_admin
--

CREATE INDEX ti_trigger_id ON public.task_instance USING btree (trigger_id);


--
-- Name: ab_permission_view ab_permission_view_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.ab_permission(id);


--
-- Name: ab_permission_view_role ab_permission_view_role_permission_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_fkey FOREIGN KEY (permission_view_id) REFERENCES public.ab_permission_view(id);


--
-- Name: ab_permission_view_role ab_permission_view_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_permission_view ab_permission_view_view_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_view_menu_id_fkey FOREIGN KEY (view_menu_id) REFERENCES public.ab_view_menu(id);


--
-- Name: ab_user ab_user_changed_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user ab_user_created_by_fk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);


--
-- Name: ab_user_role ab_user_role_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);


--
-- Name: ab_user_role ab_user_role_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: cycles_production cycles_production_client_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.cycles_production
    ADD CONSTRAINT cycles_production_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients_industriels(client_id);


--
-- Name: cycles_production cycles_production_factory_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.cycles_production
    ADD CONSTRAINT cycles_production_factory_id_fkey FOREIGN KEY (factory_id) REFERENCES public.usines(factory_id);


--
-- Name: cycles_production cycles_production_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.cycles_production
    ADD CONSTRAINT cycles_production_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.produits(product_id);


--
-- Name: dag_owner_attributes dag.dag_id; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_owner_attributes
    ADD CONSTRAINT "dag.dag_id" FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dag_run_note dag_run_note_dr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_dr_fkey FOREIGN KEY (dag_run_id) REFERENCES public.dag_run(id) ON DELETE CASCADE;


--
-- Name: dag_run_note dag_run_note_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_user_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: dag_tag dag_tag_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_tag
    ADD CONSTRAINT dag_tag_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dagrun_dataset_event dagrun_dataset_event_dag_run_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_dag_run_id_fkey FOREIGN KEY (dag_run_id) REFERENCES public.dag_run(id) ON DELETE CASCADE;


--
-- Name: dagrun_dataset_event dagrun_dataset_event_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.dataset_event(id) ON DELETE CASCADE;


--
-- Name: dag_warning dcw_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_warning
    ADD CONSTRAINT dcw_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dataset_dag_run_queue ddrq_dag_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT ddrq_dag_fkey FOREIGN KEY (target_dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dataset_dag_run_queue ddrq_dataset_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT ddrq_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: dag_schedule_dataset_reference dsdr_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: dag_schedule_dataset_reference dsdr_dataset_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: etapes_fabrication etapes_fabrication_cycle_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.etapes_fabrication
    ADD CONSTRAINT etapes_fabrication_cycle_id_fkey FOREIGN KEY (cycle_id) REFERENCES public.cycles_production(cycle_id);


--
-- Name: rendered_task_instance_fields rtif_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.rendered_task_instance_fields
    ADD CONSTRAINT rtif_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_fail task_fail_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_fail
    ADD CONSTRAINT task_fail_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_instance task_instance_dag_run_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_dag_run_fkey FOREIGN KEY (dag_id, run_id) REFERENCES public.dag_run(dag_id, run_id) ON DELETE CASCADE;


--
-- Name: dag_run task_instance_log_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT task_instance_log_template_id_fkey FOREIGN KEY (log_template_id) REFERENCES public.log_template(id);


--
-- Name: task_instance_note task_instance_note_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_instance_note task_instance_note_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_user_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);


--
-- Name: task_instance task_instance_trigger_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_trigger_id_fkey FOREIGN KEY (trigger_id) REFERENCES public.trigger(id) ON DELETE CASCADE;


--
-- Name: task_map task_map_task_instance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_map
    ADD CONSTRAINT task_map_task_instance_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: task_reschedule task_reschedule_dr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_dr_fkey FOREIGN KEY (dag_id, run_id) REFERENCES public.dag_run(dag_id, run_id) ON DELETE CASCADE;


--
-- Name: task_reschedule task_reschedule_ti_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: task_outlet_dataset_reference todr_dag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;


--
-- Name: task_outlet_dataset_reference todr_dataset_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;


--
-- Name: xcom xcom_task_instance_fkey; Type: FK CONSTRAINT; Schema: public; Owner: indusflow_admin
--

ALTER TABLE ONLY public.xcom
    ADD CONSTRAINT xcom_task_instance_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO indusflow_data_engineer;
GRANT USAGE ON SCHEMA public TO indusflow_analyst;
GRANT USAGE ON SCHEMA public TO indusflow_manager;
GRANT USAGE ON SCHEMA public TO indusflow_ops;
GRANT USAGE ON SCHEMA public TO indusflow_auditor;


--
-- Name: TABLE ab_permission; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_permission TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_permission TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_permission TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_permission TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_permission TO indusflow_auditor;


--
-- Name: TABLE ab_permission_view; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_permission_view TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_permission_view TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_permission_view TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_permission_view TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_permission_view TO indusflow_auditor;


--
-- Name: TABLE ab_permission_view_role; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_permission_view_role TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_permission_view_role TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_permission_view_role TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_permission_view_role TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_permission_view_role TO indusflow_auditor;


--
-- Name: TABLE ab_register_user; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_register_user TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_register_user TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_register_user TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_register_user TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_register_user TO indusflow_auditor;


--
-- Name: TABLE ab_role; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_role TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_role TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_role TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_role TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_role TO indusflow_auditor;


--
-- Name: TABLE ab_user; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_user TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_user TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_user TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_user TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_user TO indusflow_auditor;


--
-- Name: TABLE ab_user_role; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_user_role TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_user_role TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_user_role TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_user_role TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_user_role TO indusflow_auditor;


--
-- Name: TABLE ab_view_menu; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ab_view_menu TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.ab_view_menu TO indusflow_analyst;
GRANT SELECT ON TABLE public.ab_view_menu TO indusflow_manager;
GRANT SELECT ON TABLE public.ab_view_menu TO indusflow_ops;
GRANT SELECT ON TABLE public.ab_view_menu TO indusflow_auditor;


--
-- Name: TABLE acces_utilisateurs; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.acces_utilisateurs TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.acces_utilisateurs TO indusflow_analyst;
GRANT SELECT ON TABLE public.acces_utilisateurs TO indusflow_manager;
GRANT SELECT ON TABLE public.acces_utilisateurs TO indusflow_ops;
GRANT SELECT ON TABLE public.acces_utilisateurs TO indusflow_auditor;


--
-- Name: TABLE alembic_version; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.alembic_version TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.alembic_version TO indusflow_analyst;
GRANT SELECT ON TABLE public.alembic_version TO indusflow_manager;
GRANT SELECT ON TABLE public.alembic_version TO indusflow_ops;
GRANT SELECT ON TABLE public.alembic_version TO indusflow_auditor;


--
-- Name: TABLE alertes_monitoring; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.alertes_monitoring TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.alertes_monitoring TO indusflow_analyst;
GRANT SELECT ON TABLE public.alertes_monitoring TO indusflow_manager;
GRANT SELECT ON TABLE public.alertes_monitoring TO indusflow_ops;
GRANT SELECT ON TABLE public.alertes_monitoring TO indusflow_auditor;


--
-- Name: TABLE callback_request; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.callback_request TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.callback_request TO indusflow_analyst;
GRANT SELECT ON TABLE public.callback_request TO indusflow_manager;
GRANT SELECT ON TABLE public.callback_request TO indusflow_ops;
GRANT SELECT ON TABLE public.callback_request TO indusflow_auditor;


--
-- Name: TABLE cameras_qualite; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.cameras_qualite TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.cameras_qualite TO indusflow_analyst;
GRANT SELECT ON TABLE public.cameras_qualite TO indusflow_manager;
GRANT SELECT ON TABLE public.cameras_qualite TO indusflow_ops;
GRANT SELECT ON TABLE public.cameras_qualite TO indusflow_auditor;


--
-- Name: TABLE capteurs_machines; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.capteurs_machines TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.capteurs_machines TO indusflow_analyst;
GRANT SELECT ON TABLE public.capteurs_machines TO indusflow_manager;
GRANT SELECT ON TABLE public.capteurs_machines TO indusflow_ops;
GRANT SELECT ON TABLE public.capteurs_machines TO indusflow_auditor;


--
-- Name: TABLE clients_industriels; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.clients_industriels TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.clients_industriels TO indusflow_analyst;
GRANT SELECT ON TABLE public.clients_industriels TO indusflow_manager;
GRANT SELECT ON TABLE public.clients_industriels TO indusflow_ops;
GRANT SELECT ON TABLE public.clients_industriels TO indusflow_auditor;


--
-- Name: TABLE connection; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.connection TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.connection TO indusflow_analyst;
GRANT SELECT ON TABLE public.connection TO indusflow_manager;
GRANT SELECT ON TABLE public.connection TO indusflow_ops;
GRANT SELECT ON TABLE public.connection TO indusflow_auditor;


--
-- Name: TABLE cycles_production; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.cycles_production TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.cycles_production TO indusflow_analyst;
GRANT SELECT ON TABLE public.cycles_production TO indusflow_manager;
GRANT SELECT ON TABLE public.cycles_production TO indusflow_ops;
GRANT SELECT ON TABLE public.cycles_production TO indusflow_auditor;


--
-- Name: TABLE dag; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag TO indusflow_manager;
GRANT SELECT ON TABLE public.dag TO indusflow_ops;
GRANT SELECT ON TABLE public.dag TO indusflow_auditor;


--
-- Name: TABLE dag_code; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_code TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_code TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_code TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_code TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_code TO indusflow_auditor;


--
-- Name: TABLE dag_owner_attributes; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_owner_attributes TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_owner_attributes TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_owner_attributes TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_owner_attributes TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_owner_attributes TO indusflow_auditor;


--
-- Name: TABLE dag_pickle; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_pickle TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_pickle TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_pickle TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_pickle TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_pickle TO indusflow_auditor;


--
-- Name: TABLE dag_run; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_run TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_run TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_run TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_run TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_run TO indusflow_auditor;


--
-- Name: TABLE dag_run_note; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_run_note TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_run_note TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_run_note TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_run_note TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_run_note TO indusflow_auditor;


--
-- Name: TABLE dag_schedule_dataset_reference; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_schedule_dataset_reference TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_schedule_dataset_reference TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_schedule_dataset_reference TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_schedule_dataset_reference TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_schedule_dataset_reference TO indusflow_auditor;


--
-- Name: TABLE dag_tag; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_tag TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_tag TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_tag TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_tag TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_tag TO indusflow_auditor;


--
-- Name: TABLE dag_warning; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dag_warning TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dag_warning TO indusflow_analyst;
GRANT SELECT ON TABLE public.dag_warning TO indusflow_manager;
GRANT SELECT ON TABLE public.dag_warning TO indusflow_ops;
GRANT SELECT ON TABLE public.dag_warning TO indusflow_auditor;


--
-- Name: TABLE dagrun_dataset_event; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dagrun_dataset_event TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dagrun_dataset_event TO indusflow_analyst;
GRANT SELECT ON TABLE public.dagrun_dataset_event TO indusflow_manager;
GRANT SELECT ON TABLE public.dagrun_dataset_event TO indusflow_ops;
GRANT SELECT ON TABLE public.dagrun_dataset_event TO indusflow_auditor;


--
-- Name: TABLE dataset; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dataset TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dataset TO indusflow_analyst;
GRANT SELECT ON TABLE public.dataset TO indusflow_manager;
GRANT SELECT ON TABLE public.dataset TO indusflow_ops;
GRANT SELECT ON TABLE public.dataset TO indusflow_auditor;


--
-- Name: TABLE dataset_dag_run_queue; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dataset_dag_run_queue TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dataset_dag_run_queue TO indusflow_analyst;
GRANT SELECT ON TABLE public.dataset_dag_run_queue TO indusflow_manager;
GRANT SELECT ON TABLE public.dataset_dag_run_queue TO indusflow_ops;
GRANT SELECT ON TABLE public.dataset_dag_run_queue TO indusflow_auditor;


--
-- Name: TABLE dataset_event; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.dataset_event TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.dataset_event TO indusflow_analyst;
GRANT SELECT ON TABLE public.dataset_event TO indusflow_manager;
GRANT SELECT ON TABLE public.dataset_event TO indusflow_ops;
GRANT SELECT ON TABLE public.dataset_event TO indusflow_auditor;


--
-- Name: TABLE etapes_fabrication; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.etapes_fabrication TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.etapes_fabrication TO indusflow_analyst;
GRANT SELECT ON TABLE public.etapes_fabrication TO indusflow_manager;
GRANT SELECT ON TABLE public.etapes_fabrication TO indusflow_ops;
GRANT SELECT ON TABLE public.etapes_fabrication TO indusflow_auditor;


--
-- Name: TABLE import_error; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.import_error TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.import_error TO indusflow_analyst;
GRANT SELECT ON TABLE public.import_error TO indusflow_manager;
GRANT SELECT ON TABLE public.import_error TO indusflow_ops;
GRANT SELECT ON TABLE public.import_error TO indusflow_auditor;


--
-- Name: TABLE job; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.job TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.job TO indusflow_analyst;
GRANT SELECT ON TABLE public.job TO indusflow_manager;
GRANT SELECT ON TABLE public.job TO indusflow_ops;
GRANT SELECT ON TABLE public.job TO indusflow_auditor;


--
-- Name: TABLE log; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.log TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.log TO indusflow_analyst;
GRANT SELECT ON TABLE public.log TO indusflow_manager;
GRANT SELECT ON TABLE public.log TO indusflow_ops;
GRANT SELECT ON TABLE public.log TO indusflow_auditor;


--
-- Name: TABLE log_template; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.log_template TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.log_template TO indusflow_analyst;
GRANT SELECT ON TABLE public.log_template TO indusflow_manager;
GRANT SELECT ON TABLE public.log_template TO indusflow_ops;
GRANT SELECT ON TABLE public.log_template TO indusflow_auditor;


--
-- Name: TABLE logs_erreurs_machines; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.logs_erreurs_machines TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.logs_erreurs_machines TO indusflow_analyst;
GRANT SELECT ON TABLE public.logs_erreurs_machines TO indusflow_manager;
GRANT SELECT ON TABLE public.logs_erreurs_machines TO indusflow_ops;
GRANT SELECT ON TABLE public.logs_erreurs_machines TO indusflow_auditor;


--
-- Name: TABLE logs_jobs_airflow; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.logs_jobs_airflow TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.logs_jobs_airflow TO indusflow_analyst;
GRANT SELECT ON TABLE public.logs_jobs_airflow TO indusflow_manager;
GRANT SELECT ON TABLE public.logs_jobs_airflow TO indusflow_ops;
GRANT SELECT ON TABLE public.logs_jobs_airflow TO indusflow_auditor;


--
-- Name: TABLE maintenance_machines; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.maintenance_machines TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.maintenance_machines TO indusflow_analyst;
GRANT SELECT ON TABLE public.maintenance_machines TO indusflow_manager;
GRANT SELECT ON TABLE public.maintenance_machines TO indusflow_ops;
GRANT SELECT ON TABLE public.maintenance_machines TO indusflow_auditor;


--
-- Name: TABLE pieces_detachees; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.pieces_detachees TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.pieces_detachees TO indusflow_analyst;
GRANT SELECT ON TABLE public.pieces_detachees TO indusflow_manager;
GRANT SELECT ON TABLE public.pieces_detachees TO indusflow_ops;
GRANT SELECT ON TABLE public.pieces_detachees TO indusflow_auditor;


--
-- Name: TABLE planning_production; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.planning_production TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.planning_production TO indusflow_analyst;
GRANT SELECT ON TABLE public.planning_production TO indusflow_manager;
GRANT SELECT ON TABLE public.planning_production TO indusflow_ops;
GRANT SELECT ON TABLE public.planning_production TO indusflow_auditor;


--
-- Name: TABLE produits; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.produits TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.produits TO indusflow_analyst;
GRANT SELECT ON TABLE public.produits TO indusflow_manager;
GRANT SELECT ON TABLE public.produits TO indusflow_ops;
GRANT SELECT ON TABLE public.produits TO indusflow_auditor;


--
-- Name: TABLE rendered_task_instance_fields; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.rendered_task_instance_fields TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.rendered_task_instance_fields TO indusflow_analyst;
GRANT SELECT ON TABLE public.rendered_task_instance_fields TO indusflow_manager;
GRANT SELECT ON TABLE public.rendered_task_instance_fields TO indusflow_ops;
GRANT SELECT ON TABLE public.rendered_task_instance_fields TO indusflow_auditor;


--
-- Name: TABLE serialized_dag; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.serialized_dag TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.serialized_dag TO indusflow_analyst;
GRANT SELECT ON TABLE public.serialized_dag TO indusflow_manager;
GRANT SELECT ON TABLE public.serialized_dag TO indusflow_ops;
GRANT SELECT ON TABLE public.serialized_dag TO indusflow_auditor;


--
-- Name: TABLE session; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.session TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.session TO indusflow_analyst;
GRANT SELECT ON TABLE public.session TO indusflow_manager;
GRANT SELECT ON TABLE public.session TO indusflow_ops;
GRANT SELECT ON TABLE public.session TO indusflow_auditor;


--
-- Name: TABLE sla_miss; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.sla_miss TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.sla_miss TO indusflow_analyst;
GRANT SELECT ON TABLE public.sla_miss TO indusflow_manager;
GRANT SELECT ON TABLE public.sla_miss TO indusflow_ops;
GRANT SELECT ON TABLE public.sla_miss TO indusflow_auditor;


--
-- Name: TABLE slot_pool; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.slot_pool TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.slot_pool TO indusflow_analyst;
GRANT SELECT ON TABLE public.slot_pool TO indusflow_manager;
GRANT SELECT ON TABLE public.slot_pool TO indusflow_ops;
GRANT SELECT ON TABLE public.slot_pool TO indusflow_auditor;


--
-- Name: TABLE spark_error_aggregates; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.spark_error_aggregates TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.spark_error_aggregates TO indusflow_analyst;
GRANT SELECT ON TABLE public.spark_error_aggregates TO indusflow_manager;
GRANT SELECT ON TABLE public.spark_error_aggregates TO indusflow_ops;
GRANT SELECT ON TABLE public.spark_error_aggregates TO indusflow_auditor;


--
-- Name: TABLE spark_sensor_aggregates; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.spark_sensor_aggregates TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.spark_sensor_aggregates TO indusflow_analyst;
GRANT SELECT ON TABLE public.spark_sensor_aggregates TO indusflow_manager;
GRANT SELECT ON TABLE public.spark_sensor_aggregates TO indusflow_ops;
GRANT SELECT ON TABLE public.spark_sensor_aggregates TO indusflow_auditor;


--
-- Name: TABLE task_fail; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.task_fail TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.task_fail TO indusflow_analyst;
GRANT SELECT ON TABLE public.task_fail TO indusflow_manager;
GRANT SELECT ON TABLE public.task_fail TO indusflow_ops;
GRANT SELECT ON TABLE public.task_fail TO indusflow_auditor;


--
-- Name: TABLE task_instance; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.task_instance TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.task_instance TO indusflow_analyst;
GRANT SELECT ON TABLE public.task_instance TO indusflow_manager;
GRANT SELECT ON TABLE public.task_instance TO indusflow_ops;
GRANT SELECT ON TABLE public.task_instance TO indusflow_auditor;


--
-- Name: TABLE task_instance_note; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.task_instance_note TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.task_instance_note TO indusflow_analyst;
GRANT SELECT ON TABLE public.task_instance_note TO indusflow_manager;
GRANT SELECT ON TABLE public.task_instance_note TO indusflow_ops;
GRANT SELECT ON TABLE public.task_instance_note TO indusflow_auditor;


--
-- Name: TABLE task_map; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.task_map TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.task_map TO indusflow_analyst;
GRANT SELECT ON TABLE public.task_map TO indusflow_manager;
GRANT SELECT ON TABLE public.task_map TO indusflow_ops;
GRANT SELECT ON TABLE public.task_map TO indusflow_auditor;


--
-- Name: TABLE task_outlet_dataset_reference; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.task_outlet_dataset_reference TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.task_outlet_dataset_reference TO indusflow_analyst;
GRANT SELECT ON TABLE public.task_outlet_dataset_reference TO indusflow_manager;
GRANT SELECT ON TABLE public.task_outlet_dataset_reference TO indusflow_ops;
GRANT SELECT ON TABLE public.task_outlet_dataset_reference TO indusflow_auditor;


--
-- Name: TABLE task_reschedule; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.task_reschedule TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.task_reschedule TO indusflow_analyst;
GRANT SELECT ON TABLE public.task_reschedule TO indusflow_manager;
GRANT SELECT ON TABLE public.task_reschedule TO indusflow_ops;
GRANT SELECT ON TABLE public.task_reschedule TO indusflow_auditor;


--
-- Name: TABLE trigger; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.trigger TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.trigger TO indusflow_analyst;
GRANT SELECT ON TABLE public.trigger TO indusflow_manager;
GRANT SELECT ON TABLE public.trigger TO indusflow_ops;
GRANT SELECT ON TABLE public.trigger TO indusflow_auditor;


--
-- Name: TABLE usines; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.usines TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.usines TO indusflow_analyst;
GRANT SELECT ON TABLE public.usines TO indusflow_manager;
GRANT SELECT ON TABLE public.usines TO indusflow_ops;
GRANT SELECT ON TABLE public.usines TO indusflow_auditor;


--
-- Name: TABLE variable; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.variable TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.variable TO indusflow_analyst;
GRANT SELECT ON TABLE public.variable TO indusflow_manager;
GRANT SELECT ON TABLE public.variable TO indusflow_ops;
GRANT SELECT ON TABLE public.variable TO indusflow_auditor;


--
-- Name: TABLE xcom; Type: ACL; Schema: public; Owner: indusflow_admin
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.xcom TO indusflow_data_engineer;
GRANT SELECT ON TABLE public.xcom TO indusflow_analyst;
GRANT SELECT ON TABLE public.xcom TO indusflow_manager;
GRANT SELECT ON TABLE public.xcom TO indusflow_ops;
GRANT SELECT ON TABLE public.xcom TO indusflow_auditor;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: indusflow_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE indusflow_admin IN SCHEMA public GRANT SELECT,INSERT,DELETE,UPDATE ON TABLES TO indusflow_data_engineer;
ALTER DEFAULT PRIVILEGES FOR ROLE indusflow_admin IN SCHEMA public GRANT SELECT ON TABLES TO indusflow_analyst;
ALTER DEFAULT PRIVILEGES FOR ROLE indusflow_admin IN SCHEMA public GRANT SELECT ON TABLES TO indusflow_manager;
ALTER DEFAULT PRIVILEGES FOR ROLE indusflow_admin IN SCHEMA public GRANT SELECT ON TABLES TO indusflow_ops;
ALTER DEFAULT PRIVILEGES FOR ROLE indusflow_admin IN SCHEMA public GRANT SELECT ON TABLES TO indusflow_auditor;


--
-- PostgreSQL database dump complete
--

\unrestrict cvTv4Ahzon6FqGurMp5OU1hNaX0nmgagf6C8TJW9AFzktNUjBQx0swewMakDhhV

