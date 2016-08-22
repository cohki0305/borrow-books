class Borrow < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :return_date, presence: true
  validate :validate_return_date

  private
  def validate_return_date
   errors.add(:return_date, "今日以降で返却日を指定してください") if Time.now > self.return_date
  end
end
