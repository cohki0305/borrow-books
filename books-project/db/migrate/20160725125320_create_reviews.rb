class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :degree
      t.text :content

      t.timestamps null: false
    end
  end
end
