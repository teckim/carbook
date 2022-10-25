# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Car.destroy_all

user_one = User.create!(name: "Hannington")

car_one = Car.create!(brand: 'BMW', model: 'rid399', image: 'https://pixabay.com/get/gc6fb85449b98588f82815589f8a7a8b0c239c5391146e156d127994e94a96b806207cb47c0cb736db0f072d0bc0fff007cfbea6bd3134125d5a6a4ced60e7231e4ecc0dfccbca812a2e752afd28548fc_1920.jpg', price: 25000, description: 'BMW car', user: user_one)
car_two = Car.create!(brand: 'BMW', model: 'han427', image: 'https://pixabay.com/get/gc6fb85449b98588f82815589f8a7a8b0c239c5391146e156d127994e94a96b806207cb47c0cb736db0f072d0bc0fff007cfbea6bd3134125d5a6a4ced60e7231e4ecc0dfccbca812a2e752afd28548fc_1920.jpg', price: 25000, description: 'BMW car', user: user_one)
car_three = Car.create!(brand: 'BMW', model: 'kim346', image: 'https://pixabay.com/get/gc6fb85449b98588f82815589f8a7a8b0c239c5391146e156d127994e94a96b806207cb47c0cb736db0f072d0bc0fff007cfbea6bd3134125d5a6a4ced60e7231e4ecc0dfccbca812a2e752afd28548fc_1920.jpg', price: 25000, description: 'BMW car', user: user_one)

Reservation.create(
  city: "Imphal",
  date: "23/8/2022",
  user_one: 1,
  car_one: 1
)
