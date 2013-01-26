class SubcontractorTruck < ActiveRecord::Base
  attr_accessible :driver_name, :plate

  attr_accessible   :headshot
  has_attached_file :headshot, 
                    :styles => { :medium => "300x300>", :large => "600x600>" }  
  
  attr_accessor   :delete_headshot
  attr_accessible :delete_headshot
  before_validation { self.headshot.clear if self.delete_headshot == '1' }

  belongs_to :subcontractor, inverse_of: :subcontractor_trucks
  attr_accessible :subcontractor_id
  validates :subcontractor, presence: true

  belongs_to :job, inverse_of: :subcontractor_trucks
  attr_accessible :job_id
  validates :job, presence: true

  validates               :plate, presence: true
  alias_attribute :name,  :plate
end
