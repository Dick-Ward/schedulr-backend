# require 'faker'
#
# User.destroy_all
# Appointment.destroy_all
#
# 10.times do
#   User.create(
#     email: Faker::Internet.free_email,
#     password: Faker::Internet.password,
#     avatar: Faker::Avatar.image
#   )
# end
#
#
# 100.times do
#   Appointment.create(
#     user_id: Faker::Number.between(1,10),
#     street_address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     date_time: Faker::Time.between(DateTime.now, DateTime.now + 30),
#     title: Faker::Commerce.department(1),
#     duration: Faker::Number.between(15,120),
#     description: Faker::Hacker.say_something_smart
#   )
# end
