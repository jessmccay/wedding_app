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
Category.create(name: "Food", color: "Red", description: "Use this category to help you select the right food.", user_id: admin.id)
Category.create(name: "Drinks", color: "Green", description: "Use this category to help you select the right drinks.", user_id: admin.id)
Category.create(name: "Venue", color: "Blue", description: "Use this category to help you select the right venue.", user_id: admin.id)
Category.create(name: "Cake", color: "Pink", description: "Use this category to help you select the right cake.	", user_id: admin.id)
Category.create(name: "Invites", color: "Purple", description: "Use this category to help you select the right invitations.", user_id: admin.id)
Category.create(name: "Entertainment", color: "Orange", description: "Use this category to help you select the right venue.", user_id: admin.id)
Category.create(name: "Dress", color: "White", description: "Use this category to help you select the right dress.", user_id: admin.id)
Category.create(name: "Decor", color: "Turquoise", description: "Use this category to help you select the right decor.", user_id: admin.id)
Category.create(name: "Ceremony", color: "Brown", description: "Use this category to help you select the right ceremony.", user_id: admin.id)
Category.create(name: "For the couple", color: "Magenta", description: "Use this category to help you select the right couple activities.", user_id: admin.id)
Category.create(name: "Post-wedding", color: "Yellow", description: "Use this category to help you manage the aftermath.", user_id: admin.id)

#These are our in built tasks that the user can choose to keep or delete from their own app.
Task.create(name: "Find a caterer", category_id: 1, start_time: DateTime.new(2017,10,25), description: "Start researching caterers based on my food preferences!!!!", task_budget: 4000, complete:false)
Task.create(name: "Find a bartender", category_id: 2, start_time: DateTime.new(2018,5,25), description: "Start researching bartenders based on my drinking preferences!!!!", task_budget: 100, complete:false)
Task.create(name: "Decide what alcohol to provide", category_id: 2, start_time: DateTime.new(2018,8,25), description: "Start creating a list of the kind of alcohol I want to and don't want to serve at the wedding", task_budget: 0, complete:false)
Task.create(name: "Order tables and chairs", category_id: 3, start_time: DateTime.new(2018,10,25), description: "Call eastgate rentals once the RSVPS are returned", task_budget: 150, complete:false)
Task.create(name: "Order tent and dance floor", category_id: 3, start_time: DateTime.new(2018,10,25), description: "Call eastgate rentals once the RSVPS are returned", task_budget: 400, complete:false)
Task.create(name: "Decide on a venue", category_id: 3, start_time: DateTime.new(2017,8,01), description: "Start researching the best damn location for my wedding", task_budget: 9000, complete:false)
Task.create(name: "Go to a cake tasting", category_id: 4, start_time: DateTime.new(2017,2,25), description: "Eat loads and loads of cake", task_budget: 4000, complete:false)
Task.create(name: "Engagement photos", category_id: 5, start_time: DateTime.new(2017,7,15), description: "Call and book photographer, decide on location", task_budget: 150, complete:false)
Task.create(name: "Save the Date/'s", category_id: 5, start_time: DateTime.new(2017,8,01), description: "Be sure to obtain all addresses of potential guests", task_budget: 50, complete:false)
Task.create(name: "Send invitations", category_id: 5, start_time: DateTime.new(2017,9,15), description: "Decide on DIY or premade", task_budget: 100, complete:false)
Task.create(name: "Stamp envelopes", category_id: 5, start_time: DateTime.new(2017,2,25), description: "stamp evelopes so they can be mailed to guests", task_budget: 10)
Task.create(name: "Find a DJ", category_id: 6, start_time: DateTime.new(2018,3,25), description: "SFind a cool DJ for my wedding tunes", task_budget: 4000, complete:false)
Task.create(name: "Message instagram artist for dress", category_id: 7, start_time: DateTime.new(2017,3,25), description: "None", task_budget: 4000, complete:false)
Task.create(name: "Start making origami cranes", category_id: 8, start_time: DateTime.new(2017,6,25), description: "none", task_budget: 4000, complete:false)
Task.create(name: "Order flowers", category_id: 8, start_time: DateTime.new(2017,6,25), description: "Farmers market or florist? Contact to compare rates", task_budget: 200, complete:false)
Task.create(name: "Find a priest", category_id: 9, start_time: DateTime.new(2018,1,25), description: "Alex can get ordained online wooo", task_budget: 80, complete:false)
Task.create(name: "Buy wedding bands", category_id: 10, start_time: DateTime.new(2015,5,25), description: "None", task_budget: 4000, complete:false)
Task.create(name: "Book honeymoon suite in Bali", category_id: 11, start_time: DateTime.new(2018,1,25), description: "None", task_budget: 4000, complete:false)
