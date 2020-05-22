FROM ubuntu:latest

RUN mkdir /var/jekyll
WORKDIR /var/jekyll

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y curl gnupg
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt install -y ruby ruby-bundler ruby-dev yarn nodejs npm

RUN cd /var/jekyll

COPY Gemfile ./
COPY Gemfile.lock ./

RUN echo '#!/bin/bash' > /root/script.sh
RUN echo "yarn install" >> /root/script.sh
RUN echo "yarn run prod" >> /root/script.sh
RUN echo "yarn run version" >> /root/script.sh
#RUN echo "rm Gemfile.lock" >> /root/script.sh
#RUN echo "bundle install" >> /root/script.sh
RUN echo "bundle exec jekyll build" >> /root/script.sh

RUN npm install -g cross-env
RUN bundle install

RUN echo "$PWD"

CMD ["bash", "/root/script.sh"]
