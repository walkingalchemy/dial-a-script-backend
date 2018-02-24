class Api::V1::PhonesController < ApplicationController

  def index
    @phones = Phone.all
    render json: @phones
  end

  def show
    @phone = Phone.find(params[:id])
    render json: @phone
  end

  def create

  end

  def update

  end

end
