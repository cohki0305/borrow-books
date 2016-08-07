class BorrowsController < ApplicationController
  
  def create
    book_id = params[:book_id]
    return_date = params[:return_date]
    book = Book.find_by(id: book_id)
    borrow = current_user.borrows.build(book_id: book.id, return_date: return_date, status: true)

    if borrow.save
      redirect_to show_books_path(book)
    else
      redirect_to root_path
    end
  end
end
