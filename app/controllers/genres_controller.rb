class GenresController < ApplicationController

  before_filter :authenticate_user!, except: [:index]

  def index
     @genres = Genre.find(:all)
  end

  def new
     @genre = Genre.new
  end

  def create
     @genre = Genre.new(params[:genre])
     if @genre.save
       flash[:notice] = "Successfuly created genre."
       redirect_to root_url
     else
       render action: 'new'
     end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update_attributes(params[:genre])
      flash[:notice] = "Successfuly updated genre."
      redirect_to root_url
    else
      render action: 'edit'
    end
  end

  def destroy
    genre = Genre.find(params[:id])
    genre.destroy
    flash[:notice] = "Successfuly destroyed genre."
    redirect_to root_url
  end

end
