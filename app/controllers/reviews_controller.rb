class ReviewsController < ApplicationController

	def create
	    r = Review.new
	    r.album_id = params[:album_id]
	    r.rating = params[:rating]
	    r.desc = params[:desc]
	    r.user_id = cookies["user_id"]
	    r.save
	    redirect_to "/albums/#{r.album_id}"
	end

end
