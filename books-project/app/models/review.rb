class Review < ActiveRecord::Base
  belongs_to :book
  validates :degree, presence: true
  validates :Content, presence: true

end
