class AddPriceUrlToGames < ActiveRecord::Migration
  def change
    add_column :games, :price_url, :string
  end
end
