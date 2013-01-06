class Subcontractor < ActiveRecord::Base
  attr_accessible :name, 
                  :foreman_name, 
                  :foreman_directs_work, 
                  :equipment_labeled, 
                  :employees_work_elsewhere, 
                  :employee_count,
                  :notes

  has_many :equipment
  accepts_nested_attributes_for :equipment, allow_destroy: true
  attr_accessible :equipment_attributes,    allow_destroy: true

  has_many :scopes
  accepts_nested_attributes_for :scopes,  allow_destroy: true
  attr_accessible :scopes_attributes,     allow_destroy: true

  has_many :subcontractor_trucks
  accepts_nested_attributes_for :subcontractor_trucks,  allow_destroy: true
  attr_accessible :subcontractor_trucks_attributes,     allow_destroy: true

  belongs_to  :job, inverse_of: :subcontractors
  attr_accessible :job_id
  validates :job, presence: true

  validates :name,  presence: true
end
