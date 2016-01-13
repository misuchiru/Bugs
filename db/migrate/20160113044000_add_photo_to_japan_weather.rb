class AddPhotoToJapanWeather < ActiveRecord::Migration
  def change
  	add_column :japan_weathers, :day1_p, :string
  	add_column :japan_weathers, :day2_p, :string
  	add_column :japan_weathers, :day3_p, :string
  	add_column :japan_weathers, :day4_p, :string
  	add_column :japan_weathers, :day5_p, :string
  	add_column :japan_weathers, :day6_p, :string
  	add_column :japan_weathers, :day7_p, :string
  end
end
