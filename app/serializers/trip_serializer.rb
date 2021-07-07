class TripSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :completed, :description, :markers, :destinations

  has_many :destinations
  belongs_to :user
end
