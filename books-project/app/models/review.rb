class Review < ActiveRecord::Base
  belongs_to :book
  validates :degree, presence: true
  validates :content, presence: true

end
