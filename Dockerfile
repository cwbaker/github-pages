FROM ruby:2.7.3
MAINTAINER Charles Baker <charles@sweetsoftware.nz>
COPY Gemfile /github-pages/
RUN apt-get update \
    && gem install jekyll bundler \
    && mkdir -p /github-pages
RUN bundle install --gemfile=/github-pages/Gemfile \
    && bundle update --gemfile=/github-pages/Gemfile
WORKDIR /site
EXPOSE 4000
ENTRYPOINT ["bundle", "exec", "--gemfile=/github-pages/Gemfile"]
CMD ["jekyll", "serve", "--watch", "--force_polling", "--verbose", "--host=0.0.0.0", "--port=4000"]
