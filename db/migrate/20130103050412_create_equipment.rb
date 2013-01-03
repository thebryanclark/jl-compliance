class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :title
      t.integer :subcontractor_id
      
      t.timestamps
    end
  end
end
