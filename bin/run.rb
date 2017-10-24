require_relative '../config/environment'

# create_drinks #Seeds database

def run_program
  welcome
  user_name = get_user_name
  if !User.find_by(username: user_name)
    user = User.create(username: user_name)
    user.sign = get_user_sign
    user.save
  else
    user = User.find_by(username: user_name)
  end
  current_drink = get_mood_return_drink(user)
  # binding.pry
  drunkoscope = Horoscope.create(drink_id: current_drink.id, user_id: user.id)
  drunk = drunkoscope.horoscope_generator
  puts drunk
end

run_program




# run
#   what's your name?
#   create a new user and save it or find itin the user table
#   if found user "welcome back"
#     if new user
#       ask for sign
#
#       ------------
#       what's my drunkoscopes
#         -ask about your day
#       list of past drunkoscopes
