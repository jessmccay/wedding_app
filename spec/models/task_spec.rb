require 'rails_helper'

RSpec.describe Task, type: :model do

  user = User.new(username: "fake", email: "fake@fake.com", password: "faking", password_confirmation: "faking")
  user.save
  flowers = Category.new(name: "flowers", user_id: user.id)
  flowers.save
  task1 = Task.new(name: "call florist", category_id: flowers.id)
  task1.save
  task = Task.find_by_name("call florist")

  it "can be saved to the db" do
    expect(task1.save).to be true
  end

  it "can be retireved from the db" do
    expect(task.name).to eq task1.name
  end

  it "must belong to a category" do
    expect(task.category_id).to eq flowers.id
  end

  it "must belong to a user" do
    expect(flowers.user_id).to eq user.id
  end

  it "must have a default value of false for complete" do
    expect(task.complete).to be false
  end

end
