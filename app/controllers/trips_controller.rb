class TripsController < ApplicationController
before_action :authenticate_user!

  def new
    @trip = Trip.new
  end

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
    @trip = current_user.trips.new(trip_params)
    if @trip.save
      flash[:success] = "Success!"
      redirect_to trip_path(@trip)
    else
      flash[:error] = "Error :("
      redirect_to new_trip_path
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit, alert: "Try again"
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path, notice: "Trip deleted"
  end

  private
    def trip_params
      params.require(:trip).permit(:road_id,:date,:time)
    end
end
