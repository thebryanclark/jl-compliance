class SubcontractorTruck < ActiveRecord::Base
  attr_accessible :driver_name, :plate

  belongs_to :subcontractor, inverse_of: :subcontractor_trucks
  attr_accessible :subcontractor_id
  validates :subcontractor, presence: true

  belongs_to :job, inverse_of: :subcontractor_trucks
  attr_accessible :job_id
  validates :job, presence: true

  validates               :plate, presence: true
  alias_attribute :name,  :plate
end
