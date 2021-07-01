class User < ApplicationRecord
    has_many :markers
    has_many :trips
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
