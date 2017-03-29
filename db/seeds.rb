# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.new(gender: "male", account_id: 1, toilet_user: true, toilet_owner: true)

Toilet.new(location_address: "Marnixtraat 55, Amsterdam", location_name: "Shitter", user_id: 1, toilet_type: "Urinal", price: 2, shittable: true)
