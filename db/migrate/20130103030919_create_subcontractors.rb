class CreateSubcontractors < ActiveRecord::Migration
  def change
    create_table :subcontractors do |t|
      t.string  :name
      t.string  :foreman_name
      t.boolean :foreman_directs_work
      t.boolean :equipment_labeled
      t.boolean :employees_work_elsewhere
      t.integer :employee_count
      t.text    :notes

      t.timestamps
    end
  end
end
