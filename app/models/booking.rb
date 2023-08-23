class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :robot

  validates :start_date, presence: true
  validates :return_date, presence: true
  validate :return_date_after_start_date
  validate :no_conflicting_bookings

  private

  def return_date_after_start_date
    return if start_date.blank? || return_date.blank?

    if return_date < start_date
      errors.add(:return_date, "Must be after start date")
    end
  end

  def no_conflicting_bookings
    conflicts = Booking.where(robot_id: robot_id)
                       .where.not(id: id) # Exclude the current booking (if editing)
                       .where("(start_date, return_date) OVERLAPS (?, ?)", start_date, return_date)

    if conflicts.exists?
      errors.add(:base, "This robot is already booked for the selected period.")
    end
  end
end
