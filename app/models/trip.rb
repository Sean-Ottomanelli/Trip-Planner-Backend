class Trip < ApplicationRecord
    belongs_to :user
    has_many :destinations, dependent: :destroy
    has_many :markers, through: :destinations
end
