class CommentsController < InheritedResources::Base
before_action :authenticate_user!
def create
  @lect = Lect.find(params[:lect_id])
  @comment = @lect.comments.create(comment_params)
  @comment.user_id = current_user.id 
  if @comment.save
    redirect_to @lect
  else
    flash[:danger] = "Comment Shouldn't Be Empty"
    redirect_to @lect
  end
end
  private

    def comment_params
      params.require(:comment).permit(:comment_content, :user_id, :lect_id)
    end
end



