FROM ruby:3.1.2

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1
RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /self-development
# TODO 名前変更したらここも変える

COPY Gemfile /self-development/Gemfile
COPY Gemfile.lock /self-development/Gemfile.lock
RUN gem install -v 2.3.7 bundler 
RUN bundle install
COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]