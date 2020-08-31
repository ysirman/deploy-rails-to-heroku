FROM ruby:2.7.1

# Rails6ではwebpacker がデフォルトになったため、nodejs, yarnも必要
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs postgresql-client
RUN apt-get update && \
    apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn
RUN gem install bundler

# Rails App
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
RUN yarn install
COPY . /myapp
