--liquibase formatted sql

--changeset emina.mahmutbegovic:create_table_tv_guest

-- Create 'Gost' Table
CREATE TABLE gost (
    id_gosta VARCHAR(36) PRIMARY KEY,
    ime_gosta VARCHAR(50) NOT NULL,
    prezime_gosta VARCHAR(50) NOT NULL,
    biografija_gosta VARCHAR(500) NOT NULL,
    kontakt_telefon_gosta VARCHAR(50)
);