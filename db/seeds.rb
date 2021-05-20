# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating yours truly"

mrnanse = User.create!(email: "pascal@email.com", name: "Mirchev Pascal", password: 123456 )

puts "Creating codebuddies"
codebuddies = Post.create(name: "JoinCodeBuddies", description: "A platform for devs to link up", user_id: 1)

puts "Creating Mostly fans"
mostly_fans = Post.create(name: "Mostly Fans", description: "A platform to sell all sort of items but mostly fans", user_id: 1)

puts "Creating On the go"

on_the_go = Post.create(name: "On the Go", description: "A platform for people to offer their services on the go", user_id: 1)