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
    user = User.new(email: params[:email], password: params[:password])
    if user.save
      render json: {email: user.email, id: user.id, token: issue_token({id: user.id})}
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
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
