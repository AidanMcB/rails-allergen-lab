class CreateAmounts < ActiveRecord::Migration[6.0]
  def change
    create_table :amounts do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
    end
  end
end
