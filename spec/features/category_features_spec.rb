
  require 'rails_helper'


  RSpec.feature "CategoryFeatures", type: :feature do
    #below comments are our attempts at loading seed file into test db
    # describe "db seed tests" do
    #     before(:each) do
    #       load "#{Rails.root}/db/seeds.rb"
    #     end
    context "new or existing categories" do
      Steps "to view our preexisting categories" do
        Given "I am on the landing page" do
          visit "/"
        end
        And "I can sign up as a new user" do
          click_on "Sign up"
        end
        Then "I can fill out the sign up form" do
          expect(page).to have_content "Let's get started!"
          fill_in "Email", with: "mpsdevs@gmail.com"
          fill_in "Username", with: "mps"
          fill_in "Password", with: "password;)"
          fill_in "Password confirmation", with: "password;)"
          click_on "Sign up"
        end
        Then "I can go see my categories" do
          click_on "Tasks"
        end
        And "I can see 10 pre-existing categories" do
          expect(page).to have_content "Food"
          expect(page).to have_content "Drinks"
          expect(page).to have_content "Cake"
          expect(page).to have_content "Venue"

        end
      end
    end
  # end
  end #end fe
