class CreateTripEvents < ActiveRecord::Migration
  def change
    create_table :trip_events do |t|
      t.string :title
      t.integer :trip_id
      t.integer :user_id
      t.string :url

      t.timestamps null: false
    end
  end
end
