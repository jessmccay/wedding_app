class CreateBudgetPages < ActiveRecord::Migration[5.0]
  def change
    create_table :budget_pages do |t|
      t.integer :budget
      t.integer :amount_spent
      t.references :tasks, foreign_key: true

      t.timestamps
    end
  end
end
