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

  end


end
