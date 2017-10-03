require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context "accessing the website" do
    Steps "to access the website as a new user" do
      Given "I am on the landing page" do
        visit "/"
      end
      And "I can see a log in form" do
        expect(page).to have_content "Log in"
      end
      Then "I can sign up as a new user" do
        click_on "Sign up"
      end
      Then "I can successfully fill out the sign up form" do
        fill_in "Email", with: "mpsdevs@gmail.com"
        fill_in "Username", with: "mps"
        fill_in "Password", with: "password;)"
        fill_in "Password confirmation", with: "password;)"
        click_on "Sign up"
      end
      Then "I am taken to the Welcome page" do
        expect(page).to have_content "The countdown begins!"
        click_on "Logout"
      end

      Given "I created an account, I can log back in" do
        visit '/'
        expect(page).to have_content("Log in")
        fill_in "Email", with: "mpsdevs@gmail.com"
        fill_in "Password", with: "password;)"
        click_on "Log in"
      end
      And "I am back to the welcome page" do
        expect(page).to have_content "The countdown begins!"
      end
    end # end of steps
  end #end of context

  context "viewing my upcoming tasks on the homepage" do
    Steps "to seeing a homepage of tasks divided by category" do
      Given "I am logged in" do
        visit "/"
        fill_in "Email", with: "zoekravitz@gmail.com"
        fill_in "Password", with: "lolawolf"
        click_on "Log in"
      end
      Then "I can see a list of upcoming tasks based on category" do
        expect(page).to have_content("Food")
        expect(page).to have_content("2017-10-25 00:00:00 UTC: Find a caterer")
        expect(page).to have_content("Drinks")
        expect(page).to have_content("2018-05-25 00:00:00 UTC: Find a bartender")
        expect(page).to have_content("2018-08-25 00:00:00 UTC: Decide what alcohol to provide")
      end
    end #end of steps
  end #end of context

end #end of feature
