class EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_event

  def index
    @events = Event.order(:id).all
    @attended_planning_events = current_user.events.planning.order(:id)
    @attended_finished_events = current_user.events.merge(Event.finished).order(:id)
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.organizing_events.build(event_params)
    render 'new' and return unless @event.save
    redirect_to events_path
  end

  def show
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def find_event
    @event = Event.where(id: params[:id]).first if params[:id]
  end

  def event_params
    params.require(:event).permit(:title, :location, :start_at, :end_at, :content)
  end
end
