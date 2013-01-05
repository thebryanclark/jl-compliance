class Scope < ActiveRecord::Base
  attr_accessible :title

  attr_accessible :subcontractor_id
  belongs_to :subcontractor, :inverse_of => :scopes

  validates :title, presence: true
end
