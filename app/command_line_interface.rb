def welcome

puts"
______                  _      _   _
|  _  \\                | |    | | | |
| | | |_ __ _   _ _ __ | | __ | |_| | ___  _ __ ___  ___  ___ ___  _ __   ___ ___
| | | | '__| | | | '_ \\| |/ / |  _  |/ _ \\| '__/ _ \\/ __|/ __/ _ \\| '_ \\ / _ / __|
| |/ /| |  | |_| | | | |   <  | | | | (_) | | | (_) \\__ | (_| (_) | |_) |  __\\__ \\
|___/ |_|   \\__,_|_| |_|_|\\_\\ \\_| |_/\\___/|_|  \\___/|___/\\___\\___/| .__/ \\___|___/
                                                                  | |
                                                                  |_|
"
sleep(1)
  puts "
                                                   .
                 _.-'''-._                         |
               .'   .-'``|'.                 '.  _..._  .'
              /    /    -*- \\                  .'     '.
             ;   <{      |   ;            '-. :         : .-'
             |    _\\ |       |           _ _  ; L I F E ;  _ _
             ;   _\\ -*- |    ;                :         :
              \\   \\  | -*-  /              .-' '._   _.' '-.
               '._ '.__ |_.'                  .   ```   .
                  '-----'                    '     |     '
                                                   '
        "
sleep(0.5)
  puts "\nFor centuries, humans have looked to the heavens for guidance.\n\nWe, at \e[1mDrunk Astrology CLI©\e[0m, feel that we can use Astrology as\na tool for understanding ourselves, and what we should drink.\n\n"
sleep(0.5)
  puts "In a few simple questions we can provide you with guidance in\nthe form of a Drunkoscope©."
end

def get_user_sign
  sleep(0.5)
  puts "\n    Your Sun Sign, which is the zodiacal sign position of the Sun at the time of your birth.
     Each Sun Sign has a different perspective on the aspects of each day.

          Our exclusive Daily Drunkoscope offers an overview of how the planets
          think you should get wasted today.

        \e[1mPlease enter your Sun Sign:\e[0m

  Pisces 2/21 - 3/20    Aries - 3/21 - 4/20    Taurus - 4/21 - 5/20    Gemini - 5/21 - 6/20
      '-.    .-'             .-.   .-.               .     .                 ._____.
         :  :               (_  \\ /  _)              '.___.'                   | |
       --:--:--                  |                   .'   '.                   | |
         :  :                    |                  :       :                 _|_|_
      .-'    '-.                 |                   '.___.'                 '     '
   Cancer - 6/21 - 7/20    Leo - 7/21 - 8/20      Virgo - 8/21 - 9/20      Libra - 9/21 - 10/20
           .--.                   .--.                 _
          /   _'.                (    )               ' ':--.--.                     __
         (_) ( )                (_)  /                   |  |  |_               ___.'  '.___
         '.    /                    (_.                  |  |  | )              ____________
          '--'                                           |  |  |/
  Scorpio 10/21 - 11/20   Sagittarius 11/21 - 12/20 Capricorn 12/21 - 1/20 Aquarius 1/21 - 2/20
       _                               ...                        _
      ' ':--.--.                      .':                \\      /_)
         |  |  |                    .'                    \\    /'.           .-^-._.-^-._.-
         |  |  |  ...           '..'                       \\  /   :          .-^-._.-^-._.-
               '---':           .''.                        \\/ __.'
\n\n "
  sun_sign = gets.chomp.downcase
  if %w[aries taurus gemini cancer leo virgo libra scorpio sagittarius capricorn aquarius pisces].include?(sun_sign)
  else
      puts "\n\n.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:."
      puts "\n\e[1mInvalid input. Please try again.\e[0m"
      get_user_sign
  end
  sun_sign
end

def get_mood_return_drink(user)
  puts "\n.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:."
  sleep(1)
  puts "\n\e[1mAre you happy or sad? Enter 1 for happy, 2 for sad.\e[0m\n\n\n"
  # use gets to capture the user's input. This method should return that input, downcased.
  mood = gets.chomp.downcase
  array = %w[1 2]
  until array.include?(mood)
    puts "\n\n.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:."
    puts "\n\e[1mInvalid input. Please try again.\e[0m\n"
    puts "\n\e[1mAre you happy or sad? Enter 1 for happy, 2 for sad.\e[0m\n"
    mood = gets.chomp.downcase
  end
  find_drink_based_on_mood(mood, user.sign)
  # binding.pry
end

def get_user_name
  sleep(1)
  puts "\n.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:."
  sleep(1)
  puts "\n\e[1mWhat is your name?\e[0m\n\n\n"
  gets.chomp.downcase
end

def get_user_selection
  puts "\n.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:."
  puts "\n\e[1mWhat would you like to do now?\e[0m"
  puts "\nYour options are:\n"
  puts '  1. Get another horoscope'
  puts '  2. See your last 3 horoscopes'
  puts '  3. Exit'
  puts "\nEnter a number:\n"
  input = gets.chomp.downcase
  array = %w[1 2 3]
  until array.include?(input)
    puts "\n\n.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:._.:*~*:."
    puts "\n\e[1mInvalid input. Please try again.\e[0m"
      puts "\nYour options are:\n"
      puts '  1. Get another horoscope'
      puts '  2. See your last 3 horoscopes'
      puts '  3. Exit'
      puts "\nEnter a number:"
      input = gets.chomp.downcase
  end
  input
end

def star_reader
  puts "
                *    .
          '  +       @    .  '
        +      . --- .   +
      *      /.'`_._`'.\\       '
          . |:.reading.:|   *
     @      |::.your.:::| .
        +    \\:'stars':/       '
              /`-...-'\\  '   +
     '       /         \\   .    @
       *     `-.,___,.-'
"
end
