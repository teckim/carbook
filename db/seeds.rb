Reservation.destroy_all
Car.destroy_all
User.destroy_all

user_one = User.create!(name: "Hannington", password: '123456789', password_confirmation: '123456789', username: 'hannn')

car_one = Car.create!(brand: 'Bugatti', model: 'rid399', image: 'https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg', price: 25000, description: 'Bugatti chiron')
car_two = Car.create!(brand: 'BMW', model: 'han427', image: 'https://media.istockphoto.com/photos/illustration-of-generic-hatchback-car-perspective-view-picture-id1150425295?k=20&m=1150425295&s=612x612&w=0&h=zf-OQVf5Zv3M1bORn2gzYm49D61k1kkSzd3s7YqF9VU=', price: 25000, description: 'BMW')
car_three = Car.create!(brand: 'Landcruiser', model: 'kim346', image: 'https://imgd-ct.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75', price: 25000, description: 'Sports utiliy vechile')
car_four = Car.create!(brand: 'KIA', model: 'KiA', image: 'https://www.kia.com/content/dam/kia2/in/en/images/home/seltos_new_masthead.png', price: 5000, description: 'Sedan')
car_five = Car.create!(brand: 'Mercedes', model: 'CLA250', image: 'https://cdni.autocarindia.com/utils/imageresizer.ashx?n=https://cms.haymarketindia.net/model/uploads/modelimages/Mercedes-Benz-A-class-Hatchback-210920221745.jpg&w=350&h=251&q=90&c=1', price: 25000, description: 'Hatchback')
car_six = Car.create!(brand: 'Lambo', model: 'kim346', image: 'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/homepage/families-gallery/2022/04_12/family_chooser_tecnica_m.png', price: 25000, description: 'Sports vechile')
car_seven = Car.create!(brand: 'BMW', model: 'M3', image: 'https://cdni.autocarindia.com/utils/imageresizer.ashx?n=https://cms.haymarketindia.net/model/uploads/modelimages/2%20Series%20CoupeModelImage.jpg&w=350&h=251&q=90&c=1', price: 25000, description: 'Sports vechile')
car_eight = Car.create!(brand: 'Lexus', model: 'Lx350', image: 'https://www.drivespark.com/car-image/640x480x100/car/22582179-lexus_nx_350h.jpg', price: 25000, description: 'Sports vechile')