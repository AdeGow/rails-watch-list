# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Deleting all movie records'
Movie.delete_all
puts Movie.count

puts 'Creating 100 fake movies...'
i = 0
100.times do
  movie = Movie.new(
    title: "#{i} - #{Faker::Movie.title}",
    overview: "#{Faker::Fantasy::Tolkien.poem} #{i}",
    poster_url: Faker::LoremFlickr.image
  )
  i += 1
  movie.save!
end
puts 'Finished!'
