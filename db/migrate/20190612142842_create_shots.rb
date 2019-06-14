# frozen_string_literal: true

class CreateShots < ActiveRecord::Migration[5.2]
  def change
    create_table :shots do |t|
      t.string :title
      t.text :description
      t.string :user_shot
      t.integer :user_id

      t.timestamps
    end
  end
end
