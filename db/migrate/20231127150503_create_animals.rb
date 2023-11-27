class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :escort_name
      t.string :gender
      t.string :skill
      t.string :specie
      t.integer :age
      t.text :description
      t.references :owner, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
