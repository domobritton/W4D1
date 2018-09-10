class UsersController < ApplicationController 
  def index
    users = User.all
    render json: users
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else 
      render json: user.errors.full_messages, status: 422
    end 
  end
  
  def update 
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else 
      render json: user.errors.full_messages, status: 422
    end 
    
  end 
  
  def show
    user = User.find(params[:id])
    if user
      render json: user
    else 
      render json: user.errors.full_messages, status: 422
    end 
  end
  
  def destroy
    User.find(params[:id]).destroy
    render plain: "User deleted"
  end
  
  private 
  
  def user_params
    params.require(:user).permit(:username, :email)
  end 
end 