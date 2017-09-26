require 'rails_helper'

RSpec.describe "budget_pages/index", type: :view do
  before(:each) do
    assign(:budget_pages, [
      BudgetPage.create!(
        :budget => 2,
        :amount_spent => 3,
        :tasks => nil
      ),
      BudgetPage.create!(
        :budget => 2,
        :amount_spent => 3,
        :tasks => nil
      )
    ])
  end

  it "renders a list of budget_pages" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
