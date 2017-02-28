class PostsController < ApplicationController

  def index
    @post = Post.all
    render json: @post
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



end
