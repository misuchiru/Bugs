class Admin::TripEventsController < ApplicationController
	before_action :authenticate_user!
	def index
		@trip = Trip.find(params[:trip_id])
		@trip_events = @trip.trip_events
	end
	def new
		@trip = Trip.find(params[:trip_id])
		@event = @trip.trip_events.new
	end
	def create
		@trip = Trip.find(params[:trip_id])
		@event = @trip.trip_events.new(event_params)
		@event.author = current_user
		if @event.save
			redirect_to admin_trip_trip_events_path(@trip)
		else
			render :new
		end
	end
	def edit
		@trip = Trip.find(params[:trip_id])
		@event = @trip.trip_events.find(params[:id])
	end
	def update
		@trip = Trip.find(params[:trip_id])
		@event = @trip.trip_events.find(params[:id])
		@event.author = current_user
		if @event.update(event_params)
			redirect_to admin_trip_trip_events_path(@trip)
		else
			render :edit
		end
	end
	def destroy
		@trip = Trip.find(params[:trip_id])
		@event = @trip.trip_events.find(params[:id])
		@event.destroy
		redirect_to admin_trip_trip_events_path(@trip)
	end
	def try
		@trip = Trip.find(params[:trip_id])
	end

	private
	def event_params
		params.require(:trip_event).permit(:title, :url, :start_day, :end_day, :color)
	end
end
