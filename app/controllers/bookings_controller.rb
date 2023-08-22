class BookingsController < ApplicationController
  before_action :set_bookmark, only: :destroy

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking
  end

  def destroy
    @booking.destroylist
    redirect_to robots_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :return_date, :total_price, :user_id, :robot_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
