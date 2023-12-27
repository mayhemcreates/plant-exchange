# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

User.destroy_all

10.times do
  User.create(
    username: Faker::Artist.name,
    name: Faker::Name.first_name,
    surname:Faker::Name.last_name,
    email: Faker::Internet.email,
)
end

10.times do
  Plant.create(
    name: Faker::Lorem.words(number: 2),
    description: Faker::Lorem.paragraph,
    picture: Faker::LoremFlickr.image, search_terms: ['plant', 'seed']
  )
end
