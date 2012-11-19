class Operation < ActiveRecord::Base
  attr_accessible :name, :goal, :instruction, :in, :out
end
