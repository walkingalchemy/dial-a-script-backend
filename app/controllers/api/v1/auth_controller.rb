class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(name: login_params[:name])
    if @user && @user.authenticate(login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { name: @user.name, jwt: token }, status: 202
    else
      render json: { message: "Invalid name or password" }, status: 401
    end
  end

  private

  def login_params
    params.require(:user).permit(:name, :password)
  end

end
