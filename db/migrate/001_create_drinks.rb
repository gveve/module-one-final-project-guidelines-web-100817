class CreateDrinks < ActiveRecord::Migration[4.2]
  def change
    create_table :drinks do |t|
      t.string :drink_name
      t.string :sign
      t.integer :api_id
      t.string :instructions
      t.string :alcoholic
      t.string :category
      t.integer :no_ingredients
    end
  end

end
