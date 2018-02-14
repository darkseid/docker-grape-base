require 'yaml'
require 'active_record'
require 'erb'
require 'grape'
require 'active_record'


path = File.expand_path(File.join(File.dirname(__FILE__), "../"))
require File.join(path, "config", "database_initializer.rb")
puts "database initialized"

directories = ['models']

directories.each do |dir|
  all_ruby_files = File.join(path, dir, "**/*.rb")
  Dir[all_ruby_files].each do |file|
    load file
    puts file
  end
end

puts "models loaded"

require File.join(path, "api.rb")
puts "API initialized"
# errors = []
# Dir[all_ruby_files].each do |file|
#   begin
#     load file unless file == File.expand_path(__FILE__)
#   rescue NameError => e
#     errors << file
#   end
# end

# errors.each { |f| load(f) }