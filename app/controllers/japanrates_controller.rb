class JapanratesController < ApplicationController
	def index
		@japanrates = Japanrate.all
	end
end
