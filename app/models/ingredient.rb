class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients, :dependent => :destroy
  has_many :recipes, :through => :recipe_ingredients



  attr_accessor :amount
  attr_accessor :recipes
  attr_accessor :ingredient_id
  attr_accessor :recipe_id
end
