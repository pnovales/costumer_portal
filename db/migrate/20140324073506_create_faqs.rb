class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :title
      t.string :content
      t.boolean :visible
      t.boolean :efective

      t.timestamps
    end
  end
end
