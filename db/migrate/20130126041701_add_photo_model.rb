class AddPhotoModel < ActiveRecord::Migration
  def change
    remove_attachment :subcontractor_trucks, :headshot

    create_table :photos do |t|
      t.integer :photoable_id, null: false
      t.string :photoable_type, null: false

      t.timestamps
    end

    add_attachment :photos, :image
  end
end
