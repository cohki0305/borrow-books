class RegisratesController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    isbn = params[:isbn].to_s
    amazon_books = Amazon::Ecs.item_search('#{isbn}', :search_index => 'All', :country => 'jp')

      item_attributes = amazon_books.get_element('ItemAttributes')
      @book = Book.new(
        isbn: isbn,
        title: item_attributes.get('Title'),
        author: item_attributes.get('Author')
      )
      if @book.save
        redirect_to root_path
      end
  end

end
