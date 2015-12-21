class CreateJapanrates < ActiveRecord::Migration
  def change
    create_table :japanrates do |t|
      t.text :url
      t.float :cashrate_buy
      t.float :cashrate_sell
      t.float :sightrate_buy
      t.float :sightrate_sell

      t.timestamps null: false
    end
  end
end
