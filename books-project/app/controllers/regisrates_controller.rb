class RegisratesController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    isbn = params[:isbn].to_s
    amazon_book = Amazon::Ecs.item_search(isbn, :search_index => 'All', :country => 'jp',  :response_group => 'Large')

      item = amazon_book.items.first
      title = item.get('ItemAttributes/Title')
      author = item.get('ItemAttributes/Author')
      image = item.get('LargeImage/URL')
      editorial_review = item.get('EditorialReviews/EditorialReview/Content')
      book = Book.new(
        isbn: isbn,
        title: title,
        author: author,
        image_url: image,
        editorial_review: editorial_review,
      )

      if book.save
        redirect_to show_books_path(book.id)
      else
        redirect_to regisrates_new_path
      end
  end

end
