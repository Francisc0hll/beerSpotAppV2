# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

addresses = "la quilla 711, ñuñoa, santiago chile,
rebeca matte 18, santiago chile
Jorge Washington 176, Ñuñoa, Santiago"

User.destroy_all
BeerSpot.destroy_all

3.times do |i|
    User.create(
        email: Faker::Internet.email,
        password: '123456'
    )
end


addresses = addresses.split("\n")
addresses.each do|address|
    BeerSpot.create!(
        name: Faker::Beer.brand,
        qualification: 4,
        address: address,
        user: User.order('RANDOM()').first
        )  
    sleep 1
end