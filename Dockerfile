FROM postgres:11.1-alpine
COPY src/docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
