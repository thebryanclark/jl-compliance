class RemoveSupplierModelEtc < ActiveRecord::Migration
  def change
    drop_table :suppliers
    
    remove_column :supplier_trucks, :driver_name
    remove_column :supplier_trucks, :supplier_id
    add_column :supplier_trucks, :job_id, :integer
    add_column :supplier_trucks, :supplier_name, :string
  end
end
