puts "Creating test user"

u = User.create!(username: "tester", password: "password", admin: true)