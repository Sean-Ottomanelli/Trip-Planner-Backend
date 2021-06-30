class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :latitude, :longitude
end
