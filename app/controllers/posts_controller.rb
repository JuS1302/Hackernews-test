class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  # def create
  #   @comment = Comment.new(comment_params)
  #   @post = Post.find(params[:id])
  #   @comment.post = @post
  #   @comment.post = current_user
  #   if @comment.save
  #     redirect_to root_path
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # private

  # def comment_params
  #   params.require(:comment).permit(:content, :post_id, :current_user_id)
  # end

end
