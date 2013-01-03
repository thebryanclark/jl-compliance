class Subcontractor < ActiveRecord::Base
  attr_accessible :name, 
                  :foreman_name, 
                  :foreman_directs_work, 
                  :equipment_labeled, 
                  :employees_work_elsewhere, 
                  :employee_count,
                  :notes,
                  :job_id

  belongs_to :job
end
