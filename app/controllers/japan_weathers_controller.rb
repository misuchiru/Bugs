class JapanWeathersController < ApplicationController
	def index
		@weathers = JapanWeather.all
	end
end
