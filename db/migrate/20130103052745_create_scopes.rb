class CreateScopes < ActiveRecord::Migration
  def change
    create_table :scopes do |t|
      t.string :title
      t.integer :subcontractor_id

      t.timestamps
    end
  end
end
