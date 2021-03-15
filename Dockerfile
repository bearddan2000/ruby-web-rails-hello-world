# Dockerfile
# gets the docker parent image
FROM ruby:2.6.3

RUN apt-get update && apt-get install -y npm && npm install -g yarn

RUN mkdir -p /var/app
COPY bin /var/app
WORKDIR /var/app

RUN bundle install

CMD ["puma"]

# CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0", "-p", "3000"]
