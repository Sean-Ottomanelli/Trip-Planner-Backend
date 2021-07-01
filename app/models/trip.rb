class Trip < ApplicationRecord
    belongs_to :user
    has_many :destinations
    has_many :markers, through: :destinations
end
