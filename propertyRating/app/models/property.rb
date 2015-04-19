class Property < ActiveRecord::Base
    has_many :reviews, :dependent => :destroy
  
  def self.search(search)
    where("address LIKE ?", "%#{search}%") 
  end
  
  def average_rating
    return 0 if self.reviews.empty?
    ratings = self.reviews.map{|review| review.rating}
    ratings.reduce{|sum, rating| sum + rating}.to_f / ratings.length
  end
end
