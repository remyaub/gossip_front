class User < ApplicationRecord
    has_secure_password 
    has_many :gossips
    validates :password, presence: true
end
