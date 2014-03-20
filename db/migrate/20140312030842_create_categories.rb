class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :namecategory
      t.integer :product_id

      t.timestamps
    end
  end
end
