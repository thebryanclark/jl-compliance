class Job < ActiveRecord::Base
  attr_accessible :name, :subcontractor_ids

  has_many :subcontractors
end
