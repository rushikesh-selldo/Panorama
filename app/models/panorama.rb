class Panorama < ApplicationRecord
  mount_uploader :image, PanoramaUploader
  validates :title, presence: true
end
