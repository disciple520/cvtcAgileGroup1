class AddOptionsToCreateProperties < ActiveRecord::Migration
  def change
    add_column :properties, :rooms, :integer
    add_column :properties, :rent, :varchar
    add_column :properties, :utilities, :varchar
    add_column :properties, :petsAllowed, :boolean
  end
end
