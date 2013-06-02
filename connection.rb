require 'sqlite3'
require 'active_record'

config = YAML.load_file(File.expand_path('../database.yml', __FILE__))["db"]["development"]

if config["adapter"] == "sqlite3"
  config["database"] = File.expand_path("../#{config["database"]}", __FILE__)
end

ActiveRecord::Base.establish_connection(config)
Dir.glob(File.expand_path("../models/*.rb", __FILE__)).each { |f| require f }
