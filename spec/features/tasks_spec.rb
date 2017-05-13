require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  context "creating new tasks" do
    Steps "create tasks as a logged in user" do
      Given "I am on the landing page" do
        visit "/"
      end
      And "I can sign up as a new user" do
        click_on "Sign up"
      end
      Then "I can fill out the sign up form" do
        fill_in "Email", with: "mpsdevs@gmail.com"
        fill_in "Username", with: "mps"
        fill_in "Password", with: "password;)"
        fill_in "Password confirmation", with: "password;)"
        click_on "Sign up"
      end
      And "I am back to the welcome page" do
        expect(page).to have_content "The countdown begins!"
      end
      Then "I can create a new category" do
        visit '/categories'
        click_on "New Category"
        fill_in "Name", with: "Flowers"
        fill_in "Color", with: "Pink"
        #Need to change spelling
        fill_in "Descripton", with: "Get pretty ones"
        click_on "Create Category"
        expect(page).to have_content "Category was successfully created."
      end
      Then "I can see the create task button on my home page" do
        visit "/"
        click_button "Create a New Task"
      end
      And "I can fill out a form to create a new task" do
        fill_in "Category", with: "#{Category.first.id}"
        fill_in "Name", with: "Florist"
        click_on "Create Task"
      end
      And "I can see the created task" do
        expect(page).to have_content "Task was successfully created."
        expect(page).to have_content "Florist"
      end

    end # end of steps
  end #end of context
end
