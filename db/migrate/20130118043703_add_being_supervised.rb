class AddBeingSupervised < ActiveRecord::Migration
  def change
    add_column :subcontractors, :being_supervised, :boolean
  end
end
