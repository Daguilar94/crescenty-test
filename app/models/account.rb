class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy

  validates :number, presence: true
  validates :initial_amount, presence: true
  validates :actual_amount, presence: true
end
