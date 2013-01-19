class Document < ActiveRecord::Base
  attr_accessible :description, :metrics, :name, :purpose
end
