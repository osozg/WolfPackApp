class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.integer :wolf_pack_id

      t.timestamps
    end
  end
end
