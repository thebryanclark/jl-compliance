class Job < ActiveRecord::Base
  attr_accessible :name

  has_many :subcontractors
  accepts_nested_attributes_for :subcontractors,  allow_destroy: true
  attr_accessible :subcontractors_attributes,     allow_destroy: true

  has_many :suppliers
  accepts_nested_attributes_for :suppliers, allow_destroy: true
  attr_accessible :suppliers_attributes,    allow_destroy: true

  validates :name, presence: true
end
