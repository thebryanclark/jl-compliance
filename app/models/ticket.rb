class Ticket < ActiveRecord::Base
  attr_accessible :number, :approved_date

  belongs_to :supplier_truck, inverse_of: :tickets
  attr_accessible :supplier_truck_id
  validates :supplier_truck, presence: true 

  validates               :number, presence: true
  alias_attribute :name,  :number
end
