class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def homepage
    @user = current_user
  end

end
