class AddColumnToTripEvent < ActiveRecord::Migration
  def change
  	add_column :trip_events, :start_day, :datetime
  	add_column :trip_events, :end_day, :datetime
  end
end
