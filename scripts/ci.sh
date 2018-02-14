#!/bin/bash
# Usage: scripts/ci [setup]
set -e

bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed

bundle exec rspec $2