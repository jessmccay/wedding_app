require 'rails_helper'
require 'test_helper'

RSpec.describe Task, type: :model do
  it "can be saved to the db" do
    user = User.new(username: "fake", email: "fake@fake.com", password: "faking", password_confirmation: "faking")
    user.save
    flowers = Category.new(name: "flowers", user_id: user.id)
    flowers.save
    task1 = Task.new(name: "call florist", category_id: flowers.id)
    expect(task1.save).to be true
  end
end
