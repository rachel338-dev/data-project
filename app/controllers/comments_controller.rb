class CommentsController < ApplicationController

 
def create
  @comment = Comment.new(comment_params)
  @post = @comment.post 

  
  if @comment.save
   # flash[:success] = "Comment successfully added"
    redirect_to post_path(@post)
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
