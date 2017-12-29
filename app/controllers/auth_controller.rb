class AuthController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: {email: user.email, id: user.id, token: issue_token({id: user.id})}
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end

  def show
    token = request.headers['Authorization']
    begin
      decoded_token = JWT.decode(token, ENV['secret'], true, {algorithm => 'HS256 '})
    rescue JWT::DecodeError
      decoded_token = [{}]
    end
    id = decoded_token[0].id
    user = User.find_by(id: id)
    if user
      render json: {email: user.email, id: user.id}
    else
      render json: {error: "Invalid token"}, status: 401
    end
  end

end
