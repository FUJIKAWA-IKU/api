FROM ruby:3.1.2

WORKDIR /self-development
# TODO 名前変更したらここも変える

COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]