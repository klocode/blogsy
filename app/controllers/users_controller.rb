class UsersController < ApplicationController

  def index
    @user = User.all
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, serializer: UserExpandedSerializer
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  # def search
  #   @user = User.find_by(id: params[:id])
  #   render json: @user.posts
  # end


  private

  def user_params
    params.permit(:username, :password, :email, :bio)
  end


end
