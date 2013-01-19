class Document < ActiveRecord::Base
  attr_accessible :description, :metrics, :name, :purpose, :operations_attributes
  has_many :operations

  accepts_nested_attributes_for :operations
end
