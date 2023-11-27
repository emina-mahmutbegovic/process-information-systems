--liquibase formatted sql

--changeset emina.mahmutbegovic:create_table_tv_editor

-- Create 'Urednik' Table
CREATE TABLE urednik (
    id_urednika VARCHAR(36) PRIMARY KEY,
    ime_urednika VARCHAR(50) NOT NULL,
    prezime_urednika VARCHAR(50) NOT NULL,
    kontakt_telefon_urednika VARCHAR(50)
);