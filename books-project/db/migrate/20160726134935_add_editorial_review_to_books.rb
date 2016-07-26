class AddEditorialReviewToBooks < ActiveRecord::Migration
  def change
    add_column :books, :editorial_review, :text
  end
end
