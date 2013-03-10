class EquipmentNotes < ActiveRecord::Migration
  def change
    add_column :equipment, :notes, :text
  end
end
