class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
  devise :recoverable, :rememberable, :validatable
  has_many :animals
  has_many :bookings
  has_many :bookings, through: :animals

end
