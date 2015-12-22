class AddColumnToJapanrate < ActiveRecord::Migration
  def change
  	add_column :japanrates, :price1, :float
  	add_column :japanrates, :price2, :float
  	add_column :japanrates, :price3, :float
  	add_column :japanrates, :price4, :float
  end
end
