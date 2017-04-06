class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :wedding_date, :datetime
    add_column :users, :wedding_location, :text
    add_column :users, :wedding_budget, :integer
  end
end
