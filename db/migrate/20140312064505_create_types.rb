class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :nametype
      t.integer :product_id

      t.timestamps
    end
  end
end
