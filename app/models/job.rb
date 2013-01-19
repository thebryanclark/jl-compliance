class Job < ActiveRecord::Base
  attr_accessible :name

  has_many :subcontractors
  accepts_nested_attributes_for :subcontractors,  allow_destroy: true
  attr_accessible :subcontractors_attributes,     allow_destroy: true

  has_many :supplier_trucks
  accepts_nested_attributes_for :supplier_trucks, allow_destroy: true
  attr_accessible :supplier_trucks_attributes,    allow_destroy: true

  validates :name, presence: true

  has_many :subcontractor_trucks, through: :subcontractors
end