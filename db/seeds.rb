# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Car.destroy_all

user_one = User.create!(name: "Hannington")

car_one = Car.create!(brand: 'BMW', model: 'rid399', image: 'https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg', price: 25000, description: 'BMW car', user: user_one)
car_two = Car.create!(brand: 'BMW', model: 'han427', image: 'https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg', price: 25000, description: 'BMW car', user: user_one)
car_three = Car.create!(brand: 'BMW', model: 'kim346', image: 'https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg', price: 25000, description: 'BMW car', user: user_one)

# Reservation.create(
#   city: "Imphal",
#   date: "23/8/2022",
#   user_one: 1,
#   car_one: 1
# )
