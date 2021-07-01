class User < ApplicationRecord
    has_many :markers
    has_many :trips
    has_many :attractions, through: :markers  
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
