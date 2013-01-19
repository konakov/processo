class Inoutput < ActiveRecord::Base
  attr_accessible :body

  has_many :connections
  has_many :operations, through: :connections
end
