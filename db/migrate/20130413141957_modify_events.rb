class ModifyEvents < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.change :description, :text
      t.datetime :start
      t.datetime :end
    end
  end

  def down
    change_table :events do |t|
      t.change :description, :string
      t.remove :start
      t.remove :end
    end
  end
end
