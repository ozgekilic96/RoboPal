class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @user = current_user
    @robot = Robot.find(params[:robot_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @robot = Robot.find(params[:robot_id])
    @booking = @robot.bookings.build(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to user_path(@user), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user), notice: "Booking was successfully deleted."
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :return_date, :total_price, :user_id, :robot_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
