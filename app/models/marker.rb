class Marker < ApplicationRecord
    belongs_to :attraction
    belongs_to :user
    has_many :destinations
    has_many :trips, through: :destinations
end
