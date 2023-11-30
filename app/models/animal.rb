class Animal < ApplicationRecord
  belongs_to :owner, class_name: "User"

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
