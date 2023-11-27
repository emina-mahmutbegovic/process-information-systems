--liquibase formatted sql

--changeset emina.mahmutbegovic:load_test_data

COPY termin_emitovanja FROM '/liquibase/test-data/tv-date-test-data.csv' WITH CSV HEADER DELIMITER ',';
COPY urednik FROM '/liquibase/test-data/tv-editor-test-data.csv' WITH CSV HEADER DELIMITER ',';
COPY epizoda FROM '/liquibase/test-data/tv-episode-test-data.csv' WITH CSV HEADER DELIMITER ',';
COPY vrsta_emisije FROM '/liquibase/test-data/tv-genre-test-data.csv' WITH CSV HEADER DELIMITER ',';
COPY gost FROM '/liquibase/test-data/tv-guest-test-data.csv' WITH CSV HEADER DELIMITER ',';
COPY voditelj FROM '/liquibase/test-data/tv-host-test-data.csv' WITH CSV HEADER DELIMITER ',';
COPY emisija FROM '/liquibase/test-data/tv-show-test-data.csv' WITH CSV HEADER DELIMITER ',';

