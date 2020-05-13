class HomeController < ApplicationController
  def top
  end
  def login
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/posts/index")
    else
      render("home/top")
    end
  end
end
