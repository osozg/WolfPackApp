class ModifyEventTimes < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.remove :start
      t.remove :end
      t.date :date
      t.string :start_time
      t.string :end_time
    end
  end

  def down
    change_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.remove :date
      t.remove :start_time
      t.remove :end_time
    end
  end
end
