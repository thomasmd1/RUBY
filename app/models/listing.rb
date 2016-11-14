class Listing < ApplicationRecord
  validates_presence_of :title, :description, :picture
  belongs_to :category
  mount_uploader :picture, PictureUploader
end
