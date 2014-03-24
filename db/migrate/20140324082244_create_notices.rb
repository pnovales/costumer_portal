class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.string :content
      t.boolean :visible

      t.timestamps
    end
  end
end
