class Job < ActiveRecord::Base
  attr_accessible :name

  has_many :subcontractor_at_jobs, inverse_of: :job
  accepts_nested_attributes_for :subcontractor_at_jobs,  allow_destroy: true
  attr_accessible :subcontractor_at_jobs_attributes,     allow_destroy: true

  has_many  :subcontractor_trucks, :through => :subcontractor_at_jobs

  has_many :supplier_trucks, inverse_of: :job
  accepts_nested_attributes_for :supplier_trucks, allow_destroy: true
  attr_accessible :supplier_trucks_attributes,    allow_destroy: true

  validates :name, presence: true

end