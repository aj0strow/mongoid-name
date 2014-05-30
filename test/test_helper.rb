ENV['RACK_ENV'] = 'test'

require 'mongoid'
require 'mongoid-name'
require 'minitest/autorun'
require 'database_cleaner'

Mongoid.load!(File.expand_path('../mongoid.yml', __FILE__))

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean
