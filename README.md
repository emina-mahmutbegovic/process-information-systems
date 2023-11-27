# process-information-systems

## Prerequisite
Before you begin, ensure you have met the following requirements:
- You have installed the latest version of [Docker](https://docs.docker.com/get-docker/).

## Local setup

#### Option 1
### Using docker-compose (the easiest way):
1. Run `docker-compose up db -d`
2. Run `docker-compose up liquibase -d`


#### Option 2
### Migration run and setup:
1. Install Liquibase (version `4.21.0`): https://docs.liquibase.com/start/install/liquibase-macos.html
2. Run the following command:
```shell
liquibase --search-path=./liquibase --logLevel=DEBUG update --url="jdbc:postgresql://localhost:5432/postgres?currentSchema=public" --changelog-file=changelog/changelog.json --username=admin --password=admin
```
OR JUST USE THE `run-migrations.sh` script in the `scripts` directory.


#### Option 3
### Migrations using a docker image and container:
1. In the root of the project run:
```shell 
docker build . -t liquibase --progress=plain --no-cache=true
```
2. Run:
```shell
docker run --network=NETWORK_NAME_OR_ID liquibase
```

To know about the network you need to use in the previous command (`--network`):
You can use the following steps to find out the network on which your DB container is running and then run the Liquibase container on the same network.
1. List all running Docker containers: `docker ps`
2. Use the Database container ID: `docker inspect CONTAINER_ID_OR_NAME`
3. Network ID and/or name will be located under the `"Networks"` section. And use that ID/Name to run the migrations using a docker image.

NOTE: The `docker-compose` file in the `root` directory can also be used for running migrations separately with: `docker-compose up --build liquibase`

## Environment setup

Following env variables must be provided:

- POSTGRESDB_HOST=localhost
- POSTGRESDB_PORT=5432
- POSTGRESDB_DB=postgres
- POSTGRESDB_USERNAME=admin
- POSTGRESDB_PASSWORD=admin
