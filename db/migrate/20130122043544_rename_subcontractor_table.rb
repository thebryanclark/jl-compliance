class RenameSubcontractorTable < ActiveRecord::Migration
  def change
    rename_table :subcontractors, :subcontractor_at_jobs
  end
end
