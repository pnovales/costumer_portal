class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :descriptionticket
      t.string :priority
      t.string :company
      t.string :status
      t.string :assignedto
      t.string :contactname
      t.integer :user_id

      t.timestamps
    end
  end
end
