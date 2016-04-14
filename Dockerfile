FROM python:3.5

RUN apt-get update && apt-get install -y postgresql-9.4 postgresql-client-9.4 postgresql-contrib-9.4 python3-dev

# Expose the PostgreSQL port
EXPOSE 5432
