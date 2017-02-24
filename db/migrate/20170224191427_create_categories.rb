class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :color
      t.text :descripton
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end