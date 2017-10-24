require 'bundler'
Bundler.require
require 'active_record'


# require 'rake'
# require 'require_all'


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = nil

require_all 'app'
require_all 'lib'
