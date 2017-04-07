require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :category => nil,
        :name => "Name",
        :description => "Description",
        :task_budget => 2
      ),
      Task.create!(
        :category => nil,
        :name => "Name",
        :description => "Description",
        :task_budget => 2
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
