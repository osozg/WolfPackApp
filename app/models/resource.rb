class Resource < ActiveRecord::Base
  attr_accessible :description, :name, :wolf_pack_id

  belongs_to :wolf_pack
end
