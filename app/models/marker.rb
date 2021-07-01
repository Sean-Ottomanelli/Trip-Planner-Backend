class Marker < ApplicationRecord
    belongs_to :user
    has_many :destinations
    has_many :trips, through: :destinations
end
