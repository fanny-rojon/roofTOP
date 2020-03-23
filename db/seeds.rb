# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '*' * 30
puts "Destroying rooftops..."
Rooftop.destroy_all

puts "Start seeding"

Rooftop.create(name: "Beautiful terrace with a view", description: "Beautiful terrace with amazing view on the city", price: 100)

puts "Done seeding"
