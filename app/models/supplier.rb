class Supplier < ActiveRecord::Base
  attr_accessible :name

  belongs_to  :job, inverse_of: :suppliers
  attr_accessible :job_id
  validates :job, presence: true

  has_many :supplier_trucks
  accepts_nested_attributes_for :supplier_trucks, allow_destroy: true
  attr_accessible :supplier_trucks_attributes,    allow_destroy: true

  validates :name, presence: true
end
