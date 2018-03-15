10.times do
  user = User.create(
    name: Faker::BackToTheFuture.character,
    image: Faker::Avatar.image,
    email: Faker::Internet.unique.email,
    password: 'password'
  )
  5.times do
    user.posts.create(
      title: Faker::BackToTheFuture.date,
      body: Faker::BackToTheFuture.quote
    )
  end
end
