--liquibase formatted sql

--changeset emina.mahmutbegovic:create_table_tv_date

-- Create 'Termin' Table
CREATE TABLE termin_emitovanja
(
    id_termina_emitovanja VARCHAR(36) PRIMARY KEY,
    datum_emitovanja DATE NOT NULL,
    vrijeme_pocetka TIME(0) UNIQUE NOT NULL,
    vrijeme_zavrsetka TIME(0) UNIQUE NOT NULL
);