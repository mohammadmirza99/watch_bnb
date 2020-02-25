# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "cleaning database..."
User.destroy_all
Watch.destroy_all
Review.destroy_all
Request.destroy_all

puts "Creating seed users"

users_attributes = [{
    first_name:   "Mohammad",
    last_name: "Mirza",
    address: "123 rue something",
    email: "hammad_Senior@hotmail.com",
    password: "123456"
  },
  {
    first_name:   "Agustin",
    last_name: "Brun",
    address: "456 rue something",
    email: "augustin_brun@hotmail.com",
    password: "123456"

  },
  {
    first_name:   "Habib",
    last_name: "Mboup",
    address: "789 rue something",
    email: "habib_mboup@hotmail.com",
    password: "123456"
  }
]

watch_attributes = [{
    brand: "rolex",
    model: "model 1",
    material: "diamond",
    price: 40,
    user_id: 11
  },
  {
    brand: "Audemars piguet",
    model: "model 2",
    material: "gold",
    price: 50,
    user_id: 12
  },
  {
    brand: "Jacob & Co",
    model: "model 3",
    material: "platinum",
    price: 60,
    user_id: 13
  }
]

requests_attributes = [{
    date_start: "Nov 1",
    date_end: "Nov 2",
    user_id: 11,
    watch_id: 5
  },
  {
    date_start: "Nov 3",
    date_end: "Nov 4",
    user_id: 12,
    watch_id: 6
  },
  {
    date_start: "Nov 5",
    date_end: "Nov 6",
    user_id: 13,
    watch_id: 4
  }
]

review_attributes =[{
      rating: 5,
      content: "The watch was amazing",
      user_id: 11,
      watch_id: 6
  },
  {
    rating: 4,
    content: "Very nice watch",
    user_id: 12,
    watch_id: 4
  },
  {
    rating: 3,
    content: "Watch was okay, not the best",
    user_id: 13,
    watch_id: 5
  }
]


User.create!(users_attributes)
Watch.create!(watch_attributes)
Review.create!(review_attributes)
Request.create!(requests_attributes)

puts "finished"

