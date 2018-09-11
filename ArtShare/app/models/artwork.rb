# == Schema Information
#
# Table name: artworks
#
#  id        :bigint(8)        not null, primary key
#  title     :string
#  image_url :string
#  artist_id :integer
#

class Artwork < ApplicationRecord
  validates :artist_id, :title, :image_url, presence: true, uniqueness: true
  
  has_many :shares,
  primary_key: :id, 
  foreign_key: :artwork_id, 
  class_name: :ArtworkShare
  
  belongs_to :artist,
  primary_key: :id, 
  foreign_key: :artist_id, 
  class_name: :User  
  
  has_many :shared_viewers,
  through: :shares,
  source: :viewer
   
end
