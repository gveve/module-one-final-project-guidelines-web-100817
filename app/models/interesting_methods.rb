

def find_drinks_based_on_sign(star_sign)
  #Find a drink based on your star sign
  Drink.where(sign: star_sign)
end

def find_drink_based_on_mood(mood, star_sign)
    #Find a random drink based on your start sign and mood
    #Mood - 1 = Happy || 2 = Sad
    #uses find_drinks_based_on_sign as helper method
  drinks = find_drinks_based_on_sign(star_sign)
  if mood == "1" #happy = 3 or less ingredients in drink
    return drinks.select {|drink| drink.no_ingredients <= 3}.sample
    #samples to get random drink
  elsif mood == "2" #sad = 4 or more ingredients in drink
    return drinks.select{|drink| drink.no_ingredients >= 4}.sample
    #samples to get random drink
  end
end
