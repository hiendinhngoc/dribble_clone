class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :response
      t.integer :user_id
      t.integer :shot_id

      t.timestamps
    end
  end
end
