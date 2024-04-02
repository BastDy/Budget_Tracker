class AddTotalAmountToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :total_amount, :float
  end
end
