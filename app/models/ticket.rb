class Ticket < ActiveRecord::Base
  attr_accessible :approved, :number

  belongs_to :supplier_truck, inverse_of: :tickets
  attr_accessible :supplier_truck_id
  validates :supplier_truck, presence: true  # causing problems with rails_admin?

  validates               :number, presence: true
  alias_attribute :name,  :number
end
