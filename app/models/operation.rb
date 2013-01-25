class Operation < ActiveRecord::Base
  attr_accessible :document_id, :exceptions, :goal, :name, :steps, :worker, :rank, :connections, :connections_attributes

  validates :exceptions, presence: true
  validates :goal, presence: true
  validates :name, presence: true
  validates :steps, presence: true
  validates :worker, presence: true

  validate :order

  belongs_to :document

  has_many :connections, dependent: :destroy
  has_many :inoutputs, through: :connections

  accepts_nested_attributes_for :connections, allow_destroy: true

  private

  def order
    if self.rank.nil?
      self.rank = self.document.operations.count > 0 ? self.document.operations.order(:rank).last.rank + 1 : 1
    end
  end
end
