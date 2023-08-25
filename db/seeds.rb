# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Faker::Config.locale = 'de'
12.times do
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

User.create!(
  first_name: "Giovane",
  last_name: "Nery",
  email: "giovane.nery@hotmail.com",
  password: "123456",
  address: Faker::Address.street_address
)

User.create!(
  first_name: "Ozge",
  last_name: "Kilic",
  email: "ozgeklc096@gmail.com",
  password: "123456",
  address: Faker::Address.street_address
)

User.create!(
  first_name: "Ulrich",
  last_name: "Thofehrn",
  email: "welfito@icloud.com",
  password: "123456",
  address: Faker::Address.street_address
)

Robot.create!(
  robot_name: "Mega Man",
  category: "home",
  description:
  "Mega Man  is a cutting-edge home robot designed to simplify daily life
  and enhance the household environment. Mega Man's adaptability allows it to handle diverse chores
  such as dusting surfaces, vacuuming floors and even watering plants.

  Through voice commands you can easily communicate tasks, set schedules, and monitor its progress.
  Whether it's reminding you of appointments, providing weather updates, or even playing your favorite tunes.
  Embrace the future with Mega Man, the ultimate home robot designed to elevate your domestic experience.
  ",
  price: 50,
  robot_pictures: "gstpsr84okc12mltp0eg",
  user_id: 1
)
Robot.create!(
  robot_name: "Doogie Man",
  category: "home",
  description: "Introducing Doogie Man, your dedicated home robot designed to provide
  exceptional pet care and companionship. Doogie Man's specialized features make pet care effortless.
  Equipped with a gentle touch and a compassionate understanding of your dog's behavior, it ensures your
  pet's well-being.

  From feeding and refreshing water to administering medications, Doogie Man attends to your dog's
  essential needs with care and precision. One of Doogie Man's standout capabilities is its ability to take your dog for
  a walk. With its sturdy construction and reliable sensors, it guides your dog on safe and enjoyable strolls around the
  neighborhood. With Doogie Man by your side, every day becomes a special adventure for
  you and your beloved dog.",
  price: 50,
  robot_pictures: "irr3ot1zsifloilstjll",
  user_id: 2
)
Robot.create!(
  robot_name: "Famili Man",
  category: "home",
  description: "Meet Famili Man, your dedicated home companion designed to revolutionize the way your family experiences
  child care. With a heartwarming blend of cutting-edge technology and nurturing care, Famili Man is here to provide
  unwavering support and assistance in the journey of raising your little ones.

  From tracking feeding schedules and diaper changes to monitoring nap times, Famili Man brings a newfound level of
  organization to your daily routine. Safety is at the core of Famili Man's design. With its vigilant sensors and smart
  surveillance features, you can trust that your child is secure and protected at all times. As your family grows, so
  does Famili Man's adaptability. From infancy to early childhood, Famili Man's versatile programming evolves to meet
  the changing needs of your child, providing personalized care and companionship at every stage.
",
  price: 50,
  robot_pictures: "fnob7huw9hldb92g80xq",
  user_id: 3
)
Robot.create!(
  robot_name: "Cook Man",
  category: "home",
  description: "Introducing Cook Man, the ultimate culinary assistant for your home. With a mastery of over 10,000 recipes
  from around the world, Cook Man is your personal chef, ready to create a delightful dining experience right in your kitchen.
  From gourmet dishes to comfort foods, it effortlessly prepares a diverse range of meals, catering to your unique tastes
  and dietary preferences.

  Whether you're a seasoned cook or a novice, Cook Man guides you through each step, ensuring your culinary adventures are a success.
  With Cook Man in your kitchen, every meal becomes a masterpiece, and your culinary journey becomes an unforgettable experience.",
  price: 50,
  robot_pictures: "ju6ptqkmqxmfeyca724m",
  user_id: 4
)
Robot.create!(
  robot_name: "Floor Man",
  category: "home",
  description: "Introducing Floor Man, your dedicated home companion designed to take the chore out of cleaning floors.
  With its advanced technology and efficient design, Floor Man is your ultimate solution for maintaining spotless and
  gleaming surfaces throughout your home.

  Equipped with cutting-edge sensors and powerful cleaning mechanisms, Floor Man effortlessly navigates your living spaces,
  ensuring every corner is free from dirt, dust, and debris. Whether it's pet hair, crumbs, or everyday messes,
  Floor Man's efficiency shines through. With its precision cleaning patterns and thorough coverage, your floors are
  left impeccably clean and inviting. Let Floor Man be your floor-cleaning ally, ensuring your living spaces remain beautifully pristine.",
  price: 50,
  robot_pictures: "lcwibsaai6dtcwo4ucpj",
  user_id: 5
)
Robot.create!(
  robot_name: "Study Man",
  category: "work",
  description: "Introducing Study Man, your dedicated home companion designed to unlock the full potential of learning.
  With a blend of intelligent assistance and interactive features, Study Man is here to revolutionize the way you approach
  education, from schoolwork and homework to exam preparation.

  Homework assistance is where Study Man truly shines. Its intuitive interface allows you to upload assignments,
  and Study Man will guide you through the process, providing explanations, examples, and insights to help you complete tasks with confidence.
  As exams approach, Study Man becomes your indispensable study partner. It offers personalized study plans, practice
  quizzes, and interactive study sessions that reinforce your understanding and boost your confidence before the big day.",
  price: 50,
  robot_pictures: "qhqrlet4wygjvmdw6t5h",
  user_id: 6
)
Robot.create!(
  robot_name: "Guts Man",
  category: "work",
  description: "Introducing Guts Man, your powerhouse work robot designed to conquer heavy lifting tasks with ease.
  With an impressive lifting capacity of up to 400kg, Guts Man is your indispensable partner for tackling demanding
  industrial projects and making relocating to a new place a breeze.

  Guts Man's robust design and exceptional strength make it the ideal companion for heavy-duty tasks. From lifting
  machinery and equipment in industrial settings to transporting bulky items during a move, Guts Man's sturdy frame
  and precise control ensure that even the heaviest loads are handled safely and efficiently.",
  price: 75,
  robot_pictures: "w7dqjknmqcoawarly6uu",
  user_id: 7
)
Robot.create!(
  robot_name: "Menu Man",
  category: "work",
  description: "Introducing Menu Man, the sophisticated work robot that combines elegance with efficiency to enhance
  your special occasions. As a refined waiter, Menu Man adds a touch of modernity to formal parties and special events,
  ensuring impeccable service and unforgettable experiences.

  Menu Man's interactive chest display serves as both a functional and eye-catching feature. Guests can peruse a curated
  menu and make their selections with ease, adding a tech-savvy twist to the dining experience. With its intuitive interface,
  Menu Man provides instant access to the array of offerings, accommodating diverse tastes and preferences. Embrace the
  future of hospitality with Menu Man, your ultimate partner in creating exceptional memories.",
  price: 75,
  robot_pictures: "t3vldxj2bnc8bjuqmnfx",
  user_id: 8
)
Robot.create!(
  robot_name: "Ground Man",
  category: "work",
  description: "Introducing Ground Man, the dedicated work robot designed to transform gardening into a harmonious blend
  of precision and natural beauty. With a nurturing touch and a deep understanding of horticulture, Ground Man becomes
  your trusted partner in maintaining lush gardens and cultivating flourishing landscapes.

  Ground Man's efficiency extends to maintenance tasks such as weeding, mulching, and trimming, saving you valuable
  time and effort. With its keen eye for detail and the ability to adapt to various garden layouts, Ground Man ensures
  your outdoor space is always a picturesque haven.",
  price: 75,
  robot_pictures: "kcbgslpxvtdybh56ameb",
  user_id: 9
)
Robot.create!(
  robot_name: "Elec Man",
  category: "work",
  description: "Introducing Elec Man, the skilled work robot engineered to revolutionize electrical work, from home
  improvements to construction projects. With a keen understanding of electrical systems and a commitment to safety,
  Elec Man is your trusted partner in efficiently managing wiring tasks in a wide range of environments.

  Safety is paramount for Elec Man. Equipped with state-of-the-art safety protocols, it operates in compliance with
  electrical regulations, reducing the risk of hazards and potential issues. Its intelligent monitoring capabilities
  allow it to detect anomalies and identify potential faults, mitigating risks and ensuring a secure electrical environment.",
  price: 75,
  robot_pictures: "wla5vcn6uemks4slqxoc",
  user_id: 10
)
Robot.create!(
  robot_name: "Disco Man",
  category: "fun",
  description: "Introducing Disco Man, the life of the party that brings electrifying energy and vibrant entertainment
  to any event. With a dazzling disco ball, a passion for music, and a knack for dance, Disco Man transforms gatherings
  into unforgettable celebrations.

  The disco ball that accompanies Disco Man casts shimmering reflections around the room, creating an enchanting atmosphere.
  The colorful lights that emanate from this robotic entertainer add an ever-changing backdrop of hues, turning any space into a vibrant dance floor.
  From private celebrations to large-scale events, Disco Man's infectious enthusiasm creates an atmosphere of pure enjoyment.
  It's not just a robot it's a dance instructor, a DJ, and a source of non-stop amusement rolled into one dynamic package.",
  price: 30,
  robot_pictures: "i9b5ux0cqnjdet693jpz",
  user_id: 11
)
Robot.create!(
  robot_name: "Karaoke Man",
  category: "fun",
  description: "Introducing Karaoke Man, the ultimate party sensation that brings the joy of karaoke to life. With its
  extensive song library, interactive lyrics display, and multiple microphones, Karaoke Man is your dynamic host for
  unforgettable singing sessions at any event.

  Karaoke Man is the life of the party, transforming gatherings into lively sing-along extravaganzas. With a collection
  of over 50,000 songs spanning genres and eras, it caters to every musical taste. Its eyes, equipped with light projectors,
  illuminate the lyrics on screens, ensuring that everyone can follow along and join in the performance.",
  price: 30,
  robot_pictures: "ssxhjgb7h13maapxuaxd",
  user_id: 12
)
Robot.create!(
  robot_name: "Chill Man",
  category: "fun",
  description: "Introducing Chill Man, your ultimate partner in keeping the good times cool and refreshing. With a
  design inspired by the iconic R2-D2 from Star Wars, Chill Man is the perfect fusion of fun and functionality, bringing
  a touch of galactic charm to your gatherings.

  Chill Man's primary mission is to ensure your drinks stay refreshingly chilled. Equipped with a built-in cooler,
  it keeps beverages at the perfect temperature, ready to be enjoyed by you and your guests. Whether it's a backyard
  barbecue, a poolside party, or a cozy movie night, Chill Man has your beverage needs covered. Chill Man's convenience
  extends to its mobility. With its compact and wheeled design, it effortlessly glides through your event space, ensuring
  that drinks are always within easy reach. No more running back and forth to the fridge.",
  price: 30,
  robot_pictures: "cfjt7v8yxvs9yfui6xb7",
  user_id: 13
)
Robot.create!(
  robot_name: "Cloud Man",
  category: "fun",
  description: "Introducing Cloud Man, the enchanting party companion that adds an ethereal touch to your events and
  concerts. With the ability to create mesmerizing clouds of colorful smoke, Cloud Man transforms any gathering into a
  captivating and immersive experience.

  Cloud Man's unique talent lies in its artful creation of smoke clouds that dance and swirl with vibrant hues.
  Its ability to infuse the atmosphere with colors adds an extra layer of enchantment to your events.
  But Cloud Man doesn't stop at smoke it's a symphony of lights and lasers as well. Its array of dazzling lights
  synchronize with the smoke, casting dynamic patterns and illuminating the environment in a mesmerizing display of colors.
  The synergy of smoke and light creates a dreamlike ambiance that transports your guests to another realm.",
  price: 30,
  robot_pictures: "sxzwn90vmfirwsjwihxj",
  user_id: 14
)
Robot.create!(
  robot_name: "Sports Man",
  category: "fun",
  description: "Introducing Sports Man, your dynamic partner in the world of sports and athleticism. With a versatile
  skillset that spans various sports, Sports Man is your go-to companion for both play and coaching, ensuring that you
  experience the joy of physical activity like never before.

  Sports Man is a true all-rounder, proficient in a multitude of sports and physical activities. Whether it's basketball,
  soccer, tennis, or even yoga, Sports Man brings a high level of skill and enthusiasm to the game. Its ability to adapt
  to different sports ensures that you always have a capable opponent or partner.",
  price: 30,
  robot_pictures: "j3nmtrsta1e06vudh14u",
  user_id: 15
)
