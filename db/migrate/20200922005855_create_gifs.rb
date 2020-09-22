class CreateGifs < ActiveRecord::Migration[6.0]
  def change
    create_table :gifs do |t|
      t.string :title
      t.integer :likes, default: 0
      t.references :user
    end
  end
end
