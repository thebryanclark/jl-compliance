class SerializeEmployeeNames < ActiveRecord::Migration
  def change
    add_column :subcontractor_at_jobs, :employee_names, :text
  end
end
