require "bundler/setup"
require "sinatra/activerecord"
require 'ostruct'
require 'tty-prompt'
require "require_all"

require_all "app"

Bundler.require

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)

ActiveRecord::Base.logger= nil