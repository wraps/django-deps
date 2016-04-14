FROM python:3.5

RUN apt-get update \
    && apt-get install -y ruby ruby-dev \
    && gem install dpl \
    && wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
