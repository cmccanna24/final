class ReviewsController < ApplicationController

	def increase
    if session[:user_id].present?
      r = Review.find_by("id = #{params["id"]}")
      r.score += 1
      r.save
      redirect_to "/albums/#{r.album_id}"
    else
      redirect_to "/login", notice: "You must be logged in to add input"
    end
  end

  def decrease
    if session[:user_id].present?
      r = Review.find_by("id = #{params["id"]}")
      r.score -= 1
      r.save
      redirect_to "/albums/#{r.album_id}"
    else
      redirect_to "/login", notice: "You must be logged in to add input"
    end
  end


	def create
	    r = Review.new
	    r.album_id = params[:album_id]
	    r.rating = params[:rating]
	    r.desc = params[:desc]
	    r.user_id = session["user_id"]
	    r.save
	    a = Album.find_by("id = #{r.album_id}")
	    reviews = Review.where("album_id = #{r.album_id}")
	    total_stars = 0
	    review_count = 0
	    reviews.each do |review|
	    	total_stars += review.rating
	    	review_count += 1
	    end
	    a.rating = total_stars / review_count
	    a.rating_count = review_count
	    a.save
	    redirect_to "/albums/#{r.album_id}"
	end

end
