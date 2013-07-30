class Genre < ActiveRecord::Base
  attr_accessible :name
  
  has_many :albums, dependent: :destroy

  validates :name, presence: true
end
