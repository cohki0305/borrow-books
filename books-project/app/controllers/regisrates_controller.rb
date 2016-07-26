class RegisratesController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    isbn = params[:isbn].to_s
    amazon_book = Amazon::Ecs.item_search('#{isbn}', :search_index => 'All', :country => 'jp',  :response_group => 'Large')

      item_attributes = amazon_book.get_element('ItemAttributes')
      image = amazon_book.items.first.get_hash('SmallImage')

      @book = Book.new(
        isbn: isbn,
        title: item_attributes.get('Title'),
        author: item_attributes.get('Author'),
        image_url: image["URL"]
      )
      if @book.save
        redirect_to regisrates_new_path
      else
        redirect_to root_path
      end
  end

end
