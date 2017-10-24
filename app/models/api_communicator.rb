require 'rest-client'
require 'json'
require 'pry'

#require_relative '../app/models/drink.rb'
#require_relative '../app/models/ingredient.rb'
#require_relative '../app/models/recipe.rb'

def get_category_urls
  raw_data = RestClient.get("http://www.thecocktaildb.com/api/json/v1/1/list.php?c=list")
  category_data = JSON.parse(raw_data)
  base_url = "http://www.thecocktaildb.com/api/json/v1/1/filter.php?c="
  category_urls = []
  category_data["drinks"].each do |category|
    category_urls << ("http://www.thecocktaildb.com/api/json/v1/1/filter.php?c=" + category["strCategory"])
  end
  category_urls
end

def get_drink_ids
  category_urls = get_category_urls
  drink_ids = []
  category_urls.each do |url|
    raw_data = RestClient.get(url)
    drinks_category = JSON.parse(raw_data)
    drinks_category["drinks"].each do |drink|
      drink_ids << drink["idDrink"]
    end
  end
  drink_ids
end

def create_drinks
  drink_ids = get_drink_ids
  drink_ids.each do |id|
    raw_data = RestClient.get("http://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=#{id}")
    drink_data = JSON.parse(raw_data)["drinks"][0]
    new_drink = Drink.find_or_create_by(drink_name: drink_data["strDrink"]) 
    new_drink.drink_name = drink_data["strDrink"]
    new_drink.api_id = drink_data["idDrink"]
    new_drink.instructions = drink_data["strInstructions"]
    new_drink.alcoholic = drink_data["strAlcoholic"]
    new_drink.category = drink_data["strCategory"]
    new_drink.save
    create_ingredients(drink_data)
    create_recipes(drink_data, new_drink)
  end
end

def create_recipes(drink_data, new_drink)
  i = 1
  while i < 15
    if drink_data["strIngredient#{i}"] != ""
      Recipe.create do |r|
        r.drink_id = new_drink.id
        r.ingredient_id = Ingredient.find_by(ingredient_name: drink_data["strIngredient#{i}"]).id
      end
    end
    i+=1
  end
end

def create_ingredients(drink_data)
  ingredients = []
  i = 1
  while i < 15
    if drink_data["strIngredient#{i}"] != ""
      new_ingredient = Ingredient.find_or_create_by(ingredient_name: drink_data["strIngredient#{i}"])
      new_ingredient.ingredient_name = drink_data["strIngredient#{i}"]
    end
    i+=1
  end
  ingredients
end


