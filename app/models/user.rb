class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, :password, :address, presence: true
  validates :password, length: { minimum: 6 }
  has_many :bookings, dependent: :destroy
  has_many :robots, dependent: :destroy
end
