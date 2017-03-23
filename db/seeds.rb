# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all

5.times do |time|
puts "Starting for user number #{time + 1}"
artists_images = [
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_c97c969b-d2fe-43df-b401-f5c3a57fd21d.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_9fca6591-2fff-419c-ad4f-524bdcae0030.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_0a0d431d-bfb7-4941-a764-4fb10f19db0b.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_43ca034b-f981-427d-9f90-8481e028d36c.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_1e3a930b-07dc-458c-81d4-3241672f2f2c.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_bbfa989c-d4c8-4ee9-8727-57eb63934c6f.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_96582519-fadf-4c33-ac1d-fc584bc8cb5f.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_1b48124b-c393-432f-98b8-834437ae36e3.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_a9b5e66c-46dd-40ba-871a-8d797f4478e5.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_d70fe5e8-f070-46c5-87c8-377de788500f.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_c8231722-7ceb-49ac-81db-77ecbaca1c0d.jpg",
  "http://66c91f87e662bb771d19-9216eea23fb10a14da386f28693570f5.r73.cf3.rackcdn.com/1385_c97c969b-d2fe-43df-b401-f5c3a57fd21d.jpg"
]
  artist = Artist.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: (18..35).to_a.sample,
    address:" ",
    city: ["Hudson", "Tucson", "Shanghai", "Beijing", "Tokyo", "Milan", "London", "Paris", "Stockholm"],
    height: (175..195).to_a.sample,
    shoe_size: (36..45).to_a.sample,
    daily_rate: (36..45).to_a.sample,
    gender:["Male","Female","Transgender","Other"].sample,
    phone_number:["+8613812345678","+8613012345678","+8618212345678"].sample
  })
  puts "Saving the user"
  artist.save!
  puts "Uploading pictures..."
  artist.photo_urls = artists_images.shuffle.take(3)
  artist.save!
  puts "Done !"
end



