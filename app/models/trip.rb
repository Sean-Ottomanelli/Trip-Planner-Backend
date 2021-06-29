class Trip < ApplicationRecord
    belongs_to :user
    has_many :destinations
    has_many :markers, through: :destinations
    has_many :attractions, through: :markers
end
