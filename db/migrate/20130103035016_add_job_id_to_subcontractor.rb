class AddJobIdToSubcontractor < ActiveRecord::Migration
  def change
    add_column :subcontractors, :job_id, :integer
  end
end
