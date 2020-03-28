module Types
  class QueryType < Types::BaseObject
    # First describe the field signature:
  field :posts, [PostType], null: true do
    description "Find all posts"
  end

  # Then provide an implementation:
  def post(id:)
    Post.find(id)
  end

  field :post, PostType, null: true do
    description "Find a post by ID"
    argument :id, ID, required: true
  end

  def posts
    Post.all
  end


end
end
