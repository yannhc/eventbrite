require 'faker'

nb_user = 10
users = []

nb_user.times do |x|
    user = User.create!(
			email: "lesangdelaveine@yopmail.com",
			encrypted_password: "password",
			first_name: Faker::Books::Dune.planet,
			last_name: Faker::Books::Dune.city,
    )
end