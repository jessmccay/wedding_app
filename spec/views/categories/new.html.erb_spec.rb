require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :name => "MyString",
      :color => "MyString",
      :descripton => "MyText",
      :user => nil
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_color[name=?]", "category[color]"

      assert_select "textarea#category_descripton[name=?]", "category[descripton]"

      assert_select "input#category_user_id[name=?]", "category[user_id]"
    end
  end
end
