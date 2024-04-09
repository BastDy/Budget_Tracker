class AddCategoriesReferencesToExpenses < ActiveRecord::Migration[7.1]
  def change
    add_reference :expenses, :categorie, null: false, foreign_key: true
  end
end
