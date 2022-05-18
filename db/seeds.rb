puts "Creating restaurants."
20.times do
  print "."
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    stars: rand(1..5),
    chef_name: Faker::Name.name,
    chef_rating: rand(1..5)
  )
end
