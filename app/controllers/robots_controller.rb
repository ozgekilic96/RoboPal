class RobotsController < ApplicationController

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
    @robots_in_category = Robot.where(category: @category)
    @markers = []

    @robots_in_category.each do |robot|
      user = robot.user.geocoded_user
      next unless user&.geocoded?

      info_window_content = render_to_string(partial: "info_window", locals: { robot: robot })

      @markers << {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: info_window_content
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
