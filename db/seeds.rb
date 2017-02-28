# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  user = User.create!(
  username: Faker::HarryPotter.character,
  email: Faker::Internet.safe_email
  )
  rand(10).times do
    post = user.posts.create!(
    title: Faker::HarryPotter.location,
    body: Faker::HarryPotter.quote
    )
    rand(5).times do
      post.comments.create!(
      body: Faker::Friends.quote,
      user_id: User.pluck(:id).sample
      )
    end
  end




end
