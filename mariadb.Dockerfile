FROM mariadb:focal

COPY mariadb/docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d
