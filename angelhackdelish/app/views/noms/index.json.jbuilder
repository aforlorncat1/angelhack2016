json.array!(@noms) do |nom|
  json.extract! nom, :id, :price, :votecount, :restaurant_id, :food_id
  json.url nom_url(nom, format: :json)
end
