class CreateWolfPacks < ActiveRecord::Migration
  def change
    create_table :wolf_packs do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
