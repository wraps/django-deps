FROM python:3.5

RUN apt-get update && apt-get install -y postgresql-9.4

USER postgres
RUN /etc/init.d/postgresql start
RUN echo "local all  all               trust" >> /etc/postgresql/9.4/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf

# Expose the PostgreSQL port
EXPOSE 5432

USER root
