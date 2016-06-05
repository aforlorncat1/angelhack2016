class Vote < ActiveRecord::Base
  belongs_to :nom
  enum vote_type: [:upvote, :downvote]

  def self.votecounttwo(nom_id)
  	# Nom.find(nom_id).votes.upvote.count - Nom.find(nom_id).votes.downvote.count
  	#no decaymode
		Nom.find(nom_id).votes.upvote.where(["created_at > ?", 2.days.ago]).count - Nom.find(nom_id).votes.downvote.where(["created_at > ?", 2.days.ago]).count
  	#decaymode
  end
end
