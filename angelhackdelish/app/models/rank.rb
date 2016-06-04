class Rank < ActiveRecord::Base
  belongs_to :nom
  belongs_to :leaderboard
end
