class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description
      t.integer :user_id
      t.integer :resource_id
      t.integer :votes

      t.timestamps
    end
  end
end
