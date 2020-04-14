# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Score.delete_all
Avatar.delete_all
User.delete_all

score1 = Score.create(user_number: 7, points: 100, distance: 20, username: "lou")
score2 = Score.create(user_number: 7, points: 1000, distance: 200, username: "lou")
score3 = Score.create(user_number: 6, points: 500, distance: 100, username: "mike")

avatar1 = Avatar.create(name: "Sheep", image: '/Avatars/Sheep.png')
avatar2 = Avatar.create(name: "Bear", image: '/Avatars/bear.png')
avatar3 = Avatar.create(name: "Cloud", image: '/Avatars/cloud.png')
avatar4 = Avatar.create(name: "Cactus", image: '/Avatars/cactus.png')
avatar5 = Avatar.create(name: "No Face", image: '/Avatars/noface.png')
avatar6 = Avatar.create(name: "Sloth", image: '/Avatars/sloth.png')
avatar6 = Avatar.create(name: "Cain Firstman", image: '/caveman/cavemanFront.png')

lou = User.create(username: "lou", password: "lou", avatar_id: avatar1.id)
mike = User.create(username: "mike", password: "mike", avatar_id: avatar2.id)