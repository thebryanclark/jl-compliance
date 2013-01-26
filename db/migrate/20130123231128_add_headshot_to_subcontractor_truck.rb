class AddHeadshotToSubcontractorTruck < ActiveRecord::Migration
  def self.up
    add_attachment :subcontractor_trucks, :headshot
  end

  def self.down
    remove_attachment :subcontractor_trucks, :headshot
  end

end
