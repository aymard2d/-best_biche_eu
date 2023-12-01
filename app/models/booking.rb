class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :animal
  validates :starting_date, :ending_date, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if ending_date.blank? || starting_date.blank?

    if ending_date < starting_date
      errors.add(:ending_date, "must be later than starting date")
    end
  end
end
