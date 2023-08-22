class RobotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:search]
      @robots = Robot.where('LOWER(robot_name) LIKE ?', "%#{params[:search].downcase}%")
                     .order('robot_name ASC')
    else
      @robots = Robot.all
    end
  end

  def category
    @category = params[:category]
    @robots = Robot.where('category LIKE ?', "%#{@category}%")
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
