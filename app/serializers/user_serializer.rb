class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :trips
  # has_many :destinations, through: :trips
  has_many :markers

  # def destinations
  #   self.object.destinations
  # end
end
