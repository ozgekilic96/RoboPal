class PagesController < ApplicationController

  def homepage
    @user = current_user
  end

end
