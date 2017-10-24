require_relative '../config/environment'

create_drinks #Seeds database

def run_program
  welcome
  sun_sign = get_user_sign
  if ['aries', 'taurus', 'gemini', 'cancer', 'leo', 'virgo', 'libra', 'scorpio', 'sagittarius', 'capricorn', 'aquarius', 'pisces'].include?(sun_sign)
    mood = get_mood_from_user
    if mood == 1 || 2
      horoscope_generator(sun_sign, mood)
  else
    puts "Invalid input. Please try again."
    get_user_sign
  end
end
