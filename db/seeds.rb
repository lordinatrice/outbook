# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "start"

user = User.create(email: 'antoine@lewagoon.org', password: 'helloooo')

Place.create(name:'Terrasse ensoleillée', address: 'Pigalle', category: 'terrace', capacity: '4', user_id: 1)
Place.create(name:'Grande terrasse', address: 'Sentier', category: 'terrace', capacity: '8', user_id: 1)
Place.create(name:'Jardin', address: 'Montreuil', category: 'garden', capacity: '10', user_id: 1)
Place.create(name:'Jardin fleuri', address: 'Saint Germain', category: 'garden', capacity: '6', user_id: 1)
Place.create(name:'Rooftop à Batignolles', address: 'Batignolles', category: 'rooftop', capacity: '6', user_id: 1)
Place.create(name:'Rooftop au centre de Paris', address: 'Sentier', category: 'rooftop', capacity: '6', user_id: 1)
Place.create(name:'Grand jardin à Paris', address: 'Ranelagh', category: 'garden', capacity: '12', user_id: 1)


user = User.create(email: "antoine@lewagoon.org", password: "helloooo")

Place.create(name: "cosy appartment", address: "le wagon", category: "terrace", capacity: 10, user_id: 1)

puts "end"
