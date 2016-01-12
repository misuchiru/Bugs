class CreateJapanWeathers < ActiveRecord::Migration
  def change
    create_table :japan_weathers do |t|
      t.text :url
      t.text :city_name

      t.timestamps null: false
    end
  end
end
