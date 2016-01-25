Docker MariaDB
==============

DB export
---------
You can create database dumps with the `db_dump` command. There are no credentials necessary to run this command. And you can add custom parameters (e.g. `--no-data`)


* Output dump on STDOUT
  ```
  docker exec <DOCKER-CONTAINER-NAME> db_dump
  ```

* Output dump on STDOUT (with custom parameters)
  ```
  docker exec <DOCKER-CONTAINER-NAME> db_dump --no-data
  ```

* Save dump in file
  ```
  docker exec <DOCKER-CONTAINER-NAME> db_dump > `date +%Y%m%d`.sql
  ```

* Save dump in compressed file
  ```
  docker exec <DOCKER-CONTAINER-NAME> db_dump | gzip -9 > `date +%Y%m%d`.sql.gz
  ```

* Execute a fast dump (nice and without locking tables). There's the risk to get a inconsistent dump.
  ```
  docker exec <DOCKER-CONTAINER-NAME> db_fast_dump
  ```

DB import
---------

To import a database use the following commands

* Import from a sql-file
  ```
  docker exec -i <DOCKER-CONTAINER-NAME> db_import < dump.sql
  ```

* Import from another db container
  ```
  docker exec <SOURCE-DOCKER-CONTAINER-NAME> db_dump | docker exec -i <TARGET-DOCKER-CONTAINER-NAME> db_import
  ```

* ... or even piped through ssh to a remote server
  ```
` docker exec <SOURCE-DOCKER-CONTAINER-NAME> db_dump | ssh user@server "docker exec -i <TARGET-DOCKER-CONTAINER-NAME> db_import"
  ```
