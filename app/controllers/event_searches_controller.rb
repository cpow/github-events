class EventSearchesController < ApplicationController
  def new
  end

  def create
    @event_search = EventSearch.create(event_search_params)
    if @event_search.save
      redirect_to event_search_path(@event_search)
    else
      render :new, notice: "Please fill out all form details"
    end
  end

  def show
    @event_search = EventSearch.find(params[:id])
  end

  private

  def event_search_params
    params.require(:event_search).permit(:event_type, :user_name, :repo_name, :id)
  end
end
