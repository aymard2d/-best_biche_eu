class AddPriceToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :price, :integer
  end
end
