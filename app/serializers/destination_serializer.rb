class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :marker_id

  # def marker_visited
  #   self.object.marker.visited
  # end

  # def marker_user_rating
  #   self.object.marker.user_rating
  # end

  # def marker_urgency
  #   self.object.marker.urgency
  # end

  # def marker_name
  #   self.object.marker.name
  # end

  # def marker_latitude
  #   self.object.marker.latitude
  # end

  # def marker_longitude
  #   self.object.marker.longitude
  # end

  # def trip_name
  #   self.object.trip.name
  # end

  belongs_to :marker
  # belongs_to :trip

end