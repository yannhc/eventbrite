require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

5.times do |index|
  User.create(
    email:Faker::Internet.email,
    password: "wesh",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Food.description
   )
end

5.times do |index|
  Event.create(
    start_date: DateTime.strptime('2024-02-20T04:05:06+07:00', '%Y-%m-%dT%H:%M:%S%z'),
    duration: 55,
    title: ["Beuverie", "Karaoke", "Foot", "Gala", "Teuf"].sample,
    description: Faker::Lorem.paragraph_by_chars(number: 50, supplemental: false),
    price: rand(1..1000),
    location: ["Metz", "Nancy", "Luxembourg", "Thionville", "Marseille"].sample,
    administrator: User.all.sample
   )
end

5.times do |index|
  Attendance.create(
    stripe_customer_id: ["gros cochon", "freroooooot"].sample,
    attendant: User.all.sample,
    event: Event.all.sample 
   )
end