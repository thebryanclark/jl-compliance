class NonNullableForeignIdThisIsRidiculous < ActiveRecord::Migration
  def up
    SubcontractorAtJob.reset_column_information
    
    SubcontractorAtJob.all.each do |saj|
      saj.subcontractor_id = 1
      saj.save!
    end
    
    change_column :subcontractor_at_jobs, :subcontractor_id, :integer, null: false
  end

  def down
    change_column :subcontractor_at_jobs, :subcontractor_id, :integer, null: false
  end
end
