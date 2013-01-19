class Operation < ActiveRecord::Base
  attr_accessible :document_id, :exceptions, :goal, :name, :stepts, :worker
end
