# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

user.camper_profile = CamperProfile.create(username: "kaileeagray")

user = User.create(email: "meek00211@yahoo.com", name: "Steve", password: "stevesteve", bio: "luv of life")
user.camper_profile = CamperProfile.create(username: "meek00211", points: 1000)

user = User.create(email: "no_fcc@example.com", name: "No Account", password: "nofcc123", bio: "needs to sign up!")

CamperProfile.create(username: "no_user", points: 10000)

User.create(email: "no_fcc_2@example.com", name: "No Account 1", password: "nofcc123", bio: "needs to sign up for fcc!")

CamperProfile.create(username: "no_user_2", points: 20000)
