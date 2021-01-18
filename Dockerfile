FROM ruby:2.6.3
RUN apt-get update && apt-get install -y \
        build-essential \
        libpq-dev \
        nodejs \
        yarn
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install
COPY . .
CMD ["rails", "s"]