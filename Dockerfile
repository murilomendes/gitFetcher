FROM ruby:2.3.7

RUN apt-get update -qq
RUN apt-get install -y build-essential git curl libpq-dev vim nodejs
RUN apt-get install imagemagick -y

ENV APP_HOME /gitFetcher

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME

RUN bundle update && bundle install

CMD ./start.sh