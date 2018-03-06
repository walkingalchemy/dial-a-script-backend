class Api::V1::CallsController < ApplicationController

  def index
    @calls = Call.all.select {|call| call.user_id == params[:user_id].to_i}
    render json: @calls
  end

  def show
    @call = Call.find(params[:id])
    render json: @call
  end

  def create
    @call = Call.new(call_params)
    @call.user = current_user
    @phone = Phone.find(phone_params[:phone])
    @call.phone = @phone
    @call.script = Script.find(script_params[:script])
    if @call.save
      render json: @call
    else
      render json: {errors: @call.errors.full_messages}, status: 422
    end
  end

  private
  def call_params
    params.require(:call).permit(:duration, :note, :who, :outcome)
  end

  def phone_params
    params.require(:call).permit(:phone)
  end
  def script_params
    params.require(:call).permit(:script)
  end

end
