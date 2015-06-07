class DescriptionsController < ApplicationController

  def new

  end

  def create
    if Tag.find_by("name = '#{params["tag"]}'") == nil
      t = Tag.new
      t.name = params[:tag]
      t.save
    end
    t = Tag.find_by("name = '#{params["tag"]}'")
    if Description.find_by("album_id = #{params[:album_id]} AND tag_id = #{t.id}") != nil
      redirect_to "/albums/#{params[:album_id]}", notice: "This album already has that tag"
    else
      desc = Description.new
      desc.album_id = params[:album_id]
      desc.tag_id = t.id
      desc.save
      redirect_to "/albums/#{params[:album_id]}", notice: "Your tag has been added"
    end
  end

  def increase
    if session[:user_id].present?
      d = Description.find_by("id = #{params["id"]}")
      d.tag_score += 1
      d.save
      redirect_to "/albums/#{d.album_id}"
    else
      redirect_to "/login", notice: "You must be logged in to add input"
    end
  end

  def decrease
    if session[:user_id].present?
      d = Description.find_by("id = #{params["id"]}")
      d.tag_score -= 1
      d.save
      redirect_to "/albums/#{d.album_id}"
    else
      redirect_to "/login", notice: "You must be logged in to add input"
    end
  end

end