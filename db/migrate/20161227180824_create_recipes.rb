class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :slug
      t.integer :author_id
      t.integer :level
      t.integer :cook_time
      t.text :instructions
      t.text :ingredients

      t.timestamps
    end
  end
end
