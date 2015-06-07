class AlbumsController < ApplicationController

  before_action :find_album, :only => [:show, :edit, :update, :destroy]

  def find_album
    @album = Album.find_by(id: params["id"])
  end

  def index
  	if params["keyword"].present?
  		@albums = Album.where("title LIKE '%#{params["keyword"]}%'")	
    else
      @albums = Album.all.page(params[:page])
    end
  	
  	@albums = @albums.order('title asc').limit(100)
  end

  def show
  	@reviews = Review.where("album_id = #{params["id"]}").order("score desc")
  	if @album == nil
  		redirect_to albums_url, notice: "Album not found."
  	end
  end

  def new
  end

  def create
    if Artist.find_by("name = '#{params["artist"]}'") == nil
      a = Artist.new
      a.name = params[:artist]
      a.save
    end
    artist = Artist.find_by("name = '#{params["artist"]}'")
  	album = Album.new
  	album.title = params[:title]
  	album.artist_id = artist.id
  	album.year = params[:year]
  	album.album_cover_url = params[:album_cover_url]
  	album.save
  	redirect_to albums_url, notice: "Album added successfully"
  end

  def edit
  end

  def update
    if Artist.find_by("name = '#{params["artist"]}'") == nil
      a = Artist.new
      a.name = params[:artist]
      a.save
    end
    artist = Artist.find_by("name = '#{params["artist"]}'")
    @album.title = params[:title]
    @album.artist_id = artist.id
    @album.year = params[:year]
    @album.album_cover_url = params[:album_cover_url]
    if @album.save
      redirect_to albums_url, notice: "Album updated successfully"
    else
      render 'edit'
    end
  end

  def destroy
  end



end