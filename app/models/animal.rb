class Animal < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings, dependent: :destroy


  validates :escort_name, presence: true, length: { minimum: 2 }, uniqueness: true
  validates :skill, :specie, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :address, :price, presence: :true

  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :specie, :description, :name, :escort_name, :skill ],
  associated_against: {
    owner: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
