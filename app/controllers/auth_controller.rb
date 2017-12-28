class AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: {email: user.email, id: user.id}
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end

end
