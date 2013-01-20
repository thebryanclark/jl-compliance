class Job < ActiveRecord::Base
  attr_accessible :name

  has_many :subcontractors, inverse_of: :job
  accepts_nested_attributes_for :subcontractors,  allow_destroy: true
  attr_accessible :subcontractors_attributes,     allow_destroy: true

  has_many  :subcontractor_trucks, :through => :subcontractors

  has_many :supplier_trucks, inverse_of: :job
  accepts_nested_attributes_for :supplier_trucks, allow_destroy: true
  attr_accessible :supplier_trucks_attributes,    allow_destroy: true

  validates :name, presence: true

end