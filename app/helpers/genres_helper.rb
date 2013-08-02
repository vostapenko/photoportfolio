module GenresHelper

  def title_genre_image(genre)
    if genre.albums.first
     if genre.albums.first.paintings.first
      genre.albums.first.paintings.first.image_url(:thumb) 
     else
       "No images in albums"
     end
    else
      "No albums"
    end
  end
end
