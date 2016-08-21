module BooksHelper

  def who_is_borrowing?(book)
    user_id = book.borrows.find_by(status: true).user_id
    user_email = User.find(user_id).email
    return user_email
  end

  def id_of_man_borrowing(book)
    user_id = book.borrows.find_by(status: true).user_id
    return user_id
  end


end
