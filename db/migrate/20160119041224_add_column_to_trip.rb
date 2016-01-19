class AddColumnToTrip < ActiveRecord::Migration
  def change
  	add_column :trips, :start_day, :datetime
  	add_column :trips, :end_day, :datetime
  end
end
