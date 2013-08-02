class AlbumsController < ApplicationController

  before_filter :get_genre

  def get_genre
     @genre = Genre.find(params[:genre_id])
  end

  def index
     @albums = @genre.albums
  end


  def new 
    @album = Album.new(genre_id: params[:genre_id])
  end

  def create
    @album = @genre.albums.new(params[:album])
    if @album.save
      flash[:notice] = "Successfuly created album."
      redirect_to genre_albums_url
    else
      render action: 'new'
    end
  end

  def edit
    @album = @genre.albums.find(params[:id])
  end

  def update
    @album = @genre.albums.find(params[:id])
    if @album.update_attributes(params[:album])
      flash[:notice] = "Successfuly updated album."
      redirect_to genre_albums_url
    else
      render action: 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    flash[:notice] = "Successfuly destroyed album."
    redirect_to genre_albums_url
  end

end
