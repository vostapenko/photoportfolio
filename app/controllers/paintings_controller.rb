class PaintingsController < ApplicationController

  before_filter :authenticate_user!, except: [:index]
  before_filter :get_album

  def get_album
    @album = Album.find(params[:album_id])
  end

  def index
     @paintings = @album.paintings
  end

  def show
     @painting = @album.paintings.find(params[:id])
  end

  def new
    @painting = Painting.new(album_id: params[:album_id])
  end

  def create
    @painting = @album.paintings.new(params[:painting])
    if @painting.save
      flash[:notise] = "Successfuly created painting."
      redirect_to album_paintings_url
    else
      render action: 'new'
    end
  end

  def edit
    @painting = @album.paintings.find(params[:id])
  end

  def update
    @painting = @album.paintings.find(params[:id])
    if @painting.update_attributes(params[:painting])
      flash[:notice] = "Successfuly updated painting."
      redirect_to album_paintings_url
    else
      render action: 'edit'
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    flash[:notice] = "Successfuly destroyed painting."
    redirect_to album_paintings_url
  end

end
