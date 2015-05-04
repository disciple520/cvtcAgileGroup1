require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "has a review has a rating" do
  test_review = Review.create(rating:"1", explanation:"Blah")
  assert test_review.rating = "1"
  end  
end
