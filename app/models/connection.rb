class Connection < ActiveRecord::Base

  attr_accessible :operation_id, :inoutput, :way, :inoutput_attributes, :inoutput_body

  validates :inoutput, presence: true
  validate :way_value


  belongs_to :operation
  belongs_to :inoutput

  accepts_nested_attributes_for :inoutput

  def inoutput_body
    self.inoutput.body if inoutput
  end

  def inoutput_body=(body)
    self.inoutput = Inoutput.find_or_create_by_body body
  end

  private
    def way_value
      if self.way != 'input' and self.way != 'output' or self.way.empty?
        errors.add(:way, "Please enter valid way.")
      end
    end
end
