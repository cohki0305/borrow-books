class PagesController < ApplicationController

  def index
    book_ranking
  end

  def book_ranking
    @all_books = Book.all
    @tmp_array = Array.new

    @all_books.each do |book|
      if book.reviews.count >= 1
        @tmp_array << [book, (book.reviews.pluck(:degree).inject(0){|r,i| r+=i }/book.reviews.size).round(3)]
      else
        @tmp_array << [book, 0]
      end
    end

    @tmp_array.sort!{|array_one , array_two| array_two[1] <=> array_one[1]}

    @top_four_books = @tmp_array[0..4]
  end


end
