class EventsController < ApplicationController
  def index
    @events = Event.order(:id).all
  end
end
