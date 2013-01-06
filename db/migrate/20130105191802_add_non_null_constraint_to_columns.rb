class AddNonNullConstraintToColumns < ActiveRecord::Migration
  def up
    #Equipment.title non-null
    Equipment.destroy_all(      title: nil)
    change_column :equipment,  :title, :string, 
                                null: false
    #Equipment.subcontractor_id non-null
    Equipment.destroy_all(     subcontractor_id: nil)
    change_column :equipment, :subcontractor_id, :integer, 
                               null: false
    #Scope.title non-null
    Scope.destroy_all(      title: nil)
    change_column :scopes, :title, :string, 
                            null: false
    #Scope.subcontractor_id non-null
    Scope.destroy_all(      subcontractor_id: nil)
    change_column :scopes, :subcontractor_id, :integer, 
                            null: false
    #Subcontractor.name non-null
    Subcontractor.destroy_all(      name: nil)
    change_column :subcontractors, :name, :string, 
                                    null: false
    #Subcontractor.job_id non-null
    Subcontractor.destroy_all(      job_id: nil)
    change_column :subcontractors, :job_id, :integer, 
                                    null: false
    #Subcontractor boolean attributes non-null and default to false
    change_column :subcontractors, :foreman_directs_work, :boolean, 
                                    null: false, default: false
    change_column :subcontractors, :equipment_labeled, :boolean, 
                                    null: false, default: false
    change_column :subcontractors, :employees_work_elsewhere, :boolean, 
                                    null: false, default: false
    #Job.name non-null
    Job.destroy_all(      name: nil)
    change_column :jobs, :name, :string, 
                          null: false
  end

  def down
    change_column :equipment, :title, :string, null: true
    change_column :equipment, :subcontractor_id, :integer, null: true

    change_column :scopes, :title, :string, null: true
    change_column :scopes, :subcontractor_id, :integer, null: true

    change_column :subcontractors, :name, :string, null: true
    change_column :subcontractors, :foreman_directs_work, :boolean, null: true
    change_column :subcontractors, :equipment_labeled, :boolean, null: true
    change_column :subcontractors, :employees_work_elsewhere, :boolean, null: true
    change_column :subcontractors, :job_id, :integer, null: true

    change_column :jobs, :name, :string, null: true
  end
end
