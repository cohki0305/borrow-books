class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :status
      t.date :return_date

      t.timestamps null: false
    end
  end
end
