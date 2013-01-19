class Connection < ActiveRecord::Base

  attr_accessible :operation, :inoutput, :way

  belongs_to :operation
  belongs_to :inoutput
end
