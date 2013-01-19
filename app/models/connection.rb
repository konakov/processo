class Connection < ActiveRecord::Base

  attr_accessible :operation, :inoutput, :way, :inoutput_attributes, :inoutput_body

  belongs_to :operation
  belongs_to :inoutput

  accepts_nested_attributes_for :inoutput

  def inoutput_body
    self.inoutput.body if inoutput
  end

  def inoutput_body=(body)
    self.inoutput = Inoutput.find_or_create_by_body body
  end
end
