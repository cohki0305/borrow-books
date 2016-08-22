module UsersHelper
  def now_borroing_books(current_user)
    current_user.borrows.where(status: true)
  end

  def delay?(borrow)
    true if borrow.created_at > borrow.return_date
  end
end
