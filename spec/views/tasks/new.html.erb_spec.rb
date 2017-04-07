require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :category => nil,
      :name => "MyString",
      :description => "MyString",
      :task_budget => 1
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_category_id[name=?]", "task[category_id]"

      assert_select "input#task_name[name=?]", "task[name]"

      assert_select "input#task_description[name=?]", "task[description]"

      assert_select "input#task_task_budget[name=?]", "task[task_budget]"
    end
  end
end
