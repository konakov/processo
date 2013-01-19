class Operation < ActiveRecord::Base
  attr_accessible :document_id, :exceptions, :goal, :name, :steps, :worker, :connections, :connections_attributes

  belongs_to :document

  has_many :connections
  has_many :inoutputs, through: :connections

  accepts_nested_attributes_for :connections
end
