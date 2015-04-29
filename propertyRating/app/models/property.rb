class Property < ActiveRecord::Base
    has_many :reviews, :dependent => :destroy
  
  def self.search(search)
    search = search.downcase
    search = "%#{search}%"
  
  
    where("lower(address) LIKE ?", search)
  end
  
  def average_rating
    return 0 if self.reviews.empty?
    ratings = self.reviews.map{|review| review.rating}
    ratings.reduce{|sum, rating| sum + rating}.to_f / ratings.length
  end
  
   def full_address
     full_address = "#{address} Apt:#{apt} #{city} #{state} #{zip}"
   end
  def star_array
    stars = []
  end
  validates_uniqueness_of :address, :scope => :apt
end
