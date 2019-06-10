# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Allan", email: "allan@example.com", password: "123qweasdzxc")
User.create(username: "Brian", email: "brian@example.com", password: "qwert12345")
User.create(username: "Charles", email: "chuck@example.com", password: "typewriter")
User.create(username: "Dianne", email: "dianne@example.com", password: "zmxncbv")
User.create(username: "Elaine", email: "elaine@example.com", password: "laksjdhfg")

# User.all.each do |user|
#   Message.create(body: "#{Faker::Lorem.sentence(3, true)}", user_id: user.id)
# end
