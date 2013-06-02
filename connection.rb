require 'sqlite3'
require 'active_record'

config = YAML.load_file(File.expand_path('../database.yml', __FILE__))
ActiveRecord::Base.establish_connection(config["db"]["development"])

Dir.glob(File.expand_path("../models/*.rb", __FILE__)).each { |f| require f }
