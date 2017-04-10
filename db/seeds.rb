# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#This is our admin user, user with id 1. Always created when the app is initialized.

admin = User.new(email: "mpsdevs@gmail.com", username: "mps", password: "password", password_confirmation: "password")

Category.create(name: "Food", color: "Red", descripton: "Use this category to help you select the right food.", user_id: admin.id)
Category.create(name: "Drinks", color: "Green", descripton: "Use this category to help you select the right drinks.", user_id: admin.id)
Category.create(name: "Venue", color: "Blue", descripton: "Use this category to help you select the right venue.", user_id: admin.id)
Category.create(name: "Cake", color: "Pink", descripton: "Use this category to help you select the right cake.	", user_id: admin.id)
Category.create(name: "Invites", color: "Purple", descripton: "Use this category to help you select the right invitations.", user_id: admin.id)
Category.create(name: "Entertainment", color: "Orange", descripton: "Use this category to help you select the right venue.", user_id: admin.id)
Category.create(name: "Dress", color: "White", descripton: "Use this category to help you select the right dress.", user_id: admin.id)
Category.create(name: "Decor", color: "Turquoise", descripton: "Use this category to help you select the right decor.", user_id: admin.id)
Category.create(name: "Ceremony", color: "Brown", descripton: "Use this category to help you select the right ceremony.", user_id: admin.id)
Category.create(name: "For the couple", color: "Magenta", descripton: "Use this category to help you select the right couple activities.", user_id: admin.id)
Category.create(name: "Post-wedding", color: "Yellow", descripton: "Use this category to help you manage the aftermath.", user_id: admin.id)
