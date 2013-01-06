class AddAllTheForeignIds < ActiveRecord::Migration
  def change
    add_column :subcontractor_trucks, :subcontractor_id, :integer

    add_column :suppliers, :job_id, :integer
    add_column :supplier_trucks, :supplier_id, :integer
    add_column :tickets, :supplier_truck_id, :integer

  end
end
