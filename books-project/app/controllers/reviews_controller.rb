class ReviewsController < ApplicationController

  def create
    @review = Book.reviews.build(params_review)
    if @review.save
      redirect_to show_books_path(@review.book)
    else
      redirect_to show_books_path(@review.book)
    end
  end

  private
  def params_review
    params.permit(:review).require(:degree, :content)
  end
end
