FROM ruby:2.6-alpine

RUN apk add build-base
RUN gem install jekyll

#RUN mkdir /var/jekyllbuild
WORKDIR /var/jekyllbuild

CMD ["jekyll", "build"]
