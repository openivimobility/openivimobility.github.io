FROM ruby:2.3.1

ADD Gemfile /

RUN bundle install
VOLUME /site
WORKDIR /site
ENTRYPOINT ["jekyll"]
CMD ["b"]
