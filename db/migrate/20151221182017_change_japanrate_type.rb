class ChangeJapanrateType < ActiveRecord::Migration
  def change
    change_column :japanrates, :cashrate_buy, :text
    change_column :japanrates, :cashrate_sell, :text
    change_column :japanrates, :sightrate_buy, :text
    change_column :japanrates, :sightrate_sell, :text
  end
end
