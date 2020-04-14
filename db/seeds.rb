# User.destroy_all
# Report.destroy_all

# user1 = User.create(
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     username: Faker::Internet.username,
#     email: Faker::Internet.email,
#     password: "password"
#     ) 

# user2 = User.create(
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     username: Faker::Internet.username,
#     email: Faker::Internet.email,
#     password: "password"
#     ) 

# user3 = User.create(
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     username: Faker::Internet.username,
#     email: Faker::Internet.email,
#     password: "password"
#     ) 

# user4 = User.create(
#     firstname: Faker::Name.first_name,
#     lastname: Faker::Name.last_name,
#     username: Faker::Internet.username,
#     email: Faker::Internet.email,
#     password: "password"
#     ) 


    5.times do
        Report.create(
            title: Faker::Cannabis.strain,
            content: Faker::Hipster.paragraph,
            user_id: 15,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://image.shutterstock.com/image-photo/large-pothole-filled-dirty-water-260nw-1663938124.jpg"
        )
    end

    5.times do
        Report.create(
            title: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            content: Faker::Hipster.paragraph,
            user_id: 16,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://image.shutterstock.com/image-photo/chicagoilusaseptember-19th-2019-blue-collar-600w-1511026688.jpg"
        )
    end

    5.times do
        Report.create(
            title: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            content: Faker::Hipster.paragraph,
            user_id: 17,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://image.shutterstock.com/image-photo/car-hitting-pothole-city-street-600w-1383477980.jpg"
        )
    end

    5.times do
        Report.create(
            title: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            content: Faker::Hipster.paragraph,
            user_id: 18,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://image.shutterstock.com/image-photo/large-unrepaired-pothole-on-laurier-600w-1350410369.jpg"
        )
    end

        