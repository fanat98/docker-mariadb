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

