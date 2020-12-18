class GymShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :image_url, :address
end
