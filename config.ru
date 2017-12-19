require 'grape'
require 'active_record'
require './config/database_initializer.rb'
require './models/task.rb'
require './api.rb'

run TaskApp::API