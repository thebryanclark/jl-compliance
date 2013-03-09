class SupervisedBy < ActiveRecord::Migration
  def change
    add_column :subcontractor_at_jobs, :supervised_by, :string
  end
end
