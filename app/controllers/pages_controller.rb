class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def devs
  end

  def new
    if logged_in?
      redirect_to :controller => 'dashboard', :action => 'index'
    end
  end

  def profile
    @user = current_user
  end

  def edit_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
