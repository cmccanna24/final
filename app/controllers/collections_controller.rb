class CollectionsController < ApplicationController

  def new
    c = Collection.new
    c.user_id = session[:user_id]
    c.album_id = params[:album_id]
    c.save
    redirect_to "/albums/#{params[:album_id]}", notice: "This album has been added to your collection"
  end

  def destroy
  	a = Album.find_by("id = #{params[:album_id]}")
  	Collection.find_by("user_id = #{session[:user_id]} AND album_id = #{params[:album_id]}").destroy
  	redirect_to "/users/#{session[:user_id]}", notice: "#{a.title} has been removed from your collection"
  end

end