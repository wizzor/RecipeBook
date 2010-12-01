class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.number :id
      t.string :name
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :ingredients
  end
end