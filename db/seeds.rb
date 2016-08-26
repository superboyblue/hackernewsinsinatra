require 'faker'



User.create(
    username: "Gary",
    password: "Password123!"
  )

User.create(
    username: "Sam",
    password: "Password123!"
  )

10.times do
  Post.create(
    link: Faker::Internet.url,
    title: Faker::Hacker.say_something_smart,
    user_id: User.all.sample.id
    )
end

10.times do
  Comment.create(
    text: Faker::Hacker.say_something_smart,
    user_id: User.all.sample.id,
    post_id: Post.all.sample.id
    )
end
