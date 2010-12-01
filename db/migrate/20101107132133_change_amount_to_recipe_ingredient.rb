class ChangeAmountToRecipeIngredient < ActiveRecord::Migration
  def self.up
   drop_table :amounts
	add_column :recipe_ingredients, :value, :integer
	add_column :recipe_ingredients, :ingredient_id, :integer
	add_column :recipe_ingredients, :recipe_id, :integer
   
  end

  def self.down
  end
end
