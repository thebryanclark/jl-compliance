class Scope < ActiveRecord::Base
  attr_accessible :title,
                  :notes

  belongs_to :subcontractor_at_job, inverse_of: :scopes
  attr_accessible :subcontractor_at_job_id
  validates :subcontractor_at_job, presence: true

  validates               :title, presence: true
  alias_attribute :name,  :title
end
