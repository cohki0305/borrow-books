class ReviewsController < ApplicationController

  before_action :authenticate_user!

  def create
    book = Book.find_by(id: params[:book_id])
    degree = params[:degree]
    content = params[:content]

    review = book.reviews.build(degree: degree, content: content, user_id: current_user.id)
    if review.save
      redirect_to show_books_path(review.book_id)
    else
      redirect_to show_books_path(review.book_id)
    end
  end

end
