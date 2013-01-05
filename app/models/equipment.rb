class Equipment < ActiveRecord::Base
  attr_accessible :title

  attr_accessible :subcontractor_id
  belongs_to :subcontractor, :inverse_of => :equipment

  validates :title, presence: true
end
