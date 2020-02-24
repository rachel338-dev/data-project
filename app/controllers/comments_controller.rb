class CommentsController < ApplicationController

 
def create
  @post = comment.post 
  @comment = Comment.new(comment_params)
  
  if @comment.save
   # flash[:success] = "Comment successfully added"
    redirect_to comments_path(@comment)
  else 
    @user = User.all.map { |user| [user.first_name, user.id] }
    render 'posts/show'
  end
end


private
def comment_params
    params.require(:comment).permit(:content, :date, :user_id, :post_id)
  end 
end
