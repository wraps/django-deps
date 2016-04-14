FROM python:3.5

RUN apt-get update && apt-get install -y postgresql-9.4
RUN echo "local all  all               trust" >> /etc/postgresql/9.4/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.4/main/postgresql.conf
RUN /etc/init.d/postgresql start

EXPOSE 5432
