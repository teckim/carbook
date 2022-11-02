Reservation.destroy_all
Car.destroy_all
User.destroy_all

user_one = User.create!(name: "Hannington", password: '123456789', password_confirmation: '123456789', username: 'hannn')

car_one = Car.create!(brand: 'BMW', model: 'rid399', image: 'https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg', price: 25000, description: 'BMW car', user: user_one)
car_two = Car.create!(brand: 'BMW', model: 'han427', image: 'https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg', price: 25000, description: 'BMW car', user: user_one)
car_three = Car.create!(brand: 'BMW', model: 'kim346', image: 'https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg', price: 25000, description: 'BMW car', user: user_one)

Reservation.create(
  city: "Imphal",
  date: "23/8/2022",
  user_id: user_one.id,
  car_id: car_one.id
)

Reservation.create(
  city: "Algiers",
  date: "24/9/2023",
  user_id: user_one.id,
  car_id: car_two.id
)
