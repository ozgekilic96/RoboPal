class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = Booking.joins(:robot).where(robot: { user_id: @user.id })
    @robots = @user.robots
  end
end
