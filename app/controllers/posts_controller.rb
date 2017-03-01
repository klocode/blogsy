class PostsController < ApplicationController

  def index
    if params[:id]
      @user = User.find(params[:id])
      @posts = @user.posts
    else
      @posts = Post.all
    end
    render json: @posts
  end

  def show
    @post = Post.find_by(id: params[:id])
    render json: @post
  end

  def search
    @post = Post.find_by(id: params[:id])
    render json: @post.comments
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    render status: 200
  end

  def upvote
    @post = Post.find(id: params[:id])
    @post.increment!(:upvotes)
    render json: @post
  end


end
