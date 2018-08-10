# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

store_random = ['F1234', 'C1234', 'D1234', 'F1234'].sample
model_number_random = ['50PFL5601/F7', '50MV336V/F7', '40MV336V/F7', '65PFL5603/F7'].sample
part_number_random = ['Panel', 'Power Board', 'Digital Main', 'More than one reason refer to comment' ].sample

10.times do
 create_user = User.new(
    email: Faker::Internet.email,
    password: 'TopSecret',
    store_number: store_random,
    address: Faker::Address.street_name,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip: Faker::Address.zip,
    country: Faker::Address.country
    )
 create_user.save
 puts "user created"
5.times do
  create_return = Return.new(
    item_number: Faker::IDNumber.valid,
    model_number: model_number_random,
    serial_number: Faker::Invoice.reference,
    invoice_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
    lease_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
    part_number: part_number_random,
    return_reason: Faker::Lorem.sentence,
    comment: Faker::Lorem.paragraphs(1)
    )
  create_return.user = create_user
  create_return.save
  puts "User has been assigned returns"
  end
end

