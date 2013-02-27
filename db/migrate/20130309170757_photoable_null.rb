class PhotoableNull < ActiveRecord::Migration
  def up
    change_column :photos, :photoable_id, :integer, null: true
    change_column :photos, :photoable_type, :integer, null: true
  end

  def down
    Photo.delete_all('photoable_id is NULL or photoable_id is NULL')
    change_column :photos, :photoable_id, :integer, null: false
    change_column :photos, :photoable_type, :integer, null: false
  end
end
