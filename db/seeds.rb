# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

account10 = Account.create!(email: "tesdt@toileta.com", password: "11111111", password_confirmation: "11111111")
account12 = Account.create!(email: "hahah@toiletk.nl", password: "22222222", password_confirmation: "22222222")
account13 = Account.create!(email: "fuck@toiletz.nl", password: "33333333", password_confirmation: "33333333")
account14 = Account.create!(email: "hello@toilets.nl", password: "44444444", password_confirmation: "44444444")
account15 = Account.create!(email: "wc@toiletf.nl", password: "55555555", password_confirmation: "55555555")

user1 = User.create!(gender: "male", account_id: account10.id, toilet_user: true, toilet_owner: true)
user2 = User.create!(gender: "female", account_id: account12.id, toilet_user: true, toilet_owner: false)
user3 = User.create!(gender: "female", account_id: account13.id, toilet_user: true, toilet_owner: false)
user4 = User.create!(gender: "male", account_id: account14.id, toilet_user: false, toilet_owner: true)
user5 = User.create!(gender: "male", account_id: account15.id, toilet_user: true, toilet_owner: false)

toilet2 = Toilet.create!(location_address: "Jekerstaat 12, Amsterdam", location_name: "Clean toilet", user_id: 4, toilet_type: "Toilet bowl", price: 1, shittable: true)
toilet4 = Toilet.create!(location_address: "Jan van Galenstraat 335, Amsterdam", location_name: "Bar", user_id: 5, toilet_type: "Urinal", price: 0.75, shittable: false)
toilet6 = Toilet.create!(location_address: "Sarphatistraat 27, Amsterdam", location_name: "Supermarket", user_id: 2, toilet_type: "Urinal", price: 0.5, shittable: false)
toilet1 = Toilet.create!(location_address: "Marnixtraat 55, Amsterdam", location_name: "Shitter", user_id: 1, toilet_type: "Urinal", price: 2, shittable: false)
toilet3 = Toilet.create!(location_address: "Wibautstraat 129, Amsterdam", location_name: "The Student Hotel", user_id: 1, toilet_type: "Toilet bowl", price: 2, shittable: true)
toilet5 = Toilet.create!(location_address: "Govert Flinckstraat 15, Amsterdam", location_name: "Restaurant", user_id: 3, toilet_type: "Toilet bowl", price: 0.4, shittable: true)
