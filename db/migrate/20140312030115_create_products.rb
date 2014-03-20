class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nameproduct
      t.string :firmwareversion
      t.string :descriptionproduct
      t.boolean :active
      t.integer :ticket_id

      t.timestamps
    end
  end
end
