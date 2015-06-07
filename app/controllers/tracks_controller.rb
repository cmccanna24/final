class TracksController < ApplicationController

  def new
  end

  def create
    track = Track.new
    track.album_id = params[:album_id]
    track.name = params[:name]
    track.save
    redirect_to "/albums/#{params[:album_id]}", notice: "Track has been added"
  end

  def edit
  end

  def update
    track = Track.find_by("id = #{params[:id]}")
    track.name = params[:name]
    track.save
    redirect_to "/albums/#{params[:album_id]}", notice: "Track has been updated"
  end

  def destroy
  	track = Track.find_by("id = #{params[:id]}")
  	album_id = track.album_id
  	track.delete
  	redirect_to "/albums/#{album_id}"
  end

end