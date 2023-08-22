class RobotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def destroy
    @robot = Robot.find(params[:id])
    @robot.destroy
    redirect_to robots_path
  end
end
