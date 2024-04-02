class AddTypeOfExpenseToExpenses < ActiveRecord::Migration[7.1]
  def change
    add_column :expenses, :type_of_expense, :string
  end
end
