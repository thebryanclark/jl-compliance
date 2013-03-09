class NotEasilyRemoved < ActiveRecord::Migration
  def change
    add_column :subcontractor_at_jobs, :not_easily_removed, :boolean, 
                                        null: false, default: false
  end
end
