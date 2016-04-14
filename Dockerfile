FROM python:3.5

RUN apt-get update && apt-get install -y ruby ruby-dev && gem install dpl
EXPOSE 5432
