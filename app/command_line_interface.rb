def welcome
  # puts out a welcome message here!
  puts "\nFor centuries, humans have looked to the heavens for guidance.\nWe, at \e[1mDrunk Astrology CLI©\e[0m, feel that we can use Astrology as a tool for understanding ourselves, and what we should drink.\n\nIn a few simple questions we can provide you with guidance in the form of a Drunkoscope©."
end

def get_user_sign
  puts "\nYour Sun Sign, which is the zodiacal sign position of the Sun at the time of your birth. Each Sun Sign has a different perspective on the aspects of each day. Our exclusive Daily Drunkoscope offers an overview of how the planets think you should get wasted today.

        Please enter your Sun Sign:

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
        Pisces - February 20- March 20\n\n"
  sun_sign = gets.chomp.downcase
  if ['aries', 'taurus', 'gemini', 'cancer', 'leo', 'virgo', 'libra', 'scorpio', 'sagittarius', 'capricorn', 'aquarius', 'pisces'].include?(sun_sign)
    else
      puts "\n\n-----------------------------------"
      puts "\n\e[1mInvalid input. Please try again.\e[0m"
      get_user_sign
  end
  sun_sign
end

def get_mood_return_drink(user)
  puts "\n-----------------------------------"
  puts "\nAre you happy or sad? Enter 1 for happy, 2 for sad."
  # use gets to capture the user's input. This method should return that input, downcased.
  mood = gets.chomp.downcase
  if mood == 1 || 2
    else
      puts "\n\n-----------------------------------"
      puts "\n\e[1mInvalid input. Please try again.\e[0m"
      get_mood_from_user
  end
  # binding.pry
  find_drink_based_on_mood(mood, user.sign)
end

def get_user_name
  puts "\n-----------------------------------"
  puts "\nWhat is your name?"
  gets.chomp.downcase
end

def get_user_selection
  puts "What would you like to do now?"
  puts "Your options are:"
  puts "  1. What is your mood?"
  puts "  2. See your last 3 horoscopes"
  puts "  3. Exit"
  puts "Enter a number:"
  input = gets.chomp.downcase
  if input == "1" || "2" || "3"
  else
      puts "Invalid input. Please try again."
      get_user_selection
  end
  input
end

