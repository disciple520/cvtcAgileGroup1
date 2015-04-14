class AddPropertyIdToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :property, index: true, foreign_key: true
  end
end
