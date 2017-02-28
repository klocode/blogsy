class CommentsController < ApplicationController

  def show
    @comment = Comment.where(post_id: params[:id])
    render json: @comment
  end

end
