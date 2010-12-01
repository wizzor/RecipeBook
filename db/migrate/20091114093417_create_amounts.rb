class CreateAmounts < ActiveRecord::Migration
  def self.up
    create_table :amounts do |t|
      t.number :recipe_id
      t.number :ingredient_id
      t.number :amount
      t.number :unit_id

      t.timestamps
    end
  end

  def self.down
    drop_table :amounts
  end
end
