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
	def edit
		@trip = Trip.find(params[:id])
	end
	def update
		@trip = Trip.find(params[:id])
		@trip.author = current_user
		if @trip.update(trip_params)
			redirect_to admin_trips_path
		else
			render :edit
		end
	end
	def show
		@trip = Trip.find(params[:id])
		@trip_events = @trip.trip_events
	end
	def destroy
		@trip = Trip.find(params[:id])
		@trip.destroy
		redirect_to admin_trips_path
	end

	private
	def trip_params
		params.require(:trip).permit(:title, :start_day, :end_day)
	end
end
