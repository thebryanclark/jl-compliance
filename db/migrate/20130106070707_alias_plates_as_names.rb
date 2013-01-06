class AliasPlatesAsNames < ActiveRecord::Migration
  # Need to alias truck plate numbers as :name to enable full rails_admin magic, 
  # In order to do that, need to rename old :name as :driver_name
  def change
    rename_column :subcontractor_trucks, :name, :driver_name
    rename_column :supplier_trucks,      :name, :driver_name
  end
end
