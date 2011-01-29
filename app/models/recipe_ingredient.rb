class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient
  validates_presence_of :value
	accepts_nested_attributes_for :ingredient, :allow_destroy => false#, :reject_if => lambda {|a| a[:name].blank?}



end
