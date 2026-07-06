-- DROP TABLES to allow clean re-runs
DROP TABLE IF EXISTS logs_jobs_airflow CASCADE;
DROP TABLE IF EXISTS alertes_monitoring CASCADE;
DROP TABLE IF EXISTS acces_utilisateurs CASCADE;
DROP TABLE IF EXISTS maintenance_machines CASCADE;
DROP TABLE IF EXISTS pieces_detachees CASCADE;
DROP TABLE IF EXISTS planning_production CASCADE;
DROP TABLE IF EXISTS logs_erreurs_machines CASCADE;
DROP TABLE IF EXISTS cameras_qualite CASCADE;
DROP TABLE IF EXISTS capteurs_machines CASCADE;
DROP TABLE IF EXISTS etapes_fabrication CASCADE;
DROP TABLE IF EXISTS cycles_production CASCADE;
DROP TABLE IF EXISTS clients_industriels CASCADE;
DROP TABLE IF EXISTS produits CASCADE;
DROP TABLE IF EXISTS usines CASCADE;

-- ==========================================
-- 1. TABLES DE DIMENSIONS (RÉFÉRENTIELS)
-- ==========================================

CREATE TABLE IF NOT EXISTS usines (
    factory_id INT PRIMARY KEY,
    factory_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS produits (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    unit_cost DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS clients_industriels (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(100) NOT NULL,
    sector VARCHAR(100),
    country VARCHAR(100)
);

-- ==========================================
-- 2. TABLE DE FAITS CENTRALE
-- ==========================================

CREATE TABLE IF NOT EXISTS cycles_production (
    cycle_id INT PRIMARY KEY,
    factory_id INT REFERENCES usines(factory_id),
    product_id INT REFERENCES produits(product_id),
    client_id INT REFERENCES clients_industriels(client_id),
    production_time_sec INT,
    cycle_timestamp TIMESTAMP NOT NULL
);

-- ==========================================
-- 3. TABLES OPÉRATIONNELLES ET LOGS IOT / MACHINES
-- ==========================================

CREATE TABLE IF NOT EXISTS etapes_fabrication (
    cycle_id INT REFERENCES cycles_production(cycle_id),
    step_name VARCHAR(100),
    duration_sec INT,
    machine_id VARCHAR(50),
    PRIMARY KEY (cycle_id, step_name)
);

CREATE TABLE IF NOT EXISTS capteurs_machines (
    sensor_id INT PRIMARY KEY,
    machine_id VARCHAR(50) NOT NULL,
    temperature_c DECIMAL(6, 2),
    vibration_level DECIMAL(6, 2),
    pressure_bar DECIMAL(6, 2),
    timestamp TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS cameras_qualite (
    camera_event_id INT PRIMARY KEY,
    machine_id VARCHAR(50) NOT NULL,
    defect_detected INT, -- 0 ou 1
    confidence_score DECIMAL(4, 2),
    timestamp TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS logs_erreurs_machines (
    log_id INT PRIMARY KEY,
    machine_id VARCHAR(50) NOT NULL,
    error_code VARCHAR(10),
    severity VARCHAR(20), -- LOW, MEDIUM, HIGH, CRITICAL
    event_timestamp TIMESTAMP NOT NULL,
    resolved INT, -- 0 ou 1
    resolution_time_min INT
);

CREATE TABLE IF NOT EXISTS planning_production (
    plan_id INT PRIMARY KEY,
    factory_id INT,
    product_id INT,
    planned_start TIMESTAMP,
    planned_end TIMESTAMP,
    planned_quantity INT,
    priority VARCHAR(20),
    status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS pieces_detachees (
    part_id INT PRIMARY KEY,
    part_name VARCHAR(100),
    machine_id VARCHAR(50),
    supplier VARCHAR(100),
    stock_qty INT,
    reorder_threshold INT,
    unit_price_eur DECIMAL(10, 2),
    last_restock_date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS maintenance_machines (
    maintenance_id INT PRIMARY KEY,
    machine_id VARCHAR(50),
    maintenance_type VARCHAR(50), -- Preventive, Corrective, etc.
    maintenance_start TIMESTAMP,
    duration_min INT,
    maintenance_end TIMESTAMP,
    technician_id VARCHAR(50),
    cost_eur DECIMAL(10, 2),
    status VARCHAR(50)
);

-- ==========================================
-- 4. TABLES DE SÉCURITÉ ET SUPERVISION SÉPARÉES
-- ==========================================

CREATE TABLE IF NOT EXISTS acces_utilisateurs (
    user_id INT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    role VARCHAR(50), -- ADMIN, ANALYST, etc.
    is_active INT,
    last_login TIMESTAMP
);

CREATE TABLE IF NOT EXISTS alertes_monitoring (
    alert_id INT PRIMARY KEY,
    system_name VARCHAR(50), -- postgresql, airflow, spark, etc.
    severity VARCHAR(20),
    metric_name VARCHAR(50),
    metric_value DECIMAL(10, 2),
    resolved INT,
    alert_timestamp TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS logs_jobs_airflow (
    job_id INT PRIMARY KEY,
    dag_name VARCHAR(100) NOT NULL,
    execution_date TIMESTAMP NOT NULL,
    duration_sec INT,
    status VARCHAR(50), -- success, failed, retry, etc.
    rows_processed DECIMAL(12, 2)
);

-- ==========================================
-- 5. RÔLES ET PERMISSIONS (SÉCURITÉ C3.3)
-- ==========================================
DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'indusflow_data_engineer') THEN
        CREATE ROLE indusflow_data_engineer;
    END IF;
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'indusflow_analyst') THEN
        CREATE ROLE indusflow_analyst;
    END IF;
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'indusflow_manager') THEN
        CREATE ROLE indusflow_manager;
    END IF;
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'indusflow_ops') THEN
        CREATE ROLE indusflow_ops;
    END IF;
    IF NOT EXISTS (SELECT FROM pg_catalog.pg_roles WHERE rolname = 'indusflow_auditor') THEN
        CREATE ROLE indusflow_auditor;
    END IF;
END
$$;

-- Privilèges DATA_ENGINEER : Lecture/Écriture complète sur public
GRANT USAGE ON SCHEMA public TO indusflow_data_engineer;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO indusflow_data_engineer;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO indusflow_data_engineer;

-- Privilèges ANALYST, MANAGER, OPS, AUDITOR : Lecture seule
GRANT USAGE ON SCHEMA public TO indusflow_analyst, indusflow_manager, indusflow_ops, indusflow_auditor;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO indusflow_analyst, indusflow_manager, indusflow_ops, indusflow_auditor;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO indusflow_analyst, indusflow_manager, indusflow_ops, indusflow_auditor;