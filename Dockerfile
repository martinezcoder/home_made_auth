FROM ruby:2.2.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV APP_HOME="/ruby-app"
ENV BUNDLE_GEMFILE="$APP_HOME/Gemfile" \
    BUNDLE_JOBS=2 \
    BUNDLE_PATH="/bundle"

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

EXPOSE 3000

