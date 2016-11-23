
require 'ffaker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
	 User.create(
	 	email: FFaker::Internet.email,
	 	password: FFaker::Color.name,
	 	location: FFaker::Address.city,
	 	first_name: FFaker::Name.first_name,
	 	last_name: FFaker::Name.last_name	
	 	
	 )
end

100.times do
     Listing.create!(
     	user_id: rand(1..100),
        description: FFaker::CheesyLingo.sentence,
        rent: rand(30..500),
        status: true,
        city: FFaker::Address.city,
        address: FFaker::Address.street_address,
        booker_id: rand(1..100)
        
      ) 
end 

