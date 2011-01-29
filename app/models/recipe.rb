class Recipe < ActiveRecord::Base
  has_many :recipe_ingredients, :dependent => :destroy
  has_many :ingredients, :through => :recipe_ingredients
  accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true#, :reject_if => lambda {|a| a[:amount].blank?}
  accepts_nested_attributes_for :ingredients, :allow_destroy => false #, :reject_if => lambda {|a| a[:name].blank?}



  #def ingredient_attributes=(ingredient_attributes)
   #@ingredients = []
    #ingredient_attributes.each do |id, a|
     # if a['value'].to_i > 0
      # ingredients << RecipeIngredient.create(:ingredient_id => id, :value => a['value'])
      #end
    #end
  #end
  
  #def value=(value)
  #  ri=RecipeIngredient.new(:value => value)
 #  ri.save
 # end
  #attr_accessor :value
  #attr_accessor :ingredients
  #attr_accessor :ingredient_id
  #attr_accessor :recipe_id



end
