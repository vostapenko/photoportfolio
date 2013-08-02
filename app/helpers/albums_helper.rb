module AlbumsHelper

  def title_album_image(album)
    if  album.paintings.first
       album.paintings.first.image_url(:thumb)
    else
      "No images"
    end
  end

end
