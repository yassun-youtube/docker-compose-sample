FROM ruby:2.7.1-alpine

RUN set -x && apk add --no-cache \
                      # for mysql
                      mysql-dev \
                      # for nokogiri
                      build-base \
                      # for tzinfo-data
                      tzdata \
                      yarn
WORKDIR /app

COPY Gemfile Gemfile.lock package.json yarn.lock ./

RUN bundle install
RUN yarn install

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
