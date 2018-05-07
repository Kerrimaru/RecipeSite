class CreateRecipeIngredientAmounts < ActiveRecord::Migration[5.1]
  def self.up
    create_table :recipe_ingredient_amounts do |t|
      
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :recipe_ingredient_amounts
  end
end
