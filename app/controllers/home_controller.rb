class HomeController < ApplicationController

  def index
    @wolf_packs = WolfPack.all
  end

end
