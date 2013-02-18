class AddPhotoCaptions < ActiveRecord::Migration
  def change
    add_column :photos, :caption, :String
  end
end
