FROM mysql:5.6.28

COPY sql/ /docker-entrypoint-initdb.d/
