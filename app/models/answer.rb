class Answer < ActiveRecord::Base
  attr_accessible :description, :resource_id, :user_id, :votes

  belongs_to :resource
  belongs_to :user

  default_scope order("votes DESC")

  before_save :default_values

  private

  def default_values
    self.votes ||= 0
  end
end
