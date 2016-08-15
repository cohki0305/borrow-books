module BooksHelper
  def average_degree(reviews)
    average = 0

    reviews.each do |review|
      average += review.degree
    end

    return average/reviews.length.to_f.round(3)

  end
end
