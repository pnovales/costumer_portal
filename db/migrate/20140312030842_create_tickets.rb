class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :company
      t.string :status
      t.string :assigned_to
      t.string :contact
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
    add_index :tickets, ["user_id", "product_id"]
  end
end
