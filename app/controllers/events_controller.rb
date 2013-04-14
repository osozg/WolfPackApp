class EventsController < ApplicationController

  def show
    # @wolf_pack = WolfPack.find(params[:wolf_pack_id])
    @event = Event.find(params[:id])
    # if @event.wolf_pack != @wolf_pack
    #   redirect_to events_url(@wolf_pack)
    # end
  end

end
