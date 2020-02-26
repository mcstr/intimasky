CATEGORIES = ['dog', 'cat']
class Mask < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: :true
  validates :price, presence: :true
  validates :photo, attached: true
  validates :category, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end

end
