class PaintingsController < ApplicationController

  def new
    @painting = Painting.new(album_id: params[:album_id])
  end

  def create
    @painting = Painting.new(params[:painting])
    if @painting.save
      flash[:notise] = "Successfuly created painting."
      redirect_to @painting.album
    else
      render action: 'new'
    end
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update_attributes(params[:painting])
      flash[:notice] = "Successfuly updated painting."
      redirect_to @painting.album
    else
      render action: 'edit'
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    flash[:notice] = "Successfuly destroyed painting."
    redirect_to @painting.album
  end

end
