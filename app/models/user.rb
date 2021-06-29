class User < ApplicationRecord
    has_many :markers
    has_many :trips
    has_many :attractions, through: :markers    
end
