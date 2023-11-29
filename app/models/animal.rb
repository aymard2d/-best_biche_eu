class Animal < ApplicationRecord
  belongs_to :owner, class_name: "User"
  validates :reserved, inclusion: { in: [true, false] }
end
