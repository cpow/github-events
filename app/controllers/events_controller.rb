class EventsController < ApplicationController
  def new
  end

  def create
    @event_search = EventSearch.new(event_search_params)
    if @event_search.valid?
      redirect_to event_path(@event_search)
    else
      render :new, notice: "Please fill out all form details"
    end
  end

  def show
  end

  private

  def event_search_params
    params.require(:event_search).permit(:event_type, :user_name, :repo_name)
  end
end
