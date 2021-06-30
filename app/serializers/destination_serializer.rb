class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :marker_id, :trip_name, :marker_visited, :marker_user_rating, :marker_urgency, :attraction_name, :attraction_latitude, :attraction_longitude

  def marker_visited
    self.object.marker.visited
  end

  def marker_user_rating
    self.object.marker.user_rating
  end

  def marker_urgency
    self.object.marker.urgency
  end

  def attraction_name
    self.object.marker.attraction.name
  end

  def attraction_latitude
    self.object.marker.attraction.latitude
  end

  def attraction_longitude
    self.object.marker.attraction.longitude
  end

  def trip_name
    self.object.trip.name
  end

end