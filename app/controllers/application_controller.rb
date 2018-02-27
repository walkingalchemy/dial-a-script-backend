class ApplicationController < ActionController::API

  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, "binding.cry", "HS256")
  end

  def auth_header
    request.headers["Authorization"]
  end

  def decoded_token
    if auth_header
        token = auth_header #header: {'Authorization': 'Bearer JWTTOKEN'}
        begin
          JWT.decode(token, "binding.cry", true, { algorithm: "HS256" })
          byebug
        rescue JWT::DecodeError
          [{}]
        end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]["user_id"]
      @user = User.find(user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: {message: "Please log in"}, status: 401 unless logged_in?
  end
end
