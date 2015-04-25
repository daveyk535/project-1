# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(first_name: "Joel", last_name: "Korsunsky", email: "jkorsunsky@cox.net", twitter: "@jimmy", password: "foobar", password_confirmation: "foobar")

users = User.create(first_name: "David", last_name: "Korsunsky", email: "davekorsunsky@gmail.com", twitter: "@phase2mind", password: "foobar", password_confirmation: "foobar")


burgers = Burger.create(burger_name: 'le grande', price:20.00, protein: 'grass-fed proprietary', bun_type: 'Brioche', grass_fed: true, gluten_free: false, description: 'Grass-fed proprietary grind, Marin brie, roasted onion, smoked bacon, brioche', special_notes: 'Add sunny-side-up Petaluma egg for $2', average_score: 29.5, restaurant_id: 1)

burgers = Burger.create(burger_name: 'Drive-in Cheeseburger', price:6.00, protein: 'certified angus', bun_type: 'Acme', grass_fed: false, gluten_free: false, description: '1/3 lb certified angus, double am cheese, griddled onions, pickles, lettuce, tomato, 1000 island, acme bun', special_notes: 'Crazy Daves Double $8.00',average_score: 28.0, restaurant_id: 2)

burgers = Burger.create(burger_name: 'House Made Vegan Burger', price:11.00, protein: 'Vegan', description: 'Brick House Vegan', average_score: 27.0, restaurant_id: 3)

burgers = Burger.create(burger_name: 'Marlowe Burger', price:14.00, protein: 'Certified Angus', bun_type: 'Brioche', grass_fed: true, gluten_free: false, description: 'Carmelized onions, cheddar, bacon, horseradish aioli', special_notes: 'Consistently ranked in SF Top 10', average_score: 26, restaurant_id: 4)

burgers = Burger.create(burger_name: 'Prather Ranch Burger', price:18.00, protein: 'Certified Angus', bun_type: 'Sesame Seed Challah Bun', grass_fed: true, gluten_free: false, description: 'house cut fries & pickle, grilled sesame seed challah bun 13 ', special_notes: 'add white cheddar or Pt. Reyes blue, starbelly bacon, avocado or roasted onions for 2 each', average_score: 25.0, restaurant_id: 5)


# reviews = Review.create(patty: 5, bun: 3, bun_patty_ratio: 4, toppings: 3.5, comments: "Killer", burger_id: 3, user_id: 2)

# "name", "address", "city", "state", "zip", "website", "phone"
restaurants = Restaurant.create(name: "Wayfare Tavern", address: "558 Sacramento st.", city: "San Francisco", state: "CA", zip: "94111", website: "http://wayfaretavern.com", phone: "415-772-9060")

restaurants = Restaurant.create(name: "Garaje", address: "475 3rd st.", city: "San Francisco", state: "CA", zip: "94107", website: "www.garaje475.com", phone: "415-644-0838")

restaurants = Restaurant.create(name: "Brickhouse", address: "426 Brannan st.", city: "San Francisco", state: "CA", zip: "94107", website: "www.brickhousesf.com", phone: "415-369-0222")

restaurants = Restaurant.create(name: "Marlowe", address: "330 Townsend st.", city: "San Francisco", state: "CA", zip: "94107", website: "www.marlowesf.com", phone: "415-974-5599")

restaurants = Restaurant.create(name: "Starbelly", address: "3583 16th st.", city: "San Francisco", state: "CA", zip: "94114", website: "www.starbellysf.com", phone: "415-252-7500")




