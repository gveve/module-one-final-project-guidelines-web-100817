#User model so that running the program multiple times remembers the user and their horoscope
class User < ActiveRecord::Base
  has_many :horoscopes
  
end
