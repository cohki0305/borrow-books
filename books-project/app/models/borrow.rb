class Borrow < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :return_date, presence: true
  validate :validate_return_date

  private
  def validate_return_date
   self.created_at = Time.now if self.created_at == nil
   errors.add(:return_date, "") if self.created_at > self.return_date
  end
end
