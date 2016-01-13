class JapanratesController < ApplicationController
	def index
		@japanrates = Japanrate.all.rate
	end
end
