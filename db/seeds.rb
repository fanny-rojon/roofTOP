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

rooftop_1 = Rooftop.create(name: "Beautiful terrace with a view", description: "Beautiful terrace with amazing view ", price: 100)
rooftop_2 = Rooftop.create(name: "Gorgeous rooftop with swimming pool", description: "Perfect for pool parties", price: 150)
rooftop_3 = Rooftop.create(name: "Amazing patio with garden", description: "Incredible patio with luxurious garden", price: 200)

puts "Done seeding"
puts '*' * 30
