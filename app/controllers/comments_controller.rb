class CommentsController < ApplicationController
def create
    @comment = Comment.new(comment_params)
    @user = User.all.map { |user| [user.first_name, user.id] }
end

private

def comment_params
    params.require(:comment).permit(:post_id, :date, :user_id, :content)
  end 
end
