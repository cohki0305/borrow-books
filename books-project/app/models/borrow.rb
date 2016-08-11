class Borrow < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :return_date,
    presence: true

end
