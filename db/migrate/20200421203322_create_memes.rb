class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.text :top_text
      t.text :bottom_text
      t.string :img
      t.integer :user_id

      t.timestamps
    end
  end
end
