# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

game = Game.create([{name: "Super Mario 64"}, {name: "Super Mario Sunshine"}, {name: "Super Mario Galaxy"}, {name: "Super Mario Galaxy 2"}])
User.create(name: "Aidan", email: "test@test.test", password: "test")
User.create(name: "Kally", email: "test2@test.test", password: "test")
run = Run.create([{user_id: 1, game_id: 1, hour: 0, minute: 53, second: 12},{user_id: 1, game_id: 2, hour: 2, minute: 20, second: 20},{user_id: 1, game_id: 3, hour: 2, minute: 30, second: 11},{user_id: 1, game_id: 4, hour: 4, minute: 20, second: 50},{user_id: 2, game_id: 1, hour: 0, minute: 50, second: 50}])