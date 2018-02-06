class User < ApplicationRecord
  has_many :accounts, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birth_date, presence: true
  validates :personal_id, presence: true
  validates :phone, presence: true
  validates :city, presence: true
end
