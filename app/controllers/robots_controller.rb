class RobotsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @user = current_user
    if params[:search]
      @robots = Robot.where('LOWER(robot_name) LIKE ?', "%#{params[:search].downcase}%")
                     .order('robot_name ASC')
    else
      @robots = Robot.all
    end
  end

  def category
    @user = current_user
    @category = params[:category]
    @robots = Robot.where('category LIKE ?', "%#{@category}%")
    @users_with_matching_robots = User.joins(:robots).merge(@robots).distinct

    @markers = @users_with_matching_robots.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @user = current_user
    @robot = Robot.find(params[:id])
  end

  def destroy
    @robot = Robot.find(params[:id])
    @robot.destroy
    redirect_to robots_path
  end
end
