class CreateSubcontractorsAndName < ActiveRecord::Migration
  def self.up
      create_table :subcontractors do |t|
      t.string :name, null: false
      end    
    
      remove_column :subcontractor_at_jobs, :name

      add_column :subcontractor_at_jobs, :subcontractor_id, :integer
      # oh and also a whole bunch of other shit, or it will never work ever!!!...

    end
   
    def self.down
      remove_column :subcontractor_at_jobs, :subcontractor_id
      add_column :subcontractor_at_jobs, :name, :string, null: false
      drop_table :subcontractors

    end

end
