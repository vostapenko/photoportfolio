class StaticPagesController < ApplicationController
  def home
    @genres = Genre.all
    @albums = Album.all
  end

  def about
  end

  def contact
  end

  def help
  end
end
