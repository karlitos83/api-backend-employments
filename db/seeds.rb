# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Juan", email: "1@gmail.com", password: "123456", password_confirmation: "123456", admin: true)
User.create!(name: "Carlos", email: "2@gmail.com", password: "654321", password_confirmation: "654321")

WorkDay.create!(user_id: 1, entry_at: "2019-09-10 08:00:00", departure_at: "2019-09-10 017:00:00")
WorkDay.create!(user_id: 1, entry_at: "2019-09-11 08:00:00", departure_at: "2019-09-11 017:00:00")
WorkDay.create!(user_id: 1, entry_at: "2019-09-12 08:00:00", departure_at: "2019-09-12 017:00:00")
WorkDay.create!(user_id: 1, entry_at: "2019-09-13 08:00:00", departure_at: "2019-09-13 017:00:00")

WorkDay.create!(user_id: 2, entry_at: "2019-09-10 09:00:00", departure_at: "2019-09-10 018:00:00")
WorkDay.create!(user_id: 2, entry_at: "2019-09-11 09:00:00", departure_at: "2019-09-11 018:00:00")
WorkDay.create!(user_id: 2, entry_at: "2019-09-12 09:00:00", departure_at: "2019-09-12 018:00:00")
WorkDay.create!(user_id: 2, entry_at: "2019-09-13 09:00:00", departure_at: "2019-09-13 018:00:00")
