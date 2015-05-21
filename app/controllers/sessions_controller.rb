class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:username])
    if user
      if user.password == params[:password]
        cookies["user_id"] = user.id
        redirect_to root_url, notice: "Welcome back!"
      else
        redirect_to root_url, notice: "Unknown password."
      end
    else
      redirect_to root_url, notice: "Unknown username."
    end
  end

  def destroy
    cookies.delete :user_id
    redirect_to root_url, notice: "Logged out successfully"
  end

end
