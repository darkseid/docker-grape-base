#!/bin/sh
bundler exec rake db:create
bundler exec rake db:migrate
bundler exec rake db:seed

exec "$@"
