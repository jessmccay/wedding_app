require 'rails_helper'

RSpec.describe "budget_pages/show", type: :view do
  before(:each) do
    @budget_page = assign(:budget_page, BudgetPage.create!(
      :budget => 2,
      :amount_spent => 3,
      :tasks => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
