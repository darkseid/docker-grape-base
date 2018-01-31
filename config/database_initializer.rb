require 'yaml'
require 'active_record'

db_config = YAML::load(File.open('config/database.yml'))['development']
ActiveRecord::Base.establish_connection(db_config)
