FROM ruby:latest

COPY . /source

WORKDIR /source

RUN rm Gemfile.lock && \
    gem install bundler && \
    bundle install

CMD bundle exec jekyll server --host 0.0.0.0 --watch
