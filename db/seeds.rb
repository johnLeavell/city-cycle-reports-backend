
user1 = User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "password"
    ) 

user2 = User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "password"
    ) 

user3 = User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "password"
    ) 

user4 = User.create(
    firstname: Faker::Name.first_name,
    lastname: Faker::Name.last_name,
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "password"
    ) 


    5.times do
        Report.create(
            title: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            content: Faker::Hipster.paragraph,
            user_id: 1,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://randomuser.me/api/portraits/med/women/57.jpg"
        )
    end

    5.times do
        Report.create(
            title: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            content: Faker::Hipster.paragraph,
            user_id: 2,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://randomuser.me/api/portraits/med/women/57.jpg"
        )
    end

    5.times do
        Report.create(
            title: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            content: Faker::Hipster.paragraph,
            user_id: 3,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://randomuser.me/api/portraits/med/women/57.jpg"
        )
    end

    5.times do
        Report.create(
            title: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
            content: Faker::Hipster.paragraph,
            user_id: 4,
            location: Faker::Address.full_address,
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
            date: Faker::Date.between(from: 2.days.ago, to: Date.today) ,
            img_src: "https://randomuser.me/api/portraits/med/women/57.jpg"
        )
    end

        