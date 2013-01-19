class NonNullForeignIds < ActiveRecord::Migration
  def change
    change_column :supplier_trucks, :supplier_name, :string, 
                  null: false
    remove_column :subcontractors, :being_supervised
    add_column    :subcontractors, :being_supervised, :boolean,
                  default: false, null: false
    
    change_column :subcontractor_trucks, :subcontractor_id, :integer,
                  null:false  
    change_column :supplier_trucks, :job_id, :integer,
                  null: false
    change_column :tickets, :supplier_truck_id, :integer, 
                  null: false
  end
end
