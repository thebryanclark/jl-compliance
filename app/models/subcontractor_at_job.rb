class SubcontractorAtJob < ActiveRecord::Base
  attr_accessible :foreman_name, 
                  :foreman_directs_work, 
                  :being_supervised,
                  :supervised_by,
                  :equipment_labeled, 
                  :employees_work_elsewhere, 
                  :employee_count,
                  :notes

  has_many :equipment, inverse_of: :subcontractor_at_job
  accepts_nested_attributes_for :equipment, allow_destroy: true
  attr_accessible :equipment_attributes,    allow_destroy: true

  has_many :scopes, inverse_of: :subcontractor_at_job
  accepts_nested_attributes_for :scopes,  allow_destroy: true
  attr_accessible :scopes_attributes,     allow_destroy: true

  belongs_to  :job, inverse_of: :subcontractor_at_jobs
  attr_accessible :job_id
  validates :job, presence: true

  belongs_to  :subcontractor, inverse_of: :subcontractor_at_jobs
  attr_accessible :subcontractor_id
  validates :subcontractor, presence: true

  def rails_admin_object_label
    case Thread.current[:abstract_model].try(:model_name)
    when Job.model_name
      subcontractor.name
    when Subcontractor.model_name
      job.name
    else
      "#{self.class.model_name.titleize} ##{id}"
    end
  end
end
