class Equipment < ActiveRecord::Base
  attr_accessible :title

  belongs_to :subcontractor, inverse_of: :equipment
  attr_accessible :subcontractor_id
  validates :subcontractor, presence: true

  validates               :title, presence: true
  alias_attribute :name,  :title
end
