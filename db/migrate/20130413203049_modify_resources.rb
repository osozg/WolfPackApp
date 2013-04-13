class ModifyResources < ActiveRecord::Migration
  def up
    change_table :resources do |t|
      t.rename :name, :category
      t.string :url
      t.integer :user_id
      t.integer :votes
    end
  end

  def down
    change_table :resources do |t|
      t.rename :category, :name
      t.remove :url
      t.remove :user_id
      t.remove :votes
    end
  end
end
