# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Faker::Config.locale = 'de'

10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email_name = "#{first_name.downcase}.#{last_name.downcase}"

  User.create!(
    first_name: first_name,
    last_name: last_name,
    email: "#{email_name}@example.com",
    password: "123456",
    address: Faker::Address.street_address
  )
end

Robot.create!(
  robot_name: "Mega Man",
  category: "home",
  description: "social interaction, menial home tasks, organizer",
  price: 50,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Doogie Man",
  category: "home",
  description: "dog care, play buddie, walker",
  price: 50,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Famili Man",
  category: "home",
  description: "social interaction, Child care",
  price: 50,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Cook Man",
  category: "home",
  description: "home cooking, 10000 recipies",
  price: 50,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Floor Man",
  category: "home",
  description: "floor cleaning, all floor types",
  price: 50,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Study Man",
  category: "work",
  description: "learning, exam prep all levels",
  price: 50,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Guts Man",
  category: "work",
  description: "Heavy lifting, max 300kg",
  price: 75,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Menu Man",
  category: "work",
  description: "big chest touch screen, shows custom menu options for food/drinks",
  price: 75,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Ground Man",
  category: "work",
  description: "garden, industrial digging",
  price: 75,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Elec Man",
  category: "work",
  description: "home or industrial electrical wiring",
  price: 75,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Disco Man",
  category: "fun",
  description: "for private events, dolby speaker, music powered by spotify",
  price: 30,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Karaoke Man",
  category: "fun",
  description: "for private social event, 50k song playlist",
  price: 30,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Chill Man",
  category: "fun",
  description: "keeps drinks cool, serves drinks, 60 liter storage",
  price: 30,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Cloud Man",
  category: "fun",
  description: "for concerts or parties, smoke cloud also in colors with laser lights",
  price: 30,
  robot_pictures: "a",
  user_id: 1
)
Robot.create!(
  robot_name: "Sports Man",
  category: "fun",
  description: "holds a variety of sports equiptment and helps with training 1v1",
  price: 30,
  robot_pictures: "a",
  user_id: 1
)
