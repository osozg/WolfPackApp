class HomeController < ApplicationController

  def index
    @wolf_packs = WolfPack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wolf_packs }
    end
  end

end
