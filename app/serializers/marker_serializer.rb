class MarkerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :attraction_id, :visited, :user_rating, :urgency, :attraction_name, :attraction_latitude, :attraction_longitude
  
  def attraction_name
    self.object.attraction.name
  end

  def attraction_latitude
    self.object.attraction.latitude
  end

  def attraction_longitude
    self.object.attraction.longitude
  end

  has_many :destinations

end
