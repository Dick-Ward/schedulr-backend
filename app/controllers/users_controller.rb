class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    byebug
    user = User.new(user_params)
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(appoinment_params)
    render json: user
  end

  def destroy
    users = User.all
    user = User.find(params[:id])
    user.delete
    render json: users
  end

end
