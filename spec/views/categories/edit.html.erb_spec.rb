require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :name => "MyString",
      :color => "MyString",
      :descripton => "MyText",
      :user => nil
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_name[name=?]", "category[name]"

      assert_select "input#category_color[name=?]", "category[color]"

      assert_select "textarea#category_descripton[name=?]", "category[descripton]"

      assert_select "input#category_user_id[name=?]", "category[user_id]"
    end
  end
end
