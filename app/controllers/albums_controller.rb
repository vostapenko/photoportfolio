class AlbumsController < ApplicationController

  def index
  end

  def show
    @album = Album.find(params[:id])
  end

  def new 
    @album = Album.new(genre_id: params[:genre_id])
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      flash[:notice] = "Successfuly created album."
      redirect_to @album.genre
    else
      render action: 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      flash[:notice] = "Successfuly updated album."
      redirect_to @album.genre
    else
      render action: 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    flash[:notice] = "Successfuly destroyed album."
    redirect_to @album.genre
  end

end
