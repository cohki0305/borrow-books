class AddBookIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :book_id, :integer
    add_column :reviews, :user_id, :integer
  end
end
