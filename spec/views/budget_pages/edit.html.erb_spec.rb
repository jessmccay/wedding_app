require 'rails_helper'

RSpec.describe "budget_pages/edit", type: :view do
  before(:each) do
    @budget_page = assign(:budget_page, BudgetPage.create!(
      :budget => 1,
      :amount_spent => 1,
      :tasks => nil
    ))
  end

  it "renders the edit budget_page form" do
    render

    assert_select "form[action=?][method=?]", budget_page_path(@budget_page), "post" do

      assert_select "input#budget_page_budget[name=?]", "budget_page[budget]"

      assert_select "input#budget_page_amount_spent[name=?]", "budget_page[amount_spent]"

      assert_select "input#budget_page_tasks_id[name=?]", "budget_page[tasks_id]"
    end
  end
end
