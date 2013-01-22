class Subcontractor < ActiveRecord::Base
  attr_accessible :name

  has_many :subcontractor_at_jobs, inverse_of: :subcontractor
  accepts_nested_attributes_for :subcontractor_at_jobs,  allow_destroy: true
  attr_accessible :subcontractor_at_jobs_attributes,     allow_destroy: true

  has_many :subcontractor_trucks, inverse_of: :subcontractor
  accepts_nested_attributes_for :subcontractor_trucks,  allow_destroy: true
  attr_accessible :subcontractor_trucks_attributes,     allow_destroy: true

  has_many :jobs, :through => :subcontractor_at_jobs

  validates :name, presence: true    
end