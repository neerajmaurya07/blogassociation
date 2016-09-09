class CommentsController < ApplicationController


def create
	@comment = @commentable.comments.new(comment_params)
	@comment.user_id = current_user.id
	@comment.save
	respond_to do |format|
    format.html {redirect_to back}
    format.json { render json: @comment }
  end
end 	

 private
    def set_comment
      @comment = @commentable.comments.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:body , :user_id)
    end
end
