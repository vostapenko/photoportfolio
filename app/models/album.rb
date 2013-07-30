class Album < ActiveRecord::Base
  attr_accessible :name, :genre_id 

  belongs_to :genre
  has_many :paintings, dependent: :destroy

  validates :name, :genre_id, presence: true
end
