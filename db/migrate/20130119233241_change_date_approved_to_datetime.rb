class ChangeDateApprovedToDatetime < ActiveRecord::Migration
  def change
    change_column :tickets, :approved_date, :datetime
  end
end
