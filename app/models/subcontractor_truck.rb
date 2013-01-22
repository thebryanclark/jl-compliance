class SubcontractorTruck < ActiveRecord::Base
  attr_accessible :driver_name, :plate

  belongs_to :subcontractor_at_job, inverse_of: :subcontractor_trucks
  attr_accessible :subcontractor_at_job_id
  validates :subcontractor_at_job, presence: true

  validates               :plate, presence: true
  alias_attribute :name,  :plate
end
