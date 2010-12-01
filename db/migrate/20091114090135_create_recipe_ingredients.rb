class CreateRecipeIngredients < ActiveRecord::Migration
  def self.up
    create_table :recipe_ingredients do |t|
      t.number :recipe_id
      t.number :ingredient_id
      t.number :amount
      t.number :unit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_ingredients
  end
end
