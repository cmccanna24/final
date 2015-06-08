class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user
      if user.authenticate(params[:password])
        session["user_id"] = user.id
        redirect_to root_url, notice: "Welcome back!"
      else
        redirect_to root_url, notice: "Unknown password."
      end
    else
      redirect_to root_url, notice: "Unknown email."
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_url, notice: "Logged out successfully"
  end

end
