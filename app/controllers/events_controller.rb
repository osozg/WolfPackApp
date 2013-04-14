class EventsController < ApplicationController
  def index
    # @wolf_pack = WolfPack.find(params[:wolf_pack_id])
    # @events = @wolf_pack.events
  end

  def show
    # @wolf_pack = WolfPack.find(params[:wolf_pack_id])
    @event = Event.find(params[:id])
    # if @event.wolf_pack != @wolf_pack
    #   redirect_to events_url(@wolf_pack)
    # end
  end

  def new
    @event = Event.new

  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_url
  end
end
