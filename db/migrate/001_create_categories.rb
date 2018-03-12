class CreateCategories < ActiveRecord::Migration[5.1]
  def self.up
    create_table :categories do |t|
      t.string :name
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :categories
  end
end
