class UsersController < ApplicationController

  def show
    user = User.find_by("id = #{session[:user_id]}")
    coll = Collection.where("user_id = #{user.id}")
    @albums = []
    coll.each do |c|
      @albums += Album.where("id = #{c.album_id}")
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:email], password: params[:password])
    if @user.save
      redirect_to root_url, notice: "Thanks for signing up."
    else
      render "new"
    end
  end
end
