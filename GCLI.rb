def welcome
  # puts out a welcome message here!
  puts "For centuries, humans have looked to the heavens for guidance.
  Astrology is, put simply, the study of the correlation between the
   astronomical positions of the planets and events on earth. We, at Drunk Astrology,
    feel that we can use Astrology as a powerful and tool
   for understanding ourselves, others, and what we should drink. In a few simple questions
     we can provide you with guidance on your drinking habits for the day."
end

def run_program
  welcome
  sun_sign = get_user_sign
  if ['aries', 'taurus', 'gemini', 'cancer', 'leo', 'virgo', 'libra', 'scorpio', 'sagittarius', 'capricorn', 'aquarius', 'pisces'].include?(sun_sign)
    mood = get_mood_from_user
    if mood == 1 || 2
      booze = get_booze_from_user
      if  ['1', '2', '3', '4', '5'].include?(booze)
        horoscope_generator(sun_sign, mood, booze)
  else
    puts "Invalid input. Please try again."
    get_user_sign
  end
end

# def run_program
#   case get_user_choice
#     character = get_character_from_user
#     show_character_movies(character)
#   when "2"
#     movie = get_movie_from_user
#     show_movie_details(movie)
#   else
#     puts "Invalid input. Please try again."
#     get_user_choice
#   end
# end

def get_user_sign
  puts "Please enter your Sun Sign:
  Your Sun Sign, which is the zodiacal sign position of the Sun at
  the time of your birth. Each Sun Sign has a different perspective on the
  aspects of each day. Our exclusive Daily Drunkoscope offers an overview of
  how the planets think you should get wasted today.
  Aries - March 21 - April 20
  Taurus - April 21 - May 21
  Gemini - May 22 - June 21
  Cancer - June 22 - July 22
  Leo - July 23 -August 21
  Virgo - August 22 - September 23
  Libra - September 24 - October 23
  Scorpio - October 24 - November 22
  Sagittarius - November 23 - December 22
  Capricorn - December 23 - January 20
  Aquarius - January 21 - February 19
  Pisces - February 20- March 20"
  gets.chomp.downcase
end

def get_mood_from_user
  puts "Are you happy or sad? Enter 1 for happy, 2 for sad."
  # use gets to capture the user's input. This method should return that input, downcased.
  gets.chomp.downcase
end

def get_booze_from_user
  puts "What is your prefered alcohol?(enter a number) 1. Gin, 2. Vodka, 3. Whiskey, 4. Rum, 5. Tequila"
  #gets users perffered booze
  gets.chomp
end
