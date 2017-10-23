class CreateRecipes < ActiveRecord::Migration[4.2]
  def change
    create_table :recipes do |t|
      t.integer :drink_id
      t.integer :ingredient_id
    end
  end
end
