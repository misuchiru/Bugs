class Admin::JapanWeathersController < ApplicationController
	before_action :authenticate_user!
	before_action :admin_required

	def index
		@weathers = JapanWeather.all
	end
	def new
		@weather = JapanWeather.new
	end
	def create
		@weather = JapanWeather.new(weather_params)
		if @weather.save
			redirect_to admin_japan_weathers_path
		else
			render :new
		end
	end
	def edit
		@weather = JapanWeather.find(params[:id]) 
	end
	def update
		@weather = JapanWeather.find(params[:id])
		if @weather.update(weather_params)
			redirect_to edit_admin_japan_weather_path
		else
			render :edit
		end
	end
	def destroy
		@weather = JapanWeather.find(params[:id])
		@weather.destroy
		redirect_to admin_japan_weathers_path
	end

	private

	def weather_params
		params.require(:japan_weather).permit(:city_name, :url)
	end
end
