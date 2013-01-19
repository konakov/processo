class Operation < ActiveRecord::Base
  attr_accessible :document_id, :exceptions, :goal, :name, :steps, :worker

  belongs_to :document

  has_many :connections
  has_many :inoutputs, through: :connections
end
