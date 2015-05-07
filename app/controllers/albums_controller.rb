class AlbumsController < ApplicationController

	before_action :find_album, :only => [:show, :edit, :update, :destroy]
  # before_action :find_movie, :except => [:index, :create, :new]

	def find_album
	    @album = Album.find_by(id: params["id"])
	end

	def index
		if params["keyword"].present?
			@albums = Album.where("title LIKE '%#{params["keyword"]}%'")	
	    else
	    	@albums = Album.all
	    end
		
		@albums = @albums.order('title asc')
	end

	def show
		@reviews = Review.where("album_id = #{params["id"]}").order("id desc")
		if @album == nil
			redirect_to albums_url, notice: "Album not found."
		end
	end

	def new
		@artists = Artist.order('name')
	end

	def create
		album = Album.new
		album.title = params[:title]
		album.artist_id = params[:artist_id]
		album.year = params[:year]
		album.rating = params[:rating]
		album.album_cover_url = params[:album_cover_url]
		album.save
		redirect_to albums_url
	end

	def edit
	end

	def update
	end

	def destroy
	end



end