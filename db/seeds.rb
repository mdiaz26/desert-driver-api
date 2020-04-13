# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Score.delete_all

# mike = User.create(username: "mike", password: "mike")
# lou = User.create(username: "lou", password: "lou")

score1 = Score.create(user_number: 7, points: 100, distance: 20, username: "lou")
score2 = Score.create(user_number: 7, points: 1000, distance: 200, username: "lou")
score3 = Score.create(user_number: 6, points: 500, distance: 100, username: "mike")
