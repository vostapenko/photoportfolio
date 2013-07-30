module GenresHelper

  def title_genre_image(genre)
    if  genre.albums.first
      genre.albums.first.paintings.first.image_url(:thumb) 
    else
      "No images in albums."
    end
  end
end
