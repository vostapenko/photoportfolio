class Painting < ActiveRecord::Base
  attr_accessible :image, :name, :album_id

  belongs_to :album

  validates :name, :album_id,  presence: true

  mount_uploader :image, ImageUploader
end
