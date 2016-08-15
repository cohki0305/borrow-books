module BooksHelper
  def average_degree(reviews)
    average = 0

    reviews.each do |review|
      average += review.degree
    end

    return average/reviews.length.to_f.round(3)
  end

  def who_is_borrowing?(book)
    user_id = book.borrows.find_by(status: true).user_id
    user_email = User.find(user_id).email
    return user_email
  end

  def id_of_man_borrowing(book)
    user_id = book.borrows.find_by(status: true).user_id
    return user_id
  end

end
