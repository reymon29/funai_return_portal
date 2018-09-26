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
                carrier_default: "FedEx"
                )
model_10.save

model_11 = Product.new(
                model_number: "39ME313V/F7A",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_11.save

model_12 = Product.new(
                model_number: "39ME413V/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_12.save

model_13 = Product.new(
                model_number: "39PFL2908/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_13.save

model_14 = Product.new(
                model_number: "40ME324V/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_14.save

model_15 = Product.new(
                model_number: "40ME325V/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_15.save

model_16 = Product.new(
                model_number: "40MV324X/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_16.save

model_17 = Product.new(
                model_number: "40MV336X/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_17.save

model_18 = Product.new(
                model_number: "40MV336X/F7B",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_18.save

model_19 = Product.new(
                model_number: "40PFL4609/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_19.save

model_20 = Product.new(
                model_number: "40PFL4609/F7A",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_20.save

model_21 = Product.new(
                model_number: "40PFL4908/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_21.save

model_22 = Product.new(
                model_number: "40PFL4909/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_22.save

model_23 = Product.new(
                model_number: "43ME345V/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_23.save

model_24 = Product.new(
                model_number: "46ME313V/F7",
                product_type: "TV",
                weight: 35,
                carrier_default: "FedEx"
                )
model_24.save

model_25 = Product.new(
                model_number: "46PFL3608/F7",
                product_type: "TV",
                weight: 45,
                carrier_default: "FedEx"
                )
model_25.save

model_26 = Product.new(
                model_number: "46PFL3608/F7A",
                product_type: "TV",
                weight: 45,
                carrier_default: "FedEx"
                )
model_26.save

model_27 = Product.new(
                model_number: "47PFL5708/F7",
                product_type: "TV",
                weight: 45,
                carrier_default: "FedEx"
                )
model_27.save

model_28 = Product.new(
                model_number: "50ME313V/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_28.save

model_29 = Product.new(
                model_number: "50ME313V/F7A",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_29.save

model_30 = Product.new(
                model_number: "50ME314V/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_30.save

model_31 = Product.new(
                model_number: "50MV314X/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_31.save

model_32 = Product.new(
                model_number: "50MV336X/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_32.save

model_33 = Product.new(
                model_number: "50MV336X/F7B",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_33.save

model_34 = Product.new(
                model_number: "50MV376Y/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_34.save

model_35 = Product.new(
                model_number: "50PFL3708/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_35.save

model_36 = Product.new(
                model_number: "50PFL3908/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_36.save

model_37 = Product.new(
                model_number: "50PFL5601/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_37.save

model_38 = Product.new(
                model_number: "50PFL5601/F7A",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_38.save

model_39 = Product.new(
                model_number: "50PFL5601/F7B",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_39.save

model_40 = Product.new(
                model_number: "50PFL5901/F7",
                product_type: "TV",
                weight: 50,
                carrier_default: "FedEx"
                )
model_40.save

model_41 = Product.new(
                model_number: "55ME314V/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_41.save

model_42 = Product.new(
                model_number: "55MV314X/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_42.save

model_43 = Product.new(
                model_number: "55MV314X/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_43.save

model_44 = Product.new(
                model_number: "55PFL4609/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_44.save

model_45 = Product.new(
                model_number: "55PFL4909/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_45.save

model_46 = Product.new(
                model_number: "55PFL5602/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_46.save

model_47 = Product.new(
                model_number: "55PFL5602/F7A",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_47.save

model_48 = Product.new(
                model_number: "55PFL5901/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_48.save

model_49 = Product.new(
                model_number: "55PFL6900/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_49.save

model_50 = Product.new(
                model_number: "55PFL6900/F7A",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_50.save

model_51 = Product.new(
                model_number: "55PFL7900/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_51.save

model_52 = Product.new(
                model_number: "65PFL5602/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_52.save

model_53 = Product.new(
                model_number: "65PFL5602/F7A",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_53.save

model_54 = Product.new(
                model_number: "65PFL5602/F7C",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_54.save

model_55 = Product.new(
                model_number: "65PFL5602/F7D",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_55.save

model_56 = Product.new(
                model_number: "65PFL6601/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_56.save

model_57 = Product.new(
                model_number: "65PFL6601/F7A",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_57.save

model_58 = Product.new(
                model_number: "65PFL7900/F7",
                product_type: "TV",
                weight: 60,
                carrier_default: "LTL-TSG"
                )
model_58.save

model_59 = Product.new(
                model_number: "75PFL6601/F7",
                product_type: "TV",
                weight: 100,
                carrier_default: "LTL-TSG"
                )
model_59.save

model_60 = Product.new(
                model_number: "75PFL6601/F7B",
                product_type: "TV",
                weight: 100,
                carrier_default: "LTL-TSG"
                )
model_60.save

model_61 = Product.new(
                model_number: "BDP1200/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_61.save


model_62 = Product.new(
                model_number: "BDP2100/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_62.save

model_63 = Product.new(
                model_number: "BDP2105/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_63.save

model_64 = Product.new(
                model_number: "BDP2205/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_64.save

model_65 = Product.new(
                model_number: "BDP2305/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_65.save

model_66 = Product.new(
                model_number: "BDP2385/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_66.save

model_67 = Product.new(
                model_number: "BDP2501/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_67.save

model_68 = Product.new(
                model_number: "BDP2985/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_68.save

model_69 = Product.new(
                model_number: "BDP3502/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_69.save

model_70 = Product.new(
                model_number: "BDP5406/F7",
                product_type: "BD",
                weight: 10,
                carrier_default: "FedEx"
                )
model_70.save

model_71 = Product.new(
                model_number: "HTB5544D/F7",
                product_type: "Home Theater",
                weight: 15,
                carrier_default: "FedEx"
                )
model_71.save

model_72 = Product.new(
                model_number: "HTL2101/F7",
                product_type: "Soundbar",
                weight: 15,
                carrier_default: "FedEx"
                )
model_72.save

model_73 = Product.new(
                model_number: "HTL2101A/F7",
                product_type: "Soundbar",
                weight: 15,
                carrier_default: "FedEx"
                )
model_73.save

model_74 = Product.new(
                model_number: "HTL2111A/F7",
                product_type: "Soundbar",
                weight: 15,
                carrier_default: "FedEx"
                )
model_74.save

model_75 = Product.new(
                model_number: "HTL3110B/F7",
                product_type: "Soundbar",
                weight: 15,
                carrier_default: "FedEx"
                )
model_75.save

model_76 = Product.new(
                model_number: "HTL4115B/F7",
                product_type: "Soundbar",
                weight: 15,
                carrier_default: "FedEx"
                )
model_76.save

model_77 = Product.new(
                model_number: "MSB4550/F7",
                product_type: "Soundbar",
                weight: 15,
                carrier_default: "FedEx"
                )
model_77.save

model_78 = Product.new(
                model_number: "NTRX500/37",
                product_type: "Mini Hi-Fi System",
                weight: 60,
                carrier_default: "FedEx"
                )
model_78.save

puts '<'
puts 'creating Return Locations'

ReturnLocation.create(
            company: "Funai Service",
            attention_name: "Aaron's Product Return",
            address: "2425 Speigel Dr",
            city: "Columbus",
            state: "OH",
            zip: "43125",
            country: "US",
            contact_number: "614-645-6000")
ReturnLocation.create(
            company: "COSMO COMMUNICATIONS CANADA",
            attention_name: "Aaron's Product Return",
            address: "2750 14TH AVE UNIT G11",
            city: "MARKHAM",
            state: "ON",
            zip: "L3R0B6",
            country: "CA",
            contact_number: "614-645-6000")
