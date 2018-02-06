# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.all.delete_all
Transaction.all.delete_all
Account.all.delete_all

10.times do |i|
  email = "test-#{i.to_s}@gmail.com"
  first_name = Faker::Name.name
  last_name = Faker::Name.name
  birth_date = Faker::Date.backward(3000)
  personal_id = Faker::Number.number(3)
  phone = Faker::Number.number(3)
  city = Faker::Address.city

  transaction = Transaction.create(date: Faker::Date.backward(3000), detail: first_name = Faker::Name.name, amount: Faker::Number.number(8))

  account = Account.create(number: Faker::Number.number(5) ,initial_amount: Faker::Number.number(3), actual_amount: Faker::Number.number(7))

  user = User.create(
    email: email,
    first_name: first_name,
    last_name: last_name,
    birth_date: birth_date,
    personal_id: personal_id,
    phone: phone,
    city: city,
  )
  account.transactions << transaction
  user.accounts << account
end
