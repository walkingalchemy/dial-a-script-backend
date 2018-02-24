class Api::V1::OfficesController < ApplicationController

  def index
    byebug
    @offices = Office.all.select do |office|
      office.organization_id == params[:organization_id].to_i
    end
    render json: @offices
  end

  def show
    @office = Office.find(params[:id])
    render json: @office
  end

  def create

  end

  def update

  end

end
