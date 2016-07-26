class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def search
    search_words = params[:words]
    @amazon_book = Amazon::Ecs.item_search('#{search_words}', :search_index => 'All', :country => 'jp',  :response_group => 'Large')
  end
end
