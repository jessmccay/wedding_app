class AddCompleteToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :complete, :boolean
  end
end
