class Document < ActiveRecord::Base
  attr_accessible :description, :operation_id, :metrics, :name, :purpose, :operations_attributes
  has_many :operations, dependent: :destroy

  validates :description, presence: true
  validates :metrics, presence: true
  validates :name, presence: true, uniqueness: true
  validates :purpose, presence: true


  accepts_nested_attributes_for :operations, allow_destroy: true
end
