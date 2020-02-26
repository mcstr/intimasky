CATEGORIES = ['dog', 'cat']
class Mask < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :name, presence: :true
  validates :price, presence: :true
  validates :photo, attached: true
  validates :category, presence: true
end
