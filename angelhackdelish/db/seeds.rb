# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Food.create(name:"Nasi Lemak", description:"not available")
Food.create(name:"Char Kuey Teow", description:"not available")
Food.create(name:"Sushi", description:"not available")
Food.create(name:"Steak", description:"not available")
Food.create(name:"Chicken Burger", description:"not available")

Restaurant.create(name: "McDonalds", address: "1, Jalan Ampang", city: "Kuala Lumpur", state: "Kuala Lumpur")
Restaurant.create(name: "Sushi King", address: "Quill City Mall, Jalan Sultan Ismail", city: "Kuala Lumpur", state: "Kuala Lumpur")
Restaurant.create(name: "TGI Fridays", address: "35, Jalan Bukit Bintang, Bukit Bintang, 55100", city: "Kuala Lumpur", state: "Kuala Lumpur")

Restaurant.find(1).noms.create(food_id: 5, price: 6, vote_count: 0)
Restaurant.find(1).noms.create(food_id: 5, price: 6, vote_count: 0)
Restaurant.find(1).noms.create(food_id: 5, price: 6, vote_count: 0)
Restaurant.find(1).noms.create(food_id: 5, price: 6, vote_count: 0)

Vote.create(nom_id: 1, user_id: 1, vote_type: 0)
Vote.create(nom_id: 2, user_id: 1, vote_type: 1)
Vote.create(nom_id: 3, user_id: 1, vote_type: 0)
Vote.create(nom_id: 1, user_id: 1, vote_type: 1)
Vote.create(nom_id: 1, user_id: 1, vote_type: 0)
Vote.create(nom_id: 1, user_id: 1, vote_type: 1)
Vote.create(nom_id: 1, user_id: 1, vote_type: 0)
Vote.create(nom_id: 1, user_id: 1, vote_type: 0)

100.times.do
	nomrandom = [0, 1].sample
	voterandom = [0, 1].sample
	Vote.create(nom_id: nomrandom, user_id: 1, vote_type: voterandom)
end