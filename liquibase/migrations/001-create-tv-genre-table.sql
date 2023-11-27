--liquibase formatted sql

--changeset emina.mahmutbegovic:create_table_tv_genre

-- Create 'Vrsta emisije' Table
CREATE TABLE vrsta_emisije (
    id_vrste_emisije VARCHAR(36) PRIMARY KEY,
    naziv_vrste_emisije VARCHAR(50) UNIQUE NOT NULL
);