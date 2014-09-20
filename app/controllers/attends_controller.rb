class AttendsController < ApplicationController
  before_action :find_event

  def create
    @attend = @event.attends.build(attend_params)
    @attend.save!
    redirect_to @event
  end

  private

  def find_event
    @event = Event.where(id: params[:event_id]).first if params[:event_id]
  end

  def attend_params
    params.require(:attend).permit(:user_id)
  end
end
