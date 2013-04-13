class Resource < ActiveRecord::Base
  attr_accessible :category, :description, :wolf_pack_id, :url, :user_id, :votes
  default_scope order('created_at DESC')

  belongs_to :wolf_pack
  # has_many :answers

  def answers
    []
  end
end
