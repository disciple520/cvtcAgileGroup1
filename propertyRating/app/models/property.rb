class Property < ActiveRecord::Base
    has_many :reviews, :dependent => :destroy
  
  def self.search(search)
    where("address LIKE ?", "%#{search}%") 
  end
end
