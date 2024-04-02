class Expense < ApplicationRecord
  belongs_to :user
  has_many :categories

  validates :amount, presence: true, numerically: true
  validates :description, presence: true
  validates :expenses_date, presence: true
end
