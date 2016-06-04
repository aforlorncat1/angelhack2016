class Nom < ActiveRecord::Base
	belongs_to :food
	belongs_to :restaurant
  has_many :votes

  def vote_count
    self.votes.count 
  end

end
