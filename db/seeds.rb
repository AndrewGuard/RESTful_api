# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

consumer1 = Consumer.new
consumer1.name = 'Andrew Guard'
consumer1.password = 'password'
consumer1.save

consumer2 = Consumer.new
consumer2.name = 'Jorge Luis'
consumer2.password = 'password'
consumer2.save

restaurant1 = Restaurant.new
restaurant1.name = 'Italian food restaurant'
restaurant1.save

restaurant2 = Restaurant.new
restaurant2.name = 'Chinese food restaurant'
restaurant2.save

food_item1 = FoodItem.new
food_item1.name = "name"
food_item1.description = "delicious food"
food_item1.consumer_id = 1
food_item1.restaurant_id = 1
food_item1.save

food_item2 = FoodItem.new
food_item2.name = "name"
food_item2.description = "delicious food"
food_item2.consumer_id = 2
food_item2.restaurant_id = 2
food_item2.save
