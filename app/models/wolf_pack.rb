class WolfPack < ActiveRecord::Base
  attr_accessible :location, :name
  default_scope order: [:location, :name]

  has_many :events
  has_many :resources
  has_and_belongs_to_many :users


  def title
    "[#{location}] #{name}"
  end
end
