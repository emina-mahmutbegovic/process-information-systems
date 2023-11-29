#!/bin/bash
set -e

if [ -z "${POSTGRESDB_HOST}" ]; then
    echo "POSTGRESDB_HOST not defined"
    exit 2;
fi

if [ -z "${POSTGRESDB_PORT}" ]; then
    echo "POSTGRESDB_PORT not defined. Using default 5432"
fi

if [ -z "${POSTGRESDB_DB}" ]; then
    echo "POSTGRESDB_DB not defined. Using default 'postgres'"
fi

if [ -z "${POSTGRESDB_USERNAME}" ]; then
    echo "POSTGRESDB_USERNAME not defined"
    exit 2;
fi

if [ -z "${POSRGRESDB_PASSWORD}" ]; then
    echo "POSTGRESDB_PASSWORD not defined"
    exit 2;
fi


liquibase --search-path=/home/root/app/liquibase \
          --logLevel=DEBUG \
          update \
          --url="jdbc:postgresql://${POSTGRESDB_HOST:=postgres_db}:${POSTGRESDB_PORT:=5432}/${POSTGRESDB_DB:=postgres}?currentSchema=public" \
          --changelog-file=changelog/changelog.json \
          --username="${POSTGRESDB_USERNAME:=postgres}" \
          --password="${POSTGRESDB_PASSWORD:=postgres}"