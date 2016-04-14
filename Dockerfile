FROM python:3.5

RUN apt-get update && apt-get install -y postgresql-9.4 postgresql-client-9.4 postgresql-contrib-9.4 python3-dev

USER postgres
RUN /etc/init.d/postgresql start

# Expose the PostgreSQL port
EXPOSE 5432
