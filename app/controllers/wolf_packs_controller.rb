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

  # def upvote_resource
  #   @wolf_pack = WolfPack.find params[:id]
  #   @answer = Answer.find params[:answer_id]
  #   @answer.update_attribute(:votes, @answer.votes+1)
  #   render nothing: true
  # end

  # def downvote_resource
  #   @wolf_pack = WolfPack.find params[:id]
  #   @answer = Answer.find params[:answer_id]
  #   @answer.update_attribute(:votes, @answer.votes-1)
  #   render nothing: true
  # end

  def add_answer
    @wolf_pack = WolfPack.find params[:id]
    Answer.create params[:answer]
    redirect_to @wolf_pack
  end

  def upvote_answer
    @wolf_pack = WolfPack.find params[:id]
    @answer = Answer.find params[:answer_id]
    @answer.update_attribute(:votes, @answer.votes+1)
    render text: "$('#answer_#{@answer.id}_votes').text(#{@answer.votes});"
  end

  def downvote_answer
    @wolf_pack = WolfPack.find params[:id]
    @answer = Answer.find params[:answer_id]
    @answer.update_attribute(:votes, @answer.votes-1)
    render text: "$('#answer_#{@answer.id}_votes').text(#{@answer.votes});"
  end

  def add_event
    @wolf_pack = WolfPack.find params[:id]
    event = @wolf_pack.events.create params[:event]
    resource = Resource.new category: "event", description: event.name, url: event.id
    @wolf_pack.resources.push resource
    redirect_to @wolf_pack
  end

end
