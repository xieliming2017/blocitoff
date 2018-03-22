# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create!(
    email: Faker::Internet.email ,
    password: "111111",
    password_confirmation: "111111"
    )
end

users = User.all

50.times do
  Item.create!(
    name: Faker::Internet.domain_name,
    user: users.sample
  )
end

items = Item.all

puts "Seeding finished"
puts "#{users.count} users created"
puts "#{items.count} items created"
