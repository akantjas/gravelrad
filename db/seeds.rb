# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database..."
Bike.destroy_all
puts "Database cleaned"

puts "Creating bikes..."
100.times do
    bike = Bike.create(
    name: Faker::Sports::Football.player,
    brand: Faker::Sports::Football.team
    )
    puts "#{bike.id} created"
end