class CreateUsersWolfPacksJoinTable < ActiveRecord::Migration
  def change
    create_table :users_wolf_packs do |t|
      t.integer :user_id
      t.integer :wolf_pack_id
    end
  end
end
