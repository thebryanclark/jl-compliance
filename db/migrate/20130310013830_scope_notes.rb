class ScopeNotes < ActiveRecord::Migration
  def change
    add_column :scopes, :notes, :text
  end
end
