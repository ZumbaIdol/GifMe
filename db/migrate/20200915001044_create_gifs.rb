class CreateGifs < ActiveRecord::Migration[6.0]
  def change
    create_table :gifs do |t|
      t.string :description
      t.references :user
      t.integer :likes, default: 0

      t.timestamps null: false
    end
  end
end
