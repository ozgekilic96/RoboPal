class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
    @robots = @user.robots
  end
end
