# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(name: 'Subway', address: "55 South Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Burger King', address: "32 South Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Dumpling King', address: "1 South Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Restaurant 62', address: "3 North Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Turner', address: "22 South Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Be Good', address: "11 South Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Shabu Shabu', address: "9 South Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Yummy Restaurant', address: "10 South Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Bad Restaurant', address: "8 North Street", city: 'Boston', state: 'MA', zip_code:'02155')
Restaurant.create(name: 'Okay restaurant', address: "3 Washington Street", city: 'Boston', state: 'MA', zip_code:'02155')

Review.create(rating: "3", body: "It's okay", restaurant_id: "3")
Review.create(rating: "4", body: "I liked it", restaurant_id: "10")
Review.create(rating: "5", body: "Go here!", restaurant_id: "3")
Review.create(rating: "1", body: "Not good", restaurant_id: "4")
Review.create(rating: "3", body: "It's okay", restaurant_id: "3")
Review.create(rating: "2", body: "Not that great", restaurant_id: "2")
Review.create(rating: "5", body: "I loved it!", restaurant_id: "7")
Review.create(rating: "3", body: "It's okay", restaurant_id: "8")
Review.create(rating: "3", body: "It's okay", restaurant_id: "1")
Review.create(rating: "5", body: "Best place evaaaaarrrrrr.", restaurant_id: "8")
Review.create(rating: "3", body: "It's okay", restaurant_id: "3")
