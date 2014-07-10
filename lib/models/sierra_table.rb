class SierraTable < ActiveRecord::Base
  self.abstract_class = true
  ActiveRecord::Base.configurations = YAML::load(IO.read('config/database.yml'))
  establish_connection :sierra
end
