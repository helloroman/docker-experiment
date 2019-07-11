FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /helloroman-edu
WORKDIR /helloroman-edu

ADD Gemfile /helloroman-edu/Gemfile
ADD Gemfile.lock /helloroman-edu/Gemfile.lock

RUN bundle install

ADD . /helloroman-edu
