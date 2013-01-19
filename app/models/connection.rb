class Connection < ActiveRecord::Base

  attr_accessible :operation, :inoutput, :way, :inoutput_attributes

  belongs_to :operation
  belongs_to :inoutput

  accepts_nested_attributes_for :inoutput
end
