class API::EventsController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!
  before_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Content-Type'
  end

  def create
    registered_application = RegisteredApplication.find_by(url: request.env['HTTP_ORIGIN'])

    Event.create(params[:event])
    @event = registered_application.new(params.require(:registered_application).permit(:name,:url))

  
  end
 
  def show
    @events = @registered_application.events.group_by(&:name)
  end

  private
  def event_params
    params.permit(:event_name)
  end
end