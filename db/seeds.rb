# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

puts "Importing countries..."
CSV.foreach(Rails.root.join("countries.csv"), headers: true) do |row|
  Country.create! do |country|
    country.id = row[0]
    country.name = row[1]
    country.code = row[2]
  end
end

puts "Importing states..."
CSV.foreach(Rails.root.join("states.csv"), headers: true) do |row|
  State.create! do |state|
    state.name = row[0]
    state.state_code = row[1]
    state.country_id = row[2]
  end
end

    StoreType.create!(name: "Online")
    StoreType.create!(name: "Brick & Mortar")

	PaymentMethod.create(name: "Visa")
    PaymentMethod.create(name: "American Express")
    PaymentMethod.create(name: "Discover")
    PaymentMethod.create(name: "Mastercard")
    PaymentMethod.create(name: "Check")
    PaymentMethod.create(name: "Cash")
    PaymentMethod.create(name: "Gift Card")

    PurchaseItemStatus.create!(name: "Ordered")
    PurchaseItemStatus.create!(name: "Shipped")
    PurchaseItemStatus.create!(name: "Purchased")
    PurchaseItemStatus.create!(name: "Returned")
    PurchaseItemStatus.create!(name: "Donated")
    PurchaseItemStatus.create!(name: "Consumed")
    PurchaseItemStatus.create!(name: "Discarded")

    Visibility.create(name: "Everyone")
    Visibility.create(name: "Friends only")
    Visibility.create(name: "Private")

    ExchangeDurationType.create!(name: "Month")
    ExchangeDurationType.create!(name: "Day")
    ExchangeDurationType.create!(name: "Week")
    ExchangeDurationType.create!(name: "Year")

	ReturnDurationType.create!(name: "Month")
    ReturnDurationType.create!(name: "Day")
    ReturnDurationType.create!(name: "Week")
    ReturnDurationType.create!(name: "Year")

    ReturnCategory.create(name: "Electronics")
    ReturnCategory.create(name: "Computers")
    ReturnCategory.create(name: "Airbed")
    ReturnCategory.create(name: "Toys")
    ReturnCategory.create(name: "Other")


