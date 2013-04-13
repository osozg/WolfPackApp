class WolfPacksController < ApplicationController
  # GET /wolf_packs
  # GET /wolf_packs.json
  def index
    @wolf_packs = WolfPack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wolf_packs }
    end
  end

  # GET /wolf_packs/1
  # GET /wolf_packs/1.json
  def show
    @wolf_pack = WolfPack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wolf_pack }
    end
  end

  # GET /wolf_packs/new
  # GET /wolf_packs/new.json
  def new
    @wolf_pack = WolfPack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wolf_pack }
    end
  end

  # GET /wolf_packs/1/edit
  def edit
    @wolf_pack = WolfPack.find(params[:id])
  end

  # POST /wolf_packs
  # POST /wolf_packs.json
  def create
    @wolf_pack = WolfPack.new(params[:wolf_pack])

    respond_to do |format|
      if @wolf_pack.save
        format.html { redirect_to @wolf_pack, notice: 'Wolf pack was successfully created.' }
        format.json { render json: @wolf_pack, status: :created, location: @wolf_pack }
      else
        format.html { render action: "new" }
        format.json { render json: @wolf_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wolf_packs/1
  # PUT /wolf_packs/1.json
  def update
    @wolf_pack = WolfPack.find(params[:id])

    respond_to do |format|
      if @wolf_pack.update_attributes(params[:wolf_pack])
        format.html { redirect_to @wolf_pack, notice: 'Wolf pack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wolf_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wolf_packs/1
  # DELETE /wolf_packs/1.json
  def destroy
    @wolf_pack = WolfPack.find(params[:id])
    @wolf_pack.destroy

    respond_to do |format|
      format.html { redirect_to wolf_packs_url }
      format.json { head :no_content }
    end
  end
end
