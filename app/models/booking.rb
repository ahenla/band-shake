class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offering
  has_one :review

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :details, presence: true, length: { minimum: 20 }

  enum status: { pending: 'pending', accepted: 'accepted', rejected: 'rejected' }
end
