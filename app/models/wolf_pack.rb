class WolfPack < ActiveRecord::Base
  attr_accessible :location, :name
  default_scope order: [:location, :name]

  has_many :events, dependent: :destroy
  has_many :resources, dependent: :destroy
  has_and_belongs_to_many :users

  def title
    "[#{location}] #{name}"
  end
end
