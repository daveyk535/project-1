# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

burgers = Burger.create(burger_name: 'le grande', price:20.00, protein: 'grass-fed proprietary', bun_type: 'Brioche', grass_fed: true, description: 'Grass-fed proprietary grind, Marin brie, roasted onion, smoked bacon, brioche', special_notes: 'Add sunny-side-up Petaluma egg for $2')

users = User.create(first_name: "Joel", last_name: "Korsunsky", email: "jkorsunsky@cox.net")

reviews = Review.create(patty: 5, bun: 3, bun_patty_ratio: 4, toppings: 3.5, service: 4.5, side: 5, comments: "Killer", burger_Id: 3, user_Id: 2)

restaurant = Restaurant.create(name: "Wayfare Tavern", address: "558 Sacramento st.", city: "San Francisco", state: "CA", zip: "94111", website: "http://wayfaretavern.com", phone: "415-772-9060")
