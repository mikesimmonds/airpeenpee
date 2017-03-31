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

toilet1 = Toilet.create!(location_address: "Marnixtraat 55, Amsterdam", location_name: "Shitter", user_id: 1, toilet_type: "Urinal", price: 2, shittable: false)
toilet2 = Toilet.create!(location_address: "Jekerstaat 12, Amsterdam", location_name: "Clean toilet", user_id: 4, toilet_type: "Toilet bowl", price: 1, shittable: true)
toilet3 = Toilet.create!(location_address: "Spui 4, Amsterdam", location_name: "Shithole", user_id: 1, toilet_type: "Toilet bowl", price: 3, shittable: true)
toilet4 = Toilet.create!(location_address: "Stationsplein 3, Amsterdam", location_name: "Near station", user_id: 1, toilet_type: "Urinal", price: 0, shittable: false)
toilet5 = Toilet.create!(location_address: "lutmastraat 12, Amsterdam", location_name: "Hole in the ground", user_id: 4, toilet_type: "Toilet bowl", price: 1, shittable: true)
toilet6 = Toilet.create!(location_address: "herengraschyt 444, Amsterdam", location_name: "Dad n mom's", user_id: 1, toilet_type: "Toilet bowl", price: 3, shittable: true)
toilet7 = Toilet.create!(location_address: "Leidseplein 15, Amsterdam", location_name: "Tin can", user_id: 1, toilet_type: "Urinal", price: 0, shittable: false)
toilet8 = Toilet.create!(location_address: "Lijnbaansgracht 300, Amsterdam", location_name: "Feiko's", user_id: 4, toilet_type: "Toilet bowl", price: 1, shittable: false)
toilet9 = Toilet.create!(location_address: "Reguliersdwarsstraat 20, Amsterdam", location_name: "if you like risk...", user_id: 1, toilet_type: "Toilet bowl", price: 3, shittable: true)
toilet10 = Toilet.create!(location_address: "Singel 500, Amsterdam", location_name: "5+ toilets", user_id: 1, toilet_type: "Toilet bowl", price: 0, shittable: true)
toilet11 = Toilet.create!(location_address: "kwakersplein 4, Amsterdam", location_name: "West-wind", user_id: 4, toilet_type: "Toilet bowl", price: 1, shittable: true)
toilet12 = Toilet.create!(location_address: "waterloopelin 14, Amsterdam", location_name: "East wc", user_id: 1, toilet_type: "Urinal", price: 2, shittable: true)
toilet13 = Toilet.create!(location_address: "amstelveld 12, Amsterdam", location_name: "Amstelveld", user_id: 4, toilet_type: "Urinal", price: 0, shittable: true)
toilet14 = Toilet.create!(location_address: "frederiksplein 122, Amsterdam", location_name: "frederiksplein", user_id: 4, toilet_type: "Urinal", price: 0, shittable: true)
toilet15 = Toilet.create!(location_address: "albert cuypmarky 34, Amsterdam", location_name: "albert cuyp", user_id: 4, toilet_type: "Urinal", price: 0, shittable: true)
toilet16 = Toilet.create!(location_address: "meidoornweg 202, Amsterdam", location_name: "North", user_id: 4, toilet_type: "Urinal", price: 0, shittable: true)
toilet17 = Toilet.create!(location_address: "a'dam lookout, Amsterdam", location_name: "Amsterdam tower", user_id: 1, toilet_type: "Urinal", price: 25, shittable: true)
toilet18 = Toilet.create!(location_address: "tuinstraat 65, Amsterdam", location_name: "tuinstraat", user_id: 1, toilet_type: "Urinal", price: 25, shittable: true)
toilet19 = Toilet.create!(location_address: "artis, Amsterdam", location_name: "Artis", user_id: 1, toilet_type: "Urinal", price: 25, shittable: true)

