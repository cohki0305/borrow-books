module UsersHelper
  def now_borroing_books(current_user)
    current_user.borrows.where(status: true)
  end
end
