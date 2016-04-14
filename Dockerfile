FROM python:3.5

RUN apt-get update && apt-get install -y postgresql-9.4

USER postgres
RUN /etc/init.d/postgresql start

# Expose the PostgreSQL port
EXPOSE 5432

USER root
