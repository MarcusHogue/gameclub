json.array!(@games) do |game|
  json.extract! game, :id, :title, :rating, :review_url, :platforms, :genres, :time_to_beat_main, :time_to_beat_100, :time_to_beat_url, :price, :price_url, :trailer_url, :summary
  json.url game_url(game, format: :json)
end
