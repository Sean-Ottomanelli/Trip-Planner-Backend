class Marker < ApplicationRecord
    belongs_to :user
    has_many :destinations, dependent: :destroy
    has_many :trips, through: :destinations
end
