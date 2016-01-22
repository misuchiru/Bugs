class AddColorToTripEvent < ActiveRecord::Migration
  def change
  	add_column :trip_events, :color, :string
  end
end
