class PagesController < ApplicationController
  def index
    @ranking_reviews = Review.order("degree desc").limit(3)
  end
end
