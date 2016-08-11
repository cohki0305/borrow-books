class Book < ActiveRecord::Base
  has_many :reviews, :dependent => :destroy
  has_many :borrows
  has_many :users, :through => :borrows
  validates :isbn, presence: true

  def borrowable?
    self.borrows.find_by(status: true) ? false : true
  end

  def current_user_borrowed_book?(current_user)
    now_borrow = self.borrows.find_by(status: true)
    now_borrow.user.id == current_user.id ? true : false
  end
end
