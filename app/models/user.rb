class User < ApplicationRecord
    has_many :markers, dependent: :destroy
    has_many :destinations, through: :trips
    has_many :trips, dependent: :destroy
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end