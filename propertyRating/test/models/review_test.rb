require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "has a review has a rating" do
  test_review = Review.create(rating:"1", explanation:"Blah")
  assert test_review.rating = "1"
  end  
  
  test " average rating" do
    test_review1 = Review.create(rating:'1', explanation:"gross")
    test_review2 = Review.create(rating:'5', explanation:"not gross")
    test_average = (test_review1.rating + test_review2.rating) / 2
    assert test_average = "3"
  end
end
