class Attraction < ApplicationRecord
    has_many :markers
    has_many :users, through: :markers
    has_many :destinations, through: :markers
    has_many :trips, through: :destinations
end
