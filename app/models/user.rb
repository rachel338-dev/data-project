class User < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :first_name, :last_name, uniqueness: true 
    has_many :posts
    has_many :comments
end
