class Post < ApplicationRecord
    validates :title, :content, presence: true
    validates :title, uniqueness: true 
    belongs_to :user
    belongs_to :category
    has_many :post_tags
    has_many :comments
    has_many :tags, through: :post_tags
end
