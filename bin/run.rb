require_relative '../config/environment'

def run_program
  welcome
  user_name = get_user_name
  if !User.find_by(username: user_name)
    user = User.create(username: user_name)
    user.sign = get_user_sign
    user.save
  else
    user = User.find_by(username: user_name)
    if user.sign == nil
      user.sign = get_user_sign
      user.save
    end
  end
  current_drink = get_mood_return_drink(user)
  # binding.pry
  drunkoscope = Horoscope.create(drink_id: current_drink.id, user_id: user.id)
  drunk = drunkoscope.horoscope_generator
  # binding.pry
  sleep(0.5)
    puts star_reader
  sleep(2)
    puts drunk
  sleep(4)
  user_input = get_user_selection
  while user_input != "3"
    if user_input == "1"
      current_drink = get_mood_return_drink(user)
      # binding.pry
      drunkoscope = Horoscope.create(drink_id: current_drink.id, user_id: user.id)
      drunk = drunkoscope.horoscope_generator
      sleep(0.5)
        puts star_reader
      sleep(2)
        puts drunk
    elsif user_input == "2"
      Horoscope.get_last_3_horoscopes(user.id).each {|horoscope| puts horoscope.horoscope}
    end
    sleep(4)
    user_input = get_user_selection
  end
end
run_program
