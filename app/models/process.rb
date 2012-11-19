class Process < ActiveRecord::Base
  attr_accessible :name, :goal, :person_id, :organization_id
end
