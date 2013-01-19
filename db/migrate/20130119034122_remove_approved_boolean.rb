class RemoveApprovedBoolean < ActiveRecord::Migration
  def change
    remove_column :tickets, :approved
  end
end
