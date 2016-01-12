class AddDayToJapanWeather < ActiveRecord::Migration
  def change
  	add_column :japan_weathers, :day1, :text
  	add_column :japan_weathers, :day2, :text
  	add_column :japan_weathers, :day3, :text
  	add_column :japan_weathers, :day4, :text
  	add_column :japan_weathers, :day5, :text
  	add_column :japan_weathers, :day6, :text
  	add_column :japan_weathers, :day7, :text
  end
end
