module Mutations
  class CreatePost < BaseMutation
    # TODO: define return fields
    field :post, Types::PostType, null: false
    field :errors, [String], null:false
    
    argument :post_request, Types::Requests::PostAttributes, required: true
       def resolve(post_request:)
         category = Category.find(post_request.category_id)
         
         if category.blank?
          category = Category.new(name: post_request.category)
         end
         
         user = User.find(post_request.user_id)
         post = Post.new(
           title: post_request.title,
           content: post_request.content,
           date: post_request.date,
           user_id: post_request.user_id
         )
    
         post.category = category
         post.user = user
    
         if post.save!
           {
             post: post,
             errors: []
           }
         else
           {
             post: nil,
             errors: post.errors.full_messages
           }
         end
       end
  end
end
