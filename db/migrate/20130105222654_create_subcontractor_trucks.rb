class CreateSubcontractorTrucks < ActiveRecord::Migration
  def change
    create_table :subcontractor_trucks do |t|
      t.string :plate, null: false
      t.string :name

      t.timestamps
    end
  end
end
