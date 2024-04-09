class RemoveExpensesReferencesFromCategorie < ActiveRecord::Migration[7.1]
  def change
    remove_reference :categories, :expense, null: false, foreign_key: true
  end
end
