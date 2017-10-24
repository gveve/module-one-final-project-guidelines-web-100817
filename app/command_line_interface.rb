def welcome
  # puts out a welcome message here!
  puts "For centuries, humans have looked to the heavens for guidance. \nWe, at Drunk Astrology,
    feel that we can use Astrology as a powerful and tool for \nunderstanding ourselves, others, and what we should drink. In a few simple questions
     we can provide you with guidance on your drinking habits for the day."
end

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
  sun_sign = gets.chomp.downcase
  if ['aries', 'taurus', 'gemini', 'cancer', 'leo', 'virgo', 'libra', 'scorpio', 'sagittarius', 'capricorn', 'aquarius', 'pisces'].include?(sun_sign)
    else
      puts "Invalid input. Please try again."
      get_user_sign
  end
  sun_sign
end

def get_mood_return_drink(user)
  puts "Are you happy or sad? Enter 1 for happy, 2 for sad."
  # use gets to capture the user's input. This method should return that input, downcased.
  mood = gets.chomp.downcase
  if mood == 1 || 2
    else
      puts "Invalid input. Please try again."
      get_mood_from_user
  end
  # binding.pry
  find_drink_based_on_mood(mood, user.sign)
end

def get_user_name
  puts "What is your name?"
  gets.chomp.downcase
end
