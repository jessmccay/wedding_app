class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.datetime :start_time
      t.string :description
      t.integer :task_budget

      t.timestamps
    end
  end
end
