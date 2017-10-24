class Recipe < ActiveRecord::Base

  def self.get_ingredients(drink_id)
    Recipe.where("drink_id = #{drink_id}").map do |recipe|
      Ingredient.find_by(id: recipe.ingredient_id).ingredient_name
    end
  end
end
