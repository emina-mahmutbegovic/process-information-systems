#!/bin/bash

liquibase --search-path=../liquibase --logLevel=DEBUG update --url="jdbc:postgresql://localhost:5432/postgres?currentSchema=public" --changelog-file=changelog/changelog.json --username=postgres --password=postgres