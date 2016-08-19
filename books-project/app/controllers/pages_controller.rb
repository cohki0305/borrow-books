class PagesController < ApplicationController
  def index
    @ranking_reviews = Review.order("degree desc").limit(3)
  end

 #  private
 #  def book_ranking
 #    @books = Book.all
 #    @books.map do |book|
 #      [book, book.reviews.pluck(:degree).inject(:+)]
 #    end.sort! do |book1, book2|
 #      book2[1] <=> book1[1]
 #    end.map do |book|
 #      book[0]
 #    end
 #    return @books
 #  end


end
