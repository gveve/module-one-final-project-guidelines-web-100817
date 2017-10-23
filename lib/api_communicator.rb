require 'rest-client'
require 'json'
require 'pry'

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

def create_recipes

end

def create_ingredients

end


