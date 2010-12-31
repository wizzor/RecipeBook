class Ingredient < ActiveRecord::Base
  has_many :recipe_ingredients, :dependent => :destroy
  has_many :recipes, :through => :recipe_ingredients
  accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true
  # Probably would be wise to have weight/dimensions ratio
  attr_accessor :value
  #attr_accessor :recipes
  #attr_accessor :ingredient_id
  #attr_accessor :recipe_id
end
