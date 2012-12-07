namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Umesh Garg",
                 email: "eairox@gmail.com",
                 password: "123456",
                 password_confirmation: "123456")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    company = Company.create!(name: "Walmart",
                    url:"www.walmart.com",
                    phone: "1-800-WALMART",
                    country_id: 2,
                    description: "Walmart.com is a lot like your neighborhood Walmart store. We feature a great selection of high-quality merchandise, friendly service and, of course, Every Day Low Prices. We also have another goal: to bring you the best shopping experience on the Internet."
    )

    company = Company.create!(name: "Buy.com",
                    url:"www.buy.com",
                    phone: "1-800-888-BUY1",
                    country_id: 2,
                    description: "Buy.com is a great online place for shopping"
    )

    99.times do |n|
      name = Faker::Company.name
      url = "www.#{name.delete(" ").delete(",")}.com"
      phone=Faker::PhoneNumber.phone_number
      description=Faker::Lorem.paragraph

      Company.create(name:name,
                     url: url,
                     phone:phone,
                     country_id:2,
                     description:description)
    end

    PurchaseItemStatus.create!(name: "Ordered")
    PurchaseItemStatus.create!(name: "Shipped")
    PurchaseItemStatus.create!(name: "Purchased")
    PurchaseItemStatus.create!(name: "Returned")
    PurchaseItemStatus.create!(name: "Donated")
    PurchaseItemStatus.create!(name: "Consumed")
    PurchaseItemStatus.create!(name: "Discarded")

    Group.create!(name: "My Birthday")
    Group.create!(name: "Business")
    Group.create!(name: "Hawaii Trip")
    Group.create!(name: "Jessica's Baby Shower")

    Visibility.create!(name: "Public")
    Visibility.create!(name: "Friends")
    Visibility.create!(name: "Family")
    Visibility.create!(name: "Friends & Family")
    Visibility.create!(name: "Only Me")

 

    Category.create!(name: "Electronics")
    Category.create!(name: "Baby")
    Category.create!(name: "Automotive")
    Category.create!(name: "Beauty")
    Category.create!(name: "Computers")
    Category.create!(name: "Jewelry")
    Category.create!(name: "Departmental Store")
    Category.create!(name: "Grocery")
    Category.create!(name: "Software")

    CompanyCategorization.create!(category_id: 6, company_id: 1)
    CompanyCategorization.create!(category_id: 1, company_id: 1)
    CompanyCategorization.create!(category_id: 1, company_id: 2)


    StoreType.create!(name: "Online")
    StoreType.create!(name: "Brick & Mortar")


    Country.create!(code: "CN",
                    name: "Canada",
                    rank: 0,
                    is_obsolete: false)
    Country.create!(code: "US",
                    name: "United Stated of America",
                    rank: 0,
                    is_obsolete: false)
    Country.create!(code: "GB",
                    name: "Great Britain",
                    rank: 0,
                    is_obsolete: false)
    Country.create!(code: "MX",
                    name: "Mexico",
                    rank: 0,
                    is_obsolete: false)

    State.create!(name: "California",
                  state_code: "CA",
                  country_id: 2)

    State.create!(name: "Arizona",
                  state_code: "AZ",
                  country_id: 2)

    State.create!(name: "Florida",
                  state_code: "FL",
                  country_id: 2)

    State.create!(name: "British Columbia",
                  state_code: "BL",
                  country_id: 1)

    State.create!(name: "Yukon",
                  state_code: "YN",
                  country_id: 1)

    Store.create!(name: "Milpitas Walmart Store #2119",
                  company_id: 1,
                  store_type_id: 2,
                  store_number: "2119",
                  address1: "301 Ranch Dr",
                  city: "Milpitas",
                  state_id: 1,
                  country_id: 1,
                  zipcode: "94040",
                  phone: "(408) 934-0304",
                  )

    Store.create!(name: "San Jose Neighborhood Market Store #3025",
                  company_id: 1,
                  store_type_id: 2,
                  store_number: "3025",
                  address1: "1600 Saratoga Ave Unit 501",
                  city: "San Jose",
                  state_id: 1,
                  country_id: 1,
                  zipcode: "95129",
                  phone: "(408) 796-3823",
                  )
    
    Store.create!(name: "Fremont Walmart Store #2989",
                  company_id: 1,
                  store_type_id: 2,
                  store_number: "2989",
                  address1: "40580 Albrae St",
                  city: "Fremont",
                  state_id: 1,
                  country_id: 1,
                  zipcode: "94538",
                  phone: "(510) 440-8060",
                  )

    Store.create!(name: "Walmart.com",
                  company_id: 1,
                  store_type_id: 1,
                  store_url: "www.walmart.com"
                  )

    Store.create!(name: "Buy.com",
                  company_id: 2,
                  store_url: "www.buy.com",
                  store_type_id: 1
                  )

    
    Make.create!(name: "BOSS")
    Make.create!(name: "HP")   
    Make.create!(name: "Apple")   
    Make.create!(name: "Samsung")
    Make.create!(name: "Nissan")
    Make.create!(name: "DELL")

    PaymentMethod.create(name: "Visa")
    PaymentMethod.create(name: "American Express")
    PaymentMethod.create(name: "Discover")
    PaymentMethod.create(name: "Mastercard")
    PaymentMethod.create(name: "Check")
    PaymentMethod.create(name: "Cash")



    Item.create!(name: "Macbook Air",
                  upc: "123123123",
                  make_id: 3,
                  model_name: "Macbook Air 11 inch 64GB",
                  full_description: "1.7GHz dual-core Intel Core i5 processor
                    Turbo Boost up to 2.6GHz
                    4GB memory
                    64GB flash storage1
                    Intel HD Graphics 4000",
                  features: "Display: 11.6-inch (diagonal) high-resolution LED-backlit glossy widescreen display with support for millions of colors
                    Processor: 1.7GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz) with 3MB shared L3 cache
                    Memory: 4GB of 1600MHz DDR3L onboard memory
                    Size and Weight: Height: 0.11-0.68 inch (0.3-1.7 cm)
                    Width: 11.8 inches (30 cm)
                    Depth: 7.56 inches (19.2 cm)
                    Weight: 2.38 pounds (1.08 kg)
                    ")
    
    Item.create!(name: "Dell Latitude",
                  upc: "11111111",
                  make_id: 6,
                  model_name: "D-610",
                  full_description: "Dell Latitude is great for office, personal use",
                  features: "Display: 11.6-inch (diagonal) high-resolution LED-backlit glossy widescreen display with support for millions of colors
                    Processor: 1.7GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz) with 3MB shared L3 cache
                    Memory: 4GB of 1600MHz DDR3L onboard memory
                    Size and Weight: Height: 0.11-0.68 inch (0.3-1.7 cm)
                    Width: 11.8 inches (30 cm)
                    Depth: 7.56 inches (19.2 cm)
                    Weight: 2.38 pounds (1.08 kg)
                    ")

    Item.create!(name: "Dell E432",
                  upc: "1111122222",
                  make_id: 6,
                  model_name: "E432",
                  full_description: "Dell E432 is a top of the line item",
                  features: "Display: 11.6-inch (diagonal) high-resolution LED-backlit glossy widescreen display with support for millions of colors
                    Processor: 1.7GHz dual-core Intel Core i5 (Turbo Boost up to 2.6GHz) with 3MB shared L3 cache
                    Memory: 4GB of 1600MHz DDR3L onboard memory
                    Size and Weight: Height: 0.11-0.68 inch (0.3-1.7 cm)
                    Width: 11.8 inches (30 cm)
                    Depth: 7.56 inches (19.2 cm)
                    Weight: 2.38 pounds (1.08 kg)
                    ")

    Purchase.create(group_id: 1,
                        store_id: 1,
                        visibility_id: 1,
                        payment_method_id: 1,
                        user_id: 1)

    Purchase.create(group_id: 1,
                        store_id: 1,
                        visibility_id: 1,
                        payment_method_id: 1,
                        user_id: 1)

    Purchase.create(group_id: 2,
                        store_id: 2,
                        visibility_id: 2,
                        payment_method_id: 2,
                        user_id: 2)

    Purchase.create(group_id: 1,
                        store_id: 1,
                        visibility_id: 1,
                        payment_method_id: 1,
                        user_id: 3)

    PurchaseItem.create(purchase_id: 1,
                        item_id: 1,
                        quantity: 1,
                        total: 1200.0
                        )

    PurchaseItem.create(purchase_id: 1,
                        item_id: 2,
                        quantity: 1,
                        total: 1100.0
                        )

    PurchaseItem.create(purchase_id: 2,
                        item_id: 1,
                        quantity: 5,
                        total: 5000.0
                        )


  end
end