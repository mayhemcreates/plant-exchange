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
  user = User.create!(
  username: Faker::Artist.name,
  email: Faker::Internet.email,
  password: "sdfsdf"
  )
  puts "#{user.username}: #{user.email}"
end

categories = ["bush", "shrub", "perennial", "annual", "houseplant"]
categories.each do |e|
  Category.create!(name: e)
  puts "#{e}"
end

10.times do
  plant = Plant.create!(
  name: Faker::Lorem.words(number: 2).join(" "),
  description: Faker::Lorem.paragraph,
  category_id: Category.all.sample.id,
  user_id: User.all.sample.id
  # picture: Faker::LoremFlickr.image, search_terms: ['plant', 'seed']
  )
  puts "#{plant.name}: #{plant.description}"
end
