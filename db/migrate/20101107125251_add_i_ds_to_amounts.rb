class AddIDsToAmounts < ActiveRecord::Migration
  def self.up
	add_column :amounts, :value, :integer
	add_column :amounts, :ingredient_id, :integer
	add_column :amounts, :recipe_id, :integer
  end

  def self.down
  end
end
