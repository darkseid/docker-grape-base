#!/bin/bash
docker-compose run --rm web bundle exec rspec
exit_code=$?
docker-compose down
exit $exit_code