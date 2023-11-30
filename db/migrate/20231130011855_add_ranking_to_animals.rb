class AddRankingToAnimals < ActiveRecord::Migration[7.1]
  def change
    add_column :animals, :ranking, :integer
  end
end
