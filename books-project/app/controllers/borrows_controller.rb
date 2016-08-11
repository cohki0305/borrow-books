class BorrowsController < ApplicationController
  before_action :authenticate_user!

  def create
    book_id = params[:book_id]
    return_date = params[:return_date]
    book = Book.find_by(id: book_id)
    borrow = current_user.borrows.build(book_id: book.id, return_date: return_date, status: true)

    if book.borrowable?
      if borrow.save
        redirect_to show_books_path(book)
      else
        redirect_to root_path
      end
    end
  end

  def return_book
    book_id = params[:book_id]
    book = Book.find_by(id: book_id)

    borrow = book.borrows.find_by(book_id: book_id, user_id: current_user.id, status: true)
    if borrow.update(status: false)
      redirect_to show_books_path(book)
    else
      redirect_to root_path
    end
  end

end
