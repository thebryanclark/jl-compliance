class SubcontractorTruck < ActiveRecord::Base
  attr_accessible :driver_name, :plate

  has_many :photos, as: :photoable, inverse_of: :photoable 
  accepts_nested_attributes_for :photos,  allow_destroy: true
  attr_accessible :photos_attributes,     allow_destroy: true

  belongs_to :subcontractor, inverse_of: :subcontractor_trucks
  attr_accessible :subcontractor_id
  validates :subcontractor, presence: true

  belongs_to :job, inverse_of: :subcontractor_trucks
  attr_accessible :job_id
  validates :job, presence: true

  validates               :plate, presence: true
  alias_attribute :name,  :plate
end
