module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :content, String, null: false
    field :date, String, null: false
    field :user, Types::UserType, null: false,
    description: "This post's author."
    field :comments, [Types::CommentType], null: false, 
    description: "This post's comments."
  end
end
