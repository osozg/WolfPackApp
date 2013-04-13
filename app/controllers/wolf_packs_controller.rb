class WolfPacksController < ApplicationController

  def new
    @wolf_pack = WolfPack.new
  end

  def create
    @wolf_pack = WolfPack.new params[:wolf_pack]
    if @wolf_pack.save
      redirect_to @wolf_pack, notice: 'Wolf pack was successfully created.'
    else
      render action: "new"
    end
  end

  def show
    @wolf_pack = WolfPack.find params[:id]
  end

  def join
    @wolf_pack = WolfPack.find params[:id]
    @wolf_pack.users.push @user
    redirect_to @wolf_pack
  end

  def leave
    @wolf_pack = WolfPack.find params[:id]
    @wolf_pack.users.delete @user
    redirect_to @wolf_pack
  end

  def add_resource
    @wolf_pack = WolfPack.find params[:id]
    @wolf_pack.resources.create params[:resource]
    redirect_to @wolf_pack
  end


end
