class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  validates :starting_date, :ending_date, presence: true
end
