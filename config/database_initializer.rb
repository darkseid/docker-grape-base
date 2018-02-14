require 'yaml'
require 'active_record'
require 'erb'

env = ENV['RACK_ENV'] || 'development'
db_config = YAML.load(ERB.new(IO.read('config/database.yml')).result)[env]

ActiveRecord::Base.establish_connection(db_config)