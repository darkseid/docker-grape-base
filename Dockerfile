FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential

ENV APP_HOME /app
RUN mkdir $APP_HOME  
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/  

RUN gem install bundler && bundle install

ADD . $APP_HOME  

EXPOSE 5000
CMD ["bundle", "exec", "shotgun", "config.ru", "--host", "0.0.0.0", "--port", "5000"]