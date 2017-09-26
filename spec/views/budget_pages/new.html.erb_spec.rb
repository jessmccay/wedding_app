require 'rails_helper'

RSpec.describe "budget_pages/new", type: :view do
  before(:each) do
    assign(:budget_page, BudgetPage.new(
      :budget => 1,
      :amount_spent => 1,
      :tasks => nil
    ))
  end

  it "renders new budget_page form" do
    render

    assert_select "form[action=?][method=?]", budget_pages_path, "post" do

      assert_select "input#budget_page_budget[name=?]", "budget_page[budget]"

      assert_select "input#budget_page_amount_spent[name=?]", "budget_page[amount_spent]"

      assert_select "input#budget_page_tasks_id[name=?]", "budget_page[tasks_id]"
    end
  end
end
