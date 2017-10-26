#Drink model inherits class methods and attributes from activerecord,
#Has a many to many relationship with ingredients through recipes
class Drink < ActiveRecord::Base
  has_many :recipes
  has_many :ingredients, through: :recipes
end
