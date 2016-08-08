class Book < ActiveRecord::Base
  has_many :reviews, :dependent => :destroy
  has_many :borrows
  has_many :users, :through => :borrows
  validates :isbn, presence: true

  def borrowable?
    self.borrows.find_by(status: true) ? false : true
  end
end
