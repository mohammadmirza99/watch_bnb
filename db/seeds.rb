# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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

watch1 = Watch.create({
    brand: "rolex",
    model: "model 1",
    material: "diamond",
    price: 40,
    image_url: "https://images.rolex.com/2019/catalogue/images/upright-bba-with-shadow/m228238-0042.png?impolicy=upright-grid-card&imwidth=585",
    user: user1
  })

watch2 = Watch.create(
    {
      brand: "Audemars piguet",
      model: "model 2",
      material: "gold",
      price: 50,
      image_url: "https://www.kronos360.com/15925-large_default/audemars-piguet-royal-oak-chronographe-26315st-12684.jpg",
      user: user2
    }
  )

watch3 = Watch.create(
    {
      brand: "Jacob & Co",
      model: "model 3",
      material: "platinum",
      price: 60,
      image_url: "https://chronexttime.imgix.net/1/0/10195/10195_1_det.png?w=800&auto=format&fm=jpg&q=75&usm=30&usmrad=1&h=800&fit=clamp",
      user: user3
    }
  )


requests_attributes = [{
    date_start: "Nov 1",
    date_end: "Nov 2",
    user: user1,
    watch: watch2
  },
  {
    date_start: "Nov 3",
    date_end: "Nov 4",
    user: user2,
    watch: watch3
  },
  {
    date_start: "Nov 5",
    date_end: "Nov 6",
    user: user3,
    watch: watch1
  }
]
puts "creating requests"
Request.create!(requests_attributes)

review_attributes =[{
        rating: 4,
        content: "The watch was amazing",
        user: user1,
        watch: watch3
    },

    {
      rating: 4,
      content: "Very nice watch",
      user: user2,
      watch: watch1
    },

    {
      rating: 3,
      content: "Watch was okay, not the best",
      user: user3,
      watch: watch2
    }
]
puts "creating reviews"
Review.create!(review_attributes)

puts "finished"

