class Api::V1::CallsController < ApplicationController

  def index
    @calls = Call.all
    render json: @calls
  end

  def show
    @call = Call.find(params[:id])
    render json: @call
  end

  def create
    @call = Call.new(params)

    if @call.save
      render json: @call
    else
      render json: {errors: @call.errors.full_messages}, status: 422
    end
  end


end
