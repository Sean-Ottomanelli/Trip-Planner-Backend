class TripSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :completed

  has_many :destinations
end
