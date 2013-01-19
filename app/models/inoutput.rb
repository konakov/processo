class Inoutput < ActiveRecord::Base
  attr_accessible :body

  validates :body, presence: true

  has_many :connections
  has_many :operations, through: :connections
end
