require 'rails_helper'
load "#{Rails.root}/db/seeds.rb"

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

      Then "I can see the create task button on my home page" do
        visit "/"
        click_button "Create Task"
      end
      And "I can fill out a form to create a new task" do
        select('Decor', :from => 'task[category_id]')
        fill_in "Name", with: "Florist"
        click_on "Create Task"
      end
      And "I can see the created task" do
        expect(page).to have_content "Task was successfully created."
        expect(page).to have_content "Florist"
      end

      And "I can also see 4 buttons" do
        expect(page).to have_content "Edit"
        expect(page).to have_content "Destroy"
        expect(page).to have_button "Complete Task"
        expect(page).to have_content "Back"
      end
      And "I can add tasks to an existing category" do
        click_on "Tasks"
        click_on "Food"
        first('.panel').click_link('New Task')
        expect(page).to have_content "Category"
      end
    end
  end

  context 'Completing a task' do
    Steps 'to marking a task as complete' do
      Given 'I am logged in' do
        visit '/'
        fill_in 'Email', with: 'zoekravitz@gmail.com'
        fill_in 'Password', with: 'lolawolf'
        click_on 'Log in'
      end

      Then 'I can view a task' do
        click_on 'Tasks'
        click_on 'Decor'
        click_on 'Order flowers'
      end

      Then 'I can mark my task as complete on the modal form' do
        click_on 'Complete Task'
        expect(page).to have_content 'Mark As Complete'
        click_on 'Complete'
      end

      And 'my task is marked as complete' do
        expect(page).to have_content "Task Complete."
      end

      Then 'I can go back to the tasks page' do
        click_on 'Back'
        expect(page).to have_content "Food"
        expect(page).to have_content "Drinks"
        expect(page).to have_content "Decor"
      end

      And "I can see my updated list of Completed Tasks" do
        expect(page).to have_content "Completed Tasks"
        expect(page).to have_content "Order flowers: completed on DATE"
      end
    end
  end
end
