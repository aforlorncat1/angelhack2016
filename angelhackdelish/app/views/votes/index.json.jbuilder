json.array!(@votes) do |vote|
  json.extract! vote, :id, :nom_id, :vote_type
  json.url vote_url(vote, format: :json)
end
