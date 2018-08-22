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
rma_status = "Submitted for Approval"
# 10.times do
#  create_user = User.new(
#     email: Faker::Internet.email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     password: 'TopSecret',
#     store_number: store_random,
#     address: Faker::Address.street_name,
#     address2: Faker::Address.secondary_address,
#     city: Faker::Address.city,
#     state: Faker::Address.state_abbr,
#     zip: Faker::Address.zip,
#     country: "USA"
#     )
#  create_user.save
#  puts "user created"

# 15.times do
#   create_return = Return.new(
#     item_number: Faker::IDNumber.valid,
#     model_number: model_number_random,
#     serial_number: Faker::Invoice.reference,
#     invoice_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
#     lease_date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
#     part_number: part_number_random,
#     return_reason: Faker::Lorem.sentence,
#     comment: Faker::Lorem.paragraphs(1),
#     rma_status: rma_status
#     )
#   create_return.user = create_user
#   create_return.save
#   puts "User has been assigned returns"
  # end
# end

puts '<'
puts 'creating model list'

model_1 = Product.new(
                model_number: "32ME303V/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_1.save

model_2 = Product.new(
                model_number: "32ME303V/F7A",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_2.save

model_3 = Product.new(
                model_number: "32ME304V/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_3.save

model_4 = Product.new(
                model_number: "32MV304X/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_4.save

model_5 = Product.new(
                model_number: "32PFL4507/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_5.save

model_6 = Product.new(
                model_number: "32PFL4508/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_6.save

model_7 = Product.new(
                model_number: "32PFL4609/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_7.save

model_8 = Product.new(
                model_number: "32PFL4609/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_8.save

model_9 = Product.new(
                model_number: "32PFL4909/F7",
                product_type: "TV",
                weight: 25,
                carrier_default: "FedEx"
                )
model_9.save

model_10 = Product.new(
                model_number: "39ME313V/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "LTL-TSG"
                )
model_10.save
