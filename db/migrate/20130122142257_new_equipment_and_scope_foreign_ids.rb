class NewEquipmentAndScopeForeignIds < ActiveRecord::Migration
  def change
    rename_column :equipment, :subcontractor_id, :subcontractor_at_job_id
    rename_column :scopes, :subcontractor_id, :subcontractor_at_job_id

  end
end
