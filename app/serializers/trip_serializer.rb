class TripSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :completed, :markers, :description

  has_many :destinations
  belongs_to :user
end
