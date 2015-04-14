class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :explanation

      t.timestamps null: false
    end
  end
end
