class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :rating
      t.string :review_url
      t.string :platforms
      t.string :genres
      t.float :time_to_beat_main
      t.float :time_to_beat_100
      t.string :time_to_beat_url
      t.float :price
      t.string :price_url
      t.string :trailer_url
      t.text :summary

      t.timestamps null: false
    end
  end
end
