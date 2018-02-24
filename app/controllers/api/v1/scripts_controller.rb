class Api::V1::ScriptsController < ApplicationController

  def index
    @scripts = Script.all
    render json: @scripts
  end

  def show
    @script = Script.find(params[:id])
    render json: @script
  end

  def create

  end

  def update

  end

  def destroy

  end

end
