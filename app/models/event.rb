class Event < ActiveRecord::Base
  attr_accessible :description, :name, :wolf_pack_id, :user_id, :date, :start_time, :end_time

  belongs_to :wolf_pack
end
