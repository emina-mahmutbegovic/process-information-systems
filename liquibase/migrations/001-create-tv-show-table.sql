--liquibase formatted sql

--changeset emina.mahmutbegovic:create_table_tv_show

-- Create 'Emisija' Table
CREATE TABLE emisija
(
    id_emisije VARCHAR(36) PRIMARY KEY,
    naziv_emisije VARCHAR(50) UNIQUE NOT NULL,
    opis_emisije TEXT,
    trajanje_emisije INT NOT NULL,
    ocjena_emisije INT CHECK (ocjena_emisije BETWEEN 1 AND 10),
    id_vrste_emisije VARCHAR(36),
    id_voditelja VARCHAR(36),
    id_urednika VARCHAR(36),
    id_gosta VARCHAR(36),
    FOREIGN KEY (id_vrste_emisije) REFERENCES vrsta_emisije(id_vrste_emisije),
    FOREIGN KEY (id_voditelja) REFERENCES voditelj(id_voditelja),
    FOREIGN KEY (id_urednika) REFERENCES urednik(id_urednika),
    FOREIGN KEY (id_gosta) REFERENCES gost(id_gosta)
);