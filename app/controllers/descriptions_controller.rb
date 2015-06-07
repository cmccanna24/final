class DescriptionsController < ApplicationController

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