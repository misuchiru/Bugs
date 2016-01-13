class JapanWeathersController < ApplicationController
	def index
		@weathers = JapanWeather.all
		respond_to do |format|
			format.html
			format.json { render json: @weathers }
		end 
	end
end
