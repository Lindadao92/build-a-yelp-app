# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all if Rails.env.development?
puts 'Creating restaurants'

Restaurant.create!(
  name: 'Chocolate',
  address: 'Rue du Chocolate, Brussel',
  phone_number: '+321 43 47 18 24',
  category: 'belgian'
)

Restaurant.create!(
  name: 'Pret a manger',
  address: 'Champs Elysees, Paris',
  phone_number: '+331 12 35 98 76',
  category: 'french'
)

Restaurant.create!(
  name: 'Ristorante Pizza',
  address: 'Via del Corso, Roma',
  phone_number: '+391 23 45 67 89',
  category: 'italian'
)

Restaurant.create!(
  name: 'Korean BBQ',
  address: 'Kookmin street, Tokio',
  phone_number: '+311 23 45 67 89',
  category: 'japanese'
)

Restaurant.create!(
  name: 'Flying noodles',
  address: 'Soho, London',
  phone_number: '+441 23 45 67 89',
  category: 'chinese'
)

puts 'Finished creating'
