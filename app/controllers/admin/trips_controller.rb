class Admin::TripsController < ApplicationController
	before_action :authenticate_user!
	def index
		@trips = current_user.trips
	end
	def new
		@trip = Trip.new
	end
	def create
		@trip = Trip.new(trip_params)
		@trip.author = current_user
		if @trip.save
			redirect_to admin_trips_path
		else
			render :new
		end
	end
	def show
		@trip = Trip.find(params[:id])
		@trip_events = @trip.trip_events
	end

	private
	def trip_params
		params.require(:trip).permit(:title)
	end
end
