require 'yaml'
require 'active_record'
require 'erb'
require 'grape'
require 'active_record'
require 'shoulda-matchers'

path = File.expand_path(File.join(File.dirname(__FILE__), '../'))
require File.join(path, 'config', 'database_initializer.rb')
puts 'database initialized'

directories = ['models', 'services', 'workers']

directories.each do |dir|
  ruby_files = File.join(path, dir, '**/*.rb')
  Dir[ruby_files].each do |file|
    load file
    puts file + ' loaded'
  end
end

puts 'models loaded'

require File.join(path, 'api.rb')
puts 'API initialized'
