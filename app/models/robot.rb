class Robot < ApplicationRecord
  belongs_to :user
  validates :category, presence: true
  validates :robot_name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :robot_pictures, presence: true
end
