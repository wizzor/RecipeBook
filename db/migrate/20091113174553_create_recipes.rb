class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.number :id
      t.string :name
      t.number :people

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
