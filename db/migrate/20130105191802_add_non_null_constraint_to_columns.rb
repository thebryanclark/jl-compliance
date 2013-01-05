class AddNonNullConstraintToColumns < ActiveRecord::Migration
  def up
    Equipment.destroy_all(title: nil)
    change_column :equipment, :title, :string, null: false
    Equipment.destroy_all(subcontractor_id: nil)
    change_column :equipment, :subcontractor_id, :integer, null: false

    Scope.destroy_all(title: nil)
    change_column :scopes, :title, :string, null: false
    Scope.destroy_all(subcontractor_id: nil)
    change_column :scopes, :subcontractor_id, :integer, null: false

    Subcontractor.destroy_all(name: nil)
    change_column :subcontractors, :name, :string, null: false
    change_column :subcontractors, :foreman_directs_work, :boolean, null: false, default: false
    change_column :subcontractors, :equipment_labeled, :boolean, null: false, default: false
    change_column :subcontractors, :employees_work_elsewhere, :boolean, null: false, default: false
    Subcontractor.destroy_all(job_id: nil)
    change_column :subcontractors, :job_id, :integer, null: false

    Job.destroy_all(name: nil)
    change_column :jobs, :name, :string, null: false
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
