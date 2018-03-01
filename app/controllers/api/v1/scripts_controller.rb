class Api::V1::ScriptsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    @scripts = Script.all
    render json: @scripts
  end

  def show
    @script = Script.find(params[:id])
    render json: @script
  end

  def create
    @organization = Organization.find_or_create_by({name: organization_params[:organization]})
    @office = Office.find_or_create_by({title: office_params[:title]}) do |office|
      office.organization = @organization
    end
    @phone = Phone.find_or_create_by({digits: phone_params[:phone]}) do |phone|
      phone.office = @office
    end

    @script = Script.new(script_params)
    @script.user = current_user
    byebug
    if @script.valid?
      @script.save
      @script.phones << @phone
      render json: @script
    else
      render json: {error: "failed to create script"}.to_json
    end
  end

  def update

  end

  def destroy

  end

  private
  def script_params
    params.require(:script).permit(:title,:body,:description)
  end

  def user_params

  end

  def phone_params
    params.require(:script).permit(:phone)
  end

  def office_params
    params.require(:script).permit(:title)
  end

  def organization_params
    params.require(:script).permit(:organization)
  end

end
