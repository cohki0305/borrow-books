class Book < ActiveRecord::Base
  has_many :reviews, :dependent => :destroy
  has_many :borrows
  has_many :users, :through => :borrows

  def borrowable?
    self.borrows.find_by(status: true) ? false : true
  end
end
