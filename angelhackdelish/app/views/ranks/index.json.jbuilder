json.array!(@ranks) do |rank|
  json.extract! rank, :id, :nom_id, :leaderboard_id, :votecount, :position
  json.url rank_url(rank, format: :json)
end
