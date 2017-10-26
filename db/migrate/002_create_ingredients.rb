#Migration to initialize ingredients table
class CreateIngredients < ActiveRecord::Migration[4.2]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
    end
  end
end
