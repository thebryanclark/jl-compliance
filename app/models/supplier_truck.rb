class SupplierTruck < ActiveRecord::Base
  attr_accessible :driver_name, :plate

  has_many :tickets
  accepts_nested_attributes_for :tickets, allow_destroy: true
  attr_accessible :tickets_attributes,    allow_destroy: true

  belongs_to  :supplier, inverse_of: :supplier_trucks
  attr_accessible :supplier_id
  validates :supplier, presence: true

  validates               :plate, presence: true
  alias_attribute :name,  :plate
end