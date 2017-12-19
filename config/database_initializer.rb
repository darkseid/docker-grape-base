require 'yaml'
require 'active_record'

db_config = YAML::load(File.open('config/database.yml'))
puts db_config
# db_config_admin = db_config.merge({'database' => 'postgres', 'schema_search_path' => 'public'})

ActiveRecord::Base.establish_connection(db_config)
