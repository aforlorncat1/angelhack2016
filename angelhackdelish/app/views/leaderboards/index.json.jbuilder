json.array!(@leaderboards) do |leaderboard|
  json.extract! leaderboard, :id, :ranked_type, :food_id, :start_date, :end_date
  json.url leaderboard_url(leaderboard, format: :json)
end
