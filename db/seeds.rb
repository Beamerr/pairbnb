
require 'ffaker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
# 	 User.create!(
# 	 	email: FFaker::Internet.email,
# 	 	password: "hello",
# 	 	location: FFaker::Address.city,
# 	 	first_name: FFaker::Name.first_name,
# 	 	last_name: FFaker::Name.last_name	
	 	
# 	 )
# end

# id_array = User.all.pluck(:id)
# 100.times do
#      Listing.create!(
#      	user_id: id_array.sample,
#         description: FFaker::CheesyLingo.sentence,
#         max_occupants: rand(1..10),
#         rooms: rand(1..10),
#         rent: rand(30..500),
#         availability: true,
#         city: FFaker::Address.city,
#         address: FFaker::Address.street_address,
#         booker_id: rand(1..100)
        
#       ) 
# end 

2.times do
  User.create!(
    email: FFaker::Internet.email,
    password: "hello",
    location: FFaker::Address.city,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    role: 1
    )
end

2.times do
  User.create(
    email: FFaker::Internet.email,
    password: "hello",
    location: FFaker::Address.city,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    role: 2
    )

end

1.times do
    Reservation.create!(
    user_id: 408,
    check_in: "2017-01-10",
    check_out: "2017-10-10",
    listing_id: 50,
    users_id: 100,
    total_cost: 2786
    )
end


