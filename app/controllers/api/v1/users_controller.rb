class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]


  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      @user.authenticate(user_params[:password])
      token = encode_token({ user_id: @user.id })
      obj = { name: @user.name, jwt: token }
      render json: obj.to_json, status: 202
    else
      render json: { message: "Invalid name or password" }, status: 401
    end
  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(:name,:password)
  end

end
