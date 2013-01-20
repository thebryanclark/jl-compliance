class SupplierTruck < ActiveRecord::Base
  attr_accessible :supplier_name, :plate

  has_many :tickets, inverse_of: :supplier_truck
  accepts_nested_attributes_for :tickets, allow_destroy: true
  attr_accessible :tickets_attributes,    allow_destroy: true

  belongs_to  :job, inverse_of: :supplier_trucks
  attr_accessible :job_id
  validates :job, presence: true

  validates               :supplier_name, presence: true
  validates               :plate, presence: true
  alias_attribute :name,  :plate
end