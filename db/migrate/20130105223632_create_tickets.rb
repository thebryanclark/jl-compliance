class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string  :number,    null: false
      t.boolean :approved,  null: false, default: false

      t.timestamps
    end
  end
end
