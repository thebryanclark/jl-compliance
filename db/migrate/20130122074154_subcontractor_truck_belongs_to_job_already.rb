class SubcontractorTruckBelongsToJobAlready < ActiveRecord::Migration
  def change
    add_column :subcontractor_trucks, :job_id, :integer
    change_column :subcontractor_trucks, :job_id, :integer, null: false # if this works... really, what the hell?
  end
end
