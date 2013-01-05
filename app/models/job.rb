class Job < ActiveRecord::Base
  attr_accessible :name

  has_many :subcontractors
  accepts_nested_attributes_for :subcontractors, allow_destroy: true
  attr_accessible :subcontractors_attributes, allow_destroy: true

  validates :name, presence: true
end
