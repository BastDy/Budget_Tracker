class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.references :user, null: false, foreign_key: true
      t.float :amount
      t.string :description
      t.date :expenses_date
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end
