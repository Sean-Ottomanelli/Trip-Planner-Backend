class MarkerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :visited, :user_rating, :urgency, :name, :latitude, :longitude, :category


end
