class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :animal, null: false, foreign_key: true
      t.date :starting_date
      t.date :ending_date
      t.string :transaction_address

      t.timestamps
    end
  end
end
