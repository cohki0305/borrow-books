class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @review = @book.reviews.build
    @reviews = @book.reviews.all
  end

  def search
    search_words = params[:words]
    @items = Amazon::Ecs.item_search(search_words, :search_index => 'All', :country => 'jp',  :response_group => 'Large').items
  end

  def regisrate_results
    item = params[:title]
  end

end
