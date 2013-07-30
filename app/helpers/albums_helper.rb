module AlbumsHelper

  def title_album_image(albums)
    if  albums.paintings.first
       albums.paintings.first.image_url(:thumb)
    else
      "No images in album"
    end
  end

end
