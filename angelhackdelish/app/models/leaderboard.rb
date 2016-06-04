class Leaderboard < ActiveRecord::Base
  belongs_to :food
  enum ranked_type: [:silver, :gold, :diamond] 

def self.prepareboard
	boardHash = {}
	newBoard = {}
	Food.all.each do |eachfood|
		# eachfood.leaderboard.create(start_date: Time.now)
		# DateTime.now-(4/24.0) 4 hrs
		#
		# this is what needs to happen
		eachfood.noms.all.each do |eachnoms|
		# Go through all food
		# For each food, load all noms as part of it
			currentnomvote = Vote.votecounttwo(eachnoms.id)
		# for each nom, calculate the votecount sor the nom (Vote.votecount(nom))
			boardHash[eachnoms.id] = currentnomvote
		end

		newBoard = Hash[boardHash.sort_by{|k, v| v}.reverse] 
		#FINISHED GETTING ALL NOM FOR THE ONE FOOD

		# push it into hash (nom (key) + votecount (value))
		# h=hash
		# Hash[h.sort_by{|k, v| v}.reverse]
		newleader = Leaderboard.create(ranked_type: "diamond", food_id: eachfood.id)
		currentpos = 1
		newBoard.each do |key, value|
				Rank.create(nom_id: key, leaderboard_id: newleader.id, votecount: value, position: currentpos)
				currentpos+=1
		end

		#use h.count to figure out percentiles
		#divide it according to percentiles
		#for each nom create a Rank with leaderboard_id, votecount = v, position = ??
	end
end

def self.showboard(leaderboard_id)
	Leaderboard.find(leaderboard_id)
	#find leaderboard_id, then find Rank where leaderboard_id sorted by position desc
end


#decay = modifyvotecount to take in the decay period

end



#everytime a vote is cast, call prepareboard

#every view of leaderboard, call showboard
