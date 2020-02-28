
require "open-uri"
puts "cleaning database..."
Wishlist.destroy_all
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
    brand: "Rolex",
    model: "Model",
    description: "diamond",
    price: 50,
    user: user1
  })
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582922259/Complete-Rolex-Buying-Guide-gear-patrol-Perpetual_hs6ysq.jpg")
watch1.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch1.save
puts "watch"
watch2 = Watch.new(
    {
      brand: "Audemars piguet",
      model: "model 2",
      description: "gold",
      price: 85,
      user: user2
    })
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582922507/audemars-piguet-royal-oak-chronographe-26315st-12684_p6rmyo.jpg")
watch2.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch2.save
puts "watch"
watch3 = Watch.new(
    {
      brand: "Jacob & Co",
      model: "model 3",
      description: "platinum",
      price: 70,
      user: user3
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582921211/Jacob-and-Co_1568865503_8534_vrozc4.jpg")
watch3.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch3.save
puts "watch"
watch4 = Watch.new(
    {
      brand: "Tissot",
      model: "Chronograph",
      description: "Silver",
      price: 10,
      user: user3
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582922707/t006.207.11.036.00_agrxpi.jpg")
watch4.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch4.save
puts "watch"
watch5 = Watch.new(
    {
      brand: "Tissot",
      model: "Gentleman",
      description: "Silver",
      price: 50,
      user: user2
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582752415/T127.410.11.041.00_1_zzw3f0.png")
watch5.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch5.save
puts "watch"
watch6 = Watch.new(
    {
      brand: "Garmin",
      model: "Fenix 5",
      description: "Plastic",
      price: 30,
      user: user1
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582752278/71T7jk_2BG5-L._AC_UX342__gtuh4i.jpg")
watch6.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch6.save
puts "watch"
watch7 = Watch.new(
    {
      brand: "Rolex",
      model: "Automatic’s Men",
      description: "Diamond",
      price: 180,
      user: user3
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582920893/two-tone-yellow-datejust-rolex-1__03925.1473271931_ilqgul.jpg")
watch7.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch7.save
puts "watch"
watch8 = Watch.new(
    {
      brand: "Audemard Piquet",
      model: "Supersonnerie",
      description: "Leather",
      price: 250,
      user: user3
    }
  )
file = URI.open("https://cdn11.bigcommerce.com/s-fhmq0o2/images/stencil/1280x1280/products/3635/22908/ap-rose-gold-blue-dial__48373.1544133754.jpg?c=2")
watch8.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch8.save
puts "watch"
watch9 = Watch.new(
    {
      brand: "Richard Mille",
      model: "RM035",
      description: "Black Oack",
      price: 100,
      user: user3
    }
  )
file = URI.open("https://res.cloudinary.com/dkpy2yoeq/image/upload/v1582920074/10034173_xxl_sqmo5n.jpg")
watch9.image_url.attach(io: file, filename: "nes.png", content_type: "image/png")
watch9.save
puts "watch"


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

# wishlist_attributes =[{
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
# Wishlist.create!(wishlist_attributes)

puts "finished"

