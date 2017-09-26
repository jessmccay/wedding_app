require "rails_helper"

RSpec.describe BudgetPagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/budget_pages").to route_to("budget_pages#index")
    end

    it "routes to #new" do
      expect(:get => "/budget_pages/new").to route_to("budget_pages#new")
    end

    it "routes to #show" do
      expect(:get => "/budget_pages/1").to route_to("budget_pages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/budget_pages/1/edit").to route_to("budget_pages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/budget_pages").to route_to("budget_pages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/budget_pages/1").to route_to("budget_pages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/budget_pages/1").to route_to("budget_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/budget_pages/1").to route_to("budget_pages#destroy", :id => "1")
    end

  end
end
