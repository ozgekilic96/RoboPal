class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :robot
  validates :return_date, numericality: { only_integer: true, greater_than: :start_date}
end
