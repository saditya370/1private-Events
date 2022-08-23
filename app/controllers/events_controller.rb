class EventsController < ApplicationController
  before_action :authenticate_user!,only: %i[create new]
  def index
    @events = Event.all
  end
  def show
    @event = Event.find(params[:id])
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(article_params)

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end



  private
  def article_params
    params.require(:event).permit(:event_name,:event_discription,:event_date,:user_id)
  end
end
