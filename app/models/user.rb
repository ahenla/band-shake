class User < ApplicationRecord
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :offerings, dependent: :destroy
  has_many :gigs, through: :offerings, source: :bookings, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
