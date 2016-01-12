class AddColumnToJapanWeather < ActiveRecord::Migration
  def change
  	add_column :japan_weathers, :day1_h, :text
  	add_column :japan_weathers, :day1_l, :text
  	add_column :japan_weathers, :day2_h, :text
  	add_column :japan_weathers, :day2_l, :text
  	add_column :japan_weathers, :day3_h, :text
  	add_column :japan_weathers, :day3_l, :text
  	add_column :japan_weathers, :day4_h, :text
  	add_column :japan_weathers, :day4_l, :text
  	add_column :japan_weathers, :day5_h, :text
  	add_column :japan_weathers, :day5_l, :text
  	add_column :japan_weathers, :day6_h, :text
  	add_column :japan_weathers, :day6_l, :text
  	add_column :japan_weathers, :day7_h, :text
  	add_column :japan_weathers, :day7_l, :text
  end
end
