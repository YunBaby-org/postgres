FROM postgres:13-alpine

EXPOSE 5432/tcp
ENV POSTGRES_PASSWORD_FILE=/run/secrets/postgres-passwd
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=postgres

COPY ./passwd /run/secrets/postgres-passwd
