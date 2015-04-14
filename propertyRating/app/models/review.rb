class Review < ActiveRecord::Base
  belongs_to :property
  validates_presence_of :rating, :explanation
end
