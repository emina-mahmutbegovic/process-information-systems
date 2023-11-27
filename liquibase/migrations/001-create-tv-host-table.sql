--liquibase formatted sql

--changeset emina.mahmutbegovic:create_table_tv_host

-- Create 'Voditelj' Table
CREATE TABLE voditelj (
    id_voditelja VARCHAR(36) PRIMARY KEY,
    ime_voditelja VARCHAR(50) NOT NULL,
    prezime_voditelja VARCHAR(50) NOT NULL,
    kontakt_telefon_voditelja VARCHAR(50)
);