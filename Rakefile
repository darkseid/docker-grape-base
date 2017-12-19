require 'active_record'
require 'yaml'

namespace :db do

  db_config       = YAML::load(File.open('config/database.yml'))
  db_config_admin = db_config.merge({'database' => 'postgres', 'schema_search_path' => 'public'})

  desc "Create the database"
  task :create do
    ActiveRecord::Base.establish_connection(db_config_admin)
    ActiveRecord::Base.connection.create_database(db_config["database"])
    puts "Database created."
  end

  desc "Migrate the database"
  task :migrate do
    ActiveRecord::Base.establish_connection(db_config)
    ActiveRecord::Schema.define do
      self.verbose = true # or false

      create_table(:tasks, force: true) do |t|
        t.string      :title,       null: false
        t.text        :description, null: false
        t.datetime    :created_at,  null: false
      end
    end

    puts "Database migrated."
  end
end
