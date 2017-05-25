# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#This is our admin user, user with id 1. Always created when the app is initialized.
admin = User.create(email: "zoekravitz@gmail.com", username: "zoe", password: "lolawolf")



#These are our inbuilt categories that the user can choose from or add to
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

#These are our in built tasks that the user can choose to keep or delete from their own app.
Task.create(name: "Find a caterer", category_id: 1, start_time: DateTime.new(2017,10,25), description: "Start researching caterers based on my food preferences!!!!", task_budget: 4000)
Task.create(name: "Find a bartender", category_id: 2, start_time: DateTime.new(2018,5,25), description: "Start researching bartenders based on my drinking preferences!!!!", task_budget: 100)
Task.create(name: "Decide what alcohol to provide", category_id: 2, start_time: DateTime.new(2018,8,25), description: "Start creating a list of the kind of alcohol I want to and don't want to serve at the wedding", task_budget: 0)
