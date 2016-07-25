class AddPublishToBooks < ActiveRecord::Migration
  def change
    add_column :books, :publish_company, :string
    add_column :books, :published_day, :date
  end
end
