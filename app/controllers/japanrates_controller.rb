class JapanratesController < ApplicationController
	def index
		@japanrates = Japanrate.all
		respond_to do |format|
			format.html
			format.json { render json: @japanrates }
		end
	end
end
