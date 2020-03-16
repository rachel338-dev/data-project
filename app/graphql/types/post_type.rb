module Types
  class PostType < Types::BaseObject
   field :id, ID, null: false
   field :title, String, null: false
   field :content, String, null: false
   field :date, String, null: false

   #Fields can return other objects: 
   field :user, Types::UserType, null: false,

   # And fields can have their own descriptions: 
   description: "This post's author. "

   # Fields can return lists of other objects:
   field :comments, [Types::CommentType], null: false,
   description: "This post's comments."
  end
end
