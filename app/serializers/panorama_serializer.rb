class PanoramaSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :created_at

  def image_url
    object.image.url
  end
end
