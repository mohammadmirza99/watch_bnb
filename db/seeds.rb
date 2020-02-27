# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "cleaning database..."
Review.destroy_all
Request.destroy_all
Watch.destroy_all
User.destroy_all

puts "Creating seeds"

puts "creating users"
user1 = User.create({
        first_name:   "Mohammad",
        last_name: "Mirza",
        address: "123 rue something",
        email: "hammad_Senior@hotmail.com",
        password: "123456"
      })
user2 = User.create({
         first_name:   "Agustin",
            last_name: "Brun",
            address: "456 rue something",
            email: "augustin_brun@hotmail.com",
            password: "123456"
      })
user3 = User.create({
      first_name:   "Habib",
       last_name: "Mboup",
       address: "789 rue something",
       email: "habib_mboup@hotmail.com",
       password: "123456"
      })

puts "creating watches"


watch1 = Watch.new({
    brand: "rolex",
    model: "model ",
    material: "diamond",
    price: 40,
    user: user1
  })
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582672411/d5vieik9zapgbi7tq1om.jpg")
watch1.image_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
watch1.save

watch2 = Watch.new(
    {
      brand: "Audemars piguet",
      model: "model 2",
      material: "gold",
      price: 50,
      user: user2
    })
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582671800/dvvauemgxnrsze7zarjv.png")
watch1.image_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
watch2.save


watch3 = Watch.new(
    {
      brand: "Jacob & Co",
      model: "model 3",
      material: "platinum",
      price: 60,
      user: user3
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582672395/zpfp2smfjipdh83phw2p.jpg")
watch1.image_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
watch3.save

watch4 = Watch.new(
    {
      brand: 'Fossil',
      model: "Gen 3",
      material: 'Silver',
      price: 90,
      user: user3
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582752278/71T7jk_2BG5-L._AC_UX342__gtuh4i.jpg")
watch1.image_url.attach(io: file, filename: 'nes.png', content_type: "image/png")
watch4.save
watch5 = Watch.new(
    {
      brand: 'Tissot',
      model: 'Gentleman',
      material: 'Silver',
      price: 120,
      user: user2
    }
  )
file = URI.open('https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582752415/T127.410.11.041.00_1_zzw3f0.png')
watch1.image_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
watch5.save
watch6 = Watch.new(
    {
      brand: 'Garmin',
      model: "Fenix 5",
      material: 'Plastic',
      price: 200,
      user: user1
    }
  )
file = URI.open('https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582752553/5060908-RSW00_pio3bp.jpg')
watch1.image_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
watch6.save
watch7 = Watch.new(
    {
      brand: 'Diesel',
      model: "Serie",
      material: 'Leather',
      price: 250,
      user: user3
    }
  )
file = URI.open('https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582753372/Montre-Homme-Diesel-DZ4282_fobq5m.jpg')
watch1.image_url.attach(io: file, filename: 'nes.png', content_type: 'image/png')
watch7.save



# requests_attributes = [{
#     date_start: "Nov 1",
#     date_end: "Nov 2",
#     user: user1,
#     watch: watch2
#   },
#   {
#     date_start: "Nov 3",
#     date_end: "Nov 4",
#     user: user2,
#     watch: watch3
#   },
#   {
#     date_start: "Nov 5",
#     date_end: "Nov 6",
#     user: user3,
#     watch: watch1
#   }
# ]
# puts "creating requests"
# Request.create!(requests_attributes)

# review_attributes =[{
#         rating: 4,
#         content: "The watch was amazing",
#         user: user1,
#         watch: watch3
#     },

#     {
#       rating: 4,
#       content: "Very nice watch",
#       user: user2,
#       watch: watch1
#     },

#     {
#       rating: 3,
#       content: "Watch was okay, not the best",
#       user: user3,
#       watch: watch2
#     }
# ]
# puts "creating reviews"
# Review.create!(review_attributes)

puts "finished"

