class Review < ActiveRecord::Base
  belongs_to :property
  has_many :comments, :dependent => :destroy
  validates_presence_of :rating, :explanation
end
