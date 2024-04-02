class Expense < ApplicationRecord
  belongs_to :user
  has_many :categories

  validates :amount, presence: true
  validates :description, presence: true
  validates :expenses_date, presence: true

  TYPE_OF_EXPENSES = ["Dépense", "Revenue"]

  def month_and_years(expense)
    expense.month = expenses_date.month
    expense.year = expenses_date.year
  end

end
