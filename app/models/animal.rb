class Animal < ApplicationRecord
  belongs_to :owner, class_name: "User"
<<<<<<< HEAD
  validates :reserved, inclusion: { in: [true, false] }
=======

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [ :specie, :description, :name, :escort_name, :skill ],
  associated_against: {
    owner: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
>>>>>>> 7bd1c5af9ce06d71aad2cf3fe846744821927d5a
end
