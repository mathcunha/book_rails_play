# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  Author.create(
    name: Faker::Book.author,
    country: Faker::Nation.nationality
  )
end

5.times do
  Genre.create(
    name: Faker::Book.genre,
  )
end

10.times do
  Book.create(
    title: Faker::Book.title,
    author_id: Faker::Number.between(from: 1, to: 5),
    genre_id: Faker::Number.between(from: 1, to: 5),
    sales: Faker::Number.between(from: 10, to: 1000)
  )
end