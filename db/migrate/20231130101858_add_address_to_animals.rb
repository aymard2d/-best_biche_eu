class AddAddressToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :address, :string
  end
end
