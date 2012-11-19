class Person < ActiveRecord::Base
  attr_accessible :name, :email, :level_id, :organization_id, :active, :information
end
