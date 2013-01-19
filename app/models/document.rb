class Document < ActiveRecord::Base
  attr_accessible :description, :metrics, :name, :purpose
  has_many :operations
end
