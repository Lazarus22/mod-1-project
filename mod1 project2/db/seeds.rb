require 'require_all'


10.times do
  User.create(
    name: Faker::Name.name_with_middle
  )
end

10.times do
  Category.create(
    name: Faker::Book.genre
  )
end

10.times do
  Director.create(
    name: Faker::Book.author
  )
end


10.times do
  Movie.create(
    title: Faker::Book.title,
    director: Director.all.sample,
    category: Category.all.sample
  )
end

