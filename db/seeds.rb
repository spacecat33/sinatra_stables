User.destroy_all
Horse.destroy_all

5.times do
    u = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "123")
    u.horses.create(name: Faker::Creature::Horse.name) 
end