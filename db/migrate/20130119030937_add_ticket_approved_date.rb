class AddTicketApprovedDate < ActiveRecord::Migration
  def change
      add_column :tickets, :approved_date, :Date
  end
end
